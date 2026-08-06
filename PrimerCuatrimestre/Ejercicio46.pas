{Realizar un programa que imprima 10 t‚rminos de la serie 11 - 22 - 33 - 44, etc. (No se
ingresan valores por teclado). }


program ejercicio046;
uses crt;
var i: integer;

  begin
  clrscr;
  for i := 1 to 100 do
  begin
    write(i * 11, ' ');
  end;
  readkey;

end.
