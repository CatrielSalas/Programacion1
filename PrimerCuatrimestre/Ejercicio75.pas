{Dado un tiempo en minutos, calcular los das, horas y minutos que le corresponden.}

program ejercicio075;

uses
sysUtils,crt;

var
        totalMinutos: LongInt;
        dias, horas, minutosRestantes: LongInt;
        entrada: string;
        codigoError: Integer;
begin
        clrscr;
        write('Ingrese el tiempo en minutos (entero no negativo): ');
        readLn(entrada);
        Val(entrada, totalMinutos, codigoError);
        if (codigoError <> 0) or (totalMinutos < 0) then
        begin
        writeLn('Error: Debe ingresar un numero entero no negativo.');
        Halt(1);
        end;

        dias := totalMinutos div (24 * 60); 
        horas := (totalMinutos mod (24 * 60)) div 60;
        minutosRestantes := totalMinutos mod 60;
        WriteLn('Equivale a: ', dias, ' dia(s), ', horas, ' hora(s), ', minutosRestantes, ' minuto(s).');
        readkey;
end.
