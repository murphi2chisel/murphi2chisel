
const

  NODE_NUM : 2;

type

  NODE : scalarset(NODE_NUM);

  OTHER : enum {Other};

  ABS_NODE : union {NODE, OTHER};

  CACHE_STATE : enum {CACHE_I, CACHE_S, CACHE_E};

  NODE_CMD : enum {NODE_None, NODE_Get, NODE_GetX};

  NODE_STATE : record
    ProcCmd : NODE_CMD;
    InvMarked : boolean;
    CacheState : CACHE_STATE;
  end;

  DIR_STATE : record
    Pending : boolean;
    Local : boolean;
    Dirty : boolean;
    HeadVld : boolean;
    HeadPtr : ABS_NODE;
    ShrVld : boolean;
    ShrSet : array [NODE] of boolean;
    InvSet : array [NODE] of boolean;
  end;

  UNI_CMD : enum {UNI_None, UNI_Get, UNI_GetX, UNI_Put, UNI_PutX, UNI_Nak};

  UNI_MSG : record
    Cmd : UNI_CMD;
    Proc : ABS_NODE;
    HomeProc : boolean;
  end;

  INV_CMD : enum {INV_None, INV_Inv, INV_InvAck};

  INV_MSG : record
    Cmd : INV_CMD;
  end;

  RP_CMD : enum {RP_None, RP_Replace};

  RP_MSG : record
    Cmd : RP_CMD;
  end;

  WB_CMD : enum {WB_None, WB_Wb};

  WB_MSG : record
    Cmd : WB_CMD;
    Proc : ABS_NODE;
  end;

  SHWB_CMD : enum {SHWB_None, SHWB_ShWb, SHWB_FAck};

  SHWB_MSG : record
    Cmd : SHWB_CMD;
    Proc : ABS_NODE;
  end;

  NAKC_CMD : enum {NAKC_None, NAKC_Nakc};

  NAKC_MSG : record
    Cmd : NAKC_CMD;
  end;

  STATE : record
  -- Program variables:
    Proc : array [NODE] of NODE_STATE;
    HomeProc : NODE_STATE;
    Dir : DIR_STATE;
    UniMsg : array [NODE] of UNI_MSG;
    HomeUniMsg : UNI_MSG;
    InvMsg : array [NODE] of INV_MSG;
    RpMsg : array [NODE] of RP_MSG;
    WbMsg : WB_MSG;
    ShWbMsg : SHWB_MSG;
    NakcMsg : NAKC_MSG;
  -- Auxiliary variables:
    PendReqSrc : ABS_NODE;
    HomePendReqSrc : boolean;
    Collecting : boolean;
    FwdCmd : UNI_CMD;
  end;

var

  Sta : STATE;

-------------------------------------------------------------------------------

startstate "Init"
begin
  ----undefine Sta;
  Sta.Dir.Pending := false;
  Sta.Dir.Local := false;
  Sta.Dir.Dirty := false;
  Sta.Dir.HeadVld := false;
  Sta.Dir.ShrVld := false;
  undefine Sta.Dir.HeadPtr;
  Sta.WbMsg.Cmd := WB_None;
  undefine Sta.WbMsg.Proc;
  Sta.ShWbMsg.Cmd := SHWB_None;
  undefine Sta.ShWbMsg.Proc;
  Sta.NakcMsg.Cmd := NAKC_None;
  for p : NODE do
    Sta.Proc[p].ProcCmd := NODE_None;
    Sta.Proc[p].InvMarked := false;
    Sta.Proc[p].CacheState := CACHE_I;
    Sta.Dir.ShrSet[p] := false;
    Sta.Dir.InvSet[p] := false;
    
    Sta.InvMsg[p].Cmd := INV_None;
    Sta.RpMsg[p].Cmd := RP_None;
    Sta.UniMsg[p].Cmd := UNI_None;
    Sta.UniMsg[p].HomeProc := false;
    undefine Sta.UniMsg[p].Proc;
  end;
  Sta.HomeProc.ProcCmd := NODE_None;
  Sta.HomeProc.InvMarked := false;
  Sta.HomeProc.CacheState := CACHE_I;

  Sta.HomeUniMsg.Cmd := UNI_None;
  Sta.HomeUniMsg.HomeProc := false;
  undefine Sta.HomeUniMsg.Proc;
  
  Sta.HomePendReqSrc := false;
  Sta.Collecting := false;
  Sta.FwdCmd := UNI_None;
  undefine Sta.PendReqSrc;
endstartstate;

-------------------------------------------------------------------------------

ruleset src : NODE do
rule "PI_Remote_Get"
  Sta.Proc[src].ProcCmd = NODE_None &
  Sta.Proc[src].CacheState = CACHE_I
==>
begin
  Sta.Proc[src].ProcCmd := NODE_Get;
  Sta.UniMsg[src].Cmd := UNI_Get;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
endrule;
endruleset;

rule "PI_Local_Get_Get"
  Sta.HomeProc.ProcCmd = NODE_None &
  Sta.HomeProc.CacheState = CACHE_I &
  !Sta.Dir.Pending & Sta.Dir.Dirty
==>
begin
  Sta.HomeProc.ProcCmd := NODE_Get;
  Sta.Dir.Pending := true;
  Sta.HomeUniMsg.Cmd := UNI_Get;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := Sta.Dir.HeadPtr;
  Sta.FwdCmd := UNI_Get;
  Sta.HomePendReqSrc := true;
  undefine Sta.PendReqSrc;
  Sta.Collecting := false;
endrule;

