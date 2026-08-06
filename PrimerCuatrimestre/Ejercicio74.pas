{Se leen dos n£meros (A-B y OP) se pide realizar las operaciones de acuerdo al c¢digo de
operaci¢n OP:
OP = 1 --> A+B;
OP = 2 --> A-B;
OP = 3 --> A*B;
OP = 4 --> A/B.
Se pide escribir el
resultado de la operaci¢n realizada y consultar si desea ver los dem s resultados, suponiendo
que el ingreso finaliza cuando el OP = 0.}

program ejercicio074;

uses crt;

var
    op:integer;
    a,b:real;
    resultado:real;
    consulta:char;


begin
        clrscr;

        repeat
        writeln('Ingrese una opcion: ');
        writeln('1(Suma)');
        writeln('2(Restar)');
        writeln('3(Multiplicar)');
        writeln('4(Dividir)');
        writeln('0(Finalizar)');
        readln(op);

        if op <> 0 then
        begin
        write('Ingrese primer numero ');
        readln(a);
        write('Ingrese segundo numero ');
        readln(b);

        case op of
        1:
        begin
                resultado:= a+b;
        end;
        2:
        begin
                resultado:= a-b;
        end;
        3:
        begin
                resultado:= a*b;
        end;
        4:
        begin
                if b <> 0 then
                        begin
                        resultado:= a/b;
                        end
                 else
                    begin
                        writeln('Error: division por cero');
                        writeln;
                       continue;
                    end;

                end;
        end;
        writeln('=============================');
        writeln('Resultado: ',resultado:0:0);
        writeln('=============================');
        begin
                write('Desea ver los demas resultados Y/N ? ');
                readln(consulta);
                if lowercase(consulta) = 'y' then
                begin
                writeln;
                writeln('Resultado suma: ', a+b:0:0);
                writeln('Resultado resta: ', a-b:0:0);
                writeln('Resultado division: ',a/b:0:0);
                writeln('Resultado multiplicacion: ', a*b:0:0);
                writeln;
                end;
        end;
        end
        else
        writeln('Fin programa');

        until op = 0;

        readkey;

end.
