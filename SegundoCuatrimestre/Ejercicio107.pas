{Leer un vector de n elementos y ordenarlos de menor a mayor}

program ejercicio107;
uses crt;

const
  n = 5;

var
      i, j, aux: integer;
      num: array[1..n] of integer;

begin
    clrscr;

    for i := 1 to n do
    begin
      Write('Ingrese el numero ', i, ': ');
      ReadLn(num[i]);
    end;

      for i := 1 to n - 1 do
        for j := i + 1 to n do
        begin
          if num[i] > num[j] then
          begin
            aux := num[i];
            num[i] := num[j];
            num[j] := aux;
          end;
    end;
      WriteLn;
      WriteLn('Los numeros ordenados de menor a mayor son:');
      for i := 1 to n do
      begin
        Write(num[i],'  ');
      end;

      ReadKey;
end.