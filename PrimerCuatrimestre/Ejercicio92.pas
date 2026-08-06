(*El gerente de una empresa proveedora de internet desea un algoritmo que permita obtener 
el monto a pagar de la factura de consumo de internet de 3 clientes. Para ello, el algoritmo 
debe solicitar por teclado 2 datos: DNI del cliente y tipo de servicio. 
Los tipos de servicio son 3: 
1- Internet 30 megas (cuyo valor es $750 - 10% de descuento) 
2- Internet 50 megas (cuyo valor es $930 - 5% de descuento) 
3- Internet 100 megas (cuyo valor fijo es $1200) *)

program ejericio092;

uses crt;

var i:integer;
    dni:LongInt;
    servicio:integer;
    montoaPagar:Real;
    descuento:Real;
    total:real;

begin
    total:=0;
    clrscr;
    for i:= 1 to 3 do
    begin
    Write ('Cliente: ',i);
    Write('');
    Write (' Ingrese DNI del cliente: ');
    ReadLn(dni);
    Write ('Que servicio posee ');
    Write('1: Internet 30 megas ');
    Write('2: Internet 50 megas ');
    Write('3: Internet 100 megas ');
    ReadLn(servicio);
    case servicio of
    1:
    begin
    descuento := 750 * 10 / 100;
    montoAPagar := 750 - descuento;
    end;
    2:
    begin 
    descuento := 930 * 5 / 100;
    montoAPagar := 930 - descuento; 
    end;
    3:
    begin
    montoAPagar := 1200;
    end;
    end;
    WriteLn('DNI: ',dni,' con el servicio ',servicio,' pagara $',montoaPagar:2:0);
    Writeln('------------------------------------');
    total:= total + montoaPagar;
    end;

    WriteLn('Se recaudo: ',total:2:0,' $');
    readkey;

end.