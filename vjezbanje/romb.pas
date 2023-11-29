program romb;
var duzinaStranice,i,j:integer;

begin
    ReadLn(duzinaStranice);
    for i:=duzinaStranice downto 1 do
      begin
      for j:=0 to i do
          write(' ');
        for j:=1 to duzinaStranice do
          write('#');
          writeln;
    end;
end.