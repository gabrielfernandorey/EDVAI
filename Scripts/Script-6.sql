-- incompleto
select row_number() over (order by SUM(od.unit_price * od.quantity) desc ) as ranking, 
	p.product_name ,
	SUM(p.unit_price * p.units_on_order) as "totalquantity" 
from products p, order_details od 
group by p.product_name 
order by ranking




 


