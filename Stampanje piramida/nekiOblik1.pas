{
     #########       
      #######
       #####
        ###
         #
         #
        ###  
       #####
      #######
     #########
      
 }
 program nekiOblik1;
 uses Crt;
procedure printShape(height:integer);
var j,i:integer;
begin 
    for i:=0 to height do
      begin
        for j:=i-1 downto 0 do
        write(' ');
        for j:=height -i+1 downto 1 do
          write('#');
        for j:=0 to height - i-1 do
          write('#');
        delay(10);
    Writeln(); 
      end;

  for i:=0 to height do
    begin
      for j:=0 to height - i -1 do
        write(' ');
      for j:=i  downto 0 do
        write('#');
      for j:=1 to i do
        write('#');
        delay(10); 
    writeln();
    end;
end;

begin
  printShape(5);

end.