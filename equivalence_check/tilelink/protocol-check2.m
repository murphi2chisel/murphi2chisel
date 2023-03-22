
Const 
    coreNum: 2;
    allNodeNum: 3;
    allBranchNum: 2;
    ChanNum: 5;
    --t: 1;
    
Type

    chanType: 1 .. ChanNum;
    chanType0: 0 .. ChanNum;

    coreId: 2 .. allNodeNum; 

    l2Id: 1 .. 1;

    cacheId: 1 .. 1;

    nodeId:  1 .. allNodeNum;
    nodeId0: 0 .. allNodeNum;

    branchType: 1 .. allBranchNum;
    branchType0: 0 .. allBranchNum;
    -- branchType: Scalarset(allBranchNum);

    stateType: enum{None,Trunk,Branch,Tip};

    opType: enum{Empty, AcquireBlock, AcquirePerm, ProbeBlock, ProbePerm, ProbeAck, ProbeAckData, Grant, GrantData, GrantAck, Release, ReleaseData, ReleaseAck};

    transType: enum{toN, toB, toT, NtoB, NtoT, BtoT, TtoB, TtoN, BtoN, TtoT, BtoB, NtoN}; 

    nodeType: enum{leaf, branch};

    msgType: record 
        opcode: opType;
        para: transType; 
    end;

    cacheType: record
        state: stateType;
    end;

    treeNode: Record
        cache: cacheType;
        father: nodeId;
        sons: array[branchType] of nodeId;
        directory: array[branchType] of stateType;
        slave_pending: array[branchType] of opType;
        master_pending: opType;
        link: array[branchType] of array[chanType] of msgType;
    end;

Var
    Tree: array [nodeId] of treeNode;

startstate "Init"
begin

    Tree[1].father := 1;
    
    Tree[2].father := 1;
    Tree[1].sons[1] := 2;

    Tree[3].father := 1;
    Tree[1].sons[2] := 3;

    for cur : l2Id do --1..1
        for i : branchType do  --1..2
            for c : chanType do
                --undefine Tree[cur].link[i][c];
                Tree[cur].link[i][c].opcode := Empty;
            endfor;
            Tree[cur].cache.state := None;
            Tree[cur].master_pending := Empty;
            Tree[cur].slave_pending[i] := Empty;
            Tree[cur].directory[i] := None;
        endfor;
    endfor;

    for cur : coreId do
        Tree[cur].cache.state := None;
        Tree[cur].master_pending := Empty;
    endfor;
endstartstate;

-- L1 sends msg
ruleset i : coreId; j : cacheId; b : branchType do 
rule "send_AcquireBlock_toB"
    Tree[j].sons[b] = i &
    Tree[i].cache.state = None &
    Tree[i].master_pending != GrantData &
    Tree[i].master_pending != Grant &
    Tree[i].master_pending != ReleaseAck
==>
var msg : msgType;
begin
    msg.opcode  := AcquireBlock;
    msg.para    := NtoB;
    Tree[j].link[b][1] := msg;
    Tree[i].master_pending := GrantData;
endrule;

rule "send_AcquirePerm_toT"
    Tree[j].sons[b] = i &
    Tree[i].cache.state = Branch &
    Tree[i].master_pending != GrantData &
    Tree[i].master_pending != Grant &
    Tree[i].master_pending != ReleaseAck
==>
var msg : msgType;
begin
    msg.opcode  := AcquirePerm;
    msg.para := BtoT;
    Tree[j].link[b][1] := msg;
    Tree[i].master_pending := Grant;
endrule;

rule "send_AcquireBlock_toT"
    Tree[j].sons[b] = i &
    Tree[i].cache.state = None &
    Tree[i].master_pending != GrantData &
    Tree[i].master_pending != Grant &
    Tree[i].master_pending != ReleaseAck
==>
var msg : msgType;
begin
    msg.opcode  := AcquireBlock;
    msg.para := NtoT;
    Tree[j].link[b][1] := msg;
    Tree[i].master_pending := GrantData;
