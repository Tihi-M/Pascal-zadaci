program kvaziBinarni;
var brojBin:integer;
tempBin,n:Integer; 

function countDigits(n:integer):integer;
begin//trazi koliko cifara ima unijeti broj
countDigits:=0;
  while n>0 do
    begin
      countDigits:=countDigits+1;
      n:=n div 10;
    end;
end;

function stepen(eksp:integer):integer;
var i,stepenDestke:integer;//racuna stepen desetke za broj cifara
begin
  stepen:=1;
  stepenDestke:=1;
  for i:=1 to eksp-1 do
      begin
      stepen := stepen+stepenDestke*10;
      stepenDestke:= stepenDestke*10;
      end;
end;

function nadjiMaksBinarni(n :integer):integer;
var brojCifrara,i:integer;//trazi najveci binarni broj za unijeti broj

begin
    nadjiMaksBinarni:=0;
    brojCifrara := countDigits(n);
    nadjiMaksBinarni := stepen(brojCifrara);

    if nadjiMaksBinarni > n then
        nadjiMaksBinarni :=nadjiMaksBinarni-stepen(brojCifrara-1);
end;

begin
    readln(n);
    brojBin:=0;
    tempBin := nadjiMaksBinarni(n);
   while n > 0 do
      begin
        if n >= tempBin then
        begin   
            Write(tempBin,' ');
            n:=n-tempBin;
            brojBin:=brojBin+1;
            tempBin := nadjiMaksBinarni(n);
        end;
    end;
    WriteLn('Ukupno bin: ',brojBin);
end.