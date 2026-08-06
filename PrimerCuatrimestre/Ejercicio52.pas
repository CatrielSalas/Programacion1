{En una empresa se deben imprimir listados de cierta cantidad de p ginas, en resmas de
500 hojas cada una. Como informaci¢n nos dan: el nombre del listado y la cantidad de p ginas
que ocupa. La serie finaliza con el listado: "FIN". Calcular la cantidad de resmas que se
necesitan para imprimirlos a todos.}
program ejercicio052;

uses crt;

var resmas:integer;
    nombreListado:string;
    cantidadPaginas:integer;
    totalPaginas:integer;
    fin:string;

begin
        clrscr;

        totalPaginas:= 0;


        writeln('===LISTADO===');
        writeln('Ingresar Nombre del Listado (Fin - Finalizar)');
        readln(nombreListado);

        while nombreListado <> 'Fin' do

        begin

        writeln('Cuantas paginas ocupara ');
        readln(cantidadPaginas);

        begin
        totalPaginas := totalPaginas + cantidadPaginas;
        end;

        writeln('===LISTADO===');
        writeln('Ingresar Nombre de Listado (Fin - Finalizar)');
        readln(nombreListado);

        end;

        begin
        resmas := totalPaginas div 500;
        end;

        if (totalPaginas mod 500) <> 0 then
        begin
        resmas := resmas + 1;
        end;

        writeln('Cantidad total de paginas: ', totalPaginas);
        writeln('Cantidad de resmas necesarias: ', resmas);

        readkey;

end.
