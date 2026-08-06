//Desarrollar un programa que solicite el ingreso del precio de un articulo y la cantidad que lleva el cliente.
//Mostrar lo que debe abonar el comprador.

program ejercicio011;

uses crt;

var precioarticulo, cantidadcompra, abona: real;

begin
        clrscr;
        writeln('Ingresa el precio del producto: '); readln(precioarticulo);
        writeln('Cuantos vas a llevar? '); readln(cantidadcompra);

        abona:= precioarticulo*cantidadcompra;

        writeln('Usteded abonara por ',cantidadcompra:0:0,' articulos ',abona:0:2,' $');
        readkey;




end.
