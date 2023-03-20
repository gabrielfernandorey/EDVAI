-- 8. Obtener el ranking de los empleados más jóvenes () ranking, nombre y apellido del
-- empleado, fecha de nacimiento)

select rank() over (order by e.birth_date desc) as ranking, 
	 concat(e.first_name,' ', e.last_name) as employeename, e.birth_date 
from employees e  





 


