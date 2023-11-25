{
         #
        ###  
       #####
      #######
     #########
      #######
       #####
        ###
         #
 }
program romb;
uses Crt;
procedure printRomb(height:integer);
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
    //od pola do kraja
    for i:=0 to height do
      begin
        for j:=i downto 0 do
        write(' ');
        for j:=height -i downto 1 do
          write('#');
        for j:=1 to height - i-1 do
          write('#');
        delay(10);
    Writeln(); 
      end;

    end;
begin
  while true do
  printRomb(50);
end.