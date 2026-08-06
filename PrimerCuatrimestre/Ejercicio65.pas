{Leer un conjunto de N n£meros. Imprimir el menor de ellos y adem s imprimir en qu‚
posici¢n de lectura apareci¢.}


program ejercicio065;

uses crt;

var
    N, i: integer;
    num, menor: integer;
    pos: integer;

begin
        clrscr;

        writeln('Ingrese la cantidad de numeros: ');
        readln(N);

        for i := 1 to N do
        begin
        writeln('Ingrese el numero ', i, ': ');
        readln(num);


        if i = 1 then
        begin
            menor := num;
            pos := i;
        end
        else
        begin
            if num < menor then
            begin
                menor := num;
                pos := i;
            end;
        end;
    end;

    writeln('El menor numero es: ', menor);
    writeln('Aparecio en la posicion: ', pos);

    readkey;
end.

