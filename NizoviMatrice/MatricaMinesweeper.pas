program MatricaMinesweeper;
type matrix = array of array of integer;
var matrica:matrix;
n,m:integer;


procedure takeInput(var matrica:matrix;n,m:integer);
var i,j:integer;
begin
  for i:=0 to n-1 do
    for j:=0 to m-1 do 
        readln(matrica[i][j]);
end;

procedure printMatrix(var matrica:matrix;n,m:integer);
var i,j:integer;
begin
  for i:=0 to n-1 do
  begin
    for j:=0 to m-1 do
      write(matrica[i][j],' ');
    WriteLn();
    end;
    writeln();
end;

procedure createMatrix(matrica:matrix; n,m:integer);
var v,k,dv,dk,vv,kk:integer;
brBombi:matrix;
begin
SetLength(brBombi,n,m);
  for v:=0 to n-1 do
    for k:=0 to m-1 do
      begin
      for dv:=-1 to 1 do
        for dk:=-1 to 1 do 
        begin
          vv:=v+dv;
          kk:=k+dk;
          if((vv>=0) and (vv<=n-1)) and ((kk>=0) and (kk<=m-1)) and ((vv <> v) or (kk<>k)) and (matrica[vv][kk] = 1) then
            brBombi[v][k] := brBombi[v][k]+1;
        end;
      end;
      printMatrix(brBombi,n,m);
end;

begin
writeln('Dimenzije matrice: ');
readln(n,m);
SetLength(matrica,n,m);
takeInput(matrica,n,m);
printMatrix(matrica,n,m);
createMatrix(matrica,n,m);
end.