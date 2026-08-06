//Se ingresan dos nombres de Alumnos. Mostrarlos en orden alfab‚tico.

program ejercicio019;

uses crt;

var
  nombre1, nombre2, aux: string;

begin
  clrscr;

  writeln('Ingresa un nombre: '); readln(nombre1);

  writeln('Ingresa otro nombre: '); readln(nombre2);

        if (nombre1) > (nombre2) then

        begin
        aux := nombre1;
        nombre1 := nombre2;
        nombre2 := aux;
        end;

        writeln('Orden alfabetico: ', nombre1, ', ', nombre2);

  readkey;
end.

