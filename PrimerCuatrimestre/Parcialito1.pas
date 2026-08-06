{ Un teatro otorga descuentos segun la edad del cliente.
Determinar la cantidad de dinero que el teatro deja de percibir por el descuento de las categorias,total recaudado
y promedio de edad de las personas que asistieron.
Tener en cuenta que los ni¤os menores de 5 a¤os no pueden entrar al teatro.
Los descuentos se hacen tomando el siguiente cuadro:
Categoria       Edad                    Descuento       valor entrada:100
1               5-14                    35%             10
2               15-19                   25%             16
3               20-45                   10%             30
4               46-65                   25%             50
5               66 en adelante          35%             4
                                                        75 }

program parcialito;

uses crt;

const
valorEntrada=100;

var
    opcion: integer;
    edad: integer;
    sumaEdad: integer;
    dineroPerdido: real;
    promedioEdad: real;
    recaudadoTotal: real;
    precioFinal: real;
    descuento: real;
    cantidadPersonas: integer;

begin
    clrscr;

    cantidadPersonas := 0;
    recaudadoTotal := 0;
    sumaEdad := 0;
    dineroPerdido := 0;

    repeat
        writeln('================================');
        writeln('Ingrese 1 para ingresar la edad del cliente');
        writeln('Ingrese 2 para finalizar');
        write('Ingrese una opcion: ');
        readln(opcion);

        if opcion = 1 then
        begin
            write('Edad del cliente: ');
            readln(edad);

            if edad < 5 then
            begin
            writeln('=================================');
                writeln('Menores de 5 no entran');
            end
            else
            begin
                case edad of
                    5..14:
                        begin
                            descuento := 35;
                            writeln('Categoria 1');
                        end;

                    15..19:
                        begin
                            descuento := 25;
                            writeln('Categoria 2');
                        end;

                    20..45:
                        begin
                            descuento := 10;
                            writeln('Categoria 3');
                        end;

                    46..65:
                        begin
                            descuento := 25;
                            writeln('Categoria 4');
                        end;

                    66..200:

                        begin
                            descuento := 35;
                            writeln('Categoria 5');
                        end;
                else
                    begin
                        descuento := 0;
                        writeln('Edad fuera de rango');
                    end;
                end;

                precioFinal := valorEntrada - (valorEntrada * descuento / 100);

                sumaEdad := sumaEdad + edad;
                cantidadPersonas := cantidadPersonas + 1;
                recaudadoTotal := recaudadoTotal + precioFinal;
                dineroPerdido := dineroPerdido + (valorEntrada * descuento / 100);

                writeln('El cliente pagara: $', precioFinal:0:2);
            end;
        end;

    until opcion = 2;

    if cantidadPersonas > 0 then
        promedioEdad := sumaEdad / cantidadPersonas
    else
        promedioEdad := 0;

    writeln('================================');
    writeln('Perdida de dinero en el dia: $', dineroPerdido:0:2);
    writeln('Promedio de edad: ', promedioEdad:0:0);
    writeln('Total recaudado en el dia: $', recaudadoTotal:0:2);
    readkey;
end.
