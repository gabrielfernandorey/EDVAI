-- 19.Obtener un listado que muestra el total de ventas por categoría de producto junto con el
-- total de ventas de la categoría siguiente


select c.category_name,
	sum(od.unit_price * od.quantity) as totalsales
from categories c
inner join products p on p.category_id = c.category_id 
inner join order_details od on od.product_id = p.product_id  
group by c.category_name 
order by c.category_name 



 
 


 

 



