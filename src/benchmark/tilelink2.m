
Const 
    coreNum: 3;
    allNodeNum: 4;
    allBranchNumses: 3;
    AddrNum: 1;
    ChanNum: 5;
    DataNum: 2;
    
Type

    addrType: Scalarset(AddrNum);

    dataType: Scalarset(DataNum);

    chanType: 1 .. ChanNum;

    coreId: allNodeNum-coreNum+1 .. allNodeNum; 

    cacheId: 1..allNodeNum-coreNum;

    nodeId: 1..allNodeNum;

    branchType: 1.. allBranchNumses;

    stateType: enum{None,Trunk,Branch,Tip};

    opType: enum{Empty, AcquireBlock, AcquirePerm, ProbeBlock, ProbePerm, ProbeAck, ProbeAckData, Grant, GrantData, GrantAck, Release, ReleaseData, ReleaseAck};

    transType: enum{toN, toB, toT, NtoB, NtoT, BtoT, TtoB, TtoN, BtoN, TtoT, BtoB, NtoN}; 

    nodeType: enum{leaf, branch};

    msgType: record 
        opcode: opType;
        para: transType; 
        src: nodeId; 
        sink: nodeId;
        address: addrType;
        data: dataType; 
    end;

    cacheType: record
        state: stateType;
        data: dataType;
        dirty: boolean;
    end;

    treeNode: Record
        id: nodeId;
        typeOf: nodeType;
        cache: array[addrType] of cacheType;
        father: nodeId;
        sons: array[branchType] of nodeId;
        directory: array[branchType] of array[addrType] of stateType;
        slave_pending: array[branchType] of array[addrType] of opType;
        master_pending: array[addrType] of opType;
        link: array[branchType] of array[chanType] of msgType;
    end;

Var
    Tree: array [nodeId] of treeNode;
    leafStart: nodeId;
    memData: array[addrType] of dataType; 
    auxData: array[addrType] of dataType;

procedure send(op:opType; para:transType; src:nodeId; sink: nodeId; a: addrType; d: dataType);
var msg: msgType;
var which: branchType;
Begin
    msg.opcode  := op;
    msg.para    := para;
    msg.src     := src;
    msg.sink    := sink;
    msg.address := a;
    msg.data    := d;

    if src = 1 then
        switch op 
            case AcquireBlock:
                Tree[1].cache[a].data := memData[a];
                Tree[1].cache[a].state := Tip;
                auxData[a] := memData[a];
            case Release:
                memData[a] := Tree[1].cache[a].data;
            case ReleaseData:
                memData[a] := Tree[1].cache[a].data;
                Tree[1].cache[a].dirty := false;
            else
                error "error opcode";
        endswitch;
    else
        for i : branchType do
            if Tree[sink].sons[i] = src then
                which := i;
            endif;
        endfor;

        switch op
            case AcquirePerm:
                Tree[sink].link[which][1] := msg;
                Tree[src].master_pending[a] := Grant;

            case AcquireBlock:
                Tree[sink].link[which][1] := msg;
                Tree[src].master_pending[a] := GrantData;

            case ProbePerm:
                Tree[sink].link[which][2] := msg;
                Tree[sink].slave_pending[which][a] := ProbeAck;

            case ProbeBlock:
                Tree[sink].link[which][2] := msg;
                Tree[sink].slave_pending[which][a] := ProbeAckData;

            case Release, ReleaseData:
                Tree[sink].link[which][3] := msg;
                Tree[src].master_pending[a] := ReleaseAck;

            case Grant, GrantData:
                Tree[sink].link[which][4] := msg;
                Tree[sink].slave_pending[which][a] := GrantAck;

            case ProbeAck, ProbeAckData:
                Tree[sink].link[which][3] := msg;

            case ReleaseAck:
                Tree[sink].link[which][4] := msg;

            case GrantAck:
                Tree[sink].link[which][5] := msg;
        endswitch;
    endif;
End;

function checklink(i: nodeId; chan: chanType; op: opType): boolean;
var fa: nodeId;
begin
    fa := Tree[i].father;
    if Tree[i].id = 1 then
        return false
    endif;
    for b: branchType do
        if Tree[fa].sons[b] = i then 
            if Tree[fa].link[b][chan].opcode = op then
                return true;
            else
                return false;
            endif;
        endif;
    endfor;
