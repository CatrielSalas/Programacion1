{Dados 5 valores enteros, definir un algoritmo que genere una tabla en donde cada
componente sea el producto de cada valor por la posici¢n que es ingresado.}

program ejercicio049;

uses crt;

var
  i, num: integer;

begin
        clrscr;
        for i := 1 to 5 do
  begin
         write('Ingrese un numero: ');
         readln(num);

    writeln('Posicion ', i, ' --> ', num, ' * ', i, ' = ', num * i);
  end;
  readkey;
end.
