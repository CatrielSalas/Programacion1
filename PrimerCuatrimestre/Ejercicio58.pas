{Se introducen por teclado una secuencia de informaciones, cada una de ellas compuesta
por un nombre y 6 n£meros, correspondientes al nombre de un alumno y las calificaciones que
ha tenido en sus 6 asignaturas. La secuencia termina al introducir el nombre "fin". Se desea un
programa que imprima un listado de calificaciones, en el que ha de figurar el nombre del
alumno seguido de su promedio. Finalmente se imprimir  el promedio del grupo y la cantidad
de alumnos que lo componen.}

program ejercicio058;

uses crt;

var
    nota:real;
    alumnosTotal:integer;
    promedioGrupo,promedio:real;
    suma,sumaPromedio:real;
    nombre:string;
    i:integer;


begin
        clrscr;
        alumnosTotal:=0;
        sumaPromedio:=0;

        writeln('Ingresar nombre del Alumno ');
        readln(nombre);

        while LowerCase(nombre) <> 'fin' do
        begin
                suma:=0;

                for i:= 1 to 6 do
                begin
                writeln('Nota ',i,' del alumno');
                readln(nota);
                suma:= suma+nota;
                end;

                begin
                promedio:=suma/6;
                end;

        writeln('Promedio del alumno ',nombre,' : ',promedio:0:2);

                begin
                sumaPromedio := sumaPromedio + promedio;
                alumnosTotal := alumnosTotal + 1;
                end;

        writeln('-----------------------------------------');

        writeln('Ingresar nombre del Alumno ');
        readln(nombre);

        end;

                begin
                promedioGrupo:= sumaPromedio/alumnosTotal;
                end;

        writeln('------------------------------------------');
        writeln ('Promedio del grupo ',promedioGrupo:0:2);
        writeln('Alumnos Totales: ',alumnosTotal);
        readkey;

end.