rule "PI_Local_Get_Put"
  Sta.HomeProc.ProcCmd = NODE_None &
  Sta.HomeProc.CacheState = CACHE_I &
  !Sta.Dir.Pending & !Sta.Dir.Dirty
==>
begin
  Sta.Dir.Local := true;
  Sta.HomeProc.ProcCmd := NODE_None;
  if (Sta.HomeProc.InvMarked) then
    Sta.HomeProc.InvMarked := false;
    Sta.HomeProc.CacheState := CACHE_I;
  else
    Sta.HomeProc.CacheState := CACHE_S;
  end;
endrule;

ruleset src : NODE do
rule "PI_Remote_GetX"
  Sta.Proc[src].ProcCmd = NODE_None &
  Sta.Proc[src].CacheState = CACHE_I
==>
begin
  Sta.Proc[src].ProcCmd := NODE_GetX;
  Sta.UniMsg[src].Cmd := UNI_GetX;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
endrule;
endruleset;

rule "PI_Local_GetX_GetX"
  Sta.HomeProc.ProcCmd = NODE_None &
  ( Sta.HomeProc.CacheState = CACHE_I |
    Sta.HomeProc.CacheState = CACHE_S ) &
  !Sta.Dir.Pending & Sta.Dir.Dirty
==>
begin
  Sta.HomeProc.ProcCmd := NODE_GetX;
  Sta.Dir.Pending := true;
  Sta.HomeUniMsg.Cmd := UNI_GetX;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := Sta.Dir.HeadPtr;
  Sta.FwdCmd := UNI_GetX;
  Sta.HomePendReqSrc := true;
  undefine Sta.PendReqSrc;
  Sta.Collecting := false;
endrule;

rule "PI_Local_GetX_PutX"
  Sta.HomeProc.ProcCmd = NODE_None &
  ( Sta.HomeProc.CacheState = CACHE_I |
    Sta.HomeProc.CacheState = CACHE_S ) &
  !Sta.Dir.Pending & !Sta.Dir.Dirty
==>
begin
  Sta.Dir.Local := true;
  Sta.Dir.Dirty := true;
  if (Sta.Dir.HeadVld) then
    Sta.Dir.Pending := true;
    for p : NODE do
      if ( Sta.Dir.ShrVld & Sta.Dir.ShrSet[p] |
           Sta.Dir.HeadVld & Sta.Dir.HeadPtr = p ) then
        Sta.Dir.InvSet[p] := true;
      else
        Sta.Dir.InvSet[p] := false;
      end;
      if ( Sta.Dir.ShrVld & Sta.Dir.ShrSet[p] |
           Sta.Dir.HeadVld & Sta.Dir.HeadPtr = p ) then
        Sta.InvMsg[p].Cmd := INV_Inv;
      else
        Sta.InvMsg[p].Cmd := INV_None;
      end;
      Sta.Dir.ShrSet[p] := false;
    end;
    Sta.Dir.HeadVld := false;
    undefine Sta.Dir.HeadPtr;
    Sta.Dir.ShrVld := false;
    Sta.Collecting := true;
  end;
  Sta.HomeProc.ProcCmd := NODE_None;
  Sta.HomeProc.InvMarked := false;
  Sta.HomeProc.CacheState := CACHE_E;
endrule;

ruleset dst : NODE do
rule "PI_Remote_PutX"
  Sta.Proc[dst].ProcCmd = NODE_None &
  Sta.Proc[dst].CacheState = CACHE_E
==>
begin
  Sta.Proc[dst].CacheState := CACHE_I;
  Sta.WbMsg.Cmd := WB_Wb;
  Sta.WbMsg.Proc := dst;
endrule;
endruleset;

rule "PI_Local_PutX"
  Sta.HomeProc.ProcCmd = NODE_None &
  Sta.HomeProc.CacheState = CACHE_E
==>
begin
  if (Sta.Dir.Pending) then
    Sta.HomeProc.CacheState := CACHE_I;
    Sta.Dir.Dirty := false;
  else
    Sta.HomeProc.CacheState := CACHE_I;
    Sta.Dir.Local := false;
    Sta.Dir.Dirty := false;
  end;
endrule;

ruleset src : NODE do
rule "PI_Remote_Replace"
  Sta.Proc[src].ProcCmd = NODE_None &
  Sta.Proc[src].CacheState = CACHE_S
==>
begin
  Sta.Proc[src].CacheState := CACHE_I;
  Sta.RpMsg[src].Cmd := RP_Replace;
endrule;
endruleset;

rule "PI_Local_Replace"
  Sta.HomeProc.ProcCmd = NODE_None &
  Sta.HomeProc.CacheState = CACHE_S
==>
begin
  Sta.Dir.Local := false;
  Sta.HomeProc.CacheState := CACHE_I;
endrule;

ruleset dst : NODE do
rule "NI_Nak"
  Sta.UniMsg[dst].Cmd = UNI_Nak
==>
begin
  Sta.UniMsg[dst].Cmd := UNI_None;
  Sta.UniMsg[dst].HomeProc := false;
  undefine Sta.UniMsg[dst].Proc;
  Sta.Proc[dst].ProcCmd := NODE_None;
  Sta.Proc[dst].InvMarked := false;
endrule;
endruleset;

rule "NI_Nak_Home"
  Sta.HomeUniMsg.Cmd = UNI_Nak
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_None;
  Sta.HomeUniMsg.HomeProc := false;
  undefine Sta.HomeUniMsg.Proc;
  Sta.HomeProc.ProcCmd := NODE_None;
  Sta.HomeProc.InvMarked := false;
