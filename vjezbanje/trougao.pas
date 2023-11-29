program trougao;
var a1,b1,a2,b2,a3,b3:integer;
povrsina:real;
function sijekuSe(a1,a2,a3:integer):boolean;
begin
    sijekuSe:=false;
    if ((a1 <> a2) and (a2 <> a3) and (a1 <> a3)) then
      sijekuSe:=true;
end;

function tackaPresjeka(a1,b1,a2,b2:integer):real;
begin
  tackaPresjeka := (a2-a1)/(b2-b1);
end;

function duzinaStranice(x1,y1,x2,y2:real):real;
begin
  duzinaStranice := Sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1));
end;

function povrsinaTrougla(a1,b1,a2,b2,a3,b3:integer):real;
var str1,str2,str3,x1,y1,x2,y2,x3,y3,s:real;     
begin
  if (sijekuSe(a1,a2,a3)) then
    begin
      x1 := tackaPresjeka(a1,b1,a2,b2);
      y1 := x1*a1+b1;
      x2 := tackaPresjeka(a2,b2,a3,b3);
      y2 := x2*a2+b2;
      x3 := tackaPresjeka(a3,b3,a1,b1);
      y3 := x3*a3+b3;
      str1 := duzinaStranice(x1,y1,x2,y2);
      str2 := duzinaStranice(x2,y2,x3,y3);
      str3 := duzinaStranice(x3,y3,x1,y1);
      s := (str1+str2+str3)/2;
      povrsinaTrougla := Sqrt(s*(s-str1)*(s-str2)*(s-str3));
    end;
    //else
    //povrsinaTrougla := 0;
end;

begin
    writeln('Prva prava: ');
    readln(a1,b1);
     writeln('Druga prava: ');
    readln(a2,b2);
     writeln('Treca prava: ');
    readln(a3,b3);
povrsina:=povrsinaTrougla(a1,b1,a2,b2,a3,b3);
    writeln('Povrsina trougla: ',povrsina:0:2);
  
end.