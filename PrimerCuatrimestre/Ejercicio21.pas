{Una compa¤¡a de ventas de seguros paga a su personal de ventas un salario de $ 60000,
m s una comisi¢n de $ 1500 por cada seguro contratado, m s el 10 % del valor de venta del
seguro. Dise¤ar un algoritmo para calcular el salario de un vendedor en un mes dado,
conociendo el n£mero de seguros vendidos y el precio por unidad de ese mes.}

program ejercicio021;

uses crt;

var
  sueldobase, comision, preciounidad, sueldototal, totalventa,totalv,vendio: real;

begin
  clrscr;

  sueldobase := 60000;
  preciounidad := 1000;

  writeln('Cuantos seguros vendio: ');
  readln(vendio);

  comision := 1500 * vendio;
  totalventa := vendio * preciounidad;

  sueldototal := sueldobase + comision + (totalventa*0.10);

  writeln('Su sueldo es de: $', sueldototal:0:0);

  readkey;
end.