endrule;

rule "NI_Nak_Clear"
  Sta.NakcMsg.Cmd = NAKC_Nakc
==>
begin
  Sta.NakcMsg.Cmd := NAKC_None;
  Sta.Dir.Pending := false;
endrule;

ruleset src : NODE do
rule "NI_Local_Get_Nak"
  Sta.UniMsg[src].Cmd = UNI_Get &
  Sta.UniMsg[src].HomeProc &
  Sta.RpMsg[src].Cmd != RP_Replace &
  ( Sta.Dir.Pending |
    Sta.Dir.Dirty & Sta.Dir.Local & Sta.HomeProc.CacheState != CACHE_E |
    Sta.Dir.Dirty & !Sta.Dir.Local & Sta.Dir.HeadPtr = src )
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Nak;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_Get_Get"
  Sta.UniMsg[src].Cmd = UNI_Get &
  Sta.UniMsg[src].HomeProc &
  Sta.RpMsg[src].Cmd != RP_Replace &
  !Sta.Dir.Pending & Sta.Dir.Dirty & !Sta.Dir.Local & Sta.Dir.HeadPtr != src
==>
begin
  Sta.Dir.Pending := true;
  Sta.UniMsg[src].Cmd := UNI_Get;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := Sta.Dir.HeadPtr;
  Sta.FwdCmd := UNI_Get;
  Sta.HomePendReqSrc := false;
  Sta.PendReqSrc := src;
  Sta.Collecting := false;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_Get_Put"
  Sta.UniMsg[src].Cmd = UNI_Get &
  Sta.UniMsg[src].HomeProc &
  Sta.RpMsg[src].Cmd != RP_Replace &
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E)
--  !Sta.Proc[src].InvMarked
==>
begin
  if (Sta.Dir.Dirty) then
    Sta.Dir.Dirty := false;
    Sta.Dir.HeadVld := true;
    Sta.Dir.HeadPtr := src;
    Sta.HomeProc.CacheState := CACHE_S;
    Sta.UniMsg[src].Cmd := UNI_Put;
    Sta.UniMsg[src].HomeProc := true;
    undefine Sta.UniMsg[src].Proc;
  else
    if (Sta.Dir.HeadVld) then
      Sta.Dir.ShrVld := true;
      Sta.Dir.ShrSet[src] := true;
      Sta.Dir.InvSet[src] := true;
      for p : NODE do
        if (p != src) then
          Sta.Dir.InvSet[p] := Sta.Dir.ShrSet[p];
        end;
      end;
    else
      Sta.Dir.HeadVld := true;
      Sta.Dir.HeadPtr := src;
    end;
    Sta.UniMsg[src].Cmd := UNI_Put;
    Sta.UniMsg[src].HomeProc := true;
    undefine Sta.UniMsg[src].Proc;
  end;
endrule;
endruleset;

ruleset src : NODE; dst : NODE do
rule "NI_Remote_Get_Nak"
  src != dst &
  Sta.UniMsg[src].Cmd = UNI_Get &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = dst &
  Sta.Proc[dst].CacheState != CACHE_E
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Nak;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := dst;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset dst : NODE do
rule "NI_Remote_Get_Nak_Home"
  Sta.HomeUniMsg.Cmd = UNI_Get &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = dst &
  Sta.HomeProc.CacheState != CACHE_E
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_Nak;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := dst;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE; dst : NODE do
rule "NI_Remote_Get_Put"
  src != dst &
  Sta.UniMsg[src].Cmd = UNI_Get &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = dst &
  Sta.Proc[dst].CacheState = CACHE_E
--  !Sta.Proc[src].InvMarked
==>
begin
  Sta.Proc[dst].CacheState := CACHE_S;
  Sta.UniMsg[src].Cmd := UNI_Put;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := dst;
  Sta.ShWbMsg.Cmd := SHWB_ShWb;
  Sta.ShWbMsg.Proc := src;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset dst : NODE do
rule "NI_Remote_Get_Put_Home"
  Sta.HomeUniMsg.Cmd = UNI_Get &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = dst &
  Sta.Proc[dst].CacheState = CACHE_E
--  !Sta.HomeProc.InvMarked
==>
begin
  Sta.Proc[dst].CacheState := CACHE_S;
  Sta.HomeUniMsg.Cmd := UNI_Put;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := dst;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_GetX_Nak"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  Sta.UniMsg[src].HomeProc &
  ( Sta.Dir.Pending |
    Sta.Dir.Dirty & Sta.Dir.Local & Sta.HomeProc.CacheState != CACHE_E |
    Sta.Dir.Dirty & !Sta.Dir.Local & Sta.Dir.HeadPtr = src )
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Nak;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_GetX_GetX"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  Sta.UniMsg[src].HomeProc &
  !Sta.Dir.Pending & Sta.Dir.Dirty & !Sta.Dir.Local & Sta.Dir.HeadPtr != src
==>
begin
  Sta.Dir.Pending := true;
  Sta.UniMsg[src].Cmd := UNI_GetX;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := Sta.Dir.HeadPtr;
  Sta.FwdCmd := UNI_GetX;
  Sta.HomePendReqSrc := false;
  Sta.PendReqSrc := src;
  Sta.Collecting := false;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_GetX_PutX1"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  Sta.UniMsg[src].HomeProc &
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E) &
  Sta.Dir.Dirty
