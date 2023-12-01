program punoletsvo;
var dd1,mm1,gg1,dd2,mm2,gg2:integer;



procedure jePunoletan(d1,m1,g1,d2,m2,g2:integer);
begin
  if g2-g1>=18 then
    begin
      if g2 - g1 >18 then
        WriteLn('Da')
        else
        begin
          If m1 > m2 then
            WriteLn('Ne')
            else
            begin
              if m2 > m1 then
                WriteLn('Da')
                else
                begin
                  if d2 < d1 then
                    writeln('Ne')
                    else WriteLn('Da');
                end;
            end;
        end;
    end
    else writeln('Ne');
end;


begin
    readln(dd1,mm1,gg1);
    ReadLn(dd2,mm2,gg2);
    jePunoletan(dd1,mm1,gg1,dd2,mm2,gg2);
end.