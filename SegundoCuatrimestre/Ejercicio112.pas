{Dado un vector de 8 componentes.  
a) Buscar el último 0.  
b) Buscar el primer 0. }

program ejercicio112;
uses crt;
const n = 8;

var 
    i: integer;
    numVect: array[1..n] of integer;
    encontrePrimer, encontroCero: boolean;
    pPos, uPos: integer;

begin
    clrscr;
    pPos := 0; 
    uPos := 0;
    encontrePrimer := false;
    encontroCero := false;
            
    // Carga del arreglo
    for i := 1 to n do
    begin
        Write('Ingrese num [', i, '] ');
        ReadLn(numVect[i]);
    end;
    
    // Búsqueda utilizando banderas booleanas
    for i := 1 to n do
    begin
        if numVect[i] = 0 then
        begin
            encontroCero := true;
            
            // Si no hemos guardado el primer 0, lo guardamos y cambiamos la bandera
            if not encontrePrimer then
            begin
                pPos := i;
                encontrePrimer := true;
            end;
            
            // Cada cero hallado actualiza la última posición
            uPos := i;
        end;
    end; 

    WriteLn;
    
    // Muestra de resultados usando la bandera
    if encontroCero then
    begin
        WriteLn('Primer 0 en la Posicion: [', pPos, ']');
        WriteLn('Ultimo 0 en la Posicion: [', uPos, ']');
    end
    else
        WriteLn('No se ingresaron ceros en el vector.');
        
    readkey;
end.