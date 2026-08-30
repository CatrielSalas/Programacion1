program ejercicio115;
uses crt;

const 
    N = 5;

var 
    nombres: array[1..N] of string;
    notas: array[1..N] of integer;
    i, j, auxNota: integer;
    auxNombre: string;

begin
    clrscr;

    
    WriteLn('=== CARGA DE DATOS ===');
    for i := 1 to N do
    begin
        Write('Nombre del alumno [', i, ']: '); ReadLn(nombres[i]);
        Write('Nota del alumno [', i, ']: '); ReadLn(notas[i]);
        WriteLn;
    end;


    for i := 1 to N - 1 do
    begin
        for j := i + 1 to N do
        begin
           
            if nombres[i] > nombres[j] then
            begin
                
                auxNombre := nombres[i];
                nombres[i] := nombres[j];
                nombres[j] := auxNombre;

                
                auxNota := notas[i];
                notas[i] := notas[j];
                notas[j] := auxNota;
            end;
        end;
    end;

    WriteLn('=== A) ORDENADOS ALFABETICAMENTE ===');
    for i := 1 to N do
        WriteLn(nombres[i], ' -> Nota: ', notas[i]);
    WriteLn;

    for i := 1 to N - 1 do
    begin
        for j := i + 1 to N do
        begin

            if notas[i] > notas[j] then
            begin
                
                auxNota := notas[i];
                notas[i] := notas[j];
                notas[j] := auxNota;

                auxNombre := nombres[i];
                nombres[i] := nombres[j];
                nombres[j] := auxNombre;
            end;
        end;
    end;

    
    WriteLn('=== B) ORDENADOS POR NOTA (MENOR A MAYOR) ===');
    for i := 1 to N do
        WriteLn(nombres[i], ' -> Nota: ', notas[i]);

    ReadKey;
end.