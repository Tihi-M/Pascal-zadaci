program  zadaci_za_vjezbu3_9;
var userInput:integer;
function jeProst(brZaProvjeru:Integer):Boolean;
var i : integer;
begin
    jeProst := True;
    i := 2;
    while i <= sqrt(brZaProvjeru) do
      begin
        if (brZaProvjeru mod i) = 0 then
          jeProst := False;
        i := i+1;  
      end;
end;

procedure checkFirstN(numberLimit:Integer);
var i, brojProstih: Integer;
begin
    i:=1;
    brojProstih := 0;
    WriteLn('Prosti brojevi od 1 do ',numberLimit,' su:');
    while i < numberLimit do
      begin
        if jeProst(i) then
        begin
        WriteLn(i);
        brojProstih := brojProstih+1;
        end;
        i := i+1;
      end;
    WriteLn('Broj prostih izmedju 1 i ', numberLimit, ' je: ',brojProstih);
end;
begin
    WriteLn('Unesite broj N:');
    ReadLn(userInput);
    checkFirstN(userInput);
end.