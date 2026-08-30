{Dado un vector de M componentes. - - 
Calcular la productoria de sus elementos.  
Imprimir la posición del 0 si lo hubiera y la productoria hasta antes del 0 ingresado. }
program ejercicio114;
uses crt;

const 
    m = 5;

var 
    i: integer;
    elemento: array[1..m] of integer;
    encontroCero: Boolean;
    posCero: integer;
    mult: LongInt;

begin
    clrscr;
    
    mult := 1;
    posCero := 0;
    encontroCero := False;

    
    WriteLn('=== INGRESO DE DATOS ===');
    for i := 1 to m do
    begin
        Write('Ingrese elemento [', i, ']: ');
        ReadLn(elemento[i]);
    end;

    for i := 1 to m do
    begin
        if (elemento[i] = 0) and (not encontroCero) then
        begin
            posCero := i;
            encontroCero := True;
        end;

        if not encontroCero then
        begin
            mult := mult * elemento[i];
        end;
    end;
    
    WriteLn;
    WriteLn('=== RESULTADOS ===');
    WriteLn('Productoria acumulada: ', mult);
    
    if encontroCero then
        WriteLn('Se encontro un 0 en la posicion: ', posCero)
    else
        WriteLn('No se ingresaron ceros en el vector.');

    WriteLn;
    WriteLn('Presione cualquier tecla para salir...');
    ReadKey;
end.BuiltInLnXPlus1


