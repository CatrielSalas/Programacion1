{Realizar procedimientos para obtener en un tercer vector, suma de los elementos de v1 y 
v2. "}

program ejercicio139;
uses crt;
const f = 3;

type    vector = array [1..f] of integer;

var     v1,v2,v3:vector;
        i:integer;
        
procedure cargar (var vec:vector);
        var i:integer;
        begin
            WriteLn('Ingrese valores ');
            for i:= 1 to f do
              begin
                ReadLn(vec[i]);
              end;
        end;

procedure sumaVectores (vec1,vec2:vector; var vecResultado:vector);
        var i:integer;
        begin
              for i:= 1 to f do
                begin
                    vecResultado[i]:= vec1[i] + vec2[i];                  
                end;
        end;
begin
    clrscr;

    WriteLn('Vector 1: '); cargar(v1);
    WriteLn('Vector 2: '); cargar(v2);
    
    sumaVectores(v1,v2,v3);
        WriteLn ('Suma de vectores (Vector 3): ');
            for i := 1 to f do
            begin
                WriteLn('Posicion [', i, ']: ', v3[i]);
            end;
    readkey;
end.