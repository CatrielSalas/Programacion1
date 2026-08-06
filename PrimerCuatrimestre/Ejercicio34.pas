{Dise¤ar un algoritmo que lea tres valores num‚ricos: DIA MES y A¥O y verifique si se trata
de una fecha posible. Por ejemplo: 29/02/2023 no es una fecha cierta}

program ejercicio034;

uses crt;

var dia,mes,anio:integer;
    esBisiesto:boolean;
    maxDias:integer;

begin
     clrscr;

  writeln('Ingrese DIA: ');
  readln(dia);
  writeln('Ingrese MES: ');
  readln(mes);
  writeln('Ingrese ANIO: ');
  readln(anio);

  if (anio <= 0) then

    begin
    writeln('Fecha invalida')
    end
  else
      begin
     if (mes < 1) or (mes > 12) then
     begin
     writeln('Fecha invalida')
     end

  else
        begin
        esBisiesto := ((anio mod 4 = 0) and (anio mod 100 <> 0)) or (anio mod 400 = 0);
        case mes of
                1,3,5,7,8,10,12:
                begin
                maxDias := 31;
                end;

                4,6,9,11:
                begin
                maxDias := 30;
                end;

                2:
                begin
                if esBisiesto then
                maxDias := 29
                end;
                else

                begin
                maxDias := 28;
                end;
        end;
                if (dia < 1) or (dia > maxDias) then

                begin
                writeln('Fecha invalida')
                end
                else

                begin
                writeln('Fecha valida');
                end;
     end;
     end;
     readkey;
end.


