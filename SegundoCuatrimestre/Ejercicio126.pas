{Se tiene información sobre las mediciones de temperatura de un estanque en tres 
profundidades, a lo largo del día. Dichos datos se ubican en una matriz de 3 x 4, donde las 
columnas indican la hora de medición (0, 8, 16 y 20 hs.) y las filas la profundidad (superficie, 
medio y fondo). Se desea obtener:  
1) A qué hora y en que profundidad se obtuvo la menor medición.  
2) Cual es el promedio de temperatura de las 4 mediciones. }

program ejercicio126;
uses crt;

const 
  f = 3; 
  c = 4;

type
    matrizTemp = array[1..f, 1..c] of integer;
      
var 
  temperaturas: matrizTemp;
  i, j: integer;
      vectorHoras: array[1..c] of integer = (0, 8, 16, 20);
      vectorProf: array[1..f] of string = ('Superficie', 'Medio', 'Fondo');
      profundidadMenorMedicion:string; horaMenorTemperatura,menorTemperatura:integer;
      suma:integer; promedio:real; cantHoras:integer;

begin
      clrscr;

      suma:=0; cantHoras:= 0;

      for i := 1 to f do
        begin
          Writeln('Profundidad: ', vectorProf[i]);
          for j := 1 to c do 
            begin
              Write('  Temperatura a las ', vectorHoras[j], ' hs: '); 
              ReadLn(temperaturas[i, j]);
              suma:= suma + temperaturas[i,j];
              cantHoras:= cantHoras +1;
          end;
          Writeln;
      end;

      promedio:= suma / cantHoras;

      menorTemperatura:= temperaturas[1,1];
      profundidadMenorMedicion:= vectorProf[1];
      horaMenorTemperatura:= vectorHoras[1];
      for i:= 1 to f do
        begin
          for j:= 1 to c do
            begin
              if temperaturas[i,j] < menorTemperatura then
                begin
                  profundidadMenorMedicion:= vectorProf[i];
                  horaMenorTemperatura:= vectorHoras[j];
                  menorTemperatura:= temperaturas[i,j];
                end;
            end;
        end;
      WriteLn('Menor Temperatura en la hora: ',horaMenorTemperatura);
      WriteLn('Menor Temperatura: ',menorTemperatura);
      WriteLn('Menor Temperatura en la profundidad: ', profundidadMenorMedicion);
      WriteLn('Promedio de temperaturas: ',promedio:0:2);
  readkey;
end.