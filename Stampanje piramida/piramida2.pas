	{
        1
       21
      321
     4321
    54321
     4321
      321
       21
        1
}
program piramida2;
var visinaP:integer;
procedure stampajPiramidu(height : integer);
var i,j,k:integer;
begin
    i:=1;
    j:=0;
    k:=1;
    while ( i <= height) do
      begin
        while( j < height) do
        begin
          write(' ');
          j:=j+1;
          end;
        while(k >= 1)do
        begin
          write(k);
          k := k-1;   
        end;
        writeln();
        j:=i;
        k:=i+1;
        i:=i+1;
      end;

      
    i:=height-1;
    j:=0;
    k:=height-1;
    while ( i > 0) do
      begin
        while( j <= height-i) do
        begin
          write(' ');
          j:=j+1;
          end;
        while(k >= 1)do
        begin
          write(k);
          k := k-1;   
        end;
        writeln();
        j:=0;
        k:=i-1;
        i:=i-1;
      end;
end;

begin
  read(visinaP);
  stampajPiramidu(visinaP);
end.