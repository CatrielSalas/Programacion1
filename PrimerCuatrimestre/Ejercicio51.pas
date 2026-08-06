{Programa que lea una secuencia de 10 n£meros y obtenga e imprima cuantos hay
negativos, cuantos positivos y cuantos nulos.}

program ejercicio051;

uses crt;

var num:real;
    i,nulos,negativos,positivos:integer;

begin
     clrscr;

     negativos:=0;
     positivos:=0;
     nulos:=0;

     for i:= 1 to 10 do

     begin
     writeln('Ingrese un numero ');
     readln(num);

     if num < 0 then
     begin
        negativos:= negativos+1;
     end
     else if num > 0 then
     begin
        positivos:= positivos+1;
     end
     else
     begin
         nulos:= nulos+1;
     end;
     end;

     writeln('Son ',positivos,' positivos');
     writeln('Son ',negativos,' negativos');
     writeln('Son ',nulos,' nulos');
     readkey;

end.
