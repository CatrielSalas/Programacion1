//En un curso de la Facultad la calificaci¢n final del estudiante se determina a partir del
///rendimiento en tres aspectos del trabajo cuatrimestral. Existe una calificaci¢n de ex menes
//parciales, que cuenta con un 30 por ciento del total; la calificaci¢n del trabajo en taller con 20
//por ciento del total, y el examen final con el 50 por ciento restante. Dise¤ar un algoritmo para
///calcular la calificaci¢n final del estudiante.
program ejercicio013;

uses crt;

var parcial,taller,exfinal, calfinal:real;
        porparcial, portaller, porfinal:real;

begin
        clrscr;
        porparcial:= 0.30;
        portaller:= 0.20;
        porfinal:=0.50;

        writeln('Nota de su parcial: '); readln(parcial);
        writeln('Nota del taller: '); readln(taller);
        writeln('Nota examen final: '); readln(exfinal);

        calfinal:= parcial * porparcial + taller* portaller + exfinal*porfinal;

        writeln('Su nota final es: ',calfinal:0:0);
        readkey;
end.

