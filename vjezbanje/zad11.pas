program zad11;
var dimenzija:integer;


procedure tablicaMnozenja(n:integer);
var i,j:integer;
begin//zaglavlje
  write('* |  ');
  for i:= 1 to n do
    begin
    if (i < 9) then write(i,'  ')
    else write(i, ' ');
    end;
    writeln();
    for i:= 0 to n do 
    begin
    write('---');
    if(i>9) then write('-');
    end;
    WriteLn();

    //tablica
    for i:= 1 to n do
      begin
        if(i <= 9) then write(i,' | ')
        else write(i,'| ');
        for j:=1 to n do
          begin
           if(i*j<=9) then write(' ',i*j,' ')
           else write(i*j,' ');
           end;
        writeln();
      end;
end;


begin
    writeln('Dimenzija tablice: ');
    readln(dimenzija);
    tablicaMnozenja(dimenzija);
end.