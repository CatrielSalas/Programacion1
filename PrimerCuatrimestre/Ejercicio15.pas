//Se leen tres n£meros A, B y C y se pide escribir el mayor de ellos
program ejercicio015;

uses crt;

var
  a,b,c, mayor: integer;

begin
  clrscr;

  writeln('Ingrese el numero 1: '); readln(a);
  writeln('Ingrese el numero 2: '); readln(b);
  writeln('Ingrese el numero 3: '); readln(c);

  mayor := a;

  if b > mayor then
    mayor := b;

  if c > mayor then
    mayor := c;

  writeln('El mayor es: ', mayor);

  readkey;
end.




