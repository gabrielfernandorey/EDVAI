-- 14.Ranking de productos por precio unitario

select p.product_id , p.product_name , p.unit_price ,
	rank() over (order by p.unit_price desc) as rnk
from products p 
where p.unit_price is not null 
 

 



