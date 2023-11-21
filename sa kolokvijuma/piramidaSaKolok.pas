program piramidaSaKolok;
var userInput:integer;
procedure printPyramid(height:integer);
var i,j:integer;
begin
    i:= height;
    j:=height;
  while i >= 1 do 
  begin
    while j >= i do
      begin
        write(j,' ');
        j:=j-1;
      end;
      WriteLn();
      j:=height;
      i:=i-1;
  end;

    i:=height-1;
    j:=1;
    while i>0 do
    begin
      while j<=i do
      begin
        Write(j,' ');
        j:=j+1;
      end;
      WriteLn();
      j:=1;
      i:=i-1;
    end;
end;

begin
    WriteLn('Unesite visinu piramide: ');
    read(userInput);
    printPyramid(userInput);
    end.