end;

function getmsg(i: nodeId; chan: chanType): msgType;
var fa: nodeId;
begin
    fa := Tree[i].father;
    for b: branchType do
        if Tree[fa].sons[b] = i then 
            return Tree[fa].link[b][chan];
        endif;
    endfor;
end;

procedure clearmsg(i: nodeId; chan: chanType);
var fa: nodeId;
begin
    fa := Tree[i].father;
    for b: branchType do
        if Tree[fa].sons[b] = i then 
            undefine Tree[fa].link[b][chan];
            Tree[fa].link[b][chan].opcode := Empty;
        endif;
    endfor;
end;

startstate "Init"
var son: 1..allNodeNum+1;
var cur: 1..allNodeNum+1;
begin
    son := 2;
    cur := 1;
    Tree[1].father := 1;
    while cur <= allNodeNum do
        Tree[cur].id := cur;
        if son <= allNodeNum then
            Tree[cur].typeOf := branch;
            for i : branchType do
                Tree[son].father := cur;
                Tree[cur].sons[i] := son;
                for c : chanType do
                    undefine Tree[cur].link[i][c];
                    Tree[cur].link[i][c].opcode := Empty;
                endfor;
                for addr : addrType do
                    Tree[cur].cache[addr].state := None;
                    Tree[cur].cache[addr].dirty := false;
                    undefine  Tree[cur].cache[addr].data;
                    Tree[cur].master_pending[addr] := Empty;
                    Tree[cur].slave_pending[i][addr] := Empty;
                    Tree[cur].directory[i][addr] := None;
                endfor;
                son := son + 1;
            endfor;
        else
            Tree[cur].typeOf := leaf;
            for i : branchType do
                for c : chanType do
                    undefine Tree[cur].link[i][c];
                endfor;
                for addr : addrType do
                    Tree[cur].cache[addr].state := None;
                    Tree[cur].cache[addr].dirty := false;
                    undefine Tree[cur].cache[addr].data;
                    Tree[cur].master_pending[addr] := Empty;
                    undefine Tree[cur].slave_pending[i][addr];
                    undefine Tree[cur].directory[i][addr];
                endfor;
                undefine Tree[cur].sons[i];
            endfor;
        endif;
        cur := cur + 1;
    endwhile;

    for addr : addrType do
        for d : dataType do 
            memData[addr] := d;
            auxData[addr] := d;
        endfor;
    endfor;
endstartstate;

-- modify data
ruleset i : coreId; addr : addrType; d: dataType do
rule "store"
    Tree[i].cache[addr].state = Tip
==>
    Tree[i].cache[addr].dirty := true;
    Tree[i].cache[addr].data := d;
    auxData[addr] := d;
endrule;
endruleset;

-- L1 sends msg
ruleset i : coreId; addr : addrType do 
alias L2: Tree[i].father do
    rule "send_Acquire_toB"
        Tree[i].cache[addr].state = None &
        Tree[i].master_pending[addr] != GrantData &
        Tree[i].master_pending[addr] != Grant &
        Tree[i].master_pending[addr] != ReleaseAck
    ==>
    begin
        send(AcquireBlock, NtoB, i, L2, addr, UNDEFINED);
    endrule;

    rule "send_Acquire_toT"
        (Tree[i].cache[addr].state = None | Tree[i].cache[addr].state = Branch) &
        Tree[i].master_pending[addr] != GrantData &
        Tree[i].master_pending[addr] != Grant &
        Tree[i].master_pending[addr] != ReleaseAck
    ==>
    begin
        if Tree[i].cache[addr].state = None then
            send(AcquireBlock, NtoT, i, L2, addr, UNDEFINED);
        elsif Tree[i].cache[addr].state = Branch then
            send(AcquirePerm, BtoT, i, L2, addr, UNDEFINED);
        endif;
    endrule;

    rule "send_Release"
        (Tree[i].cache[addr].state = Branch | Tree[i].cache[addr].state = Tip) &
        checklink(i, 3, Empty) &
        Tree[i].master_pending[addr] != GrantData & 
        Tree[i].master_pending[addr] != Grant &
        Tree[i].master_pending[addr] != ReleaseAck
    ==>
    begin
        if Tree[i].cache[addr].state = Branch then 
            send(Release, BtoN, i, L2, addr, UNDEFINED);
        elsif Tree[i].cache[addr].state = Tip then
            if !Tree[i].cache[addr].dirty then
                send(Release, TtoN, i, L2, addr, UNDEFINED);
            else
                send(ReleaseData, TtoN, i, L2, addr, Tree[i].cache[addr].data);
                Tree[i].cache[addr].dirty := false;
            endif;
        endif;
        Tree[i].cache[addr].state := None;
        undefine Tree[i].cache[addr].data;
    endrule;
