program MatricaSpirala;
type matrix = array of array of integer;
var n:integer;
matrica:matrix;

procedure fillMatrixSpiral(var matrica:matrix;n:integer);
var i,j,k,z,el:integer;
x,y,d,s:integer;
begin
  el:=1;
  x:=n div 2;
  y:=n div 2;
  s:=1;
  d:=0;
  z:=2;
      for k:=1 to n-1 do;
      begin
        z:=z+1;
        if (k<n-1) then
          z:=2
          else
          z:=3;
            for j:=0 to z-1 do
            begin
              for i:=0 to s-1 do
                begin
                  writeln('X, Y, el: ' ,x,' ',y,' ',el);
                  matrica[x][y] := el;
                  el:=el+1;
                  case (d) of
                    0: x:=x-1;
                    1: y:=y-1;
                    2: x:=x+1;
                    3: y:=y+1;
                    end;
                end;
              d:=(d+1) mod 4; 
            end;
            s:=s+1; 
          end;
    matrica[n-1][0]:=el;
end;
{
procedure fillMatrixSpiral(var matrica:matrix;length:integer);
var i, j,z,el,circlesNum:integer;
begin
  el := 1;
  circlesNum:=length-2;
  z:=1;
  while(circlesNum<>z)do
    begin
      for i:=0
    end;
end;
}
procedure printSpiral(var matrica:matrix;length:integer);
var i,j:integer;
begin
  for i:=0 to length-1 do
    begin
      for j:=0 to length-1 do
        write(matrica[i][j],' ');
        writeln();    
    end;
end;

begin
    writeln('Unesite n:');
    readln(n);
    n:=2*n+1;
    SetLength(matrica,n,n);
    fillMatrixSpiral(matrica,n);
    printSpiral(matrica,n);
end.