endrule;

rule "send_Release_BtoN"
    Tree[j].sons[b] = i &
    Tree[i].cache.state = Branch &
    Tree[j].link[b][3].opcode = Empty &
    Tree[i].master_pending != GrantData & 
    Tree[i].master_pending != Grant &
    Tree[i].master_pending != ReleaseAck
==>
var msg : msgType;
begin
    msg.opcode := Release;
    msg.para := BtoN;
    Tree[j].link[b][3] := msg;
    Tree[i].master_pending := ReleaseAck;
    Tree[i].cache.state := None;
endrule;

rule "send_Release_TtoN_1"
    Tree[j].sons[b] = i &
    Tree[i].cache.state = Tip &
    Tree[j].link[b][3].opcode = Empty &
    Tree[i].master_pending != GrantData & 
    Tree[i].master_pending != Grant &
    Tree[i].master_pending != ReleaseAck
==>
var msg : msgType;
begin
    msg.para := TtoN;
    msg.opcode := Release;
    Tree[j].link[b][3] := msg;
    Tree[i].master_pending := ReleaseAck;
    Tree[i].cache.state := None;
endrule;
endruleset;

-- L1 responds
ruleset i : coreId; j : cacheId; b : branchType do 
rule "respond_Grant_toT"
    Tree[j].sons[b] = i &
    Tree[j].link[b][4].opcode = Grant &
    Tree[j].link[b][4].para = toT
==>
var msg : msgType;
begin
    Tree[i].cache.state := Tip;
    --undefine Tree[j].link[b][4];
    Tree[j].link[b][4].opcode := Empty;
    Tree[i].master_pending := Empty;
    msg.opcode  := GrantAck;
    msg.para := BtoT; 
    Tree[j].link[b][5] := msg;
endrule;

rule "respond_GrantData_toB"
    Tree[j].sons[b] = i &
    Tree[j].link[b][4].opcode = GrantData &
    Tree[j].link[b][4].para = toB
==>
var msg : msgType;
begin
    Tree[i].cache.state := Branch;
    --undefine Tree[j].link[b][4];
    Tree[j].link[b][4].opcode := Empty;
    Tree[i].master_pending := Empty;
    msg.opcode  := GrantAck;
    msg.para := BtoT;
    Tree[j].link[b][5] := msg;
endrule;

rule "respond_GrantData_toT"
    Tree[j].sons[b] = i &
    Tree[j].link[b][4].opcode = GrantData &
    Tree[j].link[b][4].para = toT
==>
var msg : msgType;
begin
    Tree[i].cache.state := Tip;
    --undefine Tree[j].link[b][4];
    Tree[j].link[b][4].opcode := Empty;
    Tree[i].master_pending := Empty;
    msg.opcode  := GrantAck;
    msg.para := BtoT;
    Tree[j].link[b][5] := msg;
endrule;

rule "respond_Probe_NtoN"
    Tree[j].sons[b] = i &
    Tree[i].master_pending != ReleaseAck &
    (Tree[j].link[b][2].opcode = ProbePerm |
    Tree[j].link[b][2].opcode = ProbeBlock) &
    (Tree[j].link[b][2].para = toN | 
    Tree[j].link[b][2].para = toB) &
    Tree[i].cache.state = None
==>
var msg : msgType;
begin
    msg.opcode  := ProbeAck;
    msg.para    := NtoN;
    Tree[j].link[b][3] := msg;
    --undefine Tree[j].link[b][2];
    Tree[j].link[b][2].opcode := Empty;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbePerm_BtoN"
    Tree[j].sons[b] = i &
    Tree[i].master_pending != ReleaseAck &
    Tree[j].link[b][2].opcode = ProbePerm &
    Tree[j].link[b][2].para = toN &
    Tree[i].cache.state = Branch