endalias;
endruleset;

-- L1 responds
ruleset i : coreId do 
alias L2: Tree[i].father do
    rule "respond_Grant"
        checklink(i, 4, Grant) | checklink(i, 4, GrantData)
    ==>
    var m : msgType;
    begin
        m := getmsg(i, 4);
        if m.opcode = GrantData then
            Tree[i].cache[m.address].data := m.data;
        endif;
        if m.para = toB then
            Tree[i].cache[m.address].state := Branch;
        elsif m.para = toT then
            Tree[i].cache[m.address].state := Tip;
        endif;
        clearmsg(i, 4);
        Tree[i].master_pending[m.address] := Empty;
        send(GrantAck, UNDEFINED, i, L2, m.address, UNDEFINED);
    endrule;

    rule "respond_Probe"
        checklink(i, 2, ProbePerm) | checklink(i, 2, ProbeBlock)        
    ==>
    var m : msgType;
    begin
        m := getmsg(i, 2);
        if Tree[i].master_pending[m.address] != ReleaseAck then
            if m.para = toN then
                if Tree[i].cache[m.address].state = None then
                    send(ProbeAck, NtoN, m.src, L2, m.address, UNDEFINED);
                elsif Tree[i].cache[m.address].state = Branch then
                    send(ProbeAck, BtoN, m.src, L2, m.address, UNDEFINED);
                elsif Tree[i].cache[m.address].state = Tip then
                    if m.opcode = ProbeBlock then
                        if Tree[i].cache[m.address].dirty then
                            send(ProbeAckData, TtoN, m.src, L2, m.address, Tree[i].cache[m.address].data);
                            Tree[i].cache[m.address].dirty := false;
                        else
                            send(ProbeAck, TtoN, m.src, L2, m.address, UNDEFINED);
                        endif;
                    endif;
                endif;
                clearmsg(i, 2);
                Tree[i].cache[m.address].state := None;
            elsif m.para = toB then
                if Tree[i].cache[m.address].state = None then
                    send(ProbeAck, NtoN, m.src, L2, m.address, UNDEFINED);
                elsif Tree[i].cache[m.address].state = Tip then
                    if m.opcode = ProbeBlock then
                        if Tree[i].cache[m.address].dirty then
                            send(ProbeAckData, TtoB, m.src, L2, m.address, Tree[i].cache[m.address].data);
                            Tree[i].cache[m.address].dirty := false;
                        else
                            send(ProbeAck, TtoB, m.src, L2, m.address, UNDEFINED);
                        endif;
                        Tree[i].cache[m.address].state := Branch;
                    endif;
                endif;
                clearmsg(i, 2);
            endif;   
        endif;
    endrule;

    rule "receive_ReleaseAck"
        checklink(i, 4, ReleaseAck)
    ==>
    var m : msgType;
    begin
        m := getmsg(i, 4);
        Tree[i].master_pending[m.address] := Empty;
        clearmsg(i, 4);
    endrule;
endalias;
endruleset;

