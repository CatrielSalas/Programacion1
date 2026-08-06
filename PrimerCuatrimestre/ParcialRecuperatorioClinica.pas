program rec;
uses crt;

var
    i,codMedico,edadPaciente,tipoConsulta,especialidad,formaPago:Integer; 
    montoFinal,valorConsulta:Real;
    contConsulta,contCirugia,contGuardia:real;  cantConsulta,cantCirugia,cantGuardia: integer;
    tipoMax:integer; mayFacturacion:real; consultaMayor:real;
    m001,m002,m003,m004:integer;
    valorFacturadoM1,valorFacturadoM2,valorFacturadoM3,valorFacturadoM4:real;
    descRealizadoM1,descRealizadoM2,descRealizadoM3,descRealizadoM4:real;
    descuentoActual: real;
    promedioMax:real;
    totalGeneral:real; totalClinica:real; montoMenor:Real; codMedicoMenor:Integer; porClinica:real;

const
    recargoGuardia = 1.25; recargoCirugia = 1.60; recargoMayores65 = 4000; plusAtencion = 6000; abonoTransferencia = 0.08;

begin
    clrscr;

    contConsulta:=0; contGuardia:=0; contCirugia:=0;
    m001:=0; m002:=0; m003:=0; m004:=0;
    valorFacturadoM1:=0; valorFacturadoM2:=0; valorFacturadoM3:=0; valorFacturadoM4:=0;
    descRealizadoM1:=0; descRealizadoM2:=0; descRealizadoM3:=0; descRealizadoM4:=0;
    cantConsulta:=0; cantCirugia:=0; cantGuardia:=0;
    totalGeneral:=0; totalClinica:=0; montoMenor:= 999999;

    for i := 1 to 6 do
        begin
            Writeln('--- Consulta ',i,' --- ');
            Write('Codigo del Medico: ');readln(codMedico);
            Write('Edad del Paciente: ');readln(edadPaciente);
            Write('Valor Consulta: ');readln(valorConsulta);
            Write('Tipo Consulta -- |1|Consulta  |2|Cirugia  |3|Guardia --> '); ReadLn(tipoConsulta);
            Write('Especialidad -- |1|Clinica  |2|Traumatologia  |3|Pediatria  |4|Cardiologia  |5|Cirugia General --> ');ReadLn(especialidad);
            Write('Forma de pago -- |1|Efectivo |2|Transferencia |3|Debito  |4|Credito  --> ');readln (formaPago);
            WriteLn;

            montoFinal:= valorConsulta;

            case tipoConsulta Of
                2: begin montoFinal:= montoFinal * recargoCirugia; end;
                3: begin montoFinal:= montoFinal * recargoGuardia; end;
            end;

            if edadPaciente > 65 then
              begin montoFinal:= montoFinal + recargoMayores65; end;

              montoFinal:= montoFinal + plusAtencion;
            
            if formaPago = 2 then
                begin 
                    descuentoActual:= montoFinal * abonoTransferencia;
                    montoFinal:= montoFinal - descuentoActual;
                    //DescuentosRealizados por medicos
                    case codMedico of 
                    1: begin descRealizadoM1:= descRealizadoM1 +  descuentoActual end;
                    2: begin descRealizadoM2:= descRealizadoM2 +  descuentoActual end;
                    3: begin descRealizadoM3:= descRealizadoM3 +  descuentoActual end;
                    4: begin descRealizadoM4:= descRealizadoM4 +  descuentoActual end;
                    end;
                end;

            //Para Mayor Facturacion
            case tipoConsulta of 
            1: begin contConsulta:= contConsulta + montoFinal; cantConsulta:= cantConsulta +1; end;
            2: begin contCirugia:= contCirugia + montoFinal; cantCirugia:= cantCirugia +1;     end;
            3: begin contGuardia:= contGuardia + montoFinal; cantGuardia:= cantGuardia + 1;    end;
            end;
            //Consultas por medico, ValorFacturado Cada Medico
            case codMedico of 
            1: begin m001:= m001 +1; valorFacturadoM1:= valorFacturadoM1 + montoFinal; end;
            2: begin m002:= m002 +1; valorFacturadoM2:= valorFacturadoM2 + montoFinal; end;
            3: begin m003:= m003 +1; valorFacturadoM3:= valorFacturadoM3 + montoFinal; end;
            4: begin m004:= m004 +1; valorFacturadoM4:= valorFacturadoM4 + montoFinal; end;
            end;
            
            totalGeneral := totalGeneral + montoFinal;
            
            if montoFinal < montoMenor then
              begin
                montoMenor:= montoFinal;
                codMedicoMenor:= codMedico;
              end;
            if especialidad = 1 then
              begin
                totalClinica:= totalClinica + montoFinal;
              end;


        end;
        //PorcentajeClinica
        
        porClinica:= totalClinica/totalGeneral *100;

        //MayorFacturacion 
        mayFacturacion:= contConsulta; tipoMax:= 1;
        if cantConsulta > 0 then promedioMax:= contConsulta / cantConsulta else promedioMax := 0;
        if contCirugia > mayFacturacion then
          begin mayFacturacion:= contCirugia; tipoMax:=2; 
          if cantCirugia > 0 then promedioMax := contCirugia/ cantCirugia else promedioMax := 0; end;
        if contGuardia > mayFacturacion then
          begin mayFacturacion:= contGuardia; tipoMax :=3; 
          if cantGuardia > 0 then promedioMax := contGuardia / cantGuardia else promedioMax := 0; end;
        
        WriteLn('---Resultados---');
        case tipoMax of
        1: begin writeln ('Mayor Facturacion : Tipo Consulta ',mayFacturacion:0:2,' Promedio Facturado: ',promedioMax:0:2); end;
        2: begin writeln ('Mayor Facturacion : Tipo Cirugia ',mayFacturacion:0:2,' Promedio Facturado: ',promedioMax:0:2 ); end;
        3: begin writeln ('Mayor Facturacion : Tipo Guardia ',mayFacturacion:0:2,' Promedio Facturado: ',promedioMax:0:2 ); end;
        end;
        writeln;
        WriteLn('Medico 1: Consultas realizadas ',m001,' --Facturo $ ',valorFacturadoM1:0:2,' --Total descuentos otorgados: ',descRealizadoM1:0:2);
        WriteLn('Medico 2: Consultas realizadas ',m002,' --Facturo $ ',valorFacturadoM2:0:2,' --Total descuentos otorgados: ',descRealizadoM2:0:2);
        WriteLn('Medico 3: Consultas realizadas ',m003,' --Facturo $ ',valorFacturadoM3:0:2,' --Total descuentos otorgados: ',descRealizadoM3:0:2);
        WriteLn('Medico 4: Consultas realizadas ',m004,' --Facturo $ ',valorFacturadoM4:0:2,' --Total descuentos otorgados: ',descRealizadoM4:0:2);
        writeln;
        WriteLn('Monto Menor: ',montoMenor:0:2,' --Codigo Medico: ',codMedicoMenor,' --Porcentaje Clinica sobre el total: ',porClinica:0:2);
        readkey;
  
end.