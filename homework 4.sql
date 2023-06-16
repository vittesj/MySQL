USE lesson_4;

/* Подсчитать общее количество лайков, которые получили пользователи
младше 12 лет. */

SELECT COUNT(*) AS 'summ likes' FROM likes
WHERE user_id IN (
	SELECT user_id 
	FROM profiles
	WHERE TIMESTAMPDIFF(YEAR, birthday, NOW()) < 12);

/* Определить кто больше поставил лайков (всего): мужчины или
женщины. */

SELECT CASE (gender)
	WHEN 'm' THEN 'man'
	WHEN 'f' THEN 'woman'
    END AS 'more likes', COUNT(*) as 'summ likes'
FROM profiles AS p 
JOIN likes AS l 
WHERE l.user_id = p.user_id
GROUP BY gender 
LIMIT 1; 

-- Вывести всех пользователей, которые не отправляли сообщения.

SELECT DISTINCT CONCAT(firstname, ' ', lastname) AS 'dont message'
FROM users 
WHERE NOT EXISTS (
	SELECT from_user_id
	FROM messages
	WHERE users.id = messages.from_user_id
);

/* (по желанию)* Пусть задан некоторый пользователь. Из всех друзей
этого пользователя найдите человека, который больше всех написал
ему сообщений. */

SELECT from_user_id AS 'id', 
	(SELECT CONCAT(firstname,' ', lastname) 
    FROM users 
    WHERE id = messages.from_user_id) AS 'name and surname', COUNT(*) AS `message`
FROM messages 
WHERE to_user_id = 1 AND from_user_id IN (
	SELECT initiator_user_id 
    FROM friend_requests 
    WHERE (target_user_id = 1) AND status ='approved'
    UNION
    SELECT target_user_id 
    FROM friend_requests 
    WHERE (initiator_user_id = 1) AND status ='approved' 
)
GROUP BY from_user_id
ORDER BY `message` DESC 
LIMIT 1;