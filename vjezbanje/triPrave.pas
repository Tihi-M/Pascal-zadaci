program triPrave;
var a1,b1,a2,b2,a3,b3:integer;

function obrazujuTrougao(k1,k2,k3,n1,n2,n3:integer):Boolean;
begin
    obrazujuTrougao:=false;
  if(k1 <> k2) and (k2 <> k3) and (k1<>k3) then
    begin
    if (n1 <> n2) or (n2 <> n3) or (n3 <> n1) then
      obrazujuTrougao:=true;
      end;
end;


function tackaPresjeka(a1,b1,a2,b2:integer):real;
begin
  tackaPresjeka:=(b2-b1)/(a1-a2);
end;

function povrsinaTrougla(k1,n1,k2,n2,k3,n3:integer):real;
var x1,y1,x2,y2,x3,y3:real;
begin
    povrsinaTrougla:=0;
    if obrazujuTrougao(k1,k2,k3,n1,n2,n3) then
        begin
        x1:=tackaPresjeka(k1,n1,k2,k3);
        x2:=tackaPresjeka(k2,n2,k3,n3);
        x3:=tackaPresjeka(k3,n3,k1,n1);
        y1:=k1*x1+n1;
        y2:=k2*x2+n2;
        y3:=k3*x3+n3;
        povrsinaTrougla:=1/2*abs(x1*(y2-y3)+x2*(y3-y1)+x3*(y1-y2));
        end;
end;


begin
    ReadLn(a1,b1);
    ReadLn(a2,b2);
    ReadLn(a3,b3);
    writeln('Povrsina trougla je: ',povrsinaTrougla(a1,b1,a2,b2,a3,b3):0:0);
end.