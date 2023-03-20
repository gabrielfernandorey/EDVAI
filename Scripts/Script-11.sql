-- 11. Calcular la suma total de gastos de envío por país de destino

select o.ship_country, o.order_id, o.shipped_date, o.freight,
	sum(o.freight) over (partition by o.ship_country) as totalshipingcosts
from orders o 
order by o.ship_country 






 



