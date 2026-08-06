program recuperatorio;
uses crt;

var
    i: integer;
    apellido: string; 
    puesto, nacionalidad, antiguedad, horasTrabajadas, horasExtras: integer;
    sueldofinal: real;
    
    // Acumuladores de puestos
    acumElectricista, acumMecanico, acumSoldador, acumSupervisor: real; 
    mayFacturacion: real; 
    tipoMax: integer;
    
    // Totales por nacionalidad
    contEmpleArg, contEmpleUru: integer; 
    facturadoArg, facturadoUru: real; 
    pagoHEArg, pagoHEUru: real;
    
    // Mínimo de horas extras (Argentino)
    menorHE: integer; 
    apellidoMenor: string; 
    sueldoMenor: real;

const 
    incremento = 1.1; 
    bono = 1.5;

begin
    // Inicialización de variables
    sueldofinal := 0;
    acumElectricista := 0; acumMecanico := 0; acumSoldador := 0; acumSupervisor := 0;
    contEmpleArg := 0; contEmpleUru := 0; facturadoArg := 0; facturadoUru := 0;
    pagoHEArg := 0; pagoHEUru := 0; 
    
    menorHE := 9999; 
    apellidoMenor := ''; 
    sueldoMenor := 0;
    
    clrscr;

    for i := 1 to 2 do
    begin
        Writeln('--- Trabajador ', i, ' ---');
        Write('Ingresar Apellido: '); readln(apellido);
        Write('Ingrese puesto [1:Electricista] [2:Mecanico] [3:Soldador] [4:Supervisor]: '); readln(puesto);
        Write('Ingrese Nacionalidad [1: Argentino] [2: Uruguayo]: '); readln(nacionalidad);
        Write('Anios de Antiguedad: '); readln(antiguedad);
        Write('Horas Trabajadas: '); readln(horasTrabajadas);
        WriteLn;

        // 1. Cálculo de Sueldo Base e Horas Extras
        if horasTrabajadas <= 200 then
        begin 
            sueldofinal := horasTrabajadas * 20; 
        end
        else
        begin 
            horasExtras := horasTrabajadas - 200; 
            sueldofinal := (200 * 20) + (horasExtras * 20 * incremento);
            
            case nacionalidad of
                1: pagoHEArg := pagoHEArg + (horasExtras * 20 * incremento);
                2: pagoHEUru := pagoHEUru + (horasExtras * 20 * incremento);
            end;
        end;

        // 2. Aplicación de Bono por Antigüedad
        if antiguedad > 2 then
            sueldofinal := sueldofinal * bono;

        // 3. Acumulación por Puesto
        case puesto of
            1: acumElectricista := acumElectricista + sueldofinal;
            2: acumMecanico := acumMecanico + sueldofinal;
            3: acumSoldador := acumSoldador + sueldofinal;
            4: acumSupervisor := acumSupervisor + sueldofinal;
        end;

        // 4. Acumulación por Nacionalidad
        case nacionalidad of
            1: begin 
                contEmpleArg := contEmpleArg + 1; 
                facturadoArg := facturadoArg + sueldofinal; 
               end;
            2: begin 
                contEmpleUru := contEmpleUru + 1; 
                facturadoUru := facturadoUru + sueldofinal; 
               end;
        end;

        // 5. Búsqueda de Mínimo en Horas Extras (Solo Argentinos con horas extras)
        if (nacionalidad = 1) and (horasTrabajadas > 200) then 
        begin
            if horasExtras < menorHE then
            begin
                menorHE := horasExtras;
                apellidoMenor := apellido;
                sueldoMenor := sueldofinal;
            end;
        end;
    end; // Fin del bucle FOR

    // Búsqueda del Puesto con Mayor Facturación (Fuera del FOR)
    mayFacturacion := acumElectricista; 
    tipoMax := 1;

    if acumMecanico > mayFacturacion then
    begin mayFacturacion := acumMecanico; tipoMax := 2; end;
    if acumSoldador > mayFacturacion then
    begin mayFacturacion := acumSoldador;tipoMax := 3; end;
    if acumSupervisor > mayFacturacion then
    begin mayFacturacion := acumSupervisor; tipoMax := 4; end;

    // Reportes de Salida
    Writeln('================ RESULTADOS ================');
    case tipoMax of 
        1: WriteLn('Puesto con mayor facturacion: Electricista ($', mayFacturacion:0:2, ')');
        2: WriteLn('Puesto con mayor facturacion: Mecanico ($', mayFacturacion:0:2, ')');
        3: WriteLn('Puesto con mayor facturacion: Soldador ($', mayFacturacion:0:2, ')');
        4: WriteLn('Puesto con mayor facturacion: Supervisor ($', mayFacturacion:0:2, ')');
    end;

    Writeln;
    WriteLn('Argentina -> Empleados: ', contEmpleArg, ' | Sueldos Total: $', facturadoArg:0:2, ' | Pago Hs Extras: $', pagoHEArg:0:2);
    WriteLn('Uruguay   -> Empleados: ', contEmpleUru, ' | Sueldos Total: $', facturadoUru:0:2, ' | Pago Hs Extras: $', pagoHEUru:0:2);
    Writeln;
    WriteLn('Empleado ARG con menos horas extras: ', apellidoMenor, ' (', menorHE, ' hs extras) - Sueldo: $', sueldoMenor:0:2);
    readkey;
end.