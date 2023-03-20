-- 7. Asignar numeros de fila para cada cliente, ordenados por customer_id
-- incompleto

select row_number() over (partition by c.customer_id order by c.customer_id) as rownumber,
	c.customer_id ,c.company_name,  c.contact_name , c.contact_name , c.contact_title , c.address 
from customers c 




 


