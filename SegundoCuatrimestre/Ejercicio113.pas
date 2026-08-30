{Se desea conocer el promedio de ingresos mensuales de varias familias. Las cantidades 
indican los dos sueldos o ingresos principales. Imprimir el promedio de cada familia y, al final, 
la familia que cobra más en promedio.  }

program ejercicio113;
uses crt;

const numFamilias = 5;

var i:integer;
    sueldo1, sueldo2:real;
    suma:real;
    familia: array[1..numFamilias] of String;
    promedio: array[1..numFamilias] of real;
    mayorPromedio: Real;
    posMayor: Integer;
    familiaMayor:String;

begin
    clrscr;
    sueldo1:=0; sueldo2:= 0;
               for i:= 1 to numFamilias do
            begin
                Write('Familia: ',i,' '); ReadLn(familia[i]);
                Write('Ingrese sueldo 1: '); ReadLn(sueldo1);
                Write('Ingrese sueldo 2: '); ReadLn(sueldo2);
            promedio[i]:=(sueldo1 + sueldo2)/2;
            WriteLn;
            end;
             WriteLn('Promedio individual del sueldo por familias---> ');
                for i:= 1 to numFamilias do
            begin
                Writeln('Familia: ',familia[i],' Promedio ',promedio[i]:0:2);
            end; 
            WriteLn;
                
                mayorPromedio:= promedio[1]; familiaMayor:= familia[1];
                posMayor:=1;
                
                for i:= 2 to numFamilias do
                begin
                    if promedio[i] > mayorPromedio then
                    begin
                      mayorPromedio:= promedio[i];
                      posMayor:= i;
                      familiaMayor:= familia[i];
                    end;
                end;
                writeln;
                    begin
                        Write('Mayor cobro con el Promedio: ',mayorPromedio:0:2,' Familia ',familiaMayor, ' en la posicion ',posMayor );
                    end;
    readkey;
end.
