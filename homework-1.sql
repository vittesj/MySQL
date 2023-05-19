-- Создайте таблицу с мобильными телефонами, используя графический
-- интерфейс. Заполните БД данными. Добавьте скриншот на платформу в качестве
-- ответа на ДЗ

SELECT * FROM new_table;

-- Выведите название, производителя и цену для товаров,
-- количество которых превышает 2 (SQL - файл, скриншот, либо сам код)

SELECT ProductName, Manufacturer, Price FROM new_table
WHERE ProductCount>2;

-- Выведите весь ассортимент товаров марки “Samsung”

SELECT * FROM new_table
WHERE Manufacturer='Samsung';

-- Выведите информацию о телефонах, где суммарный чек
-- больше 100 000 и меньше 145 000**

SELECT * FROM new_table
WHERE (ProductCount * Price)>100000
AND (ProductCount * Price)<145000;

-- С помощью регулярных выражений найти (можно использовать
-- операторы “LIKE”, “RLIKE для 4.3” ):
-- Товары, в которых есть упоминание "Iphone"

SELECT * FROM new_table
WHERE ProductName LIKE '%iPhone%';

-- "Galaxy"

SELECT * FROM new_table
WHERE ProductName LIKE '%Galaxy%';

-- Товары, в которых есть ЦИФРЫ

SELECT * FROM new_table
WHERE ProductName REGEXP '[0-9]';

-- Товары, в которых есть ЦИФРА "8" 

SELECT * FROM new_table
WHERE ProductName LIKE '%8%';