==>
begin
  Sta.Dir.Local := false;
  Sta.Dir.Dirty := true;
  Sta.Dir.HeadVld := true;
  Sta.Dir.HeadPtr := src;
  Sta.Dir.ShrVld := false;
  for p : NODE do
    Sta.Dir.ShrSet[p] := false;
    Sta.Dir.InvSet[p] := false;
  end;
  Sta.UniMsg[src].Cmd := UNI_PutX;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
  Sta.HomeProc.CacheState := CACHE_I;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_GetX_PutX2"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  Sta.UniMsg[src].HomeProc &
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E) &
  !Sta.Dir.Dirty &
  (Sta.Dir.HeadVld ->
   Sta.Dir.HeadPtr = src  &
   forall p : NODE do p != src -> !Sta.Dir.ShrSet[p] end)
==>
begin
  Sta.Dir.Dirty := true;
  Sta.Dir.HeadVld := true;
  Sta.Dir.HeadPtr := src;
  Sta.Dir.ShrVld := false;
  for p : NODE do
    Sta.Dir.ShrSet[p] := false;
    Sta.Dir.InvSet[p] := false;
  end;
  Sta.UniMsg[src].Cmd := UNI_PutX;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
  Sta.HomeProc.CacheState := CACHE_I;
  if (Sta.Dir.Local) then
    Sta.HomeProc.CacheState := CACHE_I;
    if (Sta.HomeProc.ProcCmd = NODE_Get) then
      Sta.HomeProc.InvMarked := true;
    end;
  end;
  Sta.Dir.Local := false;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Local_GetX_PutX3"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  Sta.UniMsg[src].HomeProc &
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E) &
  !Sta.Dir.Dirty
--  & !(Sta.Dir.HeadVld ->
--   Sta.Dir.HeadPtr = src  &
--   forall p : NODE do p != src -> !Sta.Dir.ShrSet[p] end)
==>
begin
  Sta.Dir.Pending := true;
  Sta.Dir.Dirty := true;
  Sta.Dir.InvSet[src] := false;
  Sta.InvMsg[src].Cmd := INV_None;
  Sta.Dir.ShrSet[src] := false;
  for p : NODE do
    if (p != src) then
      if ( Sta.Dir.ShrVld & Sta.Dir.ShrSet[p] |
           Sta.Dir.HeadVld & Sta.Dir.HeadPtr = p ) then
        Sta.Dir.InvSet[p] := true;
      else
        Sta.Dir.InvSet[p] := false;
      end;
      if ( Sta.Dir.ShrVld & Sta.Dir.ShrSet[p] |
           Sta.Dir.HeadVld & Sta.Dir.HeadPtr = p ) then
        Sta.InvMsg[p].Cmd := INV_Inv;
      else
        Sta.InvMsg[p].Cmd := INV_None;
      end;
      Sta.Dir.ShrSet[p] := false;
    end;
  end;
  Sta.Dir.HeadVld := true;
  Sta.Dir.HeadPtr := src;
  Sta.Dir.ShrVld := false;
  Sta.UniMsg[src].Cmd := UNI_PutX;
  Sta.UniMsg[src].HomeProc := true;
  undefine Sta.UniMsg[src].Proc;
  if (Sta.Dir.Local) then
    Sta.HomeProc.CacheState := CACHE_I;
    if (Sta.HomeProc.ProcCmd = NODE_Get) then
      Sta.HomeProc.InvMarked := true;
    end;
  end;
  Sta.Dir.Local := false;
  Sta.HomePendReqSrc := false;
  Sta.PendReqSrc := src;
  Sta.Collecting := true;
endrule;
endruleset;

ruleset src : NODE; dst : NODE do
rule "NI_Remote_GetX_Nak"
  src != dst &
  Sta.UniMsg[src].Cmd = UNI_GetX &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = dst &
  Sta.Proc[dst].CacheState != CACHE_E
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Nak;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := dst;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset dst : NODE do
rule "NI_Remote_GetX_Nak_Home"
  Sta.HomeUniMsg.Cmd = UNI_GetX &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = dst &
  Sta.Proc[dst].CacheState != CACHE_E
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_Nak;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := dst;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE; dst : NODE do
rule "NI_Remote_GetX_PutX"
  src != dst &
  Sta.UniMsg[src].Cmd = UNI_GetX &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = dst &
  Sta.Proc[dst].CacheState = CACHE_E
--  !Sta.Proc[src].InvMarked
==>
begin
  Sta.Proc[dst].CacheState := CACHE_I;
  Sta.UniMsg[src].Cmd := UNI_PutX;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := dst;
  Sta.ShWbMsg.Cmd := SHWB_FAck;
  Sta.ShWbMsg.Proc := src;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset dst : NODE do
rule "NI_Remote_GetX_PutX_Home"
  Sta.HomeUniMsg.Cmd = UNI_GetX &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = dst &
  Sta.Proc[dst].CacheState = CACHE_E
--  !Sta.HomeProc.InvMarked
==>
begin
  Sta.Proc[dst].CacheState := CACHE_I;
  Sta.HomeUniMsg.Cmd := UNI_PutX;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := dst;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

rule "NI_Local_Put"
  Sta.HomeUniMsg.Cmd = UNI_Put
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_None;
  undefine Sta.HomeUniMsg.Proc;
  Sta.Dir.Pending := false;
  Sta.Dir.Dirty := false;
  Sta.Dir.Local := true;
  Sta.HomeProc.ProcCmd := NODE_None;
  if (Sta.HomeProc.InvMarked) then
    Sta.HomeProc.InvMarked := false;
    Sta.HomeProc.CacheState := CACHE_I;
  else
    Sta.HomeProc.CacheState := CACHE_S;
  end;
endrule;

