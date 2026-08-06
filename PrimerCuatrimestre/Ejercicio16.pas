{Un instituto educativo desea saber qu‚ porcentaje de ni¤os y de ni¤as hay en el curso
actual. Dise¤ar un algoritmo que nos informe el resultado}

program ejercicio016;

uses crt;

var
  nenes, nenas, total: integer;
  porcnenas, porcnenes: real;

begin
  clrscr;

  writeln('Ingrese cantidad de nenes: '); readln(nenes);
  writeln('Ingrese cantidad de nenas: '); readln(nenas);

  total := nenes + nenas;

  porcnenes := (nenes * 100) / total;
  porcnenas := (nenas * 100) / total;

  writeln('Porcentaje de nenes: ', porcnenes:0:2, '%');
  writeln('Porcentaje de nenas: ', porcnenas:0:2, '%');

  readkey;
end.
