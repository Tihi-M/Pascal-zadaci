program zadaci_za_vjezbu3_10;
var userInput: Integer;

procedure printSum(num : Integer);
var sum, i: Integer;
begin
    sum:=0;
    i:=1;
    while i<= num do
      begin
      sum := sum + i;
      i := i+1;  
      end;
    WriteLn('Suma prvih ', num, ' brojeva je: ', sum);
end;

begin
  WriteLn('Unesite broj N:');
  ReadLn(userInput);
  printSum(userInput);
end.