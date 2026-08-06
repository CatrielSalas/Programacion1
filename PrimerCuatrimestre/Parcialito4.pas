(*Enunciado: Una pastelería, desea obtener un registro de las ventas diarias de sus productos. Por lo que dispone de los siguientes precios:

12 pasteles -> $6000; 6 pasteles -> $3000; por unidad $700.
12 churros -> $5000; 6 churros -> 2500; por unidad $500.
12 alfajores -> 7000; 6 alfajores -> 3500; por unidad $ 700.

Pasteles:
IdP: 1, Cant: 12, Producto: Pasteles 
IdP: 2, Cant: 6, Producto: Pasteles 
IdP: 3, Cant: 12, Producto: Pasteles
IdP: 4, Cant: 6, Producto: Pasteles
IdP: 5, Cant: 3, Producto: Pasteles.

Churros:
IdC: 1, Cant: 12, Producto: Churros 
IdC: 2, Cant: 6, Producto: Churros 
IdC: 3, Cant: 4, Producto: Churros
IdC: 4, Cant: 6, Producto: Churros.

Alfajores de Maicena:
IdA: 1, Cant:12, Producto: Alfajores
IdA: 2, Cant: 12, Producto: Alfajores
IdA: 3, Cant: 12, Producto: Alfajores
IdA: 4, Cant: 6, Producto: Alfajores
IdA: 5, Cant: 12, Producto: Alfajores
IdA: 6, Cant: 5, Producto: Alfajores.

Se solicita:

-          Mostrar total en pesos del producto más vendido.

-          Porcentaje de productos vendidos sobre el total en $ de la pastelería.

-          Indicar, Id de producto, cantidad y producto menos vendido entre pasteles y churros.*)

program Parcialito4;
uses crt;

var
  i: integer;
  id, cantidad: integer;
  producto: string;

  total, totalGeneral: longint;
  totalPasteles, totalChurros, totalAlfajores: longint;

  menorCantP, menorIdP: integer;
  menorProdP: string;

  menorCantC, menorIdC: integer;
  menorProdC: string;

  porcP, porcC, porcA: real;

begin
  clrscr;

  totalPasteles := 0;
  totalChurros := 0;
  totalAlfajores := 0;

  menorCantP := 9999;
  menorCantC := 9999;

  { PASTELES }
  for i := 1 to 5 do
  begin
    Write('Ingrese Id ');
    readln(id);
    Write('Ingrese cantidad ');
    readln(cantidad);
    Write('Ingrese producto ');
    readln(producto);

    if cantidad = 12 then
      total := 6000
    else if cantidad = 6 then
      total := 3000
    else
      total := cantidad * 700;

    totalPasteles := totalPasteles + total;

    if cantidad < menorCantP then
    begin
      menorCantP := cantidad;
      menorIdP := id;
      menorProdP := producto;
    end;
  end;
WriteLn('==================');
  { CHURROS }
  for i := 1 to 4 do
  begin
    Write('Ingrese Id ');
    readln(id);
    Write('Ingrese cantidad ');
    readln(cantidad);
    Write('Ingrese Producto ');
    readln(producto);

    if cantidad = 12 then
      total := 5000
    else if cantidad = 6 then
      total := 2500
    else
      total := cantidad * 500;

    totalChurros := totalChurros + total;

    if cantidad < menorCantC then
    begin
    menorCantC := cantidad;
    menorIdC := id;
    menorProdC := producto;
    end;
  end;
WriteLn('==================');
  { ALFAJORES }
  for i := 1 to 6 do
  begin
    Write('Ingrese Id ');
    readln(id);
    Write('Ingrese cantidad ');
    readln(cantidad);
    Write('Ingrese producto ');
    readln(producto);

    if cantidad = 12 then
      total := 7000
    else if cantidad = 6 then
      total := 3500
    else
      total := cantidad * 700;

    totalAlfajores := totalAlfajores + total;
  end;

  totalGeneral := totalPasteles + totalChurros + totalAlfajores;
WriteLn('==================');
  writeln('Total Pasteles: $', totalPasteles);
  writeln('Total Churros: $', totalChurros);
  writeln('Total Alfajores: $', totalAlfajores);
WriteLn('==================');
  if (totalPasteles > totalChurros) and (totalPasteles > totalAlfajores) then
    writeln('Mas vendido: Pasteles $', totalPasteles)
  else if (totalChurros > totalAlfajores) then
    writeln('Mas vendido: Churros $', totalChurros)
  else
    writeln('Mas vendido: Alfajores $', totalAlfajores);
WriteLn('==================');
  porcP := totalPasteles * 100 / totalGeneral;
  porcC := totalChurros * 100 / totalGeneral;
  porcA := totalAlfajores * 100 / totalGeneral;

  writeln('Pasteles: ', porcP:0:2, '%');
  writeln('Churros: ', porcC:0:2, '%');
  writeln('Alfajores: ', porcA:0:2, '%');
  WriteLn('==================');
  if menorCantP < menorCantC then
  begin
    WriteLn('==================');
    writeln('Menos vendido:');
    writeln('Id: ', menorIdP);
    writeln('Cantidad: ', menorCantP);
    writeln('Producto: ', menorProdP);
  end
  else
  begin
    writeln('Menos vendido:');
    writeln('Id: ', menorIdC);
    writeln('Cantidad: ', menorCantC);
    writeln('Producto: ', menorProdC);
  end;
  readkey;
End.