program casovnik;
var sat:integer;
ugao:integer;
minut:real;

begin
readln(ugao);
    sat:= ugao div 30;
    minut := (ugao mod 30) / 0.5;
  writeln(' ',sat,' ',minut:0:0);
end.