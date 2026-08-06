program parcial;

uses crt;

var i:integer;
    numCamion,numViaje,pesoCarga:integer;
    contViajes:integer;
    valorServicio,valorTotal:real;
    destino,contLocal,contProvincial,contNacional:integer;
    tipoCarga:Integer;
    ultViajeNacional,numCamionUltViaje:integer;
    {cantViajes}c001Viaje,c002Viaje,c003Viaje,c004Viaje:real;
    {peso}c001Peso,c002Peso,c003Peso,c004Peso:real;
    {cantidad de plata}vtc001,vtc002,vtc003,vtc004:real;
    {viaje mayor valor final} valorMFinal,camionVFinal,numeroVFinal:real;
    {menor peso local} menorPesoL,menorCamionL,menorViajeL,valorFinalL:real;


const
    bono = 2500;
    recargoFragil = 0.10;
begin
    contLocal:=0;
    contProvincial:=0;
    contNacional:=0;
    ultViajeNacional:=0;
    numCamionUltViaje:=0;
    valorTotal:=0;
    c001Peso:=0; c002Peso:=0; c003Peso:=0; c004Peso:=0;
    c001Viaje:=0; c002Viaje:=0; c003Viaje:=0; c004Viaje:=0;
    vtc001:=0; vtc002:=0; vtc003:=0; vtc004:=0;
    valorMFinal:=-9999;
    camionVFinal:= 0;
    numeroVFinal:=0;
    menorPesoL:=9999;
    menorCamionL:=0;
    menorViajeL:=0;
    valorFinalL:=0;

    clrscr;
    for i:= 1 to 8 do
        begin
            Write ('Ingrese numero del camion ');
            ReadLn (numCamion);
            Write ('Numero de Viaje: ');
            ReadLn(numViaje);
            Write ('Peso de la carga: ');
            ReadLn(pesoCarga);
            Write('Valor del servicio ');
            ReadLn(valorServicio);
            Write(' 1: Local ---');
            Write(' 2: Provincial ---');
            Write(' 3: Nacional --- ');
            Write ('Que destino tuvo? ');
            ReadLn(destino);
            Write ('Tipo de carga 1: Fragil 2: Normal : ');
            ReadLn(tipoCarga);
            Writeln('-----------------------------');
            valorTotal:= valorServicio;

                    if tipoCarga = 1 then
                    begin
                    valorTotal := valorServicio + (valorServicio * recargoFragil)
                    end;

            case destino of
            1:
            begin
            contLocal:= contLocal+1;
            end;
            2:
            begin
            contProvincial:= contProvincial +1;
            end;
            3:
            begin
            contNacional:= contNacional +1;
            ultViajeNacional:= i;
            numCamionUltViaje:= numCamion;
            end;
            end;

            case numCamion of
            001:
            begin
            c001Viaje:= c001Viaje + 1;
            c001Peso:=  c001Peso + pesoCarga;
            vtc001:= vtc001 + valorTotal;
            end;
            002:
            begin
            c002Viaje:= c002Viaje + 1;
            c002Peso:=  c002Peso + pesoCarga;
            vtc002:= vtc002 + valorTotal;
            end;
            003:
            begin
            c003Viaje:= c003Viaje + 1;
            c003Peso:=  c003Peso + pesoCarga;
            vtc003:= vtc003 + valorTotal;
            end;
             004:
            begin
            c004Viaje:= c004Viaje + 1;
            c004Peso:=  c004Peso + pesoCarga;
            vtc004:= vtc004 + valorTotal;
            end;
        end;
        begin
        if valorTotal > valorMFinal then
          begin
          valorMFinal:= valorTotal;
          camionVFinal:= numCamion;
          numeroVFinal:= numViaje;
          end;
        end;
            if (destino = 1) then
            begin
            if (pesoCarga < menorPesoL) then
                begin
                    menorPesoL := pesoCarga;
                    menorCamionL := numCamion;
                    menorViajeL := numViaje;
                    valorFinalL := valorTotal;
                end;
            end;
    //dentro del for para arriba
    end;
        //fuera del for
       contViajes:= contLocal + contProvincial + contNacional;
       
       begin //bono
            if c001Viaje >= 3 then 
            begin
            vtc001 := vtc001 + bono;
            end;
            if c002Viaje >= 3 then 
            begin
                vtc002 := vtc002 + bono;
            end;
            if c003Viaje >= 3 then 
            begin
                vtc003 := vtc003 + bono;
            end;
            if c004Viaje >= 3 then 
            begin
                vtc004 := vtc004 + bono;
            end;
        end;

            begin
                WriteLn('Camion 001');
                WriteLn('Viajes: ', c001Viaje:4:0);
                WriteLn('Peso: ', c001Peso:4:2);
                WriteLn('Recaudado: ', vtc001:4:2);
                WriteLn('---------------------');

                WriteLn('Camion 002');
                WriteLn('Viajes: ', c002Viaje:4:0);
                WriteLn('Peso: ', c002Peso:4:2);
                WriteLn('Recaudado: ', vtc002:4:2);
                WriteLn('---------------------');

                WriteLn('Camion 003');
                WriteLn('Viajes: ', c003Viaje:4:0);
                WriteLn('Peso: ', c003Peso:4:2);
                WriteLn('Recaudado: ', vtc003:4:2);
                WriteLn('---------------------');

                WriteLn('Camion 004');
                WriteLn('Viajes: ', c004Viaje:4:0);
                WriteLn('Peso: ', c004Peso:4:2);
                WriteLn('Recaudado: ', vtc004:4:2);
                WriteLn('---------------------');
            end;


            begin
            if (contLocal > contProvincial) and (contLocal > contNacional) then
            begin
                WriteLn ('Destino con mayor cantidad de viaje fue el Local ');
                WriteLn ('Sobre el total de viajes representa ', contLocal*100/contViajes:4:2,' %');
            end
            else if (contProvincial > contLocal) and (contProvincial > contNacional) then
            begin
                WriteLn ('Destino con mayor cantidad de viaje fue el Provincial');
                WriteLn ('Sobre el total de viajes representa ', contProvincial*100/contViajes:4:2,' %');
            end
            else
            begin
                WriteLn ('Destino con mayor cantidad de viaje fue el Nacional');
                WriteLn ('Sobre el total de viajes representa ', contNacional*100/contViajes:4:2,' %');
            end;
            end;
        
            WriteLn ('Ultimo viaje Nacional fue en la posicion ',ultViajeNacional, ' el numero de camion fue: ', numCamionUltViaje);
            
            //mayor valor del viaje
            writeln('Mayor valor del viaje: ', valorMFinal:4:2);
            writeln('Camion: ', camionVFinal:0:0);
            writeln('Numero de viaje: ', numeroVFinal:0:0);
            //menor valor del viaje local
            WriteLn('--------------------------------------------]');
            WriteLn('Menor peso del viaje Local: ',menorPesoL:0:0);
            writeln('Menor valor del viaje: ', valorFinalL:4:2);
            writeln('Camion: ', menorCamionL:0:0);
            writeln('Numero de viaje: ', menorViajeL:0:0);
    readkey;
end.