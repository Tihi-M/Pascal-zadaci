{
        #
       ###
      #####
     #######
    #########  
}
program piramida4;
uses crt;
procedure printPyramid(height:integer);
var j,i:integer;
begin
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
   while true do 
   printPyramid(50);
end.