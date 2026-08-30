program e10;

uses crt;

const n=2; m=2;

type mat=array[1..n,1..m] of integer;

var  matriz1,matriz2,matrizres:mat;     {declaro 1era,2da y 3er matriz}

     i,j:integer;

begin

     clrscr;

     writeln('ingrese valores en matriz 1');

      for i:=1 to n do

     begin

          for j:=1 to m do

          begin

             readln(matriz1[i,j]);

          end;

     end;

      writeln;

      writeln('ingrese valores en matriz 2');

      for i:=1 to n do

     begin

          for j:=1 to m do

          begin

             readln(matriz2[i,j]);

          end;

     end;

     {sumo matrices}

     for i:=1 to n do

     begin

       for j:=1 to m do

       begin

            matrizres[i,j]:=matriz1[i,j] + matriz2[i,j];

       end;

     end;

     writeln('Resultado de Matriz 1 + Matriz 2');

     for i:=1 to n do

     begin

       for j:=1 to m do

       begin

            write(matrizres[i,j]);
            write(' ');

       end;

       writeln;

     end;

     

     readkey;

end.

