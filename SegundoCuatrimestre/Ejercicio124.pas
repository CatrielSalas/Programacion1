{Se introducen por teclado una serie de valores referentes al consumo de energía eléctrica, 
su posición hace referencia al número de usuario. Diseñar un programa que obtenga e imprima 
la siguiente información.  
a) El o los usuarios que consumieron más energía eléctrica.  
b) Los usuarios que consumieron menos que el promedio mensual.  
c) El valor de lo consumido por los usuarios que más consumieron, sabiendo que el valor 
del Kw es de $ 4,861.}

program ejercicio124;
uses crt;

const valorEnergia = 4861; n = 4;

type vector = array[1..n] of integer;

var
    consumo:vector; 
    i,j:integer;
    totalConsumido:integer; maxConsumo:integer; valorConsumo:real; promedioConsumo:Real;

begin
        clrscr;
        totalConsumido:= 0;
        maxConsumo:= 0;
        for i:= 1 to n do
          begin
            Write('El usuario [',i,'] consumio de energia--> ');
            ReadLn(consumo[i]);

            totalConsumido:= totalConsumido + consumo[i];

            if consumo[i] > maxConsumo then
              begin
                maxConsumo:= consumo[i];

              end;
          end;
        promedioConsumo:= totalConsumido/n;

        WriteLn('Usuario con mayor consumo ',maxConsumo,' Kw: ');
        for i:= 1 to n do
            if consumo[i] = maxConsumo then
              begin
                Write('Usuario ',i,' ');
              end;
        
        WriteLn;        

        WriteLn('Usuarios que consumieron menos que el promedio mensual ', promedioConsumo:0:2,' kw');
        for i:= 1 to n do
          if consumo[i] < promedioConsumo then
            begin
              Write('Usuario Numero ',i, ' Consumio: ',consumo[i],' kw');
              WriteLn;
            end;

        valorConsumo:= maxConsumo* valorEnergia;

        WriteLn ('El valor abonado por el/los usuario(s) de mayor consumo: ',valorConsumo:0:2);
        readkey;
end.