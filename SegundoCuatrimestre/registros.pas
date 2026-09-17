program matriz_resultados;

uses crt;

const CANT = 4;

type
  
        resultado = record
                golesLocal: integer;
                golesVisitante: integer;
                jugado: boolean; 
        end;

        vecEquipos = array[1..CANT] of string;
        matrizTorneo = array[1..CANT, 1..CANT] of resultado;

var
        equipos: vecEquipos;
        tabla: matrizTorneo;
        i, j: integer;

begin

  equipos[1] := 'Boca'; equipos[2] := 'River'; equipos[3] := 'Racing'; equipos[4] := 'Independiente';
    clrscr;

        for i := 1 to CANT do
            for j := 1 to CANT do
            begin
            if i <> j then 
            begin
                Writeln('--- Partido: ', equipos[i], ' (L) vs ', equipos[j], ' (V) ---');
                Write('Goles ', equipos[i], ': '); ReadLn(tabla[i,j].golesLocal);
                Write('Goles ', equipos[j], ': '); ReadLn(tabla[i,j].golesVisitante);
                tabla[i,j].jugado := true;
                Writeln;
            end;
            end;

        clrscr;
        i := 1;
        j := 2; 
        Writeln('Resultado del cruce:');
        Writeln(equipos[i], ' ', tabla[i,j].golesLocal, ' - ', tabla[i,j].golesVisitante, ' ', equipos[j]);
        
        readkey;
end.