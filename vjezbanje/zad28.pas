program zad28;
uses crt;
var n:integer;

procedure brojTackica(n:integer);
var count,i,j:integer;
begin
count:=0;
  for i:= 0 to n do
    begin
      for j:=i to n do
      begin
        count:=count+i+j;
        writeln('|=====|');
        writeln('|  ',i,'  |');
        writeln('|=====|');
        writeln('|  ',j,'  |');
        writeln('|=====|');
        delay(10);
        writeln();
    end;
    end;
    writeln('Ukupan broj tackica: ',count);
end;

begin
  writeln('Unesite najveci broj tackica:');
  readln(n);
  brojTackica(n);
end.