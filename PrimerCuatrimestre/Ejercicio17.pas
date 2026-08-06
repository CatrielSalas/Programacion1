{Se ingresan tres n£meros enteros. Determina si al menos dos de los tres n£meros son
iguales. Si esto es cierto, muestra un mensaje indicando "Hay n£meros repetidos". Si no,
muestra un mensaje indicando "No hay n£meros repetidos".}

program ejercicio017;

uses crt;

var num1,num2,num3: integer;

begin
        clrscr;

        writeln('Ingrese num1 '); readln(num1);
        writeln('Ingrese num2 '); readln(num2);
        writeln('Ingrese num3 '); readln(num3);

        if (num1 = num2) or (num1 = num3) or ( num3 = num2) then
        writeln('Hay numeros repetidos ')
        else
        writeln('No hay numeros repetidos');

         readkey;



end.
