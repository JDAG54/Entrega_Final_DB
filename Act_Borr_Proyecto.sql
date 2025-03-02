		/*Actualizaciones*/
        
-- Proveedor Email
UPDATE proveedor SET pro_email = 'carlos.hernandez@gmail.com' WHERE pro_id = 1012345678;
-- Proveedor Dirección
UPDATE proveedor SET pro_direc = 'Cra 9 #67 -40, Bogotá' WHERE pro_id = 1056789012;
-- Proveedor Telefono
UPDATE proveedor SET pro_tel = 3112657705 WHERE pro_id = 1056789012;
-- Ingrediente Precio
UPDATE ingrediente SET ing_precio = 20000 WHERE ing_nombre LIKE "carne%";
-- Ingrediente Cantidad
UPDATE ingrediente SET ing_cant_disponible = 10 WHERE ing_nombre = 'Cerdo';
-- Item Precio
UPDATE item SET ite_precio = ite_precio*2 WHERE ite_id = 30;
-- Reserva Numero de Personas
UPDATE reserva SET res_num_per = 5 WHERE res_id = 1;
-- Reserva Fecha
UPDATE reserva SET res_fecha = '2025-02-14' WHERE res_id = 1;
-- Cliente Email
UPDATE cliente SET cli_email = 'cliente@gmail.com' WHERE cli_id = 1;
-- Cliente Telefono
UPDATE cliente SET cli_telefono = '3112657705' WHERE cli_id = 1052348547;
-- Pedido Mesa
UPDATE pedido SET ped_mes_id = 7 WHERE ped_id = 1;

		/* Borrados */
        
-- Borrar una Orden
DELETE FROM orden WHERE ord_id = 1;
-- Borrar un Producto Solicitado
DELETE FROM detalle_orden WHERE det_ord_id = 2 AND det_ord_ing_id = 'Pollo';
-- Borrar un Pedido
DELETE FROM pedido WHERE ped_id = 1;
-- Borrar un Item Solicitado
DELETE FROM detalle_pedido WHERE det_ped_id = 1 AND det_ite_id = 1;
