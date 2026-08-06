{       Se tienen tres variables de tipo num‚rico entero: A¥O, MES y DIA.
Si el valor de MES es 1, 3, 5, 7, 8, 10 o 12 se debe asignar a la variable DIA el valor 31;
si el valor de MES es 4, 6, 9 o 11 se le debe asignar el valor 30
y si el valor de MES es 2 se le debe asignar 29 o 28
si el a¤o es o no es bisiesto. En caso que la variable MES tome valores > a 12, se le debe indicar con un
mensaje de error.}

program ejercicio041;

uses crt;

var dia,mes,anio:integer;

begin
        clrscr;
        writeln('Ingrese anio' );
        readln(anio);
        writeln('Ingrese el mes');
        readln(mes);

        case mes of
        1,3,5,7,8,10,12:
           begin
                dia:= 31;
                write
                end;
                4,6,9,11:
                begin
                dia:= 30;
                end;
        2:
        begin
        if ((anio mod 4 = 0) and (anio mod 100 <> 0)) or (anio mod 400 = 0) then
          dia := 29
          else
          dia:= 28;
          end;

        else
        begin
        writeln('Error!!! Dato ingresado incorrecto ');
        end;
        end;

        writeln('Su dia es ',dia);
        readkey;

end.