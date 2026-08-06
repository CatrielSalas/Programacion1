{Mostrar la siguiente serie: 0 1 1 2 3 5 8 13 21 34 55.2584.}

program ejercicio039;

uses crt;

var
    a, b, c: integer;

begin
    clrscr;

    a := 0;
    b := 1;

    write(a,'',b,'');

    c:= a + b;

    while c <= 2584 do
    begin
        write(c, '');

        a := b;
        b := c;
        c := a + b;
    end;

    readkey;
end.
