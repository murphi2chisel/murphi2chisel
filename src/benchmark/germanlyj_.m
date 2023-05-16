
const

  NODE_NUM : 2;

type

  NODE : scalarset(NODE_NUM);

  OTHER : enum {Other};

  ABS_NODE : union {NODE, OTHER};

  CACHE_STATE : enum {I, S, E};

  CACHE : record
    State : CACHE_STATE;
  end;

  MSG_CMD: enum {Empty, ReqS, ReqE, Inv, InvAck, GntS, GntE};

  MSG : record
    Cmd : MSG_CMD;
  end;

var

  Cache : array [NODE] of CACHE;
  Chan1 : array [NODE] of MSG;
  Chan2 : array [NODE] of MSG;
  Chan3 : array [NODE] of MSG;
  InvSet : array [NODE] of boolean;
  ShrSet : array [NODE] of boolean;
  ExGntd : boolean;
  CurCmd : MSG_CMD;
  CurPtr : ABS_NODE;

startstate "Init"
begin
  for i : NODE do
    Chan1[i].Cmd := Empty;
    Chan2[i].Cmd := Empty;
    Chan3[i].Cmd := Empty;
    Cache[i].State := I;
    InvSet[i] := false;
    ShrSet[i] := false;
  end;
  ExGntd := false;
  CurCmd := Empty;
  undefine CurPtr;
endstartstate;

ruleset i : NODE do
rule "RecvGntE"
  Chan2[i].Cmd = GntE
==>
begin
  Cache[i].State := E;
  Chan2[i].Cmd := Empty;
endrule;
endruleset;

ruleset i : NODE do
rule "RecvGntS"
  Chan2[i].Cmd = GntS
==>
begin
  Cache[i].State := S;
  Chan2[i].Cmd := Empty;
endrule;
endruleset;

ruleset i : NODE do
rule "SendGntE"
  CurCmd = ReqE &
  CurPtr = i &
  Chan2[i].Cmd = Empty &
  ExGntd = false &
  forall j : NODE do
    ShrSet[j] = false
  end
==>
begin
  Chan2[i].Cmd := GntE;
  ShrSet[i] := true;
  ExGntd := true;
  CurCmd := Empty;
  undefine CurPtr;
endrule;
endruleset;

ruleset i : NODE do
rule "SendGntS"
  CurCmd = ReqS &
  CurPtr = i &
  Chan2[i].Cmd = Empty &
  ExGntd = false
==>
begin
  Chan2[i].Cmd := GntS;
  ShrSet[i] := true;
  CurCmd := Empty;
endrule;
endruleset;

ruleset i : NODE do
rule "RecvInvAck1"
  Chan3[i].Cmd = InvAck &
  CurCmd != Empty &
  ExGntd = true
==>
begin
  Chan3[i].Cmd := Empty;
  ShrSet[i] := false;
  ExGntd := false;
endrule;
endruleset;

ruleset i : NODE do
rule "RecvInvAck2"
  Chan3[i].Cmd = InvAck &
  CurCmd != Empty &
  ExGntd = false
==>
begin
  Chan3[i].Cmd := Empty;
  ShrSet[i] := false;
endrule;
endruleset;

ruleset i : NODE do
rule "SendInvAck"
  Chan2[i].Cmd = Inv &
  Chan3[i].Cmd = Empty
==>
begin
  Chan2[i].Cmd := Empty;
  Chan3[i].Cmd := InvAck;
  Cache[i].State := I;
endrule;
endruleset;

ruleset i : NODE do
rule "SendInv"
  Chan2[i].Cmd = Empty &
  InvSet[i] = true &
  ( CurCmd = ReqE | CurCmd = ReqS & ExGntd = true )
==>
begin
  Chan2[i].Cmd := Inv;
  InvSet[i] := false;
endrule;
endruleset;

ruleset i : NODE do
rule "RecvReqE"
  CurCmd = Empty &
  Chan1[i].Cmd = ReqE
==>
begin
  CurCmd := ReqE;
  CurPtr := i;
  Chan1[i].Cmd := Empty;
  for j : NODE do
    InvSet[j] := ShrSet[j];
  end;
endrule;
endruleset;

ruleset i : NODE do
rule "RecvReqS"
  CurCmd = Empty &
  Chan1[i].Cmd = ReqS
==>
begin
  CurCmd := ReqS;
  CurPtr := i;
  Chan1[i].Cmd := Empty;
  for j : NODE do
    InvSet[j] := ShrSet[j];
  end;
endrule;
endruleset;

ruleset i : NODE do
rule "SendReqE"
  Chan1[i].Cmd = Empty &
  (Cache[i].State = I | Cache[i].State = S)
==>
begin
  Chan1[i].Cmd := ReqE;
endrule;
endruleset;

ruleset i : NODE do
rule "SendReqS"
  Chan1[i].Cmd = Empty &
  Cache[i].State = I
==>
begin
  Chan1[i].Cmd := ReqS;
endrule;
endruleset;

---- Invariant properties ----

invariant "CntrlProp"
  forall i : NODE do forall j : NODE do
    i != j -> (Cache[i].State = E -> Cache[j].State = I) &
              (Cache[i].State = S -> Cache[j].State = I | Cache[j].State = S)
  end end;

rule "ABS_SendGntE"
  CurCmd = ReqE &
  CurPtr = Other &
  ExGntd = false &
  forall j : NODE do
    ShrSet[j] = false
  end
==>
begin
  ExGntd := true;
  CurCmd := Empty;
  undefine CurPtr;
endrule;

rule "ABS_SendGntS"
  CurCmd = ReqS &
  CurPtr = Other &
  ExGntd = false
==>
begin
  CurCmd := Empty;
endrule;

rule "ABS_RecvInvAck1"
  CurCmd != Empty &
  ExGntd = true &
  forall j : NODE do
    Cache[j].State != E &
    Chan2[j].Cmd != GntE &
    Chan3[j].Cmd != InvAck
  end
==>
begin
  ExGntd := false;
endrule;

rule "ABS_RecvReqE"
  CurCmd = Empty
==>
begin
  CurCmd := ReqE;
  CurPtr := Other;
  for j : NODE do
    InvSet[j] := ShrSet[j];
  end;
endrule;

rule "ABS_RecvReqS"
  CurCmd = Empty
==>
begin
  CurCmd := ReqS;
  CurPtr := Other;
  for j : NODE do
    InvSet[j] := ShrSet[j];
  end;
endrule;

---- Noninterference lemmas ----

invariant "Lemma_1"
  forall p : NODE do forall i : NODE do
    Chan3[i].Cmd = InvAck & CurCmd != Empty & ExGntd = true ->
    forall j : NODE do
      j != i -> Cache[j].State != E &
                Chan2[j].Cmd != GntE &
                Chan3[j].Cmd != InvAck
    end
  end end;
