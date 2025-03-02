-- Consulta ingredientes con su respectivo inventario que no hay existencias
select inv_nombre, ing_nombre from inventario join ingrediente on(ing_inv_nom = inv_nombre) where ing_cant_disponible is null;

-- Propinas correspondiente a cada mesero
select emp_nombre, sum(fac_propina) from empleado join mesero on(emp_id = empleado_id_empleado) join pedido on(ped_mes_id = empleado_id_empleado) join factura on(fac_ped_id = ped_id) group by emp_nombre;

-- Reservas para un día determinado
select cli_nombre, res_num_per from cliente join reserva on(res_cli_id = cli_id) where res_fecha = "2025-03-15";

-- Pago Proveedores
select pro_nombre, ord_id, pago from proveedor join orden on (pro_id = ord_pro_id) join (select det_ord_id, sum(ing_precio * det_ord_cant) as pago from detalle_orden join ingrediente on(det_ord_ing_id = ing_nombre) group by det_ord_id) as costo on (costo.det_ord_id = ord_id);

-- Clientes frecuentes
select cli_nombre from cliente join (select cli_id, count(ped_id) as pedidos from pedido join cliente on(cli_id = ped_cli_id) group by cli_id having pedidos > 5 limit 3) as consulta on(cliente.cli_id = consulta.cli_id);

-- Ventas del día 
select fac_fecha, sum(ite_precio) from factura join pedido on(ped_id = fac_ped_id) join detalle_pedido on (det_ped_id = ped_id) join item on (ite_id = det_ite_id) where fac_fecha = '2023-10-05';

