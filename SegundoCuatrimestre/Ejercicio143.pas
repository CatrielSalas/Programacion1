{Producir un programa que reciba una frase y nos devuelva la cantidad de palabras 
ingresadas.}

program ejercicio143;
uses crt;

var
    texto:String;

procedure escribir (var palabra:string) ;
        begin
            WriteLn('Escribir una frase: ');
            ReadLn(palabra);   
        end;

function contadorLetras (var palabra:string): integer;
        var contador:integer; i:integer;
        begin
        contador:= 0;
          for i:= 1 to length(palabra) do
            begin
             contador:= contador + 1;             
            end;
            contadorLetras:= contador;
        end;

function contadorPalabras (palabra: string): integer;
            var 
                contador, i: integer;
            begin
                contador := 0;

                if palabra <> '' then 
                begin
                    contador := 1; 
                    for i := 1 to length(palabra) do
                    begin
                        if palabra[i] = ' ' then
                            contador := contador + 1;
                    end;
                end;
                contadorPalabras := contador;
            end;

begin
    clrscr;
    escribir(texto);
    WriteLn('Cantidad de letras: ',contadorLetras(texto));
    WriteLn('Cantidad de Palabras: ',contadorPalabras(texto));

    readkey;
end.