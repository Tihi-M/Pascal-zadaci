program zad31;
var dd,mm,gg:integer;

function prestupnaGodina(g:integer):boolean;
begin
prestupnaGodina:=false;
  if((g mod 4 = 0) and (g mod 100 <> 0)) or (g mod 400 = 0) then prestupnaGodina:=true;
end;

function daysInMonth(m,g:integer):Integer;
begin
  case (m) of
  1,3,5,7,8,10,12: daysInMonth:=31;
  4,6,9,11:daysInMonth:=30;
  2:if (prestupnaGodina(g)) then daysInMonth:=29 else daysInMonth:=28;
  end;
end;

function validDate(d,m,g:integer):boolean;
begin
validDate:=true;
  if(d < 0) or (d> daysInMonth(m,g)) or (m>12) or (m<0) or (g<0) then validDate:=false;
end;

procedure findNextDay(d,m,g:integer);
begin
  if (d <> daysInMonth(m,g)) then writeln(d+1,'.',m,'.',g)
  else begin
    if(m+1 = 13) then writeln(1,'.', 1,'.', g+1)
    else writeln(1,'.',m+1,'.',g);
  end;
end;

begin
    writeln('Unesite datum: ');
    readln(dd,mm,gg);
    if validDate(dd,mm,gg) then
      findNextDay(dd,mm,gg)
      else writeln('Pogresan unos');
end.