program grafik1;
var x,y:integer;
function pripadaSijenci(x,y:integer):boolean;
begin
  pripadaSijenci:=false;
  if(x*x+y*y-4 < 0) and (y*y-2*x < 0) then
    pripadaSijenci:=true;
end;

begin
  WriteLn('x, y: ');
  readln(x,y);
  if pripadaSijenci(x,y) then
    WriteLn('Pripada')
    else
    WriteLn('Ne pripada.');
end.