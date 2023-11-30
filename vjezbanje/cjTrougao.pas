program cjTrougao;
var i,j,obim:LongInt;

begin
    ReadLn(obim);       
    for i:=1 to (obim div 2) do
      begin
        for j:=1 to (obim div 2) do
          begin
              if (i>=j) and (j>=obim-j-i) and (obim>i+j) then
              begin
                 if (i+j>obim-i-j) and (obim-i> i) and (obim-j>j) then
                   writeln(i, ' ',j,' ',(obim-i-j));
              end;
          end;
      end;
end.