program NizoviGrafik1;
var x,y:integer;
function pripadaSijenci(x ,y :integer):boolean;
begin
pripadaSijenci:=false;
    if((x*x+y*y-36<0) and (x*x+y*y-16>0) and (x-4>y) and (x>0) and (y>0)) then
    begin
        pripadaSijenci:=true;
        writeln('@');
    end;
    if((x*x+y*y-16<0) and (x>0) and (y>0)) then
    begin
      pripadaSijenci:=true;
      writeln('#');
      end;
      if((x*x+y*y-16<0) and (x-4>y) and (x>0) and (y<0))then
      begin
        pripadaSijenci:=true;
        WriteLn('?');
        end;
        if((x*x+y*y-36 <0) and (x*x + y*y -16>0) and (x-4<y) and (x<0) and (y<0))then
        begin
          pripadaSijenci:=true;
          writeln('!')
          end;
end;
begin
readln(x,y);
  WriteLn(pripadaSijenci(x,y))
end.