//Para un numero x dado, calcular x3.

program ejercicio05;
uses crt;
var num,res:integer;

begin
        clrscr;
        writeln('Ingresa un numero'); readln(num);
        res:= (num*num*num);
        writeln('Su resultado:',res);
        readkey;


end.
