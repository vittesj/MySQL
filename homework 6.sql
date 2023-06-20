/* Создайте таблицу users_old, аналогичную таблице users. Создайте процедуру, 
с помощью которой можно переместить любого (одного) пользователя из таблицы 
users в таблицу users_old. (использование транзакции с выбором commit или rollback – обязательно). */

USE lesson_4;

DROP TABLE IF EXISTS users_old;

CREATE TABLE users_old (
	id SERIAL PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамилия',
    email VARCHAR(120) UNIQUE
);

DROP PROCEDURE IF EXISTS `move`;

DELIMITER //
CREATE PROCEDURE  move (IN num1 INT) 
	DETERMINISTIC
BEGIN
INSERT INTO users_old (firstname,lastname,email) 
SELECT firstname, lastname, email 
	FROM users 
	WHERE users.id = num1;
DELETE FROM users 
	WHERE id = num1;
COMMIT;
END
//

DELIMITER ;

CALL move(2);

SELECT * FROM users_old;

/* Создайте хранимую функцию hello(), которая будет возвращать приветствие, 
в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать 
фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи". */

DELIMITER //
CREATE FUNCTION hello() 
	RETURNS VARCHAR(15)
	DETERMINISTIC
BEGIN
DECLARE result_text VARCHAR(15);
SELECT CASE 
	WHEN CURRENT_TIME >= '06:00:00' AND  CURRENT_TIME < '12:00:00' THEN 'Доброе утро'
	WHEN CURRENT_TIME >= '12:00:00' AND  CURRENT_TIME < '18:00:00' THEN 'Добрый день'	
	WHEN CURRENT_TIME >= '00:00:00' AND  CURRENT_TIME < '06:00:00' THEN 'Доброй ночи'   # тут вопрос, тестить времени полагаю особо нет, но можно ли поставить вместо 00, 24, чтобы указать вечер а последним условием ночь?
	ELSE 'Добрый вечер'
END INTO result_text;
RETURN result_text;
END
//

DELIMITER ;

SELECT hello();

/* (по желанию)* Создайте таблицу logs типа Archive. Пусть при каждом создании 
записи в таблицах users, communities и messages в таблицу logs помещается время 
и дата создания записи, название таблицы, идентификатор первичного ключа. */
