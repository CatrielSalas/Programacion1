{Programa que permita recibir un vector como parámetro e indique si hay más cantidad de 
números ceros que de unos. }

program ejercicio145;

uses crt;

const n = 10;

type
        vector = array [1..n] of integer;
var
    vec:vector; contCeros,contUnos:integer;

procedure cargarVector (var vec:vector);
            var i:integer;
            begin
                for i:= 1 to n do
                  begin
                    ReadLn(vec[i]);
                  end;
            end;

function contadorCeros (num:vector): integer;
            var i,cont0:integer;
            begin
            cont0:=0;
                for i:= 1 to n do
                  begin
                    if num[i] = 0 then
                      cont0:= cont0 + 1
                  end;
                contadorCeros:= cont0;
            end;

function contadorUnos (num:vector): integer;
            var i,cont1:integer;
            begin
            cont1:=0;
                for i:= 1 to n do
                  begin
                    if num[i] = 1 then
                      cont1:= cont1 + 1
                  end;
                contadorUnos:= cont1;
            end;

procedure compararCantidad (num0,num1:integer) ;

            begin 
                if num0 > num1 then
                  begin
                    WriteLn('Resultado: Hay mas cantidad de 0 que de 1 ');
                  end
                  else if num1 > num0 then
                    begin
                      WriteLn('Resultado: Hay mas cantidad de 1 que de 0 ');
                    end;
            end;


begin
    clrscr;
    WriteLn('Cargar vector: ');
    cargarVector(vec);

    contCeros:= contadorCeros(vec);
    contUnos:= contadorUnos(vec);
    WriteLn('Ceros totales ',contCeros,' -- Unos totales ',contUnos);
    
    WriteLn;
    compararCantidad(contCeros,contUnos);
    readkey;

end.