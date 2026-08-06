{Resolver el problema que permita ingresar un n£mero por pantalla que represente el precio
de venta de un producto y otro que represente el stock del mismo. Si el precio es > $ 9500 y el
stock supera los 50 productos mostrar un mensaje que diga: "Para colocar en oferta" y le
realizamos un descuento del 5 %.}

program ejercicio038;

uses crt;

var  precioVenta,totalStock,descuento:real;

begin
        clrscr;
        writeln('Ingrese precio de venta del producto ');
        readln(precioVenta);
        writeln('Que cantidad de stock tiene');
        readln(totalStock);

        if (precioVenta > 9500) and ( totalStock > 50) then
        begin
           descuento:= precioVenta -(precioVenta * 0.05);
           write('!!!Para colocar en oferta!!! ');
           writeln('El precio de venta ',descuento:0:0);

        end
        else
        begin
        writeln('No hay stock');
        writeln('Precio de venta ', precioVenta:0:0);
        end;
        readkey;


end.
