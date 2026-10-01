{Desarrollar programa que permita la carga de 2 matrices cuadradas y obtenga cuál de 
estas suma más entre sus componentes. }

program ejercicio144;
uses crt;
const
    f = 2; c = 2;

type
        matriz = array [1..f,1..c] of integer;

var     matA,matB:matriz;
        sumaA,sumaB:integer;

procedure cargarMatriz (var mat1,mat2:matriz );
            var i,j:integer;
            begin
                for i:= 1 to f do
                  begin
                    for j:= 1 to c do
                        begin
                        Write('Matriz [',i,'],[',j,']: ');
                        ReadLn(mat1[i,j],mat2[i,j]);
                        end;
                  end;
            end;

function sumaMatriz (mat: matriz): integer;
            var
                i, j, acumulador: integer;
            begin
                acumulador := 0;
                for i := 1 to f do
                begin
                    for j := 1 to c do
                    begin
                        acumulador := acumulador + mat[i, j];
                    end;
                end;
                sumaMatriz := acumulador;
            end;
            
procedure analizarCalculo (suma1,suma2:integer);
            begin
                    if suma1 > suma2 then
                begin
                    WriteLn('Resultado: La Matriz A suma mas entre sus componentes.'); 
                end
                else if suma2 > suma1 then
                    begin
                        WriteLn('Resultado: La Matriz B suma mas entre sus componentes.');  
                    end
                else 
                    begin
                    WriteLn('---La sumas de matrices son iguales---');
                    end;
            end;

begin
    clrscr;
    WriteLn('Cargar matriz: ');
    cargarMatriz(matA,matB);

    sumaA:= sumaMatriz(matA);
    sumaB:= sumaMatriz(matB);

    WriteLn('Suma matriz A: ',sumaA);
    WriteLn('Suma matriz B: ',sumaB);
    WriteLn;
    analizarCalculo(sumaA,sumaB);
      
    readkey;
end.