ruleset dst : NODE do
rule "NI_Remote_Put"
  Sta.UniMsg[dst].Cmd = UNI_Put
==>
begin
  Sta.UniMsg[dst].Cmd := UNI_None;
  Sta.UniMsg[dst].HomeProc := false;
  undefine Sta.UniMsg[dst].Proc;
  Sta.Proc[dst].ProcCmd := NODE_None;
  if (Sta.Proc[dst].InvMarked) then
    Sta.Proc[dst].CacheState := CACHE_I;
  else
    Sta.Proc[dst].CacheState := CACHE_S;
  end;
  Sta.Proc[dst].InvMarked := false;
endrule;
endruleset;

rule "NI_Local_PutXAcksDone"
  Sta.HomeUniMsg.Cmd = UNI_PutX
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_None;
  undefine Sta.HomeUniMsg.Proc;
  Sta.Dir.Pending := false;
  Sta.Dir.Local := true;
  Sta.Dir.HeadVld := false;
  undefine Sta.Dir.HeadPtr;
  Sta.HomeProc.ProcCmd := NODE_None;
  Sta.HomeProc.InvMarked := false;
  Sta.HomeProc.CacheState := CACHE_E;
endrule;

ruleset dst : NODE do
rule "NI_Remote_PutX"
  Sta.UniMsg[dst].Cmd = UNI_PutX &
  Sta.Proc[dst].ProcCmd = NODE_GetX
==>
begin
  Sta.UniMsg[dst].Cmd := UNI_None;
  Sta.UniMsg[dst].HomeProc := false;
  undefine Sta.UniMsg[dst].Proc;
  Sta.Proc[dst].ProcCmd := NODE_None;
  Sta.Proc[dst].InvMarked := false;
  Sta.Proc[dst].CacheState := CACHE_E;
endrule;
endruleset;

ruleset dst : NODE do
rule "NI_Inv"
  Sta.InvMsg[dst].Cmd = INV_Inv
==>
begin
  Sta.InvMsg[dst].Cmd := INV_InvAck;
  Sta.Proc[dst].CacheState := CACHE_I;
  if (Sta.Proc[dst].ProcCmd = NODE_Get) then
    Sta.Proc[dst].InvMarked := true;
  else
    Sta.Proc[dst].InvMarked := Sta.Proc[dst].InvMarked;
  end;
endrule;
endruleset;

---- This rule is wrong!! Collecting is set to false once invacks are received from concrete procs
---- Thus invacks from "Other" are thrown away! Could have been caught by some kind of syntax checker....

ruleset src : NODE do
rule "NI_InvAck1"
  Sta.InvMsg[src].Cmd = INV_InvAck &
  Sta.Dir.Pending & Sta.Dir.InvSet[src] &
  (forall p : NODE do p != src -> !Sta.Dir.InvSet[p] end)
==>
begin
  Sta.InvMsg[src].Cmd := INV_None;
  Sta.Dir.InvSet[src] := false;
  Sta.Dir.Pending := false;
   if (Sta.Dir.Local & !Sta.Dir.Dirty) then
    Sta.Dir.Local := false;
  end;
  Sta.Collecting := false;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_InvAck2"
  Sta.InvMsg[src].Cmd = INV_InvAck &
  Sta.Dir.Pending & Sta.Dir.InvSet[src]
--  & !(forall p : NODE do p != src -> !Sta.Dir.InvSet[p] end)
==>
begin
  Sta.InvMsg[src].Cmd := INV_None;
  Sta.Dir.InvSet[src] := false;
endrule;
endruleset;

rule "NI_Wb"
  Sta.WbMsg.Cmd = WB_Wb
==>
begin
  Sta.WbMsg.Cmd := WB_None;
  undefine Sta.WbMsg.Proc;
  Sta.Dir.Dirty := false;
  Sta.Dir.HeadVld := false;
  undefine Sta.Dir.HeadPtr;
endrule;

rule "NI_FAck"
  Sta.ShWbMsg.Cmd = SHWB_FAck
==>
begin
  Sta.ShWbMsg.Cmd := SHWB_None;
  Sta.Dir.Pending := false;
  if (Sta.Dir.Dirty) then
    Sta.Dir.HeadPtr := Sta.ShWbMsg.Proc;
  end;
  undefine Sta.ShWbMsg.Proc;
endrule;

ruleset src : NODE do
rule "NI_ShWb"
  Sta.ShWbMsg.Cmd = SHWB_ShWb &
  Sta.ShWbMsg.Proc = src
==>
begin
  Sta.ShWbMsg.Cmd := SHWB_None;
  Sta.Dir.Pending := false;
  Sta.Dir.Dirty := false;
  Sta.Dir.ShrVld := true;
  Sta.Dir.ShrSet[src] := true;
  Sta.Dir.InvSet[src] := true;
  for p : NODE do
    if (p != src) then
      Sta.Dir.InvSet[p] := Sta.Dir.ShrSet[p];
    end;
  end;
  undefine Sta.ShWbMsg.Proc;
endrule;
endruleset;

ruleset src : NODE do
rule "NI_Replace"
  Sta.RpMsg[src].Cmd = RP_Replace
==>
begin
  Sta.RpMsg[src].Cmd := RP_None;
  if (Sta.Dir.ShrVld) then
    Sta.Dir.ShrSet[src] := false;
    Sta.Dir.InvSet[src] := false;
  end;
endrule;
endruleset;

-------------------------------------------------------------------------------

invariant "CacheStateProp"
  forall p : NODE do forall q : NODE do
    p != q ->
    !(Sta.Proc[p].CacheState = CACHE_E & Sta.Proc[q].CacheState = CACHE_E)
  end end;

