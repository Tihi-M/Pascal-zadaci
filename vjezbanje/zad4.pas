program zad4; 
var n1,n2:integer;
ch:char;

procedure calculator(num1,num2:integer;operation:char);
begin
if(num2 <> 0) and(operation <> '/') then
begin
  case (operation) of
    '+':writeln(num1 ,operation,num2,' = ',num1 + num2);
    '-':writeln(num1 ,operation,num2,' = ',num1 - num2);
    '*':writeln(num1 ,operation,num2,' = ',num1 * num2);
    '/':writeln(num1 ,operation,num2,' = ',num1 / num2);
    '%':writeln(num1 ,operation,num2,' = ',num1 mod num2);
end;
end
else writeln('Error');
end;


begin
  writeln('Unesite brojeve:');
  readln(n1,n2);
  writeln('Unesite operaciju:');
  readln(ch);
  calculator(n1,n2,ch);
end.