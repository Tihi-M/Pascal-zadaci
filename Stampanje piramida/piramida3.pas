{
       #
      # #
     # # #
    # # # # 
}
program piramida3;

procedure printPyramid(height:integer);
var i,j:integer;
begin
  for i:=0 to height do
    begin
      for j:=0 to height-i-1 do
        write(' ');
      for j:=i downto 1 do
        write('# ');
    WriteLn();
    end;
end;

begin
    printPyramid(5);
end.
