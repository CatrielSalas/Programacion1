{Utilizar procedimiento para cargar 3 vectores (v1,v2, v3) y mostrarlo en orden inverso 
(v3,v2,v1).}

program ejercicio136;

uses crt;


type v=array[1..3] of integer;

procedure cargar (var vec:v);
        var i:integer;

        begin
            for i:=1 to 3 do
            begin
                readln(vec[i]);
            end;
        end;

procedure mostrar (vec:v);
        var i:integer;

        begin
            for i:=1 to 3 do
            begin
                write(vec[i],' ');
            end;
            WriteLn;
        end;



var v1,v2,v3:v;

begin

     clrscr;

     writeln('ingrese 1er vector: '); 
     cargar(v1);

     writeln('ingrese 2do vector: '); 
     cargar(v2);

     writeln('ingrese 3er vector: '); 
     cargar(v3);

     writeln;

     write('---Resultado inverso---');

     writeln;
    
     WriteLn('Vector 3: '); mostrar(v3);
     WriteLn('Vector 2: '); mostrar(v2);
     WriteLn('Vector 1: '); mostrar(v1);

     readkey;

end.