-- Ln receive
-- from upper level
ruleset i : cacheId; b : branchType do 
alias link: Tree[i].link[b] do 
    rule "Ln_receive_AcquirePerm"
        link[1].opcode = AcquirePerm
    ==>
    var m : msgType; 
    var src : nodeId;
    begin
        src := Tree[i].sons[b];
        m := link[1];
        if Tree[i].cache[m.address].state = Tip then
            if  forall k : branchType do
                    (k != b -> Tree[i].directory[k][m.address] = None) &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData 
                endforall &
                Tree[i].slave_pending[b][m.address] != GrantAck then
                    undefine link[1];
                    link[1].opcode := Empty;
                    if Tree[i].directory[b][m.address] = Branch then
                        send(Grant, toT, src, i, m.address, UNDEFINED);
                    elsif Tree[i].directory[b][m.address] = None then
                        send(GrantData, toT, src, i, m.address, Tree[i].cache[m.address].data);
                    endif;
                    Tree[i].directory[b][m.address] := Tip;
                    Tree[i].cache[m.address].state := Trunk;
                    Tree[i].slave_pending[b][m.address] := GrantAck;
            elsif exists k : branchType do
                    k != b &
                    Tree[i].directory[k][m.address] = Branch &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                    Tree[i].slave_pending[k][m.address] != GrantAck end then
                    for k : branchType do
                        if k != b & Tree[i].directory[k][m.address] = Branch &
                           Tree[i].slave_pending[k][m.address] != ProbeAck & 
                           Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                           Tree[i].slave_pending[k][m.address] != GrantAck then
                            send(ProbePerm, toN, Tree[i].sons[k], i, m.address, UNDEFINED);
                        endif;
                    endfor;
            endif;
        elsif Tree[i].cache[m.address].state = Branch & 
              Tree[i].master_pending[m.address] != Grant & 
              Tree[i].master_pending[m.address] != GrantData &
              Tree[i].master_pending[m.address] != ReleaseAck then
                send(AcquirePerm, BtoT, i, Tree[i].father, m.address, UNDEFINED);
        elsif Tree[i].cache[m.address].state = None & 
              Tree[i].master_pending[m.address] != Grant & 
              Tree[i].master_pending[m.address] != GrantData &
              Tree[i].master_pending[m.address] != ReleaseAck then
            send(AcquireBlock, NtoT, i, Tree[i].father, m.address, UNDEFINED);
        endif;
    endrule;

    rule "Ln_receive_AcquireBlock"
        link[1].opcode = AcquireBlock
    ==>
    var m : msgType; 
    var src : nodeId;
    begin
        m := link[1];
        src := Tree[i].sons[b];
        if m.para = NtoB then
            if  Tree[i].cache[m.address].state = None &
                Tree[i].master_pending[m.address] != Grant &
                Tree[i].master_pending[m.address] != GrantData &
                Tree[i].master_pending[m.address] != ReleaseAck then  
                send(AcquireBlock, NtoB, i, Tree[i].father, m.address, UNDEFINED);
            elsif (Tree[i].cache[m.address].state = Branch | Tree[i].cache[m.address].state = Tip) then
                if  Tree[i].slave_pending[b][m.address] != GrantAck &
                    Tree[i].slave_pending[b][m.address] != ProbeAck &
                    Tree[i].slave_pending[b][m.address] != ProbeAckData then
                    undefine link[1];
                    link[1].opcode := Empty;
                    send(GrantData, toB, src, i, m.address, Tree[i].cache[m.address].data);
                    Tree[i].directory[b][m.address] := Branch;
                endif;
            elsif Tree[i].cache[m.address].state = Trunk & 
                  exists k : branchType do
                    k != b &
                    Tree[i].directory[k][m.address] = Tip &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                    Tree[i].slave_pending[k][m.address] != GrantAck end then
                    for k : branchType do
                        if k != b & Tree[i].directory[k][m.address] = Tip then
                            send(ProbeBlock, toB, Tree[i].sons[k], i, m.address, UNDEFINED);
                        endif;
                    endfor;
            endif;
        elsif m.para = NtoT then
            if  Tree[i].cache[m.address].state = None &
                Tree[i].master_pending[m.address] != Grant &
                Tree[i].master_pending[m.address] != GrantData &
                Tree[i].master_pending[m.address] != ReleaseAck then    
                send(AcquireBlock, NtoT, i, Tree[i].father, m.address, UNDEFINED);
            elsif Tree[i].cache[m.address].state = Branch then
                if  Tree[i].master_pending[m.address] != GrantData &
                    Tree[i].master_pending[m.address] != Grant &
                    Tree[i].master_pending[m.address] != ReleaseAck then
                    send(AcquirePerm, BtoT, i, Tree[i].father, m.address, UNDEFINED);
                endif;
            elsif Tree[i].cache[m.address].state = Tip then
                if forall k : branchType do
                    Tree[i].directory[k][m.address] = None &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData endforall &
                    Tree[i].slave_pending[b][m.address] != GrantAck then
                        undefine link[1];
                        link[1].opcode := Empty;
                        send(GrantData, toT, src, i, m.address, Tree[i].cache[m.address].data);
                        Tree[i].cache[m.address].state := Trunk;
                        Tree[i].directory[b][m.address] := Tip;
                elsif exists k : branchType do
                        k != b &
                        Tree[i].directory[k][m.address] = Branch &
                        Tree[i].slave_pending[k][m.address] != ProbeAck & 
                        Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                        Tree[i].slave_pending[k][m.address] != GrantAck end then
                        for k : branchType do
                            if k != b & Tree[i].directory[k][m.address] = Branch &
                               Tree[i].slave_pending[k][m.address] != ProbeAck & 
                               Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                               Tree[i].slave_pending[k][m.address] != GrantAck then
                                send(ProbePerm, toN, Tree[i].sons[k], i, m.address, UNDEFINED);
                            endif;
                        endfor;
                endif;
            elsif Tree[i].cache[m.address].state = Trunk & 
                  exists k : branchType do
                    k != b &
                    Tree[i].directory[k][m.address] = Tip &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                    Tree[i].slave_pending[k][m.address] != GrantAck end then
                    for k : branchType do
                        if k != b & Tree[i].directory[k][m.address] = Tip then
                            send(ProbeBlock, toN, Tree[i].sons[k], i, m.address, UNDEFINED);
                        endif;
                    endfor;
            endif;
        endif;
    endrule;

    rule "Ln_receive_ProbeAck[Data]"
        link[3].opcode = ProbeAck |
        link[3].opcode = ProbeAckData
    ==>
    var m : msgType; 
    var src : nodeId;
    begin
        m := link[3];
        src := Tree[i].sons[b];
        undefine link[3];
        link[3].opcode := Empty;
        if m.para = TtoN then
            Tree[i].directory[b][m.address] := None;
            Tree[i].cache[m.address].state := Tip;
        elsif m.para = TtoB then
            Tree[i].directory[b][m.address] := Branch;
            Tree[i].cache[m.address].state := Tip;
        elsif m.para = BtoN | m.para = NtoN then
            Tree[i].directory[b][m.address] := None;
        endif;
        if m.opcode = ProbeAckData then
            Tree[i].cache[m.address].data := m.data;
            Tree[i].cache[m.address].dirty := true;
        endif;
        Tree[i].slave_pending[b][m.address] := Empty;
    endrule;

    -- 手册里ReleaseAck没有地址参数？
    rule "Ln_receive_Release[Data]"
        link[3].opcode = Release | 
        link[3].opcode = ReleaseData
    ==>
    var m : msgType; 
    var src : nodeId;
    begin
        m := link[3];
        src := Tree[i].sons[b];
        undefine link[3];
        link[3].opcode := Empty;
        if m.para = TtoN then
            Tree[i].cache[m.address].state := Tip;
        endif;
        if m.opcode = ReleaseData then
            Tree[i].cache[m.address].data := m.data;
            Tree[i].cache[m.address].dirty := true;
        endif;
        Tree[i].directory[b][m.address] := None;
        send(ReleaseAck, UNDEFINED, src, i, m.address, UNDEFINED);
    endrule;

    rule "Ln_receive_GrantAck"
        link[5].opcode = GrantAck |
        link[5].opcode = GrantAck
    ==>
    var m : msgType; 
    var src : nodeId;
    begin
        m := link[5];
        src := Tree[i].sons[b];
        undefine link[5];
        link[5].opcode := Empty;
        Tree[i].slave_pending[b][m.address] := Empty;
    endrule;
