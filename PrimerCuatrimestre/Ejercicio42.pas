{Dado un numero N, encontrar el factorial de ese n£mero. (N!)}

program ejercicio042;

uses crt;

var n,i:longint;
        factorial:longint;

begin
      clrscr;
      writeln('Ingrese numero');
      readln(n);

      factorial:=1;

      for i:= 1 to n do
      begin
      factorial:= factorial * i;
      end;
      writeln('El factorial de ', n, ' es: ', factorial);

      readkey;

end.
