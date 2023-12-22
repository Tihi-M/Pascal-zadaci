program zadatak3;
type niz = array of integer;
var n1,n2:integer;
br1,br2:niz;
procedure takeInput(var br:niz;length:integer);
var i:Integer;
begin
writeln('Unesite cifre');
for i:=0 to Length-1 do
  ReadLn(br[i]);
end;

function findOgNum(var num:niz;length:integer):integer;
var i,stepenDesetke:integer;
begin
  findOgNum:=0;
  stepenDesetke:=1;
  for i:=length-1 downto 0 do
  begin
    findOgNum:=findOgNum+num[i]*stepenDesetke;
    stepenDesetke:=stepenDesetke*10;
  end;
end;

function brCifara(num:integer):integer;
begin
brCifara:=0;
num:=Abs(num);
  while(num>0)do
    begin
      brCifara:=brCifara+1;
      num:=num div 10;
    end;
    writeln(brCifara);
end;

procedure printResults(var arr:niz;length:integer;znak:char);
var i:integer;
begin
  write(znak);
  for i:=0 to length-1 do
    write(arr[i]);
end;
procedure razlikaArr(razlika,length:integer;znak:char);
var arr:niz;
i:integer;
begin
  SetLength(arr,length);
  for i:=length-1 downto 0 do
    begin
      arr[i] := razlika mod 10;
      razlika := razlika div 10;
    end;
    printResults(arr,length,znak);
end;

procedure razlikaAB(var br1,br2:niz;length1,length2:integer);
var ogBr1, ogBr2:integer;
a_b,duzinaRazlike:integer;
znakRazlike:char;
begin
  ogBr1:=findOgNum(br1,length1);
  ogBr2:= findOgNum(br2,length2);
  a_b:=ogBr1-ogBr2;
  duzinaRazlike:=brCifara(a_b);
    if(a_b = 0)then
      znakRazlike:=' '
      else if(a_b > 0) then znakRazlike:='+'
      else znakRazlike:='-';
a_b:=Abs(a_b);
razlikaArr(a_b,duzinaRazlike,znakRazlike);
end;
{
procedure razlikaAB(var br1,br2:niz;length1,length2l:integer);
var i,duzinaRazlike:integer;
razlika:niz;
znakRazlike:integer;
begin
    if(length1>length2)then
  duzinaRazlike:= length1
  else duzinaRazlike:=length2;
  SetLength(razlika,duzinaRazlike);
  for i:=duzinaRazlike to 0 do
  begin
    if(i > 0) then
      begin
          if br1[i] >= br2[i] then
          razlika[i] := br1[i] - br2[i]
          else
          begin
            razlika[i]:= 10+br[i]-br2[i];
            razlika[i-1]:=razlika[i-1]-1;
          end;
      end
      else 
      begin
        if br[i] >= br2 [i] then
          razlika[i]:= br1[i]-br2[i]
          else
            begin
              razlika[i]:=
            end;
      end;
  end;
end;
}
begin
  writeln('Duzina prvog broja');
  ReadLn(n1);
  SetLength(br1,n1);
  takeInput(br1,n1);
  writeln('Duzina drugog broja');
  ReadLn(n2);
  SetLength(br2,n2);
  takeInput(br2,n2);
  razlikaAB(br1,br2,n1,n2);
  end.