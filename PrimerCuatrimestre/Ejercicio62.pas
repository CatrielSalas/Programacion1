{Dados datos num‚ricos enteros, cuyo ingreso finaliza con un cero, se pide escribir el
algoritmo correspondiente para:
Imprimir la cantidad de n£meros ingresados divisibles exactamente por 6.
Imprimir el promedio de los n£meros ingresados.
Imprimir el £ltimo n£mero ingresado. (Antes del cero)}

program ejercicio062;

uses crt;

var num:integer;
    contSumaNum:integer;
    contNum:integer;
    ultNum:integer;
    contDiv6:integer;
    promedio:real;


begin
        contSumaNum:=0;
        contNum:=0;
        contDiv6:=0;

        clrscr;

        writeln('Ingrese 0 para finalizar');
        write('Ingrese un numero: ');
        readln(num);

        while num <> 0 do

        begin
        contNum:=contNum+1;
        contSumaNum:= contSumaNum+num;
        ultNum:= num;

        if num mod 6 = 0 then
                begin
                contDiv6:= contDiv6+1;
                end;

        writeln('========================================');
        writeln('Ingrese 0 para finalizar');
        write('Ingrese otro numero: ');
        readln(num);


        end;

        promedio:= contSumaNum/contNum;

        writeln('========================================');
        writeln('El ultimo numero ingresado fue: ',ultNum);
        writeln('Promedio de numeros: ',promedio:0:2);
        writeln('Numeros Divisibles por 6: ',contDiv6);

        readkey;
end.