==>
var msg : msgType;
begin
    msg.opcode  := ProbeAck;
    msg.para    := BtoN; 
    Tree[j].link[b][3] := msg;
    --undefine Tree[j].link[b][2];
    Tree[j].link[b][2].opcode := Empty;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbeBlock_TtoN_1"
    Tree[j].sons[b] = i &
    Tree[i].master_pending != ReleaseAck &
    Tree[j].link[b][2].opcode = ProbeBlock &
    Tree[j].link[b][2].para = toN &
    Tree[i].cache.state = Tip
==>
var msg : msgType;
begin
    msg.para    := TtoN; 
    msg.opcode  := ProbeAckData;
    Tree[j].link[b][3] := msg;
    --undefine Tree[j].link[b][2];
    Tree[j].link[b][2].opcode := Empty;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbeBlock_TtoN_2"
    Tree[j].sons[b] = i &
    Tree[i].master_pending != ReleaseAck &
    Tree[j].link[b][2].opcode = ProbeBlock &
    Tree[j].link[b][2].para = toN &
    Tree[i].cache.state = Tip
==>
var msg : msgType;
begin 
    msg.opcode  := ProbeAck;
    msg.para    := TtoN;
    Tree[j].link[b][3] := msg;
    --undefine Tree[j].link[b][2];
    Tree[j].link[b][2].opcode := Empty;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbeBlock_toB_1"
    Tree[j].sons[b] = i &
    Tree[i].master_pending != ReleaseAck &
    Tree[j].link[b][2].opcode = ProbeBlock &
    Tree[i].cache.state = Tip
==>
var msg : msgType;
begin
    msg.para    := TtoB; 
    msg.opcode  := ProbeAckData;
    Tree[i].cache.state := Branch;
    Tree[j].link[b][3] := msg;
    --undefine Tree[j].link[b][2];
    Tree[j].link[b][2].opcode := Empty;
endrule;

rule "respond_ProbeBlock_toB_2"
    Tree[j].sons[b] = i &
    Tree[i].master_pending != ReleaseAck &
    Tree[j].link[b][2].opcode = ProbeBlock &
    Tree[i].cache.state = Tip
==>
var msg : msgType;
begin
    msg.para    := TtoB;
    msg.opcode  := ProbeAck;
    Tree[i].cache.state := Branch;
    Tree[j].link[b][3] := msg;
    --undefine Tree[j].link[b][2];
    Tree[j].link[b][2].opcode := Empty;
endrule;

rule "receive_ReleaseAck"
    Tree[j].sons[b] = i &
    Tree[j].link[b][4].opcode = ReleaseAck
==>
begin
    Tree[i].master_pending := Empty;
    --undefine Tree[j].link[b][4];
    Tree[j].link[b][4].opcode := Empty;
endrule;
endruleset;

-- Ln receive
-- from upper level
ruleset i : cacheId; j : cacheId ; b1 : branchType; b2 : branchType do 
rule "Ln_receive_AcquirePerm_1"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquirePerm &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        (k != b1 -> Tree[i].directory[k] = None) &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData 
    endforall &
    Tree[i].slave_pending[b1] != GrantAck &
    Tree[i].directory[b1] = Branch
==>
var msg : msgType;
begin
    --undefine Tree[i].link[b1][1];
    Tree[i].link[b1][1].opcode := Empty;
    msg.opcode := Grant;
    msg.para := toT;
    Tree[i].link[b1][4] := msg;
    Tree[i].directory[b1] := Tip;
    Tree[i].cache.state := Trunk;
    Tree[i].slave_pending[b1] := GrantAck;
endrule;

rule "Ln_receive_AcquirePerm_2"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquirePerm &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        (k != b1 -> Tree[i].directory[k] = None) &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData 
    endforall &
    Tree[i].slave_pending[b1] != GrantAck &
    Tree[i].directory[b1] = None
