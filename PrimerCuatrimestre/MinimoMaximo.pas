program ejerciciominimomaximo;

uses crt;

var i,maximo,minimo:integer;
        numero:integer;

begin
        clrscr;

        maximo:= -9999;
        minimo:= 9999;

        for i:= 1 to 5 do
     begin
        writeln('Ingrese numero');
        readln(numero);

        if numero > maximo then
                begin
                maximo:=numero;
                end;

        if numero< minimo then
                begin
                minimo:= numero;
                end;

                begin
                minimo:=numero;
                end;

        end;
        writeln('El maximo es: ', maximo);
        readkey;

end.