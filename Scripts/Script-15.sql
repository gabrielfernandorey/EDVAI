-- 15.Mostrar por cada producto de una orden, la cantidad vendida y la cantidad
-- vendida del producto previo.

select od.order_id, od.product_id , od.quantity, 
	lag(od.quantity) over (order by od.order_id)as prevquantity
from order_details od 

 

 



