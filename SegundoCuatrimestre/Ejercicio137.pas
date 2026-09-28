{ Se dispone de vector con 3 números enteros. Se solicita posición y valor y se reemplaza 
en vector original.}

program ejercicio137;
uses crt;
const f = 3;

type  v = array [1..f] of integer;

var vector1:v;

procedure cargar (var vec:v);
        var i:integer;
        begin
        for i:= 1 to f do
            begin
             WriteLn('Posicion [',i,']');
             ReadLn(vec[i]);   
            end;
        end;

procedure reemplazar (var vec:v);

       var pos,nuevoValor:Integer;

            begin
              Write('Igrese la posicion a remplazar: '); 
              ReadLn(pos);
              Write('Cual es el nuevo valor? ');
               ReadLn(nuevoValor);
              vec[pos] := nuevoValor;
              Write('Nuevo valor en la posicion ',pos,' sera ',vec[pos]);
        end;

begin
    clrscr;
    
    cargar(vector1);
    reemplazar(vector1);
    readkey;
end.