==>
var msg : msgType;
begin
    --undefine Tree[i].link[b1][1];
    Tree[i].link[b1][1].opcode := Empty;
    msg.opcode := GrantData;
    msg.para := toT;
    Tree[i].link[b1][4] := msg;
    Tree[i].directory[b1] := Tip;
    Tree[i].cache.state := Trunk;
    Tree[i].slave_pending[b1] := GrantAck;
endrule;

rule "Ln_receive_AcquirePerm_3"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquirePerm &
    Tree[i].cache.state = Tip &
    exists k : branchType do
        k != b1 &
        Tree[i].directory[k] = Branch &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData & 
        Tree[i].slave_pending[k] != GrantAck 
    end
==>
var msg : msgType;
begin
    for k : branchType do
        if k != b1 & Tree[i].directory[k] = Branch &
            Tree[i].slave_pending[k] != ProbeAck & 
            Tree[i].slave_pending[k] != ProbeAckData & 
            Tree[i].slave_pending[k] != GrantAck then   
            msg.opcode := ProbePerm;
            msg.para := toN;
            Tree[i].link[k][2] := msg;
            Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquirePerm_6"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquirePerm &
    Tree[i].cache.state = Trunk
==>
var msg : msgType;
begin
    for k : branchType do
        if  Tree[i].directory[k] = Tip &
            Tree[i].slave_pending[k] != ProbeAck & 
            Tree[i].slave_pending[k] != ProbeAckData & 
            Tree[i].slave_pending[k] != GrantAck then
                msg.opcode := ProbeBlock;
                msg.para := toN;
                Tree[i].link[k][2] := msg;
                Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquireBlock_2"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquireBlock &
    Tree[i].link[b1][1].para = NtoB &
    (Tree[i].cache.state = Branch | Tree[i].cache.state = Tip) &
    Tree[i].slave_pending[b1] != GrantAck &
    Tree[i].slave_pending[b1] != ProbeAck &
    Tree[i].slave_pending[b1] != ProbeAckData
==>
var msg : msgType;
begin
    --undefine Tree[i].link[b1][1];
    Tree[i].link[b1][1].opcode := Empty;  
    msg.opcode := GrantData;
    msg.para := toB;
    Tree[i].link[b1][4] := msg;
    Tree[i].slave_pending[b1] := GrantAck;
    Tree[i].directory[b1] := Branch;
endrule;

rule "Ln_receive_AcquireBlock_3"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquireBlock &
    Tree[i].link[b1][1].para = NtoB &
    Tree[i].cache.state = Trunk &
    exists k : branchType do
        k != b1 &
        Tree[i].directory[k] = Tip &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData & 
        Tree[i].slave_pending[k] != GrantAck 
    end
==>
var msg : msgType;
begin
    for k : branchType do
        if k != b1 & Tree[i].directory[k] = Tip then       
            msg.opcode := ProbeBlock;
            msg.para := toB;
            Tree[i].link[k][2] := msg;
            Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquireBlock_6"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquireBlock &
    Tree[i].link[b1][1].para = NtoT &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        Tree[i].directory[k] = None &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData 
    endforall &
    Tree[i].slave_pending[b1] != GrantAck
==>
var msg : msgType;
begin
    --undefine Tree[i].link[b1][1];
    Tree[i].link[b1][1].opcode := Empty;
    msg.opcode := GrantData;
    msg.para := toT;
    Tree[i].link[b1][4] := msg;
    Tree[i].slave_pending[b1] := GrantAck;
    Tree[i].cache.state := Trunk;
    Tree[i].directory[b1] := Tip;
endrule;

rule "Ln_receive_AcquireBlock_7"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquireBlock &
    Tree[i].link[b1][1].para = NtoT &
    Tree[i].cache.state = Tip &
    exists k : branchType do
        k != b1 &
        Tree[i].directory[k] = Branch &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData & 
        Tree[i].slave_pending[k] != GrantAck 
    end
