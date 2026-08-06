{A partir del proceso anterior construir y escribir los 20 primeros números primos. }
program ejercicio79;

uses crt;

var
   num, i, contDiv, contPrimos: integer;

begin
   clrscr;

   num := 2;
   contPrimos := 0;

   while contPrimos < 20 do
   begin
      contDiv := 0;

      for i := 1 to num do
      begin
         if num mod i = 0 then
            contDiv := contDiv + 1;
      end;

      if contDiv = 2 then
      begin
         writeln(num);
         contPrimos := contPrimos + 1;
      end;

      num := num + 1;
   end;

   readkey;
end.