endalias;
endruleset;

-- Ln receive
-- from lower level
ruleset i : cacheId do 
rule "Ln_receive_Grant"
    checklink(i, 4, Grant) | checklink(i, 4, GrantData)
==>
var m : msgType;
begin
    m := getmsg(i, 4);
    if m.opcode = GrantData then
        Tree[i].cache[m.address].data := m.data;
    endif;
    if m.para = toB then
        Tree[i].cache[m.address].state := Branch;
    elsif m.para = toT then
        Tree[i].cache[m.address].state := Tip;
    endif;
    clearmsg(i, 4);
    Tree[i].master_pending[m.address] := Empty;
    send(GrantAck, UNDEFINED, i, Tree[i].father, m.address, UNDEFINED);
endrule;

rule "Ln_receive_ReleaseAck"
    checklink(i, 4, ReleaseAck)
==>
var m : msgType;
begin
    m := getmsg(i, 4);
    clearmsg(i, 4);
    Tree[i].master_pending[m.address] := Empty;
endrule;

rule "Ln_receive_Probe(Perm/Block)"
    checklink(i, 2, ProbeBlock) | checklink(i, 2, ProbePerm)
==>
var m : msgType;
begin
    m := getmsg(i, 2);
    if Tree[i].cache[m.address].state = None & Tree[i].master_pending[m.address] != ReleaseAck then
        clearmsg(i, 2);
        send(ProbeAck, NtoN, i, Tree[i].father, m.address, UNDEFINED);
    elsif m.opcode = ProbePerm & Tree[i].cache[m.address].state = Branch then
        if  forall k : branchType do
            Tree[i].directory[k][m.address] = None endforall &
            Tree[i].master_pending[m.address] != ReleaseAck then
                clearmsg(i, 2);
                Tree[i].cache[m.address].state := None;
                send(ProbeAck, BtoN, i, Tree[i].father, m.address, UNDEFINED);
        else
            for k : branchType do
                if  Tree[i].directory[k][m.address] = Branch &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                    Tree[i].slave_pending[k][m.address] != GrantAck then
                    send(ProbePerm, toN, Tree[i].sons[k], i, m.address, UNDEFINED);
                    Tree[i].slave_pending[k][m.address] := ProbeAck;
                endif;
            endfor;
        endif;
    elsif m.opcode = ProbeBlock then
        if Tree[i].cache[m.address].state = Tip then
            if  forall k : branchType do
                Tree[i].directory[k][m.address] = None endforall &
                Tree[i].master_pending[m.address] != ReleaseAck then
                    clearmsg(i, 2);
                    Tree[i].cache[m.address].state := None;
                    if Tree[i].cache[m.address].dirty then
                        send(ProbeAckData, TtoN, i, Tree[i].father, m.address, Tree[i].cache[m.address].data);
                        Tree[i].cache[m.address].dirty := false;
                    else
                        send(ProbeAck, TtoN, i, Tree[i].father, m.address, UNDEFINED);
                    endif;
            else
                for k : branchType do
                    if  Tree[i].directory[k][m.address] = Branch &
                        Tree[i].slave_pending[k][m.address] != ProbeAck & 
                        Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                        Tree[i].slave_pending[k][m.address] != GrantAck then
                            send(ProbePerm, toN, Tree[i].sons[k], i, m.address, UNDEFINED);
                            Tree[i].slave_pending[k][m.address] := ProbeAck;
                    endif;
                endfor;
            endif;
        elsif Tree[i].cache[m.address].state = Trunk then
            for k : branchType do
                if  Tree[i].directory[k][m.address] = Tip &
                    Tree[i].slave_pending[k][m.address] != ProbeAck & 
                    Tree[i].slave_pending[k][m.address] != ProbeAckData & 
                    Tree[i].slave_pending[k][m.address] != GrantAck then
                        send(ProbeBlock, toN, Tree[i].sons[k], i, m.address, UNDEFINED);
                        Tree[i].slave_pending[k][m.address] := ProbeAck;
                endif;
            endfor;
        endif;
    endif;