==>
var msg : msgType;
begin
    for k : branchType do
        if k != b1 & Tree[i].directory[k] = Branch &
            Tree[i].slave_pending[k] != ProbeAck & 
            Tree[i].slave_pending[k] != ProbeAckData & 
            Tree[i].slave_pending[k] != GrantAck then
            msg.opcode := ProbePerm;
            msg.para := toN;
            Tree[i].link[k][2] := msg;
            Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquireBlock_8"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].link[b1][1].opcode = AcquireBlock &
    Tree[i].link[b1][1].para = NtoT &
    Tree[i].cache.state = Trunk & 
    exists k : branchType do
        k != b1 &
        Tree[i].directory[k] = Tip &
        Tree[i].slave_pending[k] != ProbeAck & 
        Tree[i].slave_pending[k] != ProbeAckData & 
        Tree[i].slave_pending[k] != GrantAck 
    end
==>
var msg : msgType;
begin
    for k : branchType do
        if k != b1 & Tree[i].directory[k] = Tip then  
            msg.opcode := ProbeBlock;
            msg.para := toN;
            Tree[i].link[k][2] := msg;
            Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_ProbeAck_1"
    Tree[i].link[b1][3].opcode = ProbeAck &
    (Tree[i].link[b1][3].para = BtoN |
    Tree[i].link[b1][3].para = NtoN)
==>
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].directory[b1] := None;
    Tree[i].slave_pending[b1] := Empty;
endrule;

rule "Ln_receive_ProbeAck_2"
    Tree[i].link[b1][3].opcode = ProbeAck &
    Tree[i].link[b1][3].para = TtoN
==>
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].directory[b1] := None;
    Tree[i].cache.state := Tip;
    Tree[i].slave_pending[b1] := Empty;
endrule;

rule "Ln_receive_ProbeAck_3"
    Tree[i].link[b1][3].opcode = ProbeAck &
    Tree[i].link[b1][3].para = TtoB
==>
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].directory[b1] := Branch;
    Tree[i].cache.state := Tip;
    Tree[i].slave_pending[b1] := Empty;
endrule;

rule "Ln_receive_ProbeAckData_1"
    Tree[i].link[b1][3].opcode = ProbeAckData &
    Tree[i].link[b1][3].para = TtoN
==>
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].directory[b1] := None;
    Tree[i].cache.state := Tip;
    Tree[i].slave_pending[b1] := Empty;
endrule;

rule "Ln_receive_ProbeAckData_2"
    Tree[i].link[b1][3].opcode = ProbeAckData &
    Tree[i].link[b1][3].para = TtoB
==>
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].directory[b1] := Branch;
    Tree[i].cache.state := Tip;
    Tree[i].slave_pending[b1] := Empty;
endrule;

-- 手册里ReleaseAck没有地址参数？
rule "Ln_receive_Release_1"
    Tree[i].link[b1][3].opcode = Release &
    Tree[i].link[b1][3].para = TtoN
==>
var msg : msgType;
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].cache.state := Tip;
    Tree[i].directory[b1] := None;
    msg.opcode := ReleaseAck;
    msg.para := BtoT;
    Tree[i].link[b1][4] := msg;
endrule;

rule "Ln_receive_Release_2"
    Tree[i].link[b1][3].opcode = Release &
    (Tree[i].link[b1][3].para = BtoN |
    Tree[i].link[b1][3].para = NtoN)
==>
var msg : msgType;
begin
    --undefine Tree[i].link[b1][3];
    Tree[i].link[b1][3].opcode := Empty;
    Tree[i].directory[b1] := None;
    msg.opcode := ReleaseAck;
    msg.para := BtoT;
    Tree[i].link[b1][4] := msg;
endrule;

rule "Ln_receive_GrantAck"
    Tree[i].link[b1][5].opcode = GrantAck
==>
begin
    --undefine Tree[i].link[b1][5];
    Tree[i].link[b1][5].opcode := Empty;
    Tree[i].slave_pending[b1] := Empty;
endrule;
endruleset;

