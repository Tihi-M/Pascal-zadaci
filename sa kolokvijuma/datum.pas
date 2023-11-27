program datum;
var dan,godina,nDana:integer;
mjesec:ShortInt;

function validInput(dan,mjesec,godina:integer):boolean;
begin
    validInput:=true;
  if((dan > 31) or (dan < 31) or (mjesec >12) or (mjesec < 1) or (godina < 1)) then
    validInput:=false;
end;

function jePrestupna(god:integer):boolean;
begin
jePrestupna := false;
  if (god mod 400 = 0) or ((god mod 100 <> 0) and (god mod 4 = 0)) then
    jePrestupna := true;
end;

function duzinaMjeseca(godina:integer;mjesec:ShortInt):integer;
begin
  case mjesec of 
    1,3,5,7,8,10,12:duzinaMjeseca:=31;
    4,6,9,11:duzinaMjeseca:=30;
    2: if(jePrestupna(godina))then
      duzinaMjeseca:=29
      else
      duzinaMjeseca:=28;
    end;
end;

function updateDan(dan,mjesec:integer):integer;
var duzinaMjeseca:integer;
begin
  
end;

procedure izracunajDatum(dan,godina,nDana:integer;mjesec:ShortInt);

begin
    while nDana > 0 do
      updateDan(dan,mjesec);
    
end;

begin
  writeln('Unesite datum (dd,mm,gg): ');
  readln(dan,mjesec,godina);
    while validInput(dan,mjesec,godina) = False do
      begin
      writeln('Pogresan unos unesite ponovo');
      readln(dan,mjesec,godina);
      end;
  writeln('Unesite n: ');
  readln(nDana);
    writeln(duzinaMjeseca(godina,mjesec));
    
end.