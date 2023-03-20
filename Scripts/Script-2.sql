-- 2. Obtener el promedio de venta de cada cliente

select
	avg(od.unit_price*od.quantity) over (partition by o.customer_id) as avgorderamount,
	od.order_id, o.customer_id, o.employee_id, o.order_date, o.required_date, o.shipped_date
from order_details od
inner join orders o on o.order_id = od.order_id 
