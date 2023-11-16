{1. Nacrtati algoritam i napisati program pomocu koga
se iz zadatog intervala odredjuje broj sa najvise prostih
djelioca. Ako ih ima vise, uzeti najmanji.}
program kolok1;
var a, b: integer;
maxProstih:integer;

function checkInput(a,b:integer):Integer;
var checker: Boolean;
begin
    if a>b then
      begin
        checker := True;
        while checker = True do
        begin
            WriteLn('Broj b mora biti veci od a.');
            WriteLn('Unesite broj b ponovo');
            ReadLn(b);
            if a<b then
            checker := False;
        end;
        end;
        Result := b; 
end;

begin
    Write('Unesite a i b, granice intervala: ');
    ReadLn(a,b);
    b:=checkInput(a,b);
    maxProstih:=1;
    for i:= a to b do
      for j := 2 to BuiltInSqrt(i) do
        if (i mod j) = 0 then
            for z:=2 to BuiltInSqrt do
              if (j mod z) =
          maxProstih := maxProstih+1;
    
    
    WriteLn(a,b);

end.