invariant "CacheStateProp_Home"
  forall p : NODE do forall q : NODE do
    Sta.Proc[p].CacheState = CACHE_E ->
    !(Sta.HomeProc.CacheState = CACHE_E)
  end end;

-------------------------------------------------------------------------------

rule "ABS_PI_Remote_PutX"
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
    Sta.HomeUniMsg.Cmd != UNI_PutX end                   -- by Lemma_1
==>
begin
  Sta.WbMsg.Cmd := WB_Wb;
  Sta.WbMsg.Proc := Other;
endrule;

rule "ABS_NI_Local_Get_Get"
  !Sta.Dir.Pending & Sta.Dir.Dirty & !Sta.Dir.Local
--  & Sta.Dir.HeadPtr != Other
==>
begin
  Sta.Dir.Pending := true;
  Sta.FwdCmd := UNI_Get;
  Sta.HomePendReqSrc := false;
  Sta.PendReqSrc := Other;
  Sta.Collecting := false;
endrule;

rule "ABS_NI_Local_Get_Put"
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E)
==>
begin
  if (Sta.Dir.Dirty) then
    Sta.Dir.Dirty := false;
    Sta.Dir.HeadVld := true;
    Sta.Dir.HeadPtr := Other;
    Sta.HomeProc.CacheState := CACHE_S;
  else
    if (Sta.Dir.HeadVld) then
      Sta.Dir.ShrVld := true;
      for p : NODE do
        Sta.Dir.InvSet[p] := Sta.Dir.ShrSet[p];
      end;
    else
      Sta.Dir.HeadVld := true;
      Sta.Dir.HeadPtr := Other;
    end;
  end;
endrule;

ruleset dst : NODE do
rule "ABS_NI_Remote_Get_Nak_src"
  Sta.Proc[dst].CacheState != CACHE_E &
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_Get  -- by Lemma_2
==>
begin
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE do
rule "ABS_NI_Remote_Get_Nak_dst"
  Sta.UniMsg[src].Cmd = UNI_Get &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = Other &
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = src &
  Sta.FwdCmd = UNI_Get  -- by Lemma_2
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Nak;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := Other;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

rule "ABS_NI_Remote_Get_Nak_Home"
  Sta.HomeUniMsg.Cmd = UNI_Get &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = Other &
  Sta.HomeProc.CacheState != CACHE_E &
  Sta.Dir.Pending & !Sta.Dir.Local &
  Sta.HomePendReqSrc & Sta.FwdCmd = UNI_Get  -- by Lemma_2
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_Nak;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := Other;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;

rule "ABS_NI_Remote_Get_Nak_src_dst"
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_Get  -- by Lemma_2
==>
begin
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;

ruleset dst : NODE do
rule "ABS_NI_Remote_Get_Put_src"
  Sta.Proc[dst].CacheState = CACHE_E &
  forall p : NODE do p != dst ->
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
  Sta.HomeUniMsg.Cmd != UNI_PutX end &           -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_Get  -- by Lemma_2
==>
begin
  Sta.Proc[dst].CacheState := CACHE_S;
  Sta.ShWbMsg.Cmd := SHWB_ShWb;
  Sta.ShWbMsg.Proc := Other;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE do
rule "ABS_NI_Remote_Get_Put_dst"
  Sta.UniMsg[src].Cmd = UNI_Get &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = Other &
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
  Sta.HomeUniMsg.Cmd != UNI_PutX end &           -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = src &
  Sta.FwdCmd = UNI_Get                       -- by Lemma_2
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Put;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := Other;
  Sta.ShWbMsg.Cmd := SHWB_ShWb;
  Sta.ShWbMsg.Proc := src;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

rule "ABS_NI_Remote_Get_Put_Home"
  Sta.HomeUniMsg.Cmd = UNI_Get &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = Other &
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
    Sta.HomeUniMsg.Cmd != UNI_PutX end &           -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  Sta.HomePendReqSrc & Sta.FwdCmd = UNI_Get  -- by Lemma_2
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_Put;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := Other;
  Sta.FwdCmd := UNI_None;
endrule;

rule "ABS_NI_Remote_Get_Put_src_dst"
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
    Sta.HomeUniMsg.Cmd != UNI_PutX end &             -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_Get                         -- by Lemma_2
==>
begin
  Sta.ShWbMsg.Cmd := SHWB_ShWb;
  Sta.ShWbMsg.Proc := Other;
  Sta.FwdCmd := UNI_None;
endrule;

rule "ABS_NI_Local_GetX_GetX"
  !Sta.Dir.Pending & Sta.Dir.Dirty & !Sta.Dir.Local
--  & Sta.Dir.HeadPtr != Other
==>
begin
  Sta.Dir.Pending := true;
  Sta.FwdCmd := UNI_GetX;
  Sta.HomePendReqSrc := false;
  Sta.PendReqSrc := Other;
  Sta.Collecting := false;
endrule;

rule "ABS_NI_Local_GetX_PutX1"
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E) &
  Sta.Dir.Dirty
==>
begin
  Sta.Dir.Local := false;
  Sta.Dir.Dirty := true;
  Sta.Dir.HeadVld := true;
  Sta.Dir.HeadPtr := Other;
  Sta.Dir.ShrVld := false;
  for p : NODE do
    Sta.Dir.ShrSet[p] := false;
    Sta.Dir.InvSet[p] := false;
  end;
  Sta.HomeProc.CacheState := CACHE_I;
endrule;

