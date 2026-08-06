{Se leen 10 datos que representan las edades de los ni¤os de un colegio. Se pide
confeccionar una tabla con la informaci¢n siguiente:
Entre 5 y 7 a¤os ....ni¤os
Entre 8 y 10 a¤os ....ni¤os
Entre 11 y 13 a¤os .... ni¤os
Igual o mayores a 14 a¤os .... ni¤os}


program ejercicio057;

uses crt;

var cont0,cont1,cont2,cont3,cont4:integer;
        i,edad:integer;

begin
        cont1:=0;
        cont2:=0;
        cont3:=0;
        cont4:=0;

        clrscr;

        for i:= 1 to 10 do

        begin
        writeln('Edad del alumno ',i,' :');
        readln(edad);

        case edad of

        0..4:
        begin
        cont0:=cont0+1;
        end;
        5..7:
        begin
        cont1:=cont1+1;
        end;
        8..10:
        begin
        cont2:=cont2+1;
        end;
        11..13:
        begin
        cont3:=cont3+1;
        end

        else

         begin
         cont4:= cont4+1;
         end;

         end;
         end;
         writeln ('Entre 5 y 7 a¤os ',cont1,' ni¤os');
         writeln('Entre 8 y 10 a¤os ',cont2,' ni¤os');
         writeln('Entre 11 y 13 a¤os ',cont3,' ni¤os');
         writeln('Igual o mayores a 14 a¤os ',cont4,' ni¤os');

         readkey;

end.
