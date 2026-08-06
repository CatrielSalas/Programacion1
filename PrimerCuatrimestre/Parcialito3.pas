// Una clínica desea obtener un registro de sus pacientes que son atendidos a diario en las diferentes secciones de
// la clínica. A continuación, se detallan los mismos:
//
// |==========================|==========================|==========================|
// | Traumatología            | Laboratorio              | Odontología              |
// |==========================|==========================|==========================|
// | NomyAp: Juan Fernández   | NomyAp: Agustín Peralta  | NomyAp: Daniel Saavedra  |
// | Edad: 20                 | Edad: 46                 | Edad: 31                 |
// | Sexo: Masculino          | Sexo: Masculino          | Sexo: Masculino          |
// |--------------------------|--------------------------|--------------------------|
// | NomyAp: Ana Pérez        | NomyAp: Ana Fernández    | NomyAp: Graciela Sánchez |
// | Edad: 22                 | Edad: 31                 | Edad: 49                 |
// | Sexo: Femenino           | Sexo: Femenino           | Sexo: Femenino           |
// |--------------------------|--------------------------|--------------------------|
// | NomyAp: José Gómez       | NomyAp: Leonel Gómez     | NomyAp: Franco Gómez     |
// | Edad: 25                 | Edad: 25                 | Edad: 25                 |
// | Sexo: Masculino          | Sexo: Masculino          | Sexo: Masculino          |
// |--------------------------|--------------------------|--------------------------|
// |                          | NomyAp: Justina Liels    | NomyAp: Susana Piers     |
// |                          | Edad: 51                 | Edad: 55                 |
// |                          | Sexo: Femenino           | Sexo: Femenino           |
// |                          |--------------------------|--------------------------|
// |                          |                          | NomyAp: Ignacio Sainz    |
// |                          |                          | Edad: 25                 |
// |                          |                          | Sexo: Masculino          |
// |==========================|==========================|==========================|
//
//   Se solicita:
//
// - Mostrar apellido y nombre, edad y sexo de la persona de mayor edad atendida en el área odontología.
// - Cantidad de personas atendidas entre 20 y 30, 31 y 45, más de 45 años en las diferentes áreas de la clínica.
//   Determinar si la cantidad de mujeres atendidas superó a la de hombres o viceversa, en la clínica.
// - Porcentaje de personas atendidas en las distintas áreas sobre el total de la clínica.

program clinica1;

uses crt;

var 
    nombre,nombreM,apellido,apellidoM,sexo,sexoM:string;
    op:Integer;
    edad,edadM:integer;

    { RANGOS POR AREA }
    t20_30, t31_45, t45mas: integer;
    l20_30, l31_45, l45mas: integer;
    o20_30, o31_45, o45mas: integer;

    contMujeres,contHombres:integer;
    contTrauma, contLab, contOdon, total: integer;

begin
    { INICIALIZACION }
    t20_30:=0; t31_45:=0; t45mas:=0;
    l20_30:=0; l31_45:=0; l45mas:=0;
    o20_30:=0; o31_45:=0; o45mas:=0;

    contMujeres:=0;
    contHombres:=0;
    contTrauma := 0;
    contLab := 0;
    contOdon := 0;
    total := 0;

    edadM:=-1;
    sexoM:= ' ';
    nombreM:= ' ';
    apellidoM:=' ';

    clrscr;
    
    repeat
        writeln('Ingrese en que area se atiende');
        writeln ('1: Traumatologia');
        writeln ('2: Laboratorio');
        writeln ('3: Odontologia');
        writeln ('0: Finalizar Dia');
        readln(op);

        if op <> 0 then
        begin
            write('Ingresar Nombre: ');
            readln(nombre);
            write('Ingresar Apellido: ');
            readln(apellido);
            write('Ingresar Edad: ');
            readln(edad);
            write('Ingresar Sexo (m/f): ');
            readln(sexo);
            writeln('==========================');

            total := total + 1;

            { CONTADOR POR AREA }
            case op of
                1: contTrauma := contTrauma + 1;
                2: contLab := contLab + 1;
                3: contOdon := contOdon + 1;
            end;

            { RANGOS DE EDAD POR AREA }
            case op of
                1: begin
                    case edad of
                        20..30: t20_30 := t20_30 + 1;
                        31..45: t31_45 := t31_45 + 1;
                        46..100: t45mas := t45mas + 1;
                    end;
                   end;

                2: begin
                    case edad of
                        20..30: l20_30 := l20_30 + 1;
                        31..45: l31_45 := l31_45 + 1;
                        46..100: l45mas := l45mas + 1;
                    end;
                   end;

                3: begin
                    case edad of
                        20..30: o20_30 := o20_30 + 1;
                        31..45: o31_45 := o31_45 + 1;
                        46..100: o45mas := o45mas + 1;
                    end;
                   end;
            end;

            { SEXO }
            case lowercase(sexo) of 
                'f': contMujeres := contMujeres + 1;
                'm': contHombres := contHombres + 1;
            end;

            { MAYOR EN ODONTOLOGIA }
            if (op = 3) then
            begin
                if edad > edadM then
                begin
                    edadM := edad;
                    apellidoM := apellido;
                    nombreM := nombre;
                    sexoM := sexo;
                end;
            end;
        end;

    until op = 0;

    writeln('Fin del dia');
    writeln('============================');

    { RESULTADOS RANGOS POR AREA }
    writeln('Traumatologia: 20-30=', t20_30, 
            ' 31-45=', t31_45, ' >45=', t45mas);

    writeln('Laboratorio:   20-30=', l20_30, 
            ' 31-45=', l31_45, ' >45=', l45mas);

    writeln('Odontologia:   20-30=', o20_30, 
            ' 31-45=', o31_45, ' >45=', o45mas);

    writeln;

    writeln('Mayor en Odontologia: ',nombreM,' ',apellidoM,
            ' Edad: ',edadM,' Sexo: ',sexoM);

    { COMPARACION SEXO }
    if contMujeres > contHombres then
        writeln('Mas mujeres: ', contMujeres)
    else if contHombres > contMujeres then
        writeln('Mas hombres: ', contHombres)
    else
        writeln('Igual cantidad');

    { PORCENTAJES }
    writeln('============================');
    writeln('Porcentaje por area:');

    if total > 0 then
    begin
        writeln('Traumatologia: ', (contTrauma * 100) / total:0:2, '%');
        writeln('Laboratorio: ', (contLab * 100) / total:0:2, '%');
        writeln('Odontologia: ', (contOdon * 100) / total:0:2, '%');
    end;

    readkey;
end.