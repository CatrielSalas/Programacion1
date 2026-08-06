//Leer un vector de n elementos y contar cuantos valores positivos, negativos e iguales a cero. 
program ejercicio103;
uses crt;
var 
    i:integer; negativos,positivos,cero:integer;
    vectElementos:array[1..5]of Integer;
    

begin
    clrscr;
    negativos:=0; positivos:=0; cero:=0;
    WriteLn('--- Ingrese valores --- ');

    for i:= 1 to 5 do
    begin
      ReadLn(vectElementos[i]);
      if vectElementos[i] > 0 then
        begin
        positivos:= positivos + 1;
        end;
      if vectElementos[i] < 0 then
        begin
        negativos:= negativos +1;
        end;
      if vectElementos[i] = 0 then
        begin
        cero:= cero +1;
        end;
    end;
    WriteLn ('Cantidad de negativos: ',negativos);
    WriteLn ('Cantidad de positivos: ',positivos);
    WriteLn ('Cantidad de ceros: ',cero);

    readkey;

end.