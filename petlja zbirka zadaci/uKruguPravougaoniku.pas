program uKruguPravougaoniku;
var xTacke,yTacke,xCentra,yCentra, poluprecnik,sirina,duzina:integer;

procedure uKrugu(x,y,oX,oY,r:integer);
var rastojanjeOdCentra:real;
begin
rastojanjeOdCentra := sqrt((x-oX)*(x-oX)+(y-oY)*(y-oY));
  if (rastojanjeOdCentra = r) then
  writeln('Tacka je u krugu')
  else
  writeln('Tacka nije u krugu');
end;

procedure uPravougaoniku(x,y,oX,oY,a,b:integer);
begin
    if (x < oX - a div 2) or (x > oX + a div 2 ) or (y > oY + b div 2) or (y < oY - b div 2) then
      WriteLn('Tacka nije u pravougaoniku.')
      else 
      WriteLn('Tacka je u pravougaoniku');
end;


begin
  readln(xTacke,yTacke);
  readln(xCentra,yCentra);
  readlN(poluprecnik,duzina,sirina);
    uKrugu(xTacke,yTacke,xCentra,yCentra,poluprecnik);
    uPravougaoniku(xTacke,yTacke,xCentra,yCentra,duzina,sirina);
end.