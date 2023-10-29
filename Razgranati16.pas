program Razgranati16;//Na osnovu unesenih vremena odredjuje se ko je stigao prvi
var sat1, sat2, min1, min2, sec1, sec2: integer;
vrijeme1, vrijeme2, razlika:integer;
satR, minR, secR: integer;
begin
    WriteLn('Unesite vrijeme kad je 1. ucenik stigao: ');
    Read(sat1, min1, sec1);
    while((sat1<0) or (sat1 >24))or((min1<0) or (min1 >59))or((sec1<0) or (sec1>59)) do
      begin
      WriteLn('Pogresan unos, unesite ponovo: ');
      Read(sat1, min1, sec1);
      end;
    
    WriteLn('Unesite vrijeme kada je 2. ucenik stigao: ');
    ReadLn(sat2, min2, sec2);
    while((sat2<0) or (sat2 >24))or((min2<0) or (min2 >59))or((sec2<0) or (sec2>59)) do
      begin
      WriteLn('Pogresan unos, unesite ponovo: ');
      Read(sat2, min2, sec2);
      end;
    
    vrijeme1 := 3600*sat1 + 60*min1 + sec1;
    vrijeme2 := 3600*sat2 + 60*min2 + sec2;
    
    if (vrijeme2 > vrijeme1) and (vrijeme1 <> vrijeme2) then
        begin
        razlika := vrijeme2 - vrijeme1;
        satR := razlika div 3600;
        razlika := razlika mod 3600;
        minR := razlika div 60;
        razlika := razlika mod 60;
        secR:= razlika;
        WriteLn('Prvi je stigao 1. ucenik i bio je ', satR, ' h, ', minR, ' min, ', secR, ' s brzi.')
        end
        else if (vrijeme1 > vrijeme2) and (vrijeme1 <> vrijeme2) then
        begin
        razlika := vrijeme1 - vrijeme2;
        satR := razlika div 3600 ;
        razlika := razlika mod 3600;
        minR := razlika div 60;
        razlika := razlika mod 60;
        secR:= razlika;
        WriteLn('Prvi je stigao 2. ucenik i bio je ', satR, ' h, ', minR, ' min, ', secR, ' s brzi.') 
        end
        else Writeln('Stigli su u isto vrijeme.');
end.