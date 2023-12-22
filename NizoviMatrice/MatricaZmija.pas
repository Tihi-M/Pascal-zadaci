program MatricaZmija;
type matrix = array of array of integer;
var matrica:matrix;
n,m:integer;

procedure fillMatrix(var matrica:matrix;rows,colls:integer);
var i,j,el:integer;
begin
el:=0;
  for i:=0 to rows-1 do
  begin
  if(i mod 2=1) then
    begin
    for j:=colls-1 downto 0 do
       begin
       matrica[i][j] := el;
       el:=el+1;
            end;
        end
    else
    for j:=0 to colls-1 do
      begin
        matrica[i][j] := el;
        el:=el+1;
        end;
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
  Writeln('Dimenzije matrice: ');
  readln(n,m);
  SetLength(matrica,n,m);
  fillMatrix(matrica,n,m);
  printMatrix(matrica,n,m);
end.