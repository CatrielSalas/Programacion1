{Dos grupos de amigos salieron de viaje. El primer grupo se encuentra en el kilómetro 70 de 
una ruta, el otro se encuentra en el km 150, los autos tienen sentido opuesto y tienen la misma 
velocidad. Realizar un programa para determinar en qué kilómetro de esa ruta se encontrarán.}

program ejercicio80;

uses crt;

var km1,km2:integer;


begin
    clrscr;
    
    km1:=70;
    km2:=150;
    repeat
    begin
    km1:= km1 + 1;
    km2:= km2 - 1;
    end;
    until km1 = km2 ;
    writeln('Se encontraron en el kilometro ',km1);
    readkey;
end.