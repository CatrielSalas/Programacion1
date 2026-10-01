{Programa que posibilite cargar un vector y por medio de funciones devuelva el valor 
mínimo y máximo del vector ingresado. }

program ejercicio142;
uses crt;
const   n = 5;

type    vector = array [1..n] of integer;

var vec1:vector; i,maxVal,minVal:integer;

procedure cargarVector (var vec:vector);
        var i:integer;
        begin
            for i:= 1 to n do
            begin
                Write('Ingrese el valor para la posicion [', i, ']: ');
                ReadLn(vec[i]);
            end;
        end;

function maximo (vec:vector): Integer;
        var max,i:integer;
        begin
            max:= vec[1];
            for i:= 2 to n do
              begin
                if vec[i] > max then
                  begin
                    max:= vec[i];
                  end;
              end;
              maximo:= max;
        end;
function minimo (vec:vector): Integer;
        var min,i:integer;
        begin
            min:= vec[1];
            for i:= 2 to n do
              begin
                if vec[i] < min then
                  begin
                    min:= vec[i];
                  end;
              end;
              minimo:= min;
        end;

begin
    clrscr;
    cargarVector(vec1);

    maxVal:= maximo(vec1);
    minVal:= minimo(vec1);

    WriteLn('----------------------------------');
        WriteLn('el vector queda: ');
        for i:= 1 to n do
          begin
            Write(vec1[i],' - ');
          end;
    WriteLn;
    WriteLn('Maximo: ',maxVal);
    WriteLn('Minimo: ',minVal);

    
    readkey;
end.