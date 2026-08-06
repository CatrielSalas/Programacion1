//Calcular el per¡metro de un tri ngulo rect ngulo, dadas la base y la altura

program ejercicio04;
uses crt;
var p,a,b,h:real;

begin
        clrscr;
        writeln('Ingrese la base (a):'); readln(a);
        writeln('Ingrese la altura (b): '); readln(b);


                h:= (sqrt (a*a + b*b ) );
                p:=(a+b+h);

        writeln('Su perimetro es: ',p:0:2);
        readkey;


end.
