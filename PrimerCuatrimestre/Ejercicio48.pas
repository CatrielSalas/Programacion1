{Escribir un algoritmo que imprima la primera vocal le¡da del teclado. Se supone que se
leen, uno a uno, car cter desde el teclado.}

program ejercicio048;

uses crt;
var
  c: char;

begin
clrscr;
  writeln('Ingrese caracteres:');

  repeat
    read(c);
    c := UpCase(c);
  until (c = 'A') or (c = 'E') or (c = 'I') or (c = 'O') or (c = 'U');

  writeln('La primera vocal es: ', c);
  readkey;
end.