rule "ABS_NI_Local_GetX_PutX2"
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E) &
  !Sta.Dir.Dirty &
  (Sta.Dir.HeadVld ->
   Sta.Dir.HeadPtr = Other  &
   forall p : NODE do !Sta.Dir.ShrSet[p] end)
==>
begin
  Sta.Dir.Dirty := true;
  Sta.Dir.HeadVld := true;
  Sta.Dir.HeadPtr := Other;
  Sta.Dir.ShrVld := false;
  for p : NODE do
    Sta.Dir.ShrSet[p] := false;
    Sta.Dir.InvSet[p] := false;
  end;
  Sta.HomeProc.CacheState := CACHE_I;
  if (Sta.Dir.Local) then
    Sta.HomeProc.CacheState := CACHE_I;
    if (Sta.HomeProc.ProcCmd = NODE_Get) then
      Sta.HomeProc.InvMarked := true;
    end;
  end;
  Sta.Dir.Local := false;
endrule;

rule "ABS_NI_Local_GetX_PutX3"
  !Sta.Dir.Pending &
  (Sta.Dir.Dirty -> Sta.Dir.Local & Sta.HomeProc.CacheState = CACHE_E) &
  !Sta.Dir.Dirty
==>
begin
  Sta.Dir.Pending := true;
  Sta.Dir.Dirty := true;
  for p : NODE do
    if ( Sta.Dir.ShrVld & Sta.Dir.ShrSet[p] |
         Sta.Dir.HeadVld & Sta.Dir.HeadPtr = p ) then
      Sta.Dir.InvSet[p] := true;
    else
      Sta.Dir.InvSet[p] := false;
    end;
    if ( Sta.Dir.ShrVld & Sta.Dir.ShrSet[p] |
         Sta.Dir.HeadVld & Sta.Dir.HeadPtr = p ) then
      Sta.InvMsg[p].Cmd := INV_Inv;
    else
      Sta.InvMsg[p].Cmd := INV_None;
    end;
    Sta.Dir.ShrSet[p] := false;
  end;
  Sta.Dir.HeadVld := true;
  Sta.Dir.HeadPtr := Other;
  Sta.Dir.ShrVld := false;
  if (Sta.Dir.Local) then
    Sta.HomeProc.CacheState := CACHE_I;
    if (Sta.HomeProc.ProcCmd = NODE_Get) then
      Sta.HomeProc.InvMarked := true;
    end;
  end;
  Sta.Dir.Local := false;
  Sta.HomePendReqSrc := false;
  Sta.PendReqSrc := Other;
  Sta.Collecting := true;
endrule;

ruleset dst : NODE do
rule "ABS_NI_Remote_GetX_Nak_src"
  Sta.Proc[dst].CacheState != CACHE_E &
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_GetX                         -- by Lemma_3
==>
begin
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE do
rule "ABS_NI_Remote_GetX_Nak_dst"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = Other &
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = src &
  Sta.FwdCmd = UNI_GetX                         -- by Lemma_3
==>
begin
  Sta.UniMsg[src].Cmd := UNI_Nak;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := Other;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

rule "ABS_NI_Remote_GetX_Nak_Home"
  Sta.HomeUniMsg.Cmd = UNI_GetX &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = Other &
  Sta.Dir.Pending & !Sta.Dir.Local &
  Sta.HomePendReqSrc & Sta.FwdCmd = UNI_GetX  -- by Lemma_3
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_Nak;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := Other;
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;

rule "ABS_NI_Remote_GetX_Nak_src_dst"
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_GetX                       -- by Lemma_3
==>
begin
  Sta.NakcMsg.Cmd := NAKC_Nakc;
  Sta.FwdCmd := UNI_None;
endrule;

ruleset dst : NODE do
rule "ABS_NI_Remote_GetX_PutX_src"
  Sta.Proc[dst].CacheState = CACHE_E &
  forall p : NODE do p != dst ->
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
  Sta.HomeUniMsg.Cmd != UNI_PutX end &            -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_GetX                       -- by Lemma_3
==>
begin
  Sta.Proc[dst].CacheState := CACHE_I;
  Sta.ShWbMsg.Cmd := SHWB_FAck;
  Sta.ShWbMsg.Proc := Other;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

ruleset src : NODE do
rule "ABS_NI_Remote_GetX_PutX_dst"
  Sta.UniMsg[src].Cmd = UNI_GetX &
  !Sta.UniMsg[src].HomeProc &
  Sta.UniMsg[src].Proc = Other &
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
  Sta.HomeUniMsg.Cmd != UNI_PutX end &            -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = src &
  Sta.FwdCmd = UNI_GetX                       -- by Lemma_3
==>
begin
  Sta.UniMsg[src].Cmd := UNI_PutX;
  Sta.UniMsg[src].HomeProc := false;
  Sta.UniMsg[src].Proc := Other;
  Sta.ShWbMsg.Cmd := SHWB_FAck;
  Sta.ShWbMsg.Proc := src;
  Sta.FwdCmd := UNI_None;
endrule;
endruleset;

rule "ABS_NI_Remote_GetX_PutX_Home"
  Sta.HomeUniMsg.Cmd = UNI_GetX &
  !Sta.HomeUniMsg.HomeProc &
  Sta.HomeUniMsg.Proc = Other &
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
  Sta.HomeUniMsg.Cmd != UNI_PutX end &            -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  Sta.HomePendReqSrc & Sta.FwdCmd = UNI_GetX  -- by Lemma_3
