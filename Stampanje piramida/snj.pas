program snj;
var a,b,i:integer;

begin
    a:=0;
    b:=0;
    ReadLn(a,b);
    
    i:=0;
    for i:=a downto b do
      begin
        if(i mod 2 = 0) then
          i:=i+1
          else
          writeln(i);
          i:=i+1;
      end;
    
end.