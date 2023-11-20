program zadaci_za_vjezbu3_19;// # frank ocean - pyramids #
uses Crt;
var visinaPiramide, i:integer;

procedure printPyramid(height: integer);
var i,j: integer;
begin
    i:=1;
    j:=1;
    while i <= height do
      begin
        while j < i do 
        begin
          delay(1);
          Write(j,' ');
          j:= j + 1;
        end;
        WriteLn();
        i:=i+1;
        j := 1;
      end;

    while i > 0 do 
    begin
      while j < i do 
      begin
        delay(1);
        Write(j, ' ');
        j:= j+1;
      end;
      WriteLn();
      i := i - 1;
      j := 1; 
    end;
end;

begin
    writeln('Unesite visinu piramide: '); 
    Read(visinaPiramide);
    i:= 0;
    while i < 1 do 
    printPyramid(visinaPiramide);
end.