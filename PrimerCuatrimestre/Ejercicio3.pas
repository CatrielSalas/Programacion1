//Obtener suma y resta de dos numeros ingresados

program ejercicio03;

uses crt;

var suma, resta, num1,num2: real;

begin
      clrscr;
      writeln('Numero1'); readln (num1);
      writeln('Numero2'); readln (num2);

      suma:=(num1+num2);
      writeln('Su suma es: ',suma:2:0);
      resta:=(num1-num2);
      writeln('Su resta es: ',resta:2:0);
      readkey;
end.
