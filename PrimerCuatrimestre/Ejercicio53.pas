{Dados los nombres, DNI y direcciones de los empleados de un establecimiento, se pide
imprimir los nombres, DNI y direcciones de aquellos que vivan en calles que comiencen con la
letra "C". Por ejemplo, Corrientes, Concordia, etc. La serie finaliza cuando se ingresa un
nombre en blanco.}

program ejercicio053;

uses crt;


var dni:longint;
    direccion,nombre:string;



begin
        clrscr;

        writeln('Ingrese nombre del empleado ');
        readln(nombre);

        while nombre <> '' do
        begin
        writeln('Ingrese su DNI (sin punto ni comas)');
        readln(dni);

        writeln('Ingrese su direccion ');
        readln(direccion);

        if (direccion[1] = 'c') or (direccion[1] = 'C') then

        begin
        writeln('Nombre ===> ',nombre,' DNI ===> ',dni,' Direccion ===> ', direccion);
        end;

        begin
        writeln('Ingrese nombre del empleado ');
        readln(nombre);
        end;

        end;

        readkey;

end.
