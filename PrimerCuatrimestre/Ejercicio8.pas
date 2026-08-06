//Calcular el valor a pagar por tres productos y el IVA pagado para los tres. Recordar que el
//IVA aplicado es el 21%

program ejercicio08;

uses crt;

var     p1,p2,p3:real;
        total, subtotal,iva :real;

begin
        clrscr;
        writeln('Ingrese Precio Producto 1'); readln(p1);
        writeln('Ingrese Precio Producto 2'); readln(p2);
        writeln('Ingrese Precio Producto 3'); readln(p3);

        subtotal:= p1+p2+p3;
        iva:= subtotal * 0.21;
        total:= subtotal + iva;

        writeln('Pagaras en total: $ ', total:0:2);
        writeln('Iva Pagado: $ ',iva:0:2);
        readkey;


end.
