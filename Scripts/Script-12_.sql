-- 12.Ranking de ventas por cliente
-- incompleto 

select  o.customer_id , c.company_name,
	sum(od.unit_price*od.quantity) as totalsales
	--rank() over (order by totalsales desc) as rnk
from order_details od
inner join orders o on od.order_id = o.order_id  
inner join customers c on c.customer_id = o.customer_id 
group by o.customer_id, c.company_name 
order by totalsales desc

 



select o.ship_country, o.order_id, o.shipped_date, o.freight,
	sum(o.freight) over (partition by o.ship_country) as totalshipingcosts
from orders o 
order by o.ship_country 






 



