{Dado 3 meses (cada mes se ingresan 3 temperaturas diferentes).  
a) Calcular promedio de temperatura de cada mes. 
b) Identificar qué días no superaron el promedio y cuál fue la temperatura mínima de 
cada mes.}
program ejercicio104;
uses crt;
var
    i:integer;  
    suma1,suma2,suma3:real;
    tempVect1: array[1..3] of Integer;
    tempVect2: array[1..3] of Integer;
    tempVect3: array[1..3] of Integer;

    tempMinima1,tempMinima2,tempMinima3:integer; tempMinima:integer;
    nSupero1,nSupero2,nSupero3:integer;
    prom1,prom2,prom3:real;

begin
    clrscr;
    suma1:=0; suma2:=0; suma3:=0;
    tempMinima1:=9999; tempMinima2:=9999; tempMinima3:=9999;
    nSupero1:=0; nSupero2:=0; nSupero3:=0;

    WriteLn('--- Ingrese temperatura Mes 1---');
    for i:= 1 to 3 do
    begin
      ReadLn (tempVect1[i]);
      suma1:= suma1 + tempVect1[i];
        if tempVect1[i] < tempMinima1 then
        begin
        tempMinima1:= tempVect1[i];
        end;
    end;
    writeln;
    WriteLn('--- Ingrese temperatura Mes 2---');
        for i:= 1 to 3 do
    begin
      ReadLn (tempVect2[i]);
      suma2:= suma2 + tempVect2[i];
        if tempVect2[i] < tempMinima2 then
        begin
        tempMinima2:= tempVect2[i];
        end;
    end;
    WriteLn;
    WriteLn('--- Ingrese temperatura Mes 3---');
        for i:= 1 to 3 do
    begin
      ReadLn (tempVect3[i]);
      suma3:= suma3 + tempVect3[i];
        if tempVect3[i] < tempMinima3 then
        begin
        tempMinima3:= tempVect3[i];
        end;
    end;
    //Promedio
    prom1:= suma1/3; prom2:= suma2/3; prom3:= suma3/3;

    //Mes 1
     WriteLn('Mes 1 -> Promedio: ', prom1:0:2, ' | Minima: ', tempMinima1);
     for i:= 1 to 3 do 
     if tempVect1[i] <= prom1 then
       begin Write('NO superaron el promedio: '); WriteLn('Dia ',i) end;
    writeln;

    //Mes 2
     WriteLn('Mes 2 -> Promedio: ', prom2:0:2, ' | Minima: ', tempMinima2);
     for i:= 1 to 3 do 
     if tempVect2[i] <= prom2 then
       begin
    Write('NO superaron el promedio: '); WriteLn('Dia ',i); end;
    WriteLn;

    //Mes 3
     WriteLn('Mes 3 -> Promedio: ', prom3:0:2, ' | Minima: ', tempMinima3);
     for i:= 1 to 3 do 
     if tempVect3[i] <= prom3 then
       begin Write('NO superaron el promedio: '); WriteLn('Dia ',i); end;
    writeln;
    
    readkey;

end.