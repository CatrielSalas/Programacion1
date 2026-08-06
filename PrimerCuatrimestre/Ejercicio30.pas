{Ingresar un n£mero que represente el importe total de una venta y otro que indique la
cantidad de cuotas en que se efectu¢ la misma. Si se realiza en menos de 6 cuotas, el inter‚s
ser  del 2 % mensual. Si se realiza entre 6 y 10 cuotas el inter‚s ser  del 3 % mensual. En
m s de 10 cuotas el inter‚s ser  del 4 % mensual. Mostrar el importe total de la venta, el
inter‚s aplicado y el valor de cada cuota.}


program ejercicio030;

uses crt;

var
  pago, interes, pagofinal, valorCuota: real;
  cuotas: integer;

begin
  clrscr;

  writeln('Cuanto es el pago de su producto? '); readln(pago);
  writeln('En cuantas cuotas lo pago? '); readln(cuotas);

  if cuotas < 6 then
    interes := 0.02
  else if (cuotas >= 6) and (cuotas <= 10) then
    interes := 0.03
  else
    interes := 0.04;

  interes := pago * interes * cuotas;
  pagofinal := pago + interes;
  valorCuota := pagofinal / cuotas;

  writeln('Importe original: ', pago:0:2);
  writeln('Interes total: ', interes:0:2);
  writeln('Total a pagar: ', pagofinal:0:2);
  writeln('Valor de cada cuota: ', valorCuota:0:2);

  readkey;
end.





