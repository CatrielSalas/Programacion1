
program controlstock;

uses crt;

const 
    f = 4; 
    c = 4;

type 
    {vector} nombreMarca = array[1..f] of String;
    {matriz} matriz = array[1..f,1..c] of integer;
    {vector} vectorColumnas = array[1..c] of LongInt;
    {vector} vectorFilas = array[1..f] of LongInt; 

var 
    stock: matriz; 
    producto: nombreMarca; 
    sucursalTotal: vectorColumnas; 
    productoTotal: vectorFilas;
    
    i, j: integer;
    mayorStockSucursal: LongInt; 
    sucursalMayorStock: integer;
    minimoStock: integer;
    ningunMinimoStock: Boolean;
    nombreMayorStock: string;
    mayorStockProducto: Integer;


begin
    producto[1]:= 'Vino';     stock[1,1]:= 25; stock[1,2]:= 75; stock[1,3]:= 50; stock[1,4]:= 45;
    producto[2]:= 'Cerbeza';  stock[2,1]:= 55; stock[2,2]:= 45; stock[2,3]:= 60; stock[2,4]:= 50;
    producto[3]:= 'CocaCola'; stock[3,1]:= 90; stock[3,2]:= 65; stock[3,3]:= 70; stock[3,4]:= 75;
    producto[4]:= 'Fernet';   stock[4,1]:= 25; stock[4,2]:= 35; stock[4,3]:= 20; stock[4,4]:= 45;

    clrscr;
    
    // Inicializo productoTotal y sucursalTotal
    for i:= 1 to f do productoTotal[i] := 0;
    for j:= 1 to c do sucursalTotal[j] := 0;


    // Muestra matriz de stock
    for i:= 1 to f do
        begin
            Write(producto[i]:10, ' | ');
            for j:= 1 to c do
            begin
                Write(stock[i,j]:4, ' ');
            end;
            WriteLn;
        end;
        WriteLn;

    // totales por producto y por sucursal
    for i:= 1 to f do
        begin
            for j:= 1 to c do
            begin
                productoTotal[i]:= productoTotal[i] + stock[i,j];
                sucursalTotal[j]:= sucursalTotal[j] + stock[i,j];
            end;
            Write('Stock Total de ', producto[i], ' [', productoTotal[i],']');
            WriteLn;
        end;

    // Mayor Stock por Sucursal
    mayorStockSucursal := sucursalTotal[1];
    sucursalMayorStock := 1;

    for j := 2 to c do
        begin
            if (sucursalTotal[j] > mayorStockSucursal) then
            begin
                mayorStockSucursal := sucursalTotal[j];
                sucursalMayorStock := j;
            end;
        end;
    WriteLn('La su sucursal Nro: ', sucursalMayorStock, ' con una cantidad de: ', mayorStockSucursal,' productos es la que mayor Stock posee');
    WriteLn;

   
   // Mayor Stock por Producto
    mayorStockProducto := productoTotal[1];
    nombreMayorStock := producto[1];

    for i := 2 to f do
        begin
            if(productoTotal[i] > mayorStockProducto) then
                begin
                    mayorStockProducto := productoTotal[i];
                    nombreMayorStock := producto[i];
                end;
        end;
    
    WriteLn('El producto con mayor stock total es: ', nombreMayorStock, ' con una cantidad de: ', mayorStockProducto, ' unidades.');
    WriteLn;

    // Minimo Stock 
    Write('Minimo Stock requerido? ');
    ReadLn(minimoStock);
    
    ningunMinimoStock := true;
    
    for i:= 1 to f do
    begin
        for j:= 1 to c do
        begin
            if stock[i,j] < minimoStock then
            begin
                WriteLn('Stock bajo detectado: ', producto[i], ' en sucursal ', j, ' (Cant: ', stock[i,j], ')');
                ningunMinimoStock := false;
            end;
        end;
    end;

    if ningunMinimoStock then
        WriteLn('Todas las sucursales cumplen con el stock minimo.');

    readkey;
end.


{
1.carga de datos
2.carga de la matriz
3.mostrar la matriz
4.stock total por producto, mostrar stock total de cada producto
5.stock total disponible por sucursales
6.
7.
8.
9. producto con menor stock total
10. ordenamiento ordenar el vector de stock de los productos de mayor a menor
11. mantener la relacion entre los datos

}
