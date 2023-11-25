{
       11
      2112
     321123
    43211234
   5432112345
}
program piramidaSaCasa;

procedure printPyramid(height :integer);
var i, j:integer;
begin
    i:=0;
    j:=0;
    while i<height do
      begin
        j:=0;
        while j<(height - i-1) do
          begin
          Write(' ');
          j:=j+1;
          end;

        j:=i+1;
        while j>0 do
          begin
            write(j);
            j:=j-1;
          end;

        j:=1;
        while j<=(i+1) do
          begin
            write(j);
            j:=j+1;
          end;
        WriteLn();
        i:=i+1;
      end;
end;

begin
  printPyramid(5);
end.