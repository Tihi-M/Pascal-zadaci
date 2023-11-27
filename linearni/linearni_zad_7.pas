program linearni_zad_7;
var stanje1, stanje2, stanje3,putnik1, putnik2, putnik3:Double;
begin
    putnik1:=0;
    putnik2:=0;
    putnik3:=0;
  WriteLn('Unesite stanja na taksimetru:');
  ReadLn(stanje1,stanje2,stanje3);
  putnik1 := stanje1/3;
  putnik2 := stanje1/3 + (stanje2 - stanje1)/2 ;
  putnik3 := stanje1/3 + (stanje2 - stanje1)/2 + (stanje3-stanje2);
  writeln('Prvi putnik je platio: ',putnik1:0:2);
  writeln('Drugi putnik je platio: ',putnik2:0:2);
  writeln('Treci putnik je platio: ',putnik3:0:2);
end.