{ Programa que permita el ingreso de 2 vectores y un valor de i. El valor de i representa la 
posición del segundo vector, que tiene que ser colocado en el primer vector, finalmente mostrar 
el intercambio.}

program ejercicio141;
uses crt;
const
      n = 2;
type    vector = array [1..n] of integer;

var vec1,vec2:vector; i:integer;

procedure intercambio (var vecA,vecB:vector; i:integer);
        var aux:integer;
        begin
                aux:= vecA[i];
                vecA[i]:= vecB[i];
                vecB[i]:= aux;
        end;

begin
    clrscr;
    for i:= 1 to n do
      begin
        WriteLn('Cargar valores del vector [',i,']: ');
        ReadLn(vec1[i],vec2[i]);
      end;
    
    Write('Elegir una posicion: '); ReadLn(i);
    intercambio(vec1,vec2,i);
    
   for i:= 1 to n do
      begin
        WriteLn('Posicion [', i, '] -> vec1: ', vec1[i], ' | vec2: ', vec2[i]);
      end;
      
    readkey;
end.