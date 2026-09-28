{ Realizar función que reciba 2 vectores como parámetro y devuelva la suma de todos sus 
componentes}

program ejercicio138;
uses crt;
const n = 3;

type vector = array[1..n] of integer;

var 
    v1, v2: vector;
    resultado: integer;

procedure cargar (var vec: vector);
            var 
                i: integer;
            begin
                for i := 1 to n do
                begin
                    Write('Numero [', i, ']: ');
                    ReadLn(vec[i]);
                end;
            end;
     
function sumar (vecA, vecB: vector): integer;
            var 
                sumaVectores,i: integer;
            begin
                sumaVectores := 0;
                for i := 1 to n do
                begin

                    sumaVectores := sumaVectores + vecA[i] + vecB[i];      
                end; 
                sumar := sumaVectores;
            end;

begin
    clrscr;
    
    WriteLn('=== Vector 1 ==='); 
    cargar(v1);
    WriteLn;
    
    WriteLn('=== Vector 2 ==='); 
    cargar(v2);
    WriteLn;
    
    resultado := sumar(v1, v2);
    
    WriteLn('La suma de todos los componentes es: ', resultado);
    
    readkey;
    
end.
