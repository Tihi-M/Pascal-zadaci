program zad5;
var dd,mm,gg:integer;

function leapYear(g:integer):boolean;
begin
leapYear:=false;
  if((g mod 4 = 0) and (g mod 100 <> 0)) or (g mod 400 = 0) then
    leapYear:=true;
end;

function getMonthLength(m,g:integer):integer;
begin
  case (m) of
    1,3,5,7,8,10,12:getMonthLength:=31;
    4,6,9,11:getMonthLength:=30;
    2:if(leapYear(g)) then getMonthLength:=29 else getMonthLength:=28;
end;
end;

function validDate(d,m,g:integer):boolean;
begin
validDate:=false;
  if(m>0) and (m<=12) and (d>0) and (d<=getMonthLength(m,g)) and (g>0) then
    validDate:=true; 
end;

procedure findDayBefore(d,m,g:integer);
begin
  if(d>2) then writeln(d-1,'.',m,'.',g,'.')
  else if (d = 1) and (m <> 1) then writeln(getMonthLength(m-1,g),'.',m-1,'.',g)
  else writeln(31,'.',12,'.',g-1);
end;

begin
writeln('Unesite datum');
  readln(dd,mm,gg);
  If(validDate(dd,mm,gg))then
    findDayBefore(dd,mm,gg);
end.