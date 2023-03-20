-- 3. Obtener el promedio de cantidad de productos vendidos por categoría (product_name,
-- quantity_per_unit, unit_price, quantity, avgquantity)

select p.product_name, c.category_name, p.quantity_per_unit , p.unit_price, od.quantity,
	AVG(od.quantity) over (partition by c.category_name)
from order_details od
inner join products p on p.product_id = od.product_id 
inner join categories c on p.category_id = c.category_id 
order by p.product_name , c.category_name 

