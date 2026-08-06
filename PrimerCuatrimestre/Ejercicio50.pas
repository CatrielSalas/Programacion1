{Calcular la suma de los n primeros n£meros pares.}

program ejercicio050;

uses crt;

var  n, i, suma: integer;

begin
        clrscr;
        writeln('Ingrese un numero: ');
         readln(n);

        suma := 0;

        for i := 1 to n do
        begin
        suma := suma + (2 * i);

        writeln('La suma es: ', suma);
        end;

        readkey;

end.
