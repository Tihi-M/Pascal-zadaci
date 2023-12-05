program grafik3;
var x,y:Double;
function pripadaSijenci(x,y:Double):boolean;
begin
  pripadaSijenci:=false;
  if(x*x+y*y-4 > 0) and (y*y-2*x < 0) then
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