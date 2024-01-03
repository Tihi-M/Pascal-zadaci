program zad1;
var num,i:integer;
novcanice:array[0..9] of integer;
begin
writeln('Unesite cijenu proizvoda');
readln(num);
novcanice[0]:= 1;
novcanice[1]:= 10;
novcanice[2]:= 20;
novcanice[3]:= 50;
novcanice[4]:= 100;
novcanice[5]:= 200;
novcanice[6]:= 500;
novcanice[7]:= 1000;
novcanice[8]:= 2000;
novcanice[9]:= 5000;
  
write(num,'= ');
for i:=9 downto 0 do
  begin
    if(num>0) then
        if(num div novcanice[i] <> 0) then
        begin
        if(i <> 0) then
        write(novcanice[i],'*',num div novcanice[i],' + ')
        else write(novcanice[i],'*',num div novcanice[i]);
        end;
    num:=num-novcanice[i]*(num div novcanice[i]);
  end;
end.