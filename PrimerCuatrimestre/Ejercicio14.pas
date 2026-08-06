{Dados los siguientes datos: nombre del empleado, cantidad de horas trabajadas y precio
por hora de trabajo, se desea calcular el sueldo del empleado, seg£n las siguientes
consideraciones: si trabajo m s de 160 horas, se adiciona al c lculo un premio de $ 3000.
Imprimir el nombre del empleado y el sueldo que le corresponde.}

program ejercicio014;

uses crt;

var sueldo,sueldoht,ht,ganancia:real;
    nombre:string;

begin
      sueldoht:=10000;
      ganancia:=3000;

      clrscr;
      writeln ('Ingrese su nombre '); readln(nombre);
      writeln('Ingrese sus horas trabajadas y le diremos cuanto cobrara '); readln(ht);

      if ht > 160 then

      begin
        sueldo:= sueldoht + ganancia;

        writeln('Su sueldo neto es de: ',sueldo:0:0)
      end

      else
      begin
        writeln('Su sueldo es: ', sueldoht:0:0);
      end;
        readln;
end.
