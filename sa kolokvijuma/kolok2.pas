{2. Nacrtati algoritam i napisati program pomocu koga se
stampaju svi brojevi oblika AA koji se mogu razloziti na sumu 
kvadrata niza prirodnih brojeva ciji se susjedni clanovi
razlikuju za konstantu.

Primjer 
66 = 1^2 + 4^2 + 7^2 (clanovi se razlikuju za 3, 
sabirci su kvadrati prirodnih brojeva)
Napomena : prvi sabirak ne mora biti jedinica 
(to znaci da AA ne mora biti = 1^2 + (1+d)^2 + itd.,
gdje je d konstanta za koju se razlikuju sabirci}
program kolok2;

function findSum(base, diff:integer; root:double):integer;
begin
findSum:=0;
    while base < root do
      begin
        findSum := findSum + base*base;
        base:= base + diff; 
      end;
end;

function isAAnumber(numToCheck:integer):Boolean;
var i, constD:integer;
begin
  i:=1;
  constD:=1;
  isAAnumber:=false;
  while i < sqrt(numToCheck) do
    begin
      while constD < sqrt(numToCheck) do
        if findSum(i,constD,sqrt(numToCheck)) = numToCheck then
          begin
          isAAnumber := True;
          WriteLn('Baza: ',i,', konstanta d:',constD);
          Break;
          end
          else
          constD := constD+1;
        i:=i+1;
    end;
end;
procedure printAAnumbers();
var AA:integer;
begin
    AA := 11;
  while AA < 100 do
  begin
    if isAAnumber(AA) then
        WriteLn('Svojstvo vazi za broj ', AA, '.')
    else
        WriteLn('Svojstvo ne vazi  za broj ', AA, '.');
    AA := AA+11;
  end;
end;

begin
    printAAnumbers();
end.