-- 16.Obtener un listado de ordenes mostrando el id de la orden, fecha de orden, id del cliente
-- y última fecha de orden.


select o.order_id , o.order_date , o.customer_id , 
	lag(o.order_date) over (partition by o.customer_id order by o.order_date) as lastorderdate
from orders o  
 
 


 

 



