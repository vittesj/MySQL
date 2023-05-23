DROP DATABASE IF EXISTS homework_2_db;

CREATE DATABASE homework_2_db;

USE homework_2_db;

-- создайте таблицу “sales”

CREATE TABLE sales
(
	id SERIAL PRIMARY KEY,
    order_date DATE,
    count_product INT UNSIGNED
);
    
-- Заполните ее данными    
    
INSERT INTO sales (order_date, count_product)
VALUES
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 123),
('2022-01-05', 341);

SELECT * FROM sales;

/* Для данных таблицы “sales” укажите тип
заказа в зависимости от кол-ва :
меньше 100 - Маленький заказ
от 100 до 300 - Средний заказ
больше 300 - Большой заказ */

SELECT id, count_product,
CASE 
	WHEN count_product<100 THEN 'Маленький заказ'
    WHEN count_product BETWEEN 100 AND 300 THEN 'Средний заказ'
    ELSE 'Большой заказ'
END AS 'Тип заказа'
FROM sales;

-- Создайте таблицу “orders”

CREATE TABLE orders
(
	id SERIAL PRIMARY KEY,
    employee_id VARCHAR(10),   # Так как я не знаю как формируется этот id
    amount FLOAT UNSIGNED,     # Тут вылетает предупреждение, можете в коментарии к дз указать почему?
    order_status VARCHAR(10)
);

-- заполните ее значениями

INSERT INTO orders (employee_id, amount, order_status)
VALUES
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');

SELECT * FROM orders;

/* Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
OPEN – «Order is in open state» ; CLOSED - «Order is closed»; CANCELLED - «Order is cancelled» */

SELECT 
CASE order_status
	WHEN 'OPEN' THEN 'Order is in open state'
    WHEN 'CLOSED' THEN 'Order is closed'
    ELSE 'Order is cancelled'
END AS 'full_order_status'
FROM  orders;
