program Nizovi1;
var niz:array of integer;
a,i,duzina:integer;
procedure updateArray(a:integer;var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
  begin
      if arr[i] > 0 then
      arr[i] := arr[i]-a
      else arr[i] := arr[i]+a;
      end;
end;

procedure printArr(var arr:array of integer;length:integer);
begin
  for i:=0 to length-1 do 
  write(arr[i],' ');
end;
procedure takeInput(var arr:array of integer;length:integer);
begin
  for i:=0 to length-1 do
    begin
    readln(arr[i]);
    end;
    
end;

begin
    ReadLn(duzina);
    SetLength(niz,duzina);
    takeInput(niz,duzina);
    readln(a);
    updateArray(a,niz,duzina);
    printArr(niz,duzina);     
end.