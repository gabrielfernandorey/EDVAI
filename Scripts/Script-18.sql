-- 18.Obtener un listado que muestra el precio de un producto junto con el precio del producto
-- siguiente


select p.product_name , p.unit_price,
	lead(p.unit_price) over (order by p.product_name) as nextprice
from products p


 
 


 

 



