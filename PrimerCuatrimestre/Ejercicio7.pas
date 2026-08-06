// Algoritmo que convierta las longitudes del sistema ingl‚s al sistema m‚trico decimal.
// Tener en cuenta que 1 milla = 1.609344 km 1 pie = 30.48 cm - 1 pulgada = 2.54 cm

program ejercicio07;

uses crt;

var milla,km,pie,pulgada,cmpie,cmpulgada:real;

begin
      clrscr;
      km:= 1.609344;
      cmpie:= 30.48;
      cmpulgada:= 2.54;

      writeln ('Ingrese el numero de millas'); readln(milla);
      writeln ('Ingrese el numero de pies'); readln(pie);
      writeln('Ingrese el numero de pulgadas'); readln(pulgada);

     km:=(milla*km);
     cmpie:=(pie*cmpie);
     cmpulgada:=(pulgada*cmpulgada);

     writeln('Sus millas en Km son: ', km:0:3, ' km');
     writeln('Sus pulgadas en cm son: ', cmpulgada:0:2,' cm');
     writeln('Sus pies en cm son: ', cmpie:0:2, ' cm');
     readkey;

end.