endrule;
endruleset;

-- Ln send msg
ruleset i: cacheId; addr : addrType do
rule "Ln_send_Release1"
    (Tree[i].cache[addr].state = Tip | 
        Tree[i].cache[addr].state = Branch) &
    forall b : branchType do
        Tree[i].directory[b][addr] = None
    endforall &
    Tree[i].master_pending[addr] != ReleaseAck &
    Tree[i].master_pending[addr] != Grant &
    Tree[i].master_pending[addr] != GrantAck
==>
begin
    if Tree[i].cache[addr].state = Branch then
        send(Release, BtoN, i, Tree[i].father, addr, UNDEFINED);
    elsif Tree[i].cache[addr].state = Tip then
        if Tree[i].cache[addr].dirty then
            send(ReleaseData, TtoN, i, Tree[i].father, addr, Tree[i].cache[addr].data);
        else    
            send(Release, TtoN, i, Tree[i].father, addr, Tree[i].cache[addr].data);
        endif;
    endif;
    undefine Tree[i].cache[addr].data;
    Tree[i].cache[addr].state := None;
endrule;

rule "Ln_send_Release2"
    (Tree[i].cache[addr].state = Tip | 
        Tree[i].cache[addr].state = Branch) &
    exists b : branchType do
        Tree[i].directory[b][addr] = Branch
    end
