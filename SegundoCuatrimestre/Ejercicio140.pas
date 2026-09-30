{ Producir función que reciba como parámetro un número y devuelva su factorial.}

program ejercicio140;
uses crt;

var    
        n1:integer; 

function calcularFactorial (num:integer) :Int64;
        var i:integer; resFactorial:Int64;
        begin
            resFactorial:=1;
            
            for i:= 1 to num do
                begin
                   resFactorial:= resFactorial * i; 
                end;
                calcularFactorial:=resFactorial;
        end;

begin
    clrscr;
    Write('Escribe un numero: '); ReadLn(n1);
    WriteLn('Factorial es: ',calcularFactorial(n1));
    readkey;
end.