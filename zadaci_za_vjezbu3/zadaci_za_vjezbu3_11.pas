program zadaci_za_vjezbu3_11;
var sideA, sideB, sideC:Double; 
pTrougla: Double;
function checkSides(a,b,c:Double):Boolean;
begin
checkSides := true; 
    if ((a + b) <= c) or ((a + c) <= b) or ((b+c) <= a) then
      checkSides := false;
end;

function povrsinaTrougla(a,b,c: Double):Double;
var s: double;
begin
povrsinaTrougla:=0;
  if checkSides(a,b,c) then
    begin
    s := (a+b+c)/2;
    povrsinaTrougla :=Sqrt(s*(s-a)*(s-b)*(s-c));
    end
    else 
    WriteLn('Trougao ne postoji');
end;
begin
    WriteLn('Unesite stranice trougla: ');
    ReadLn(sideA,sideB,sideC);
    pTrougla := povrsinaTrougla(sideA,sideB,sideC);
    if pTrougla <> 0 then
      WriteLn('Povrsina trougla je ',pTrougla:0:1);    
end.
