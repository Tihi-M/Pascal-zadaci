program cilim;
var n,j,i:integer;
begin
    ReadLn(n);//prvi dio cilima 
    for i:= 0 to n-1 do
      begin
        for j:=1 to n*2 do
          begin
          if (j <= n+i) and (j>n-i)  then
            write(' ')
            else
            write('#');
          end; 
          if( i <> n)then
          WriteLn();
      end;
    // drugi dio cilima
    for i:=n-2 downto 0 do
    begin
      for j:=n*2 downto 1 do
        begin
          if (j > n-i) and (j <= n+i) then
            write(' ')
            else
            write('#');
        end;
        WriteLn();
    end;


end.