==>
begin
    for k : branchType do
        if  Tree[i].directory[k][addr] = Branch &
            Tree[i].slave_pending[k][addr] != ProbeAck & 
            Tree[i].slave_pending[k][addr] != ProbeAckData & 
            Tree[i].slave_pending[k][addr] != GrantAck then
            send(ProbePerm, toN, Tree[i].sons[k], i, addr, UNDEFINED);
            Tree[i].slave_pending[k][addr] := ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_send_Release3"
    Tree[i].cache[addr].state = Trunk &
    exists b : branchType do
        Tree[i].directory[b][addr] = Tip
    end
==>
begin
    for k : branchType do
        if  Tree[i].directory[k][addr] = Tip &
            Tree[i].slave_pending[k][addr] != ProbeAck & 
            Tree[i].slave_pending[k][addr] != ProbeAckData & 
            Tree[i].slave_pending[k][addr] != GrantAck then
                send(ProbeBlock, toN, Tree[i].sons[k], i, addr, UNDEFINED);
                Tree[i].slave_pending[k][addr] := ProbeAck;
        endif;
    endfor;
endrule;
endruleset;

invariant "newest"
forall i : nodeId; addr : addrType do
    (Tree[i].cache[addr].state = Tip | Tree[i].cache[addr].state = Branch) -> (!IsUndefined(Tree[i].cache[addr].data) & Tree[i].cache[addr].data = auxData[addr])
endforall;

invariant "global_filter"
forall i : nodeId; j : nodeId; addr : addrType do
    i != j -> 
    !(Tree[i].cache[addr].state = Tip & Tree[j].cache[addr].state = Tip)
endforall;

invariant "leaf_is_not_trunk"
forall i : coreId; addr : addrType do
    Tree[i].cache[addr].state != Trunk
endforall;

invariant "invalid_not_have_valid_child_r"
forall i : cacheId; addr : addrType do
    Tree[i].cache[addr].state = None ->
    forall b : branchType do
        Tree[i].directory[b][addr] = None
    endforall
endforall;

invariant "trunk_not_have_branch_child_r"
forall i : cacheId; addr : addrType do
    Tree[i].cache[addr].state = Trunk ->
    forall b : branchType do
        Tree[i].directory[b][addr] != Branch
    endforall
endforall;

invariant "branch_not_have_t_child_r"
forall i : cacheId; addr : addrType do
    Tree[i].cache[addr].state = Branch ->
    forall b : branchType do
        Tree[i].directory[b][addr] != Trunk &
        Tree[i].directory[b][addr] != Tip
    endforall
endforall;

invariant "trunk_have_t_child_r"
forall i : cacheId; addr : addrType do
    Tree[i].cache[addr].state = Trunk ->
    exists b : branchType do
        Tree[i].directory[b][addr] = Trunk |
        Tree[i].directory[b][addr] = Tip
    end
endforall;
