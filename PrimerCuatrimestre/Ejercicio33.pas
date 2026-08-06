{Dise¤ar el algoritmo que permita calcular el salario semanal de un empleado que trabaja
por hora, teniendo en cuenta que la empresa paga un 40% m s por cada hora trabajada
cuando se superan las 35 hs.}

program ejercicio033;

uses crt;

var
  horasTrabajadas: integer;
  valorHora: real;
  salario: real;
  i: integer;

begin
        clrscr;

        writeln('Ingrese la cantidad de horas trabajadas: ');
        readln(horasTrabajadas);

        writeln('Ingrese el valor por hora: ');
        readln(valorHora);

        for i := 1 to horasTrabajadas do
        begin
        if i <= 35 then
        salario := salario + valorHora
            else
            begin
            salario := salario + (valorHora * 1.4);
            end;
        end;

        writeln('El salario semanal es: ', salario:0:2);

        readkey;

end.


















end.
