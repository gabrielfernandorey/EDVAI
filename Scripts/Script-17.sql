-- 17.Obtener un listado de productos que contengan: id de producto, nombre del producto,
-- precio unitario, precio del producto anterior, diferencia entre el precio del producto y
-- precio del producto anterior.
-- incompleto


select product_id , product_name , unit_price,
	lag(unit_price) over (order by product_id) as lastunitprice
from products 


 
 


 

 



