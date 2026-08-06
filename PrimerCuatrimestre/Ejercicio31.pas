{Algoritmo que permita mostrar el neto a cobrar en una venta. Si es al contado, realizar un
descuento del 5 %, si es en cuotas realizar un recargo del 3 %, de lo contrario (cta.cte,
cheques, etc.) el neto de la venta no sufre ni descuentos ni recargos}

Program ejercicio031;

uses crt;

var cobro,valorneto,descuento,recargo:real;
    modo:integer;

begin
        clrscr;

        writeln('Ingrese como pagara 1.Al Contado 2.En cuotas 3.Tarjeta/Cheque');
        readln(modo);
        writeln('Ingrese cuanto pagara ');
        readln(cobro);

        case modo of

        1:
        begin
         descuento:= cobro * 0.05;
         valorneto:= cobro - descuento;
         write('Al Contado');
        end;

        2:
        begin
         recargo:= cobro * 0.03;
         valorneto:= cobro + recargo;
         write('En Cuotas');
        end;

        3:
        begin
        valorneto:= cobro;
         write('Pago con Tarjeta/Cheque ');
        end;

         else
         writeln('Opcion invalida');
         end;

        writeln(' usteded pagara: ', valorneto:0:0);
        readkey;

end.


