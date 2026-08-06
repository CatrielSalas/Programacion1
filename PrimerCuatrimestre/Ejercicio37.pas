{Los operarios de una empresa trabajan en dos turnos: uno diurno, cuyo c¢digo es menor
que 10 y otro nocturno de c¢digo mayor o igual que 10. Se ingresan: el nombre del empleado,
la cantidad de horas trabajadas, el d¡a y el turno trabajado (c¢digo). Se desea calcular el jornal
para un operario sabiendo que: para el turno nocturno el pago es de $ 550 la hora y para el
diurno de $ 350 la hora, pero en este £ltimo caso, si el d¡a es domingo se paga un adicional de
$ 200 la hora.}


program ejercicio037;

uses crt;

var codigo,horasTrabajadas,sueldoHTrabajadas,jornal:real;
    diaTrabajado:string;
    turno:string;
    nombre:string;

begin
        clrscr;
        writeln('Ingrese su nombre: ');
        readln(nombre);
        writeln('Ingrese su codigo de Trabajo 1-20 ');
        readln(codigo);
        writeln('Cuantas horas trabajo ');
        readln(horasTrabajadas);
        writeln('Ingrese que dia fue a trabajar ');
        readln(diaTrabajado);

        if codigo < 10 then
    begin
        if diaTrabajado = 'Domingo' then
            jornal := horasTrabajadas * (350 + 200)
        else
            jornal := horasTrabajadas * 350;

        writeln('Turno Diurno. Jornal: $', jornal:0:0);

    end
    else
    begin
        jornal := horasTrabajadas * 550;
        writeln('Turno Nocturno. Jornal: $', jornal:0:0);
    end;

    readkey;
end.

