{ Se tiene una matriz de 3x3 filas (alumnos), columnas (notas de asignatura). Se solicita 
registrar lo siguiente:  
a) Calcular el promedio de cada alumno en esa asignatura.  
b) Buscar e imprimir la nota más baja y alta de cada alumno.  
c) Calcular e imprimir las notas que no superaron el promedio. }
program ejercicio134;

uses crt;

const f=3; c=3;

type    matriz = array[1..f,1..c] of integer;
        vector = array [1..c] of integer;

var matriz1:matriz; promedio:real; fila,columna:integer; suma:integer; i,j:integer;
    notaMaxima,notaMinima:integer;


begin
    clrscr;

        for fila:= 1 to f do
          begin
            for columna:= 1 to c do
            begin
              Write('Alumno ',fila,' Nota: ');
              ReadLn(matriz1[fila,columna]);

            end;
          end;
        WriteLn;

        for i := 1 to f do  
        begin
            suma := 0;
            notaMaxima:= -9999;
            notaMinima:= 9999;
            for j := 1 to c do
                begin
                    suma := suma + matriz1[i, j];

                    if matriz1[i,j] > notaMaxima then
                       notaMaxima:= matriz1[i,j];

                    if matriz1[i,j] < notaMinima then
                      notaMinima:= matriz1[i,j];                    
                end;

            promedio := suma / c;
            
            Writeln('El promedio del alumno ', i, ' es: ', promedio:0:2);
            WriteLn('Alumnno: [',i,'] Nota Maxima: [',notaMaxima,'] Minima: [',notaMinima,'] ');
            Write('Notas que no superaron el promedio ---> ');
               for j:= 1 to c do
                begin
                  if matriz1[i,j] < promedio then
                    begin
                    Write(matriz1[i,j],' | ');
                    end;
                end;

            WriteLn;
            Writeln('-------------------------------');
        end;

        

    readkey;
end.