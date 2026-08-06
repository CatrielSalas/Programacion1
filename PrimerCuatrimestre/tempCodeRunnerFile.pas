program gimnasio;
uses crt;

var
    i:integer; codigoEntrenador:integer; edadSocio:integer; tipoPase:integer; categoriaSocio:integer;
    medioPago:integer;
    valorBaseCuota:real; valorFinal:Real;
    descuentoActual:real;
    promedio:real;

    //AcumuladoresPto1
    acumMusculacion,acumPaseClase,acumPaseVIP:real;
    totalAcumulado:real;
    //ContadoresPto1
    contMusculacion,contPaseClase,contPaseVIP:integer;

const
        recargoPaseLibre = 1.3;
        recargoPaseVIP = 1.7;
        plusMantenimiento = 3000;
        descuentoEdad = 2000;
        descuentoMedioPago = 0.10;

begin
        acumMusculacion:=0;
        acumPaseClase:=0;
        acumPaseVIP:=0;

        contMusculacion:=0;
        contPaseClase:=0;
        contPaseVIP:=0;


        clrscr; 
        for i:= 1 to 2 do
        begin
            Write('Codigo entrenador -1-2-3: '); ReadLn(codigoEntrenador);
            Write('Edad del socio: '); ReadLn(edadSocio);
            Write('Valor de la cuota: '); ReadLn(valorBaseCuota);
            Write('Tipo de pase: (1: Musculacion, 2: Pases Libres/Clases, 3: Pase VIP). '); ReadLn(tipoPase);
            Write('Categoria del socio: (1: Estudiante, 2: Adulto, 3: Jubilado)'); ReadLn(categoriaSocio);
            Write('Medio de pago: (1: Efectivo, 2: Mercado Pago, 3: Tarjeta de Credito).'); ReadLn(medioPago);

            valorFinal:= valorBaseCuota;

            case tipoPase of 
                2: begin valorFinal:= valorFinal * recargoPaseLibre; end;
                3: begin valorFinal:= valorFinal * recargoPaseVIP; end;
            end;

            valorFinal:= valorFinal + plusMantenimiento;

            if edadSocio < 18 then
            begin valorFinal:= valorFinal - descuentoEdad; end;

            if medioPago = 2 then
            begin descuentoActual:= valorFinal * descuentoMedioPago; valorFinal:= valorFinal - descuentoActual; end;
            
            //Punto 1
            case tipoPase of
                1: begin acumMusculacion:= acumMusculacion + valorFinal; contMusculacion:= contMusculacion +1; end;
                2: begin acumPaseClase:= acumPaseClase + valorFinal; contPaseClase:= contPaseClase +1; end;
                3: begin acumPaseVIP:= acumPaseVIP + valorFinal; contPaseVIP:= contPaseVIP +1; end;
            end;
        end;

            WriteLn ('---Resultados---');
            WriteLn;
            if (acumMusculacion > acumPaseClase) and (acumMusculacion > acumPaseVIP) then
            begin  promedio:= acumMusculacion/contMusculacion; WriteLn('Mayor $: Pase Acumulacion ',acumMusculacion:0:2,' Promedio: ', promedio:0:2 ); end
            else if (acumPaseClase > acumMusculacion) and (acumPaseClase > acumPaseVIP) then
            begin promedio:= acumPaseClase/contPaseClase; WriteLn('Mayor $: Pase Libre/Clase ',acumPaseClase:0:2,' Promedio: ', promedio:0:2); end
            else begin promedio:= acumPaseVIP/contPaseVIP; WriteLn('Mayor $: Pase VIP ',acumPaseVIP:0:2,' Promedio: ', promedio:0:2 ); end;
        


        readkey;
end.