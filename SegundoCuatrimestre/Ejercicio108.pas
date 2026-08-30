{ Calcular en mínimo elemento de un vector y la posición en donde apareció. }
program ejercicio108;
uses crt;

const n = 5;

var i:integer;
    posicion:array[1..n] of integer;
    maximo,posMaxima:integer;

begin
    clrscr;
    maximo:= posicion[i];
    
    for i:= 1 to n do
      begin
        Write('Ingresar valor ',i, ' ');
        ReadLn(posicion[i]);
      end;
      
    for i:= 1 to n do
      begin
        if posicion[i] < maximo then
          begin
            maximo:= posicion[i];
            posMaxima:= i;
          end; 
      end;
      WriteLn('Maximo: ',maximo, ' En la posicion: ', posMaxima);
      readkey;

  
end.