program Razgranati4;
var str1, str2, str3, strJedn: integer;
begin
    WriteLn('Unesite stranice trougla: ');
    ReadLn(str1,str2,str3);
    if (str1 + str2 + str3) mod 3 = 0 then
    begin
      WriteLn('Postoji jednakostranicni trougao istog obima.');
      strJedn:= (str1 + str2 + str3) div 3;
      WriteLn('Duzina njegove stranice je: ', strJedn);
      end
      else
      Writeln('Ne postoji jednakostranicni trougao istog obima');
end.