select o.customer_id , o.order_date,
	min(o.order_date) over (partition by o.customer_id)
from orders o 
 