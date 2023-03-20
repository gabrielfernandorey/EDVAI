-- 9. Obtener la suma de venta de cada cliente

select sum(od.quantity * od.unit_price) over(partition by o.customer_id) as sumorderamount,  
	od.order_id, o.customer_id, o.employee_id , o.order_date , o.required_date  
from order_details od  
inner join orders o on o.order_id = od.order_id 
order by o.customer_id asc




 


