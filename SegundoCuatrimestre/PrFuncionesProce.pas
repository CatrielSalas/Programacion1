
    program procedimientoYfunciones;

    uses crt;

    const a=5; b=6; c=10; d=5;

    procedure subrayar (texto:string);
        var i:integer;
            begin
                WriteLn(texto);
            for i:= 1 to Length(texto) do
                begin
                    Write('-');
                end;
                WriteLn;
            end;

    function suma (n1:integer; n2:integer):integer;
        begin
        suma:= n1+n2;
        end;
    function resta (n1:integer; n2:integer):integer;
        begin
          resta:= n1-n2;
        end;


        
    begin
        clrscr;
        subrayar ('Hola, bienvenido');
            subrayar ('Espero que te resulte util');
                subrayar('No tengas miedo de preguntar');

        WriteLn('Su suma es: ',suma(a,b));
        WriteLn('Su resta es: ',resta(c,d));

        readkey;

    end.