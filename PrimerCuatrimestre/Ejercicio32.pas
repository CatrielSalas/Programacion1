{Calcular el cociente entero y el resto de dividir dos n£meros naturales a y b, con a mayor o
igual que b.}

program ejercicio032;

uses crt;

var cociente,resto,a,b:integer;


begin
        clrscr;
        writeln('Ingrese a ');
        readln(a);
        writeln('Ingrese b ');
        readln(b);

        cociente:= a div b;
        resto:= a mod b;

        writeln('Su entero es ', cociente);
        writeln('Su resto es ',resto);
        readkey;



end.
