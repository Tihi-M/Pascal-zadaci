program zadaci_za_vjezbu3_21;
var userInputToken: integer;

function findTableDimension(tokensTable: integer):integer;
var i:integer;
begin
    i := 1;
    while (i*4 - 4) <> tokensTable do
      i := i+1;
    findTableDimension := i+1;  
end;    

procedure canBeTokenNum(numToCheck: integer);
var sideOftable:integer;
begin
    if numToCheck = 1 then
      WriteLn('Uneseni broj moze biti broj zetona na 1x1 tabeli.')
      else
      begin
      numToCheck := numToCheck - 4;
      if (numToCheck mod 4) = 0 then
        begin
            sideOftable := findTableDimension(numToCheck);
            WriteLn('Uneseni broj moze biti broj zetona na ',sideOftable,'x',sideOftable,' tabeli.');          
        end
        else
            WriteLn('Uneseni broj ne moze biti broj zetona na ni jednoj nxn tabeli');
    end;
end;

begin
    WriteLn('Unesite broj zetona: ');
    Read(userInputToken);
    canBeTokenNum(userInputToken);
end.