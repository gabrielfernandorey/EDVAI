--4. Selecciona el ID del cliente, la fecha de la orden y la fecha más antigua de la
--   orden para cada cliente de la tabla 'Orders'.

select o.customer_id , o.order_date,
	min(o.order_date) over (partition by o.customer_id)
from orders o 
 
