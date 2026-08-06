{Algoritmo que lea nombres de ciudades, cantidades de habitantes e ingreso promedio por
habitante. Calcular e imprimir el nombre de la ciudad con m s habitantes, la ciudad con mayor
ingreso promedio por habitante, cuantas ciudades superan los 50.000 habitantes y el total de
ciudades ingresadas. La serie finaliza con la palabra "FIN".}

program ejercicio59;

uses crt;

var nombreCiudad:string;
    cantidadHabitantes:longint;
    ingresoPromedio:longint;
    contHabitantes:longint;
    contCiudades:integer;
    contIngresoPromedio:longint;
    superanCantidad:longint;
    ciudadMasHab:string;
    ciudadMasDin:string;



begin
                contHabitantes:=0;
                superanCantidad:=0;
                contCiudades:=0;
                contIngresoPromedio:=0;
                clrscr;

                writeln('Ingrese Fin para finalizar');
                write;
                write('Ingrese nombre de la Ciudad: ');
                readln(nombreCiudad);


                while lowercase(nombreCiudad) <> 'fin' do
                begin

                        write('Cuantos habitantes tiene la ciudad: ');
                        readln(cantidadHabitantes);
                        write('Cual es el ingreso promedio por habitantes: ');
                        readln(ingresoPromedio);

                                begin
                                        contCiudades:= contCiudades+1;
                                end;
                                if      cantidadHabitantes > contHabitantes then
                                begin
                                        contHabitantes:= cantidadHabitantes;
                                        ciudadMasHab:= nombreCiudad;
                                end;
                                begin
                                        contIngresoPromedio:= contIngresoPromedio;
                                end;
                                if      ingresoPromedio > contIngresoPromedio then
                                begin
                                        contIngresoPromedio:= ingresoPromedio;
                                        ciudadMasDin:=nombreCiudad;
                                end;

                                if      cantidadHabitantes > 50000 then
                                begin
                                        superanCantidad:=superanCantidad +1;
                                end;

                        writeln('Ingrese Fin para finalizar');
                        write;
                        write('Ingrese nombre de la Ciudad: ');
                        readln(nombreCiudad);

                end;



                writeln('====================');

                writeln('Cantidad de ciudades ingresadas: ',contCiudades);
                writeln('La ciudad con mas habitantes: ', ciudadMasHab);
                writeln('La ciudad ',ciudadMasDin,' es la que mayor ingreso promedio tiene: ',contIngresoPromedio);
                writeln('Cantidad de ciudades que superan los 50000 habitantes: ',superanCantidad);


                readkey;


end.
