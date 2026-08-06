{Se ingresa una variable llamada USUARIO. Seg£n su valor se deben realizar las siguientes
opciones:
? Si USUARIO es A se deben ingresar valores num‚ricos enteros hasta un cero y calcular
la suma de los mismos.
? Si USUARIO es B se deben ingresar valores num‚ricos enteros hasta un cero y calcular
el producto de los mismos.
? Si USUARIO es C se deben ingresar N n£meros enteros y calcular la suma de los
ingresados en las posiciones pares y el producto de los de las posiciones impares.}


program ejercicio069;

uses crt;

var
    usuario: char;
    num: longint;
    suma, mult: longint;
    N, i: integer;

begin
    clrscr;

    writeln('Ingrese un usuario (A, B, C o F para finalizar): ');
    readln(usuario);

    while lowercase(usuario) <> 'f' do
    begin
        case lowercase(usuario) of

        'a':
        begin
            suma := 0;
            repeat
                writeln('Ingrese un numero (0 para terminar): ');
                readln(num);
                suma := suma + num;
            until num = 0;

            writeln('La suma es: ', suma);
        end;

        'b':
        begin
            mult := 1;
            repeat
                writeln('Ingrese un numero (0 para terminar): ');
                readln(num);
                if num <> 0 then
                    mult := mult * num;
            until num = 0;

            writeln('El producto es: ', mult);
        end;

        'c':
        begin
            suma := 0;
            mult := 1;

            writeln('Ingrese la cantidad de numeros (N): ');
            readln(N);

            for i := 1 to N do
            begin
                writeln('Ingrese el numero ', i, ': ');
                readln(num);

                if i mod 2 = 0 then
                    suma := suma + num
                else
                    mult := mult * num;
            end;

            writeln('Suma de posiciones pares: ', suma);
            writeln('Producto de posiciones impares: ', mult);
        end;

        else
            writeln('Opcion invalida.');
        end;

        writeln('----------------------');
        writeln('Ingrese un usuario (A, B, C o F para finalizar): ');
        readln(usuario);
    end;

    writeln('Programa finalizado.');
    readkey;
end.

