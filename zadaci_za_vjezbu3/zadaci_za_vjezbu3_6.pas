program zadaci_za_vjezbu3_6;
var i, j,k, dimenzijaTablice: integer;
begin
    WriteLn('Unesite dimenziju tablice: ');
    ReadLn(dimenzijaTablice);
    k:=1;
    write('* |');
    //stampanje zaglavlja
    while k <= dimenzijaTablice do
      begin
        write('  ',k);
        k := k+1;
      end;
    WriteLn();
    while k > 0 do
      begin
        write('---');
        k := k-1;
      end;
    WriteLn();
    //stampanje tablice
    i:=1;
    j:=1;
    while i <= dimenzijaTablice do
      begin
        write(i,' | ');
        while j <= dimenzijaTablice do
          begin
          if (i*j) < 10 then
            write('  ',i*j)
            else
            write(' ', i*j);
          j:=j+1;  
          end;
          WriteLn();
        j:=1;
        i:=i+1;
      end;
end.