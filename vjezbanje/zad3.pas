program zad3;
var h,m:integer;
ch:char;
procedure doPonoci(sat,minut:integer);
begin
  writeln('Do ponoci ',23-sat,' ',60-minut);
end;

procedure charR(c:char);
begin
    WriteLn(c, ' ', ord(c), ' ', ord('Z'));
  if (ord(c)>=ord('a')) and (ord(c)<=ord('z'))then
      writeln(char(ord(c)-ord('a')+ord('A')),' ',ord(char(ord(c)-ord('a')+ord('A'))))
    else if (ord(c)>=ord('A')) and (ord(c)<=ord('Z')) then
    writeln(char(ord(c)-ord('A')+ord('a')),' ',ord(char(ord(c)-ord('A')+ord('a'))));
end;

begin
  writeln('Unesite sat i minut:');
  readln(h,m);
  doPonoci(h,m);
  readln(ch);
  charR(ch);
end.