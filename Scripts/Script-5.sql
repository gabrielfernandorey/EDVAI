select p.product_id ,p.product_name ,p.unit_price ,p.category_id,
	max(p.unit_price) over (partition by p.category_id)
from products p 
 


