program SistemaVentas;

uses crt;

var
    caja_inicial, caja_final: real;
    total_ventas: real;
    monto, pago, cambio: real;
    opcion: integer;

begin
    clrscr;
    caja_inicial := 1000;
    total_ventas := 0;

    writeln('=== SISTEMA DE VENTAS ===');

    repeat
        writeln;
        writeln('1. Registrar venta');
        writeln('2. Finalizar dia');
        write('Seleccione una opcion: ');
        readln(opcion);

        case opcion of
            1: begin
                write('Ingrese el monto de la venta: $');
                readln(monto);

                writeln('Total a pagar: $', monto:0:2);

                write('Ingrese con cuanto paga el cliente: $');
                readln(pago);

                if pago < monto then
                begin
                    writeln('Error: pago insuficiente');
                end
                else
                begin
                    cambio := pago - monto;
                    writeln('Cambio a entregar: $', cambio:0:2);

                    total_ventas := total_ventas + monto;
                end;
                end;

            2:
                begin
                writeln('Finalizando el dia...');
                end;

        else
                begin
            writeln('Opcion invalida');
            end
        end;

    until opcion = 2;

    caja_final := caja_inicial + total_ventas;

    writeln;
    writeln('=== CIERRE DEL DIA ===');
    writeln('TOTAL INICIAL: $', caja_inicial:0:2);
    writeln('TOTAL DEL DIA: $', total_ventas:0:2);
    writeln('TOTAL EN CAJA: $', caja_final:0:2);
     readkey;
end.


        readkey;
end.
