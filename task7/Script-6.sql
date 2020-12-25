#Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT * FROM orders;

INSERT INTO orders 
(user_id)
VALUES
(4), (4), (1), (7), (2);

SELECT o.id, u.name, u.birthday_at FROM 
	users u
JOIN orders o ON o.user_id = u.id 
order by o.id;

#Выведите список товаров products и разделов catalogs, который соответствует товару.

SELECT p.id, p.name, c.name AS catalog_name FROM products p 
left JOIN catalogs c ON c.id = p.catalog_id;
