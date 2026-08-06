{Dise¤ar un algoritmo que permita ingresar los nombres y los importes adeudados de 2
clientes. Mostrar el nombre del cliente que m s nos debe y el importe de su deuda.}

program ejercicio27;

uses crt;

var cliente1,cliente2:string;
    deuda1,deuda2:real;

begin
        clrscr;
        writeln('Nombre del cliente '); readln(cliente1);
        writeln('Cuanto debe '); readln(deuda1);
        writeln('Nombre del cliente '); readln(cliente2);
        writeln('Cuanto debe '); readln(deuda2);

        if deuda1 > deuda2 then
        begin
        writeln('El cliente ',cliente1,' es el que mas debe con una deuda de ',deuda1:0:0);
        end
        else
        begin
        writeln('El cliente ',cliente2,' es el que mas debe con una deuda de ',deuda2:0:0);
        end;
        readkey;
end.
