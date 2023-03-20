-- 1. Obtener el promedio de precios por cada categoría de producto. La cláusula
-- OVER(PARTITION BY CategoryID) específica que se debe calcular el promedio de
-- precios por cada valor único de CategoryID en la tabla

SELECT c.category_name, p.product_name, p.unit_price,  
	AVG(p.unit_price) over(partition by c.category_id ) as avgpricebycategory
FROM products p   
INNER JOIN categories c ON c.category_id  = p.category_id
ORDER BY category_name 

