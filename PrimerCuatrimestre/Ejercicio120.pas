program ejercicio120;

uses crt;

var
  pasajes, totalBoletos: integer;
  moneda: integer;
  dinero, dineroPesos: real;
  precio, totalCobrado, totalCambio: real;
  cambio: real;

begin
  clrscr;

  precio := 7;
  totalBoletos := 0;
  totalCobrado := 0;
  totalCambio := 0;

  while totalBoletos < 70 do
  begin
    WriteLn('Pasajes disponibles: ', 70 - totalBoletos);

    Write('Cantidad de pasajes a comprar: ');
    ReadLn(pasajes);

    WriteLn('Tipo de moneda: ');
    WriteLn('1: Pesos');
    WriteLn('2: Dolares');
    WriteLn('3: Euros');
    ReadLn(moneda);

    Write('Ingrese dinero: ');
    ReadLn(dinero);

    (* Convertir a pesos *)
    case moneda of
      1: dineroPesos := dinero;
      2: dineroPesos := dinero * 2.5;
      3: dineroPesos := dinero * 3.25;
    end;

    (* Calcular costo *)
    if (totalBoletos + pasajes) <= 70 then
    begin
      if dineroPesos >= pasajes * precio then
      begin
        cambio := dineroPesos - (pasajes * precio);

        totalBoletos := totalBoletos + pasajes;
        totalCobrado := totalCobrado + (pasajes * precio);
        totalCambio := totalCambio + cambio;

        WriteLn('Compra realizada!');
        WriteLn('Cambio: $', cambio:2:2);
      end
      else
      begin
        WriteLn('Dinero insuficiente');
      end;
    end
    else
    begin
      WriteLn('No hay suficientes asientos disponibles');
    end;

    WriteLn;
  end;

  WriteLn('--- RESUMEN ---');
  WriteLn('Boletos vendidos: ', totalBoletos);
  WriteLn('Total cobrado: $', totalCobrado:2:2);
  WriteLn('Total devuelto: $', totalCambio:2:2);

  readkey;
end.