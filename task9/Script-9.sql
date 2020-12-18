#Практическое задание по теме “Транзакции, переменные, представления”

#В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 
#из таблицы shop.users в таблицу sample.users. Используйте транзакции.

#я не ннашел таблицы, но представим что они есть.
USE example;

START TRANSACTION;
INSERT INTO sample.users SELECT * FROM shop.users WHERE shop.users.id = 1;
COMMIT;

#Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE VIEW cat_name AS 
  SELECT products.name AS p_name, catalogs.name AS c_name 
    FROM products,catalogs 
      WHERE products.catalog_id = catalogs.id;
     
SELECT * FROM cat_name;

DROP VIEW cat_name;

#Практическое задание по теме “Хранимые процедуры и функции, триггеры"

#Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
#С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу 
#"Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello() RETURNS TEXT DETERMINISTIC
BEGIN
  RETURN CASE
      WHEN "06:00:00" <= CURTIME() AND CURTIME() < "12:00:00" THEN "Доброе утро"
      WHEN "12:00:00" <= CURTIME() AND CURTIME() < "18:00:00" THEN "Добрый День"
      WHEN "18:00:00" <= CURTIME() AND CURTIME() < "24:00:00" THEN "Добрый вечер"
      ELSE "Доброй ночи"
    END;
END //

DELIMITER ;
SELECT CURTIME(), hello ();

#В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
#Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
#Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
#При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

CREATE TRIGGER desc_and_name_check_before_insert BEFORE INSERT ON products 
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN 
 	SIGNAL SQLSTATE '45000' 
 	SET message_text = 'products name or description can not be NULL'; 
  end if;
END; //

CREATE TRIGGER desc_and_name_check_before_update BEFORE UPDATE ON products 
FOR EACH ROW
BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN 
 	SIGNAL SQLSTATE '45000' 
 	SET message_text = 'products name or description can not be NULL';
 END IF;
END; //
