--var x, n1I,n1T,n1C,n1E, n2I,n2T,n2C,n2E : boolean;
const clientNUMS : 2;
type 
     client: 1..clientNUMS;

---var n : array [client] of state;

var x:boolean;

var nI: array [client] of boolean;
var nT: array [client] of boolean;
var nC: array [client] of boolean;
var nE:  array [client] of boolean;

ruleset i : client do
rule "Try" nI[i]  ==> begin
       nI[i]:=false; nT[i] := true; endrule; 

rule "Crit"
      nT[i]  & x = true ==>begin
      nT[i] := false; nC[i]:=true; x := false; endrule;

rule "Exit"
      nC[i]   ==>begin
      nC[i] := false; nE[i]:=true; endrule;
      
 
rule "Idle"
      nE[i]   ==> begin nE[i]:=false; nI[i] := true;
      x := true; endrule;
endruleset;

rule "Str_Idle"
      forall j : client do !nE[j] &!nC[j] end  & x=false  ==> begin  
      x := true; endrule;

rule "Str_Crit"
        x = true ==>begin
        x := false; endrule;      

startstate
begin
 for i: client do
    nI[i] := true;  nT[i]:=false; nC[i]:=false; nE[i]:=false;
  endfor;
  x := true;
endstartstate;

ruleset i:client; j: client do
invariant "coherence"
  i != j -> (nC[i] -> !nC[j]);
endruleset;

ruleset i:client; j: client do
invariant "coherence"
  i != j -> (nE[i] -> !nE[j]);
endruleset;

ruleset i:client; j: client do
invariant "coherence"
  i != j -> (nE[i] -> !nC[j]);
endruleset;