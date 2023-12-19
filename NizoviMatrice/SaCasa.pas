program SaCasa;
var rijec: array[0..50] of char;


function palindrom(arr:array of char):boolean;
var i, lastIndex:integer;
begin
palindrom := true;
i:=0;
  while ord(arr[i]) <> 0 do
    begin
      lastIndex := i;
      i:=i+1;
    end;

   for i:=0 to (lastIndex div 2) do
     begin
     if (arr[lastIndex- i] <> arr[i]) then
       palindrom := false;
    end;
end;{
procedure updateString(arr:array of char);
var i:integer;
begin
    i:= 0;
    while arr[i] <> 0 do
      begin
        if (arr[i] >= ord('a')) and (arr[i] <= ord('z')) then
            arr[i]:=  chr(ord(arr[i]) - 32);
        i:=i+1;
      end;
end;}
function count(arr:array of char):integer;
var i:integer;
begin
  count:=0;
  for i:= 0 to 49 do
  begin
    if ((arr[i] = 'a') or (arr[i] = 'e') or (arr[i] = 'i') or (arr[i] = 'o') or (arr[i] = 'u')) then
      begin
        count:=count+1;
      end;
    end;
end;

begin
    readln(rijec);
    writeln(count(rijec));
    writeln(palindrom(rijec));
   // writeln(updateString(rijec));
end.
//broji samoglasnike;
//sve velike u mala;
//palindrom
// provjeriti da li je jedan string podstring drugog
// provjeriti koliko puta se jedan string javlja kao podstring drugog
//naci najmanju duzinu ciklusa u stringu aabbaabbaabb - aabb ili aabbaabbaabbaabb - aabbaabb