-- Ln send msg
ruleset i : cacheId; j : cacheId; b1 : branchType; b2 : branchType do
rule "Ln_send_Release_4"
    (i = 1 | Tree[j].sons[b2] = i) &
    (Tree[i].cache.state = Tip | 
    Tree[i].cache.state = Branch) &
    exists b : branchType do
        Tree[i].directory[b] = Branch
    end
==>
var msg: msgType;
begin
    for k : branchType do
        if  Tree[i].directory[k] = Branch &
            Tree[i].slave_pending[k] != ProbeAck & 
            Tree[i].slave_pending[k] != ProbeAckData & 
            Tree[i].slave_pending[k] != GrantAck then   
                msg.opcode := ProbePerm;
                msg.para := toN;
                Tree[i].link[k][2] := msg;
                Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_send_Release_5"
    (i = 1 | Tree[j].sons[b2] = i) &
    Tree[i].cache.state = Trunk &
    exists b : branchType do
        Tree[i].directory[b] = Tip
    end
==>
var msg: msgType;
begin
    for k : branchType do
        if  Tree[i].directory[k] = Tip &
            Tree[i].slave_pending[k] != ProbeAck & 
            Tree[i].slave_pending[k] != ProbeAckData & 
            Tree[i].slave_pending[k] != GrantAck then      
                msg.opcode := ProbeBlock;
                msg.para := toN;         
                Tree[i].link[k][2] := msg;
                Tree[i].slave_pending[k] := ProbeAck;
        endif;
    endfor;
endrule;
endruleset;

--special for l3
ruleset b : branchType do 
rule "L3_send_release_2"
    Tree[1].cache.state = Tip &
    forall k : branchType do
        Tree[1].directory[k] = None
    endforall
==>
begin
    Tree[1].cache.state := None;
endrule;

rule "L3_send_release_3"
    Tree[1].cache.state = Tip &
    forall k : branchType do
        Tree[1].directory[k] = None
    endforall
==>
begin
    Tree[1].cache.state := None;
endrule;


rule "L3_receive_AcquirePerm"
    Tree[1].link[b][1].opcode = AcquirePerm &
    Tree[1].cache.state = None
==>
begin
    Tree[1].cache.state := Tip;
endrule;

rule "L3_receive_AcquireBlock"
    Tree[1].link[b][1].opcode = AcquireBlock &
    Tree[1].cache.state = None
==>
begin
    Tree[1].cache.state := Tip;
endrule;
endruleset;




invariant "reachableStateN"
!(Tree[1].cache.state = Trunk&Tree[1].father = 1&Tree[1].sons[1] = 2&Tree[1].sons[2] = 3&Tree[1].directory[1] = None&Tree[1].directory[2] = Tip&Tree[1].slave_pending[1] = GrantAck&Tree[1].slave_pending[2] = GrantAck&Tree[1].master_pending = Empty&Tree[1].link[1][1].opcode = Empty&Tree[1].link[1][1].para = NtoB&Tree[1].link[1][2].opcode = Empty&Tree[1].link[1][3].opcode = Empty&Tree[1].link[1][3].para = BtoN&Tree[1].link[1][4].opcode = Empty&Tree[1].link[1][4].para = BtoT&Tree[1].link[1][5].opcode = GrantAck&Tree[1].link[1][5].para = BtoT&Tree[1].link[2][1].opcode = Empty&Tree[1].link[2][1].para = BtoT&Tree[1].link[2][2].opcode = Empty&Tree[1].link[2][2].para = toN&Tree[1].link[2][3].opcode = Empty&Tree[1].link[2][3].para = BtoN&Tree[1].link[2][4].opcode = GrantData&Tree[1].link[2][4].para = toT&Tree[1].link[2][5].opcode = Empty&Tree[1].link[2][5].para = BtoT&Tree[2].cache.state = None&Tree[2].father = 1&Tree[2].master_pending = Empty&Tree[3].cache.state = None&Tree[3].father = 1&Tree[3].master_pending = Grant)