program Nizovi20;

var n:integer;

procedure printResults(var arr:array of integer);
var i:integer;
begin
  for i:=1 to 6 do
    writeln(i,' ',arr[i]);
end;
procedure kockica(brBacanja:integer);
var i,bacanje:integer;
arr:array of integer;
begin
SetLength(arr,6);
Randomize;
    for i:=0 to brBacanja-1 do
      begin
        bacanje := random(10000)mod 6+2; 
        arr[bacanje-1] := arr[bacanje-1]+1;
      end; 
      printResults(arr);
end;

begin
readln(n);
    kockica(n);
end.