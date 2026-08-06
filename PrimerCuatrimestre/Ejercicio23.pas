{En un comercio local se desea descontar el 20% al valor del tercer producto si el total a
pagar por tres de ellos supera el valor $ 4999}

program ejercicio023;

uses crt;


var producto1,producto2,producto3:real;
    valort,descuentoproducto3,descuento:real;

begin
        clrscr;

        writeln('Ingrese Producto 1 '); readln(producto1);
        writeln('Ingrese Producto 2 '); readln(producto2);
        writeln('Ingrese Producto 3 '); readln(producto3);

        valort:= producto1+producto2+producto3;

        descuentoproducto3:= producto3*0.20;

        if valort > 4999 then
                begin
                 descuento:= producto1+producto2+(producto3 - descuentoproducto3);
                 writeln('Valor producto con descuento : ',descuento:0:0);
                end
        else
                begin
                writeln('Valor producto sin descuento : ',valort:0:0);
                end;
        readkey;

end.
