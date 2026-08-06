//Calcular el producto de los 10 primeros n£meros naturales.

program ejercicio043;


uses crt;

var i,n:integer;
    producto:longint;


begin
        clrscr;

        producto:=1;

        for i:= 1 to 10 do

        begin

         producto:= producto * i;

        end;

        writeln('Su producto es: ',producto);

        readkey;


end.
