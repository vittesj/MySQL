3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT p.gender, COUNT(*) FROM profiles p
	JOIN likes l ON p.user_id = l.user_id 
	GROUP BY gender;

4. Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей).

SELECT COUNT(*) FROM likes l
	JOIN (SELECT * FROM profiles ORDER BY birthday DESC LIMIT 10) p on l.user_id = p.user_id
	WHERE target_type_id = 2;

#можно так

SELECT COUNT(*) FROM likes l 
	JOIN (SELECT * FROM profiles ORDER BY birthday DESC LIMIT 10) p ON target_id = p.user_id
	WHERE target_type_id = 2;

#можно вот так

5. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

#Сделаем выборку по активности у кого меньше всего постов, друзей, и лайков

SELECT u.id, first_name, last_name 
	FROM users u
		LEFT JOIN posts p 
			ON u.id = p.user_id 
		LEFT JOIN friendship f 
			ON u.id = f.user_id	
		LEFT JOIN likes l 
			ON u.id = l.user_id 
	WHERE p.user_id IS NULL AND f.user_id IS NULL AND l.user_id IS NULL LIMIT 10; "В выборке получилось меньше 10 пользователей, LIMIT указан на случай если бользователей окажется больше"