program recup;

uses crt;

var
  i: integer;
  codVeterinario, pesoAnimal, tipoAtencion, tipoAnimal, tipoPago: integer;
  valorServicio, importeFinal, descuentoActual: real;

  // Variables por Veterinario
  cantV1, cantV2, cantV3, cantV4: integer;
  valorTV1, valorTV2, valorTV3, valorTV4: real;
  descV1, descV2, descV3, descV4: real;

  // Variables por Tipo de Atención
  contConsulta, contCirugia, contUrgencia: real;
  cantConsulta, cantCirugia, cantUrgencia: integer;

  // Totales generales y resultados
  totalFacturacion, perroFacturacion, porcentajePerro: real;
  promConsulta, promCirugia, promUrgencia, promMax: real;
  maxFacturacion: real;
  tipoMax: integer;

  // Mínimo
  importeMenor: real; 
  codVetMenor, atenMenor: integer;

const 
  recargoU = 1.3; // 100% mas 30% = 130% divido 100 = 1.3
  recargoC = 1.5; // 100% mas 50% = 150% divido 100 = 1.5
  plus = 7000;
  descEfectivo = 0.05; // 5% divido 100 = 0.5

begin
  clrscr;

      // Inicializaciones
      contConsulta:=0; contCirugia:=0; contUrgencia:=0;
      cantConsulta:=0; cantCirugia:=0; cantUrgencia:=0;
      cantV1:=0; cantV2:=0; cantV3:=0; cantV4:=0;
      valorTV1:=0; valorTV2:=0; valorTV3:=0; valorTV4:=0;
      descV1:=0; descV2:=0; descV3:=0; descV4:=0;
      totalFacturacion:=0; perroFacturacion:=0;
      importeMenor:= 999999;
      promConsulta := 0; promCirugia := 0; promUrgencia := 0;
      for i := 1 to 6 do
        begin
            writeln('--- Atencion ', i, ' ---');
            write('Codigo veterinario: '); readln(codVeterinario);
            write('Peso animal: '); readln(pesoAnimal);
            write('Valor servicio: '); readln(valorServicio);
            write('Tipo atencion (1:Consulta 2:Cirugia 3:Urgencia): '); readln(tipoAtencion);
            write('Tipo animal (1:Perro 2:Gato 3:Ave 4:Otro): '); readln(tipoAnimal);
            write('Tipo pago (1:Efectivo 2:Credito 3:Debito): '); readln(tipoPago);
            // 1. calculo importe (Recargos y plus)
            importeFinal := valorServicio;

            case tipoAtencion of
              2: importeFinal := importeFinal * recargoC;
              3: importeFinal := importeFinal * recargoU;
            end;
            
            importeFinal := importeFinal + plus;

            if pesoAnimal > 30 then importeFinal := importeFinal + 5000;
            // 2. calculo descuento
            descuentoActual := 0;
            if tipoPago = 1 then
            begin
              descuentoActual := importeFinal * descEfectivo;
              importeFinal := importeFinal - descuentoActual;
            end;
            // 3. ACUMULACIÓN POR TIPO DE ATENCIÓN (Punto 1)
            case tipoAtencion of
              1: begin contConsulta := contConsulta + importeFinal; cantConsulta := cantConsulta + 1; end;
              2: begin contCirugia := contCirugia + importeFinal; cantCirugia := cantCirugia + 1; end;
              3: begin contUrgencia := contUrgencia + importeFinal; cantUrgencia := cantUrgencia + 1; end;
            end;
            // 4. ACUMULACIÓN POR VETERINARIO Punto 2
            case codVeterinario of
              1: begin cantV1 := cantV1 + 1; valorTV1 := valorTV1 + importeFinal; descV1 := descV1 + descuentoActual; end;
              2: begin cantV2 := cantV2 + 1; valorTV2 := valorTV2 + importeFinal; descV2 := descV2 + descuentoActual; end;
              3: begin cantV3 := cantV3 + 1; valorTV3 := valorTV3 + importeFinal; descV3 := descV3 + descuentoActual; end;
              4: begin cantV4 := cantV4 + 1; valorTV4 := valorTV4 + importeFinal; descV4 := descV4 + descuentoActual; end;
            end;

            // 5. ESTADÍSTICAS GENERALES Punto 3A y 3B)
            totalFacturacion := totalFacturacion + importeFinal;
            if tipoAnimal = 1 then perroFacturacion := perroFacturacion + importeFinal;
            if importeFinal < importeMenor then
            begin
              atenMenor := i;
              importeMenor := importeFinal;
              codVetMenor := codVeterinario;
            end;
            writeln;
      end;

      // --- FUERA DEL FOR ---

      //Porcentaje Perro
      porcentajePerro := (perroFacturacion / totalFacturacion) * 100;

      if cantConsulta > 0 then promConsulta := contConsulta / cantConsulta;
      if cantCirugia > 0   then promCirugia := contCirugia / cantCirugia;
      if cantUrgencia > 0  then promUrgencia := contUrgencia / cantUrgencia;

      // Determinar Máximo
      maxFacturacion := contConsulta; tipoMax := 1; promMax := promConsulta;
      if contCirugia > maxFacturacion then
      begin
        maxFacturacion := contCirugia; tipoMax := 2; promMax := promCirugia;
      end;
      if contUrgencia > maxFacturacion then
      begin
        maxFacturacion := contUrgencia; tipoMax := 3; promMax := promUrgencia;
      end;

      writeln('--- RESULTADOS ---');
      case tipoMax of
        1: writeln('Mayor facturacion: Consulta');
        2: writeln('Mayor facturacion: Cirugia');
        3: writeln('Mayor facturacion: Urgencia');
      end;
      writeln('Su facturacion fue: ', maxFacturacion:0:2, ' - Promedio: ', promMax:0:2);
      writeln;

      writeln('Vet 1 - Atenciones: ', cantV1, ' | Facturado: $', valorTV1:0:2, ' | Descuentos: $', descV1:0:2);
      writeln('Vet 2 - Atenciones: ', cantV2, ' | Facturado: $', valorTV2:0:2, ' | Descuentos: $', descV2:0:2);
      writeln('Vet 3 - Atenciones: ', cantV3, ' | Facturado: $', valorTV3:0:2, ' | Descuentos: $', descV3:0:2);
      writeln('Vet 4 - Atenciones: ', cantV4, ' | Facturado: $', valorTV4:0:2, ' | Descuentos: $', descV4:0:2);
      writeln;

      writeln('Atencion de menor valor: No. ', atenMenor, ' (Vet: ', codVetMenor, ') Monto: $', importeMenor:0:2);
      writeln('Porcentaje de perros sobre el total: ', porcentajePerro:0:2, '%');

  readkey;
end.