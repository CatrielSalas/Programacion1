program ejercicio0114;

uses crt;

var 
    i: integer;
    categoria: integer;
    asistencia: string;
    anios: integer;
    total: real;
    tAntiguedad: real;
    pagaempresa: real;
    sueldoBase: real;

const 
    sueldoBC1 = 700;
    sueldoBC2 = 500;
    premio = 200;
    porcentaje = 0.02;

begin
    total := 0;
    pagaempresa := 0;
    clrscr;

    for i := 1 to 3 do
        begin
            WriteLn('El chofer: ', i);
            Write('A que categoria pertenece (1 o 2) ---> ');
            ReadLn(categoria);
            Write('Posee asistencia perfecta (SI/NO) ---> ');
            ReadLn(asistencia);
            Write('Cuantos años trabajo ---> ');
            ReadLn(anios);
            { Determinar sueldo base }
            case categoria of
                1: sueldoBase := sueldoBC1;
                2: sueldoBase := sueldoBC2;
                else
                begin
                    WriteLn('Categoria invalida');
                    sueldoBase := 0;
                end;
                
        end;
        { Calcular antiguedad }
        tAntiguedad := sueldoBase * porcentaje * anios;
        { Calcular total }
        total := sueldoBase + tAntiguedad;
        if lowercase(asistencia) = 'si' then
            total := total + premio;
            WriteLn('El empleado: ', i, ' cobro $ ', total:2:0);
            WriteLn('-----------------------------');
            pagaempresa := pagaempresa + total;
    end;

    WriteLn('La empresa paga en total: $ ', pagaempresa:2:0);
    readkey;
end.