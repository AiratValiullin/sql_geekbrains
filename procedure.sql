
-- Представление (выборка по пользователям)
create or replace view v_users
as 
SELECT
	firstname,
	lastname,	
	(SELECT post FROM profiles WHERE user_id = users.id) as post,
	(select territory from territories where id = (select territory_id from profiles where user_id = users.id)) as territory
FROM users
order by lastname;

select * from v_users;


-- Представление (выборка по заказам)
create or replace sales
as 
select
	u.lastname,
	u.firstname,
	o.ord_item_id,
	o.piece,
	o.created_at
	
from users as u
join orders as o on u.id = o.user_id;

select * from v_users;


	



-- Тригер запрещающий создавать заказы из будующего
delimiter //
create trigger check_oreder_before_update
before update
on orders for each row
begin 
	if new.created_at > current_date() then 
		signal sqlstate '45000' set message_text = 'Order cannot be the future';
	end if;
end
//
delimiter


-- Тригер, присваивающий текущую дату заказа, если она была введена некорректно
delimiter //
create trigger check_oreder_before_insert
before insert
on orders for each row
begin 
	if new.created_at > current_date() then 
		set new.created_at = current_date();
	end if;
end
//
delimiter



