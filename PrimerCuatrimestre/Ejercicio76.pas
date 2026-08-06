{Una persona adquiri¢ un producto por internet a pagar en 6 meses. El primer mes pag¢ 10
d¢lares, el segundo 20 d¢lares, el tercero 40 d¢lares y as¡ sucesivamente.
Realizar un algoritmo para determinar cu nto debe pagar mensualmente y el total de lo que
pag¢ al final de los 6 meses.}

program ejercicio076;

uses crt;

var mes,pago,total:integer;

begin

        clrscr;
        total:=0;
        pago:=10;
        for mes := 1 to 6 do
        begin
        writeln('Mes ',mes,' pago ',pago,' $');
        total:= total + pago;
        pago:= pago* 2;
        end;
        writeln('En los 6 meses pago: ',total,' $ ');
        readkey;


end.
