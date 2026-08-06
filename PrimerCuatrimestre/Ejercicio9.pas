//Calcular (x + y)ý

program ejercicio09;

uses crt, math;

var x,y, resultado:real;

begin
        clrscr;
        x :=2;
        y :=3;

        resultado := x*x + 2*x*y + y*y;

        writeln('Resultado: ', resultado:0:2);

        readkey;
end.


