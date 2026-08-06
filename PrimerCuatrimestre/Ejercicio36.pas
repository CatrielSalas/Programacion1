{Resolver el problema que permita ingresar por pantalla el sueldo de un empleado y adem s
los d¡as que ha faltado en el mes. Si el sueldo es superior a 38000 y no falto nunca le
otorgamos un presentismo del 10 % del sueldo. Si falto menos de tres d¡as, le otorgamos
presentismo del 5 %, de lo contrario no tiene presentismo. Mostrar el neto a cobrar.}

program ejercicio036;

uses crt;

var noTrabajo:integer;
    cobroInicial:real;
    comision:real;
    sueldoNeto:real;
begin
        clrscr;
        writeln('Cuanto cobra por mes? ');
        readln(cobroInicial);
        writeln('Ingrese cuantos dias falto');
        readln(noTrabajo);

        if (noTrabajo = 0) and (cobroInicial > 38000) then
        begin
        comision:= cobroInicial * 0.10 ;
        sueldoNeto:= cobroInicial + comision;
        writeln('Falto ',noTrabajo,' y su sueldo neto sera de ',sueldoNeto:0:0);
        end
        else if noTrabajo < 3 then
        begin
        comision:= cobroInicial * 0.05;
        sueldoNeto:= cobroInicial + comision;
        writeln('Falto ',noTrabajo,' y su sueldo neto sera de ',sueldoNeto:0:0);
        end
        else
        begin
        writeln('Al faltar mas de 3 dias cobrara ',cobroInicial:0:0);
        end;
        readkey;

end.