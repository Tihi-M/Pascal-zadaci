program Nizovi19;

var niz:array of integer;
duzina:integer;

procedure printArr(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do 
  write(arr[i],' ');
end;

procedure takeInput(var arr:array of integer;length:integer);
var i:integer;
begin
  for i:=0 to length-1 do
    begin
    readln(arr[i]);
    end;
end;

function notDuplicate(var arr:array of integer;length,num:integer):boolean;
var i:integer;
begin
    notDuplicate:=true;
    for i:=0 to length-1 do
      begin
        if (arr[i] = num ) then
          begin
        notDuplicate:= false;
        Break;
        end;
      end;
end;

function countEl(arr:array of integer;length:integer;el:integer):integer;
var i:integer;
begin
    countEl:=0;
    for i:=0 to length do
      begin
        if (arr[i] = el) then
          countEl := countEl+1;
      end;
end;

procedure frekvencije(var arr:array of integer;length:integer);
var i,j:integer;
duplicate:array of integer;
begin
    SetLength(duplicate,Length);
j:=0;
  for i:=0 to length-1 do
    begin
      if notDuplicate(duplicate,length,arr[i]) then
        begin
          writeln(arr[i],': ',countEl(arr,length,arr[i]));
          duplicate[j]:=arr[i];
          j:=j+1;
        end;
    end;
end;

begin
    writeln('Duzina niza:');
    ReadLn(duzina);
    SetLength(niz,duzina);
    writeln('Elementi niza:');
    takeInput(niz,duzina);
    frekvencije(niz,duzina);
end.