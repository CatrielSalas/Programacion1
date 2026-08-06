{Algoritmo que lea nombres de empresas, rubro, cantidad de empleados y zona en la que
est  radicada (Puede ser Zona Oeste, Este, Sur y Norte). Se pide imprimir: el nombre de la
empresa con mayor cantidad de empleados y la cantidad total de personas que trabaja en esa
empresa, cu ntas empresas del rubro alimenticio se ingresaron y la cantidad de empresas por
zona}

program ejercicio056;

uses crt;

var nombreEmpresa:string;
    cantidadEmpleados:integer;
    maxEmpleados:integer;
    zonaRadicada:string;
    rubro:string;
    rubroTotal:integer;
    zonaNorte,zonaEste,zonaOeste,zonaSur:integer;
    nombreMaxEmpresa:string;
    op:string;
    este,oeste,norte,sur:string;


begin
      clrscr;

      rubroTotal:=0;
      maxEmpleados:=0;

      zonaEste:=0;
      zonaOeste:=0;
      zonaNorte:=0;
      zonaSur:=0;

      repeat

      begin

      write('Ingrese el nombre de la empresa: ');
      readln(nombreEmpresa);

      write('Cuantos empleados trabajan en la empresa: ');
      readln(cantidadEmpleados);

      write('A que rubro pertenece la empresa ? ');
      readln(rubro);

      if lowercase(rubro)= 'alimenticio' then
      begin
        rubroTotal:= rubroTotal+1;
      end;

      write('En que zona esta radicada?(Norte,Sur,Este,Oeste) ');
      readln(zonaRadicada);

      case lowercase (zonaRadicada) of
      'este':
      begin
        zonaEste:= zonaEste+1;
      end;
      'oeste':
      begin
      zonaOeste:= zonaOeste+1;
      end;
      'norte':
      begin
      zonaNorte:= zonaNorte+1;
      end;
      'sur':
      begin
      zonaSur:= zonaSur+1;
      end;
      end;

      if cantidadEmpleados > MaxEmpleados then

      begin
      maxEmpleados:= cantidadEmpleados;
      nombreMaxEmpresa:= nombreEmpresa ;
      end;
      writeln('Para finalizar escriba Fin, enter para continuar ');
      readln(op);
      end;

      until lowercase(op) = 'fin';

      writeln('============================================================================================ ');
      writeln('Cantidad de empresas en el Rubro Alimenticio: ',rubroTotal);
      writeln('La empresa ',nombreMaxEmpresa,' es la que mayor cantidad de empleados tiene : ',maxEmpleados);
      writeln('Empresas Zona Oeste: ',zonaOeste);
      writeln('Empresas Zona Norte: ', zonaNorte);
      writeln('Empresas Zona Este: ',zonaEste);
      writeln('Empreas Zona Sur: ',zonaSur);

      readkey;
end.
