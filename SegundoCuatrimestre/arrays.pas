program ej;
uses crt;
var i,suma:integer; 
{nombre}  {tamanio} {tipo}
vect:array[1..5] of integer;

begin
    clrscr;
    suma:=0;
    Writeln ('Ingrese Valores ');
    for i:= 1 to 5 do
     begin
      readLn(vect[i]);
      suma:= suma + vect[i]; 
      end;
   // for i:= 1 to 5 do
     // begin
       // suma:= suma + vect[i];
     // end;
    writeln('La suma es: ',suma);


end.