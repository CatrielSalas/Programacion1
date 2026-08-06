{Dado una variable NUM, de tipo ENTERO:
a) Mostrar cada uno de sus d¡gitos.
b) Mostrar la cantidad de d¡gitos pares que tiene.}

program DigitosNumero;
uses crt;
var
  num, dig, cont: integer;
begin
   clrscr;
  write('Ingrese un numero entero: ');
  readln(num);

  cont := 0;

  while num <> 0 do
  begin
    dig := num mod 10;
    writeln('Digito: ', dig);

    if dig mod 2 = 0 then
      cont := cont + 1;

    num := num div 10;
  end;

  writeln('Cantidad de digitos pares: ', cont);
  readkey;
end.

