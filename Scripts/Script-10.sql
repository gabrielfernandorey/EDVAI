-- 10.Obtener la suma total de ventas por categoría de producto

select c.category_name, p.product_name, od.unit_price, od.quantity,
	sum(od.unit_price*od.quantity) over (partition by c.category_id) as totalsales
from categories c
inner join products p on p.category_id = c.category_id 
inner join order_details od on od.product_id = p.product_id 
order by c.category_name, p.product_name  





 



