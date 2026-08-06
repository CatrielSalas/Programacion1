{Bienvenidos a Programacion
encontrar la palabra mas larga y devolver la cantidad de letras que tiene la palabra}

program parcialito2;

uses crt;

var palabra:string;
    long:string;
    i:integer;

begin
        long:= '';
        clrscr;
        write('Ingrese Palabra ');
        readln(palabra);
        begin
        if (length(palabra) < length(long))and (lenght(palabra) < length(palabra)) then
        begin
        long:= palabra;
        end;
        end;
        writeln('La palabra ',long);



        readkey;


end.
