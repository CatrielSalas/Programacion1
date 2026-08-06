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
    //ContadoresPto1
    contMusculacion,contPaseClase,contPaseVIP:integer;
    tipoPaseMax:Integer; mayFacturacion:real;

    //EntrenadoresPto2
    ventasEntrenador1,ventasEntrenador2,ventasEntrenador3:Integer;
    totalFacturado1,totalFacturado2,totalFacturado3:real;
    descuentoEcho1,descuentoEcho2,descuentoEcho3:real;

    //Punto3
    cuotaMenorMonto:real; entrenadorMenorVenta:integer;
    facturadoEstudiante,porcentajeEstudiante:real; totalFacturado:real;

const
        recargoPaseLibre = 1.3;
        recargoPaseVIP = 1.7;
        plusMantenimiento = 3000;
        descuentoEdad = 2000;
        descuentoMedioPago = 0.10;

begin
        acumMusculacion:=0;acumPaseClase:=0; acumPaseVIP:=0;

        contMusculacion:=0; contPaseClase:=0; contPaseVIP:=0;

        ventasEntrenador1:=0; ventasEntrenador2:=0; ventasEntrenador3:=0;

        totalFacturado1:=0; totalFacturado2:=0; totalFacturado3:=0;

        descuentoEcho1:=0;descuentoEcho2:=0;descuentoEcho3:=0;

        cuotaMenorMonto:=999999; totalFacturado:= 0; facturadoEstudiante:=0;

        clrscr; 
        for i:= 1 to 3 do
        begin
            Write('Codigo entrenador 1-2-3: '); ReadLn(codigoEntrenador);
            Write('Edad del socio: '); ReadLn(edadSocio);
            Write('Valor de la cuota: '); ReadLn(valorBaseCuota);
            Write('Tipo de pase: (1: Musculacion, 2: Pases Libres/Clases, 3: Pase VIP). '); ReadLn(tipoPase);
            Write('Categoria del socio: (1: Estudiante, 2: Adulto, 3: Jubilado)'); ReadLn(categoriaSocio);
            Write('Medio de pago: (1: Efectivo, 2: Mercado Pago, 3: Tarjeta de Credito).'); ReadLn(medioPago);
            WriteLn;
            valorFinal:= valorBaseCuota;
            descuentoActual:= 0;

            case tipoPase of 
                2: begin valorFinal:= valorFinal * recargoPaseLibre; end;
                3: begin valorFinal:= valorFinal * recargoPaseVIP; end;
            end;

            valorFinal:= valorFinal + plusMantenimiento;

            if edadSocio < 18 then
            begin valorFinal:= valorFinal - descuentoEdad; end;

            if medioPago = 2 then
            begin descuentoActual:= valorFinal * descuentoMedioPago; valorFinal:= valorFinal - descuentoActual; end;

            totalFacturado:= totalFacturado + valorFinal;
            
            //Punto 1
            case tipoPase of
                1: begin acumMusculacion:= acumMusculacion + valorFinal; contMusculacion:= contMusculacion +1; end;
                2: begin acumPaseClase:= acumPaseClase + valorFinal; contPaseClase:= contPaseClase +1; end;
                3: begin acumPaseVIP:= acumPaseVIP + valorFinal; contPaseVIP:= contPaseVIP +1; end;
            end;

            //Punto2
            case codigoEntrenador of
                1: begin ventasEntrenador1:= ventasEntrenador1 +1; totalFacturado1:= totalFacturado1 + valorFinal; descuentoEcho1:= descuentoEcho1 + descuentoActual; end;
                2: begin ventasEntrenador2:= ventasEntrenador2 +1; totalFacturado2:= totalFacturado2 + valorFinal; descuentoEcho2:= descuentoEcho2 + descuentoActual; end;
                3: begin ventasEntrenador3:= ventasEntrenador3 +1; totalFacturado3:= totalFacturado3 + valorFinal; descuentoEcho3:= descuentoEcho3 + descuentoActual; end;
            end;

            //Punto3
            
            if valorFinal < cuotaMenorMonto then
            begin cuotaMenorMonto:= valorFinal; entrenadorMenorVenta:= codigoEntrenador; end;
            if categoriaSocio = 1 then
            begin facturadoEstudiante:= facturadoEstudiante + valorFinal; end;

        end;

            //MayFacturacion
            mayFacturacion:= acumMusculacion;
            tipoPaseMax:= 1;
            if contMusculacion > 0 then promedio:= acumMusculacion/contMusculacion else promedio:= 0;
            if acumPaseClase > mayFacturacion then
            begin mayFacturacion:= acumPaseClase; tipoPaseMax:=2;
            if contPaseClase > 0 then promedio:= acumPaseClase/ contPaseClase else promedio:= 0; end;
            if contPaseVIP > mayFacturacion then
            begin mayFacturacion:= acumPaseVIP; tipoPaseMax:=3;
            if contPaseVIP > 0 then promedio:= acumPaseVIP/contPaseVIP else promedio:=0; end;
            
            if totalFacturado > 0 then
            porcentajeEstudiante:= (facturadoEstudiante/totalFacturado) *100
            else porcentajeEstudiante:= 0;
            
            WriteLn ('---Resultados---');
            WriteLn;
            case tipoPaseMax of 
                1: begin WriteLn('Mayor Facturacion: Musculacion: $ ',mayFacturacion:0:2,'- Promedio: $ ',promedio:0:2); end;
                2: begin WriteLn('Mayor Facturacion: Pase Libre: $ ',mayFacturacion:0:2,'- Promedio: $ ',promedio:0:2); end;
                3: begin WriteLn('Mayor Facturacion: Pase VIP: $ ',mayFacturacion:0:2,'- Promedio: $ ',promedio:0:2); end;
            end;
            WriteLn;
            WriteLn('Ventas echas Entrenador 1:  ',ventasEntrenador1,'- Total Facturado $ ',totalFacturado1:0:2,'- Descuentos Realizados por Medio de Pago: $ ',descuentoEcho1:0:2);
            WriteLn('Ventas echas Entrenador 2:  ',ventasEntrenador2,'- Total Facturado $ ',totalFacturado2:0:2,'- Descuentos Realizados por Medio de Pago: $ ',descuentoEcho2:0:2);
            WriteLn('Ventas echas Entrenador 3:  ',ventasEntrenador3,'- Total Facturado $ ',totalFacturado3:0:2,'- Descuentos Realizados por Medio de Pago: $ ',descuentoEcho3:0:2);
            WriteLn;
            WriteLn('Menor Monto Facturado 1 sola Cuota $ ',cuotaMenorMonto,'- Entrenador: ',entrenadorMenorVenta);
            WriteLn('Porcentaje Facturado Categoria Estudiante $ ',porcentajeEstudiante:0:2,' %');
        readkey;
end.