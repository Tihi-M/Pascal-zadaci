program slovoV;
uses crt;
procedure printV(height:integer);
var i,j: integer;
begin
    i := 1;
    j := 1;
    while i <= height do
      begin 
        while j <= (height*2-1) do
        begin
          if (j = i) or (j = height*2-i) then
            Write('#')
            else
            Write(' ');
          j := j + 1;
          delay(1);
        end;
        WriteLn();
        //firstPos := firstPos + 1;
        //lastPos := lastPos - 1;
        i:=i+1;
        j:=1;
      end;
end;

begin 
while true do
    printV(10);
end.
