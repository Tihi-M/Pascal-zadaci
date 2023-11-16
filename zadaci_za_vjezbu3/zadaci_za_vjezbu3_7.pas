program zadaci_za_vjezbu3_7;
var userInput: integer;

function jeProst(num:Integer):Boolean;
var i: Integer;
begin
    i:=2;
    jeProst := True;
    while i < Sqrt(num) do
      begin
        if (num mod i) = 0 then
        begin
        jeProst := false;
        Break;
        end
        else
        i:=i+1;
      end;
end;

begin
    WriteLn('Unesite neki prirodan broj: ');
    Read(userInput);
    if jeProst(userInput) then
      WriteLn('Broj je prost.')
      else
      WriteLn('Broj nije prost');
end.