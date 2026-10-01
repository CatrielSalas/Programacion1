{ Desarrollar un programa que reciba un valor entero como parámetro y consulte al usuario 
que operación realizar (cuadrado o cubo) y muestre su resultado en pantalla}

program ejercicio147;

uses crt;

var 
    num, opcion: integer;

procedure cargarValor (var numero: integer);
            begin
                Write('Ingrese un valor entero: ');
                ReadLn(numero);    
            end;

procedure pedirOperacion (var op: integer);
            begin
                WriteLn('Que operacion desea realizar?');
                WriteLn('2 - Elevar al Cuadrado');
                WriteLn('3 - Elevar al Cubo');
                ReadLn(op);    
            end;

function calCuadrado (num: integer): integer;
            begin
                calCuadrado := round(Exp(2 * Ln(num)));;
            end;

function calCubo (num: integer): integer;
            begin
                calCubo := round(Exp(3 * Ln(num)));;
            end;

function mostraResultado (op:integer):integer;
            begin
                if opcion = 2 then
                    WriteLn('El resultado al cuadrado es: ', calCuadrado(num))
                else if opcion = 3 then
                    WriteLn('El resultado al cubo es: ', calCubo(num))
                else
                    WriteLn('Opción no válida.');
            end;


begin
    clrscr; 
    
    cargarValor(num);
    pedirOperacion(opcion);
    WriteLn('----------------------------------');
    mostraResultado(opcion);

    readkey;
end.
Exp(b * ln(a))