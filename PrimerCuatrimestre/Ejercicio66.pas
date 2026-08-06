{Se desea procesar una secuencia de n£meros para obtener su suma. Dicha secuencia
termina cuando se ingresa el n£mero 32, que tambi‚n debe ser procesado.}

program ejercicio066;


uses crt;

var
num,suma:integer;

begin
        suma:=0;

        clrscr;

        writeln('Ingrese un numero');
        readln(num);

        while num <> 32 do
        begin
                begin
                suma:= suma + num;
                end;

        writeln('Ingrese un numero');
        readln(num);
        end;
       suma:= suma+32;

        writeln('Su suma es ', suma);
        readkey;

end.
