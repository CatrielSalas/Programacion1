{Recibido dos vectores de números enteros como parámetros, encontrar los dígitos 
repetidos consecutivos. Mostrar cada digito común solo una vez. Ej. v1=5112, v2=6612. Res: 
v1= 1, v2=6) }

program ejercicio147;
uses crt;

const 
        n = 1;

type
        vectores = array [1..n] of integer;
var
        vector1,vector2:vectores;
        repetidos:integer;

procedure cargarVectores (var vec: vectores);
            var 
                i: integer;
            begin
                for i := 1 to n do
                begin
                    Write('Numero [', i, ']: ');
                    ReadLn(vec[i]);
                end;
            end;

function digitosRepetidos (num:vectores): integer;
            var i:integer;contador:integer;
            begin
               for i:= 1 to n do
                 begin
                    if num[i] = num[i+1] then
                      begin
                        contador[i]:= contador[i];
                      end;
                 end;
                digitosRepetidos:= num[i];
            end;

begin
    clrscr;
    Write('Vector 1 :'); WriteLn; 
    cargarVectores(vector1);
    WriteLn;
    Write('Vector 2 :'); WriteLn;
    cargarVectores(vector2);
    WriteLn;
    repetidos:= digitosRepetidos(vector1,vector2);

    WriteLn(repetidos,' ');
    readkey;
end.