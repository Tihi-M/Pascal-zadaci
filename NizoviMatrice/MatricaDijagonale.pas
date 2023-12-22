program MatricaDijagonale;
type matrix = array of array of integer;
var n,m:integer;
matrica:matrix;

procedure fillMatrix(var matrica:matrix;n,m:integer);
var i,j,z,sumOfIndex,el:integer;
begin
  sumOfIndex:=0;
  el:=0;
  for z:=0 to (n-1)*(m-1) do
  begin
    for i:=0 to n-1 do
        begin
        for j:=0 to m-1 do
        begin
            if(i+j=sumOfIndex) then
                begin
                matrica[i][j] := el;
                el:=el+1;
                end;
            end;
        end;
        sumOfIndex:=sumOfIndex+1;
    end;
end;

procedure printMatrix(var matrica:matrix;rows,colls:integer);
var i,j:integer;
begin
    for i:=0 to rows-1 do
      begin
        for j:=0 to colls-1 do
          begin
          write(matrica[i][j],' ');
          end;
        writeln();
      end;
end;


begin
  writeln('Dimenzije matrice: ');
  readln(n,m);
  SetLength(matrica,n,m);
  fillMatrix(matrica,n,m);
  printMatrix(matrica,n,m);
end.