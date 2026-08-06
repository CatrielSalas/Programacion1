//Calcule la suma de los cuadrados de los 100 primeros n£meros naturales.

program ejercicio055;


uses crt;

var i,suma:longint;


begin
        clrscr;

        suma:=0;


        for i:= 1 to 100 do

        begin
        suma:= suma + (i*i);
        end;

        writeln('Suma: ',suma);
        readkey;

end.

