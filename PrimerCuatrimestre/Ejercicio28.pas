{Ingresar 3 valores num‚ricos diferentes y mostrarlos ordenados de mayor a menor.}

program ejercicio027;

uses crt;

var num1,num2,num3,aux:integer;

begin
        clrscr;
        writeln('Ingrese num 1 '); readln(num1);
        writeln('Ingrese num 2 '); readln(num2);
        writeln('Ingrese num 3 '); readln(num3);

        if num1 > num2 then
                begin
                aux:=num1;
                num1:= num2;
                num2:= aux;
                end;
        if num1 > num3 then
                begin
                aux:= num1;
                num1:= num3;
                num3:= aux;
                end;
        if num2 > num3 then
                begin
                aux:=num2;
                num2:=num3;
                num3:=aux;
                end;

        writeln('Ordenados de mayor a menor ',num2,' ',num3,' ', num1);
        readkey;

end.
