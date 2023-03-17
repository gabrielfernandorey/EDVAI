SELECT c.category_name, AVG(unit_price) avgpricebycategory
FROM products p   
INNER JOIN categories c ON c.category_id  = p.category_id
GROUP BY category_name
ORDER BY category_name 
