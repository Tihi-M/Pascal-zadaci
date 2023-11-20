program zadaci_za_vjezbu3_15;
var userInput: integer;

procedure printSequence(limit:integer);
var element:integer;
begin
    element := 1;
    while element <= (2*limit*limit - 1) do
      begin
        Write(' ', element);
        element :=element + 2; 
      end;
end;

begin
    WriteLn('Unesite broj n: ');
    read(userInput);
    printSequence(userInput);   
end.