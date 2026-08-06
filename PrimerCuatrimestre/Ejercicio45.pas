{Crear un algoritmo que calcule la ra¡z cuadrada del n£mero que introduzca el usuario. Si se
introduce un n£mero negativo, debe mostrar un mensaje de error y volver a pedirlo (tantas
veces como sea necesario)}

program ejercicio045;

uses crt;

var
    numero: real;

begin
    clrscr;
    begin

    repeat
        writeln('Ingrese un numero: ');
        readln(numero);

        if numero < 0 then
        begin
            writeln('!!! Error: no se permiten numeros negativos !!!');
        end;

    until numero >= 0;

    writeln('La raiz cuadrada de su numero es: ', sqrt(numero):0:2);
    end;
    readkey;
end.
