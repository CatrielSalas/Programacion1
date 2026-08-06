{Se leen n�meros hasta que se ingresa un cero.
A) Imprimir el m�ximo y el m�nimo valor ingresado;
B) Imprimir la suma de los n�meros, la suma de los positivos y el promedio.}

program ejercicio077;

uses crt;

var
        num:real;
        max,min:real;
        suma:real;
        sumaPositivo:real;
        promedio:real;
        cantIngresada:integer;

begin
        clrscr;
        max:= 0;
        min:= 0;
        suma:=0;
        sumaPositivo:=0;

        repeat

        writeln('Ingrese un numero ');
        readln(num);
        if num <> 0 then

        begin
        suma:= suma+num;

        cantIngresada:= cantIngresada+1;

        if num > max then
                begin
                max:= num;
                end;
        if num < min then
                begin
                min:=num;
                end;
        if num > 0 then
                begin
                sumaPositivo:= sumaPositivo + num;
                end;
        end;

        until num = 0;

        promedio:= sumapositivo/ cantIngresada;

        writeln('Promedio ---> ', promedio:4:2);
        writeln('Valor Maximo ---> ',max:2:0);
        writeln('Valor Minimos ---> ',min:2:0);
        readkey;

end.
