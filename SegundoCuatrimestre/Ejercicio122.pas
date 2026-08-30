{Dada una matriz de 4 filas y 4 columnas. Las filas corresponden a los años de estudio y las 
columnas a asignaturas. El contenido de la matriz refleja la cantidad de alumnos inscriptos.  
a) Calcule e imprima el total de alumnos matriculados por año.  
b) Encuentre, de cada año, cual es la asignatura con más alumnos matriculados. }

program ejercicio121;
uses crt;
const fila = 4; columna = 4;
type matriz = array[1..fila,1..columna] of integer;
var matAlumnos:matriz; i,j:integer; alumnosTotal: integer; 
totalAnio:integer; maxAlumnos:integer; asignaturaMax:integer;

begin
        clrscr;

            WriteLn('=== Ingrese datos ===');

            for i:= 1 to fila do
                begin
                begin
                Writeln('---Anio [',i,']');
                end;
                  for j:= 1 to columna do
                  
                    begin
                      Write('---Cantidad de alumnos en materia [',j,']--> ');
                      ReadLn(matAlumnos[i,j]);
                    end;
                WriteLn;
              end;
              
          totalAnio := 0; 
          maxAlumnos := matAlumnos[i, 1]; asignaturaMax := 1;

            for j := 1 to columna do
                begin
                    totalAnio := totalAnio + matAlumnos[i, j];
            if matAlumnos[i, j] > maxAlumnos then
                begin
                    maxAlumnos := matAlumnos[i, j];
                    asignaturaMax := j;
                end;
            end;
        WriteLn('Total Alumnos matriculados por anio ',totalAnio);
        WriteLn('La asignatura con mas anios fue : ',asignaturaMax);
        readkey;
end.
