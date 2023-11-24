{
    1
    12
    123
    1234
    12345
    1234
    123
    12
    1
}
program piramida1;
var visinaP:integer;
procedure stampajPiramidu(height : integer);
var i,j:integer;
begin
    i:=1;
    j:=1;
    while ( i <= height) do
      begin
        while( j <= i) do
        begin
          write(j,' ');
          j:=j+1;
          end;
        writeLn();
        j:=1;
        i:=i+1;
      end;
      i:=height-1;
       while (i > 0) do
        begin
        while (j<= i) do
          begin
          write(j,' ');
          j:=j+1;
          end;
        WriteLn();
        j:=1;
        i:=i-1;
        end;  
end;

begin
  read(visinaP);
  stampajPiramidu(visinaP);
end.