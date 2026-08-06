{Dado un numero natural determinar si es primo.}
program ejercicio078;

uses crt;

var
   i, num: integer;
   cont: integer;

begin
   cont := 0;
   clrscr;
   WriteLn('Ingrese un numero: ');
   readln(num);

   for i := 1 to num do
   begin
      if num mod i = 0 then
      begin
         cont := cont + 1;
      end;
   end;

   if cont = 2 then
   begin
      writeln('Es primo');
   end
   else
   begin
      writeln('No es primo');
   end;

   readkey;
end.
