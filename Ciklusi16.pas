Program Ciklusi16;// provjerava je li unijeti br armstrongov
var uneseniBr, cifra, sumaKubova, tempN:integer;

begin
    WriteLn('Unesite broj za provjeru: ');
    Read(uneseniBr);
    tempN := uneseniBr;
    sumaKubova := 0;
    while tempN >=1  do
      begin
      cifra:= tempN mod 10;
      tempN := tempN div 10;
      sumaKubova := sumaKubova + cifra*cifra*cifra;
      WriteLn(sumaKubova);
        end;

    if sumaKubova = uneseniBr then
      WriteLn('Uneseni broj jeste armstrongov')
      else
      WriteLn('Uneseni broj nije armstrongov');
end.