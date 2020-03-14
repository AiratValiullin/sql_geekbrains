
use corp;

-- Выборка по пользователям их должности и закрепленной территории
SELECT
	firstname,
	lastname,	
	(SELECT post FROM profiles WHERE user_id = users.id) as post,
	(select territory from territories where id = (select territory_id from profiles where user_id = users.id)) as territory
FROM users
order by lastname;

-- Выборка заказов в разрезе позиций и менеджера
select
	*
from orders 
where ord_item_id = 2
	and user_id = (select id from users where lastname = 'Иванов')

-- Выборка по количетсву брендов в заказах
select 
	count(*),
	ord_item_id,
	(select brand_name from brands where id = (select brand_name_id from items where id = orders.ord_item_id)) as brand
from orders
group by ord_item_id

-- Заказы по месяцам
select
	count(*)
	, monthname(created_at) as 'nomber month '
	, month(created_at) as 'month'
	
from orders
group by month(created_at)


