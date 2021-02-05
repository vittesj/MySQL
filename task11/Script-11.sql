-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы,
-- идентификатор первичного ключа и содержимое поля name.
DROP TABLE IF EXISTS logs;
CREATE TABLE logs (	
	id BIGINT(20) NOT NULL,
	name VARCHAR(45) NOT NULL,	
	value VARCHAR(45) NOT NULL,
	created_at DATETIME NOT NULL
) ENGINE = ARCHIVE;

DROP TRIGGER IF EXISTS logs_users;
CREATE TRIGGER logs_users AFTER INSERT ON users FOR EACH ROW
  INSERT INTO logs 
    SET 
      name = 'users',
      id = NEW.id,
      value = NEW.name;

DROP TRIGGER IF EXISTS catalogs_logs;
CREATE TRIGGER catalogs_logs AFTER INSERT ON catalogs FOR EACH ROW
  INSERT INTO logs 
    SET 
      name = 'catalogs',
      id = NEW.id,
      value = NEW.name;

DROP TRIGGER IF EXISTS logs_products;
CREATE TRIGGER logs_products AFTER INSERT ON products FOR EACH ROW
  INSERT INTO logs 
    SET 
      name = 'products',
      id = NEW.id,
      value = NEW.name;


-- В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

SADD ip '192.168.0.2' '192.168.0.3' '192.168.0.4' "не совсем понял задание, вижу его так"

SET 192.168.0.2 "1"
INCR 192.168.0.2
GET 192.168.0.2  "или как то так, сет на первый заход пользователя с этого айпи адреса а инкримент для подсчитывания увеличения счетчика посещения уже с известного айпи-айдреса, гетом выводим значение колличества посещения"


-- При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, 
-- поиск электронного адреса пользователя по его имени.

hget user_email "name" 
hget email_user "email"

-- Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

db.shop.insert({name: "Intel Core i3-8100",
    			description: "Процессор для настольных персональных компьютеров, основанных на платформе Intel.",
    			price: 7890.00,
    			catalog: "Процессоры"})

