USE lesson_4;

/* Создайте представление, в которое попадет информация о пользователях 
(имя, фамилия, город и пол), которые не старше 20 лет. */

CREATE OR REPLACE VIEW view_user AS 
SELECT CONCAT(firstname, ' ', lastname, '; ', hometown, '; ', gender) AS 'teenagers'
FROM users AS u
JOIN profiles AS p ON u.id = p.user_id
WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 20
GROUP BY u.id;

SELECT * FROM view_user;

/* Найдите кол-во, отправленных сообщений каждым пользователем и выведите ранжированный 
список пользователей, указав имя и фамилию пользователя, количество отправленных сообщений 
и место в рейтинге (первое место у пользователя с максимальным количеством сообщений) . 
(используйте DENSE_RANK) */

SELECT 
	DENSE_RANK() OVER (ORDER BY COUNT(from_user_id) DESC) AS 'rate position',
	COUNT(from_user_id) AS 'count message',
	CONCAT(firstname, ' ', lastname) AS 'users'
FROM users AS u
JOIN messages AS m ON u.id = m.from_user_id
GROUP BY u.id;

/* Выберите все сообщения, отсортируйте сообщения по возрастанию даты отправления (created_at) 
и найдите разницу дат отправления между соседними сообщениями, получившегося списка. 
(используйте LEAD или LAG) */

SELECT *, 
LAG(created_at, 1, 0) OVER (PARTITION BY TIMESTAMPDIFF(SECOND, created_at, created_at)) AS lag_created_at, 
LEAD(created_at) OVER (PARTITION BY TIMESTAMPDIFF(SECOND, created_at, created_at)) AS lead_created_at
FROM messages ORDER BY TIMESTAMPDIFF(SECOND, created_at, NOW()) DESC;