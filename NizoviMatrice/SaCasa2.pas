program SaCasa2;

var n,m,zbirKolone,zbirDijagonale,zbirIznad,zbirSporedne:integer;
matrica: array[1..10,1..10] of integer;
i,j,z:integer;

begin
z:=0;  
     
    for i:= 0 to n-1 do
    begin
      for j:= 0 to m-1 do 
        write(matrica[i][j], ' ');
    writeln();
    end;{
    zbirDijagonale:= 0;
     for i:= 0 to n do
    begin 
        zbirDijagonale:= zbirDijagonale + matrica[i][i];
    end;
    writeln(zbirDijagonale);

    zbirIznad:=0;
    for i:= 0 to n-1 do
      for j:=0 to m-1 do
        begin
          if(j>i) then
            zbirIznad:=zbirIznad+matrica[i][j];
        end;
        WriteLn(zbirIznad);
    
    zbirSporedne:=0;
    for i:= 0 to n-1 do
      for j:=0 to m-1 do
        if(i+j = n-1)then
          zbirSporedne:=zbirSporedne+matrica[i][j];
    writeln(zbirSporedne); 

    for i:= 0 to n-1 do
      begin
      zbirKolone:= 0;
        for j:=0 to m-1 do
          zbirKolone:=zbirKolone + matrica[j][i];
        writeln(zbirKolone)
              end;
}

end.
//napisati program koji 
// za svaku kolonu zbir elemenata