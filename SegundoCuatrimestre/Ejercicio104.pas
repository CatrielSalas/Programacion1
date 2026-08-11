{Dado 3 meses (cada mes se ingresan 3 temperaturas diferentes).  
a) Calcular promedio de temperatura de cada mes. 
b) Identificar qué días no superaron el promedio y cuál fue la temperatura mínima de 
cada mes.}
program ejercicio104;
uses crt;
var
    mes, dia, tempMinima: integer;
    suma, prom: real;
    temp: array[1..3] of integer; // Usamos 1 solo vector de 3 posiciones para los días
begin
    clrscr;
    for mes := 1 to 3 do
    begin
        suma := 0; tempMinima := 9999;
        
        WriteLn('=== MES ', mes, ' ===');
        for dia := 1 to 3 do
        begin
            Write('Dia ', dia, ': Temperatura: '); ReadLn(temp[dia]);
            suma := suma + temp[dia];
            if temp[dia] < tempMinima then tempMinima := temp[dia];
        end;

        prom := suma / 3;
        WriteLn('Promedio: ', prom:0:2, ' | Temp. Minima: ', tempMinima);
        Write('Dias que NO superaron el promedio: ');
        
        for dia := 1 to 3 do
            if temp[dia] <= prom then Write('Dia ', dia, ' ');  
        WriteLn; WriteLn;
    end;
    readkey;
end.