==>
begin
  Sta.HomeUniMsg.Cmd := UNI_PutX;
  Sta.HomeUniMsg.HomeProc := false;
  Sta.HomeUniMsg.Proc := Other;
  Sta.FwdCmd := UNI_None;
endrule;

rule "ABS_NI_Remote_GetX_PutX_src_dst"
  forall p : NODE do
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
  Sta.HomeUniMsg.Cmd != UNI_PutX end &            -- by Lemma_1
  Sta.Dir.Pending & !Sta.Dir.Local &
  !Sta.HomePendReqSrc & Sta.PendReqSrc = Other &
  Sta.FwdCmd = UNI_GetX                         -- by Lemma_3
==>
begin
  Sta.ShWbMsg.Cmd := SHWB_FAck;
  Sta.ShWbMsg.Proc := Other;
  Sta.FwdCmd := UNI_None;
endrule;

rule "ABS_NI_InvAck1"
  Sta.Dir.Pending &
  (forall p : NODE do !Sta.Dir.InvSet[p] end) &
  forall q : NODE do
  Sta.Collecting &
  Sta.NakcMsg.Cmd = NAKC_None & Sta.ShWbMsg.Cmd = SHWB_None &
    (( Sta.UniMsg[q].Cmd = UNI_Get | Sta.UniMsg[q].Cmd = UNI_GetX ->
       Sta.UniMsg[q].HomeProc ) &
     ( Sta.UniMsg[q].Cmd = UNI_PutX ->
       Sta.UniMsg[q].HomeProc & !Sta.HomePendReqSrc & Sta.PendReqSrc = q ))
  end  -- Lemma_4
==>
begin
  Sta.Dir.Pending := false;
  if (Sta.Dir.Local & !Sta.Dir.Dirty) then
    Sta.Dir.Local := false;
  end;
  Sta.Collecting := false;
endrule;

rule "ABS_NI_ShWb"
  Sta.ShWbMsg.Cmd = SHWB_ShWb &
  Sta.ShWbMsg.Proc = Other
==>
begin
  Sta.ShWbMsg.Cmd := SHWB_None;
  Sta.Dir.Pending := false;
  Sta.Dir.Dirty := false;
  Sta.Dir.ShrVld := true;
  for p : NODE do
    Sta.Dir.InvSet[p] := Sta.Dir.ShrSet[p];
  end;
  undefine Sta.ShWbMsg.Proc;
endrule;

-------------------------------------------------------------------------------

invariant "Lemma_1"
forall src : NODE do   forall dst : NODE do
    Sta.Proc[dst].CacheState = CACHE_E ->
    forall p : NODE do p != dst ->
    Sta.Dir.Dirty & Sta.WbMsg.Cmd != WB_Wb & Sta.ShWbMsg.Cmd != SHWB_ShWb &
    Sta.Proc[p].CacheState != CACHE_E &
    Sta.HomeProc.CacheState != CACHE_E &
    Sta.HomeUniMsg.Cmd != UNI_Put &
    Sta.UniMsg[p].Cmd != UNI_PutX &
    Sta.HomeUniMsg.Cmd != UNI_PutX  
end  end end;

invariant "Lemma_2a"
  forall src : NODE do forall dst : NODE do
    src != dst &
    Sta.UniMsg[src].Cmd = UNI_Get &
    !Sta.UniMsg[src].HomeProc & Sta.UniMsg[src].Proc = dst ->
    Sta.Dir.Pending & !Sta.Dir.Local &
    !Sta.HomePendReqSrc & Sta.PendReqSrc = src & Sta.FwdCmd = UNI_Get
  end end;

invariant "Lemma_2b"
  forall src : NODE do forall dst : NODE do
    Sta.HomeUniMsg.Cmd = UNI_Get &
    !Sta.HomeUniMsg.HomeProc & Sta.HomeUniMsg.Proc = dst ->
    Sta.Dir.Pending & !Sta.Dir.Local &
    Sta.HomePendReqSrc & Sta.FwdCmd = UNI_Get
  end end;

invariant "Lemma_3a"
  forall src : NODE do forall dst : NODE do
    src != dst &
    Sta.UniMsg[src].Cmd = UNI_GetX &
    !Sta.UniMsg[src].HomeProc & Sta.UniMsg[src].Proc = dst ->
    Sta.Dir.Pending & !Sta.Dir.Local &
    !Sta.HomePendReqSrc & Sta.PendReqSrc = src & Sta.FwdCmd = UNI_GetX
  end end;

invariant "Lemma_3b"
  forall src : NODE do forall dst : NODE do
    Sta.HomeUniMsg.Cmd = UNI_GetX &
    !Sta.HomeUniMsg.HomeProc & Sta.HomeUniMsg.Proc = dst ->
    Sta.Dir.Pending & !Sta.Dir.Local &
    Sta.HomePendReqSrc & Sta.FwdCmd = UNI_GetX
  end end;

invariant "Lemma_4"
  forall dst : NODE do forall src : NODE do 
    Sta.InvMsg[src].Cmd = INV_InvAck ->
    forall q : NODE do q != src ->
    Sta.Collecting &
    Sta.NakcMsg.Cmd = NAKC_None & Sta.ShWbMsg.Cmd = SHWB_None &
    (( Sta.UniMsg[q].Cmd = UNI_Get | Sta.UniMsg[q].Cmd = UNI_GetX ->
      Sta.UniMsg[q].HomeProc ) &
    ( Sta.UniMsg[q].Cmd = UNI_PutX ->
      Sta.UniMsg[q].HomeProc & !Sta.HomePendReqSrc & Sta.PendReqSrc = q ))
    end
  end end;
