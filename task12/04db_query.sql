-- Пользователи старше 20 лет, которые подписаны на более чем 4 канала
SELECT u.id AS u_id,
       u.username AS username,
       TIMESTAMPDIFF (YEAR, ui.date_of_birth, NOW()) AS age,
       u.email AS email,
       s.c AS count_of_subscriptions -- количество каналов, на которые подписан пользователь
       
FROM users AS u

    INNER JOIN user_info AS ui ON ui.user_id = u.id

    INNER JOIN (SELECT count(is_subscribed) AS c, user_id
                FROM subscriptions
                WHERE is_subscribed = '1'
                GROUP BY user_id
               ) AS s ON s.user_id = u.id

WHERE TIMESTAMPDIFF (YEAR, ui.date_of_birth, NOW()) > 20 
AND c > 4

ORDER BY u_id;



/* Каналы, которые созданы не более 3 лет назад,
на которых больше 2 видео,
и у которых больше 2 подписчиков */

SELECT ch.id AS ch_id,
       ch.channel_name AS channel_name,
       ch.created_at AS created_at, 
       v.c AS v_count,  -- количество видео на канале
       s.c AS s_count  -- количество подписчиков на канале

FROM channels AS ch 

    INNER JOIN (SELECT count(id) AS c, channel_id
                FROM videos
                WHERE status != 'deleted'
                GROUP BY channel_id
               ) AS v ON v.channel_id = ch.id

    INNER JOIN (SELECT count(is_subscribed) AS c, channel_id
                FROM subscriptions
                WHERE is_subscribed = '1'
                GROUP BY channel_id
               ) AS s ON s.channel_id = ch.id

WHERE v.c > 2
AND s.c > 2
AND created_at >= SUBDATE(CURRENT_DATE, INTERVAL 3 YEAR) 

ORDER BY created_at DESC;



-- Пользователи из Франции, написавшие наибольшее количество комментариев ко всем видео
SELECT u.id AS u_id,
       u.username AS username,  -- пользователь
       ch.id AS ch_id,
       ch.channel_name AS channel_name,  -- канал пользователя
       vc.count_of_c AS count_of_c  -- количество комментариев ко всем видео

FROM users AS u

    INNER JOIN (SELECT id, channel_name, user_id
                FROM channels
               ) AS ch ON ch.user_id = u.id 

    INNER JOIN (SELECT count(id) AS count_of_c, author_id
                FROM video_comments
                WHERE author_id IN 
                    (SELECT ch1.id
                     FROM channels ch1
                     WHERE ch1.user_id IN 
                         (SELECT ui.user_id
                          FROM user_info ui
                          WHERE ui.country_id =
                              (SELECT c.id
                               FROM countries c
                               WHERE c.country = 'France')
                         )
                    )
                GROUP BY author_id
               ) AS vc ON vc.author_id = ch.id

ORDER BY count_of_c DESC
LIMIT 0, 3;



-- Статистика по подписчикам каналов
SELECT ch.id AS ch_id,
       ch.channel_name,  -- название канала
       s.c AS count_of_subscribers, -- количество подписчиков
       s1.c AS subscr_3_y,  -- количество подписавшихся пользователей за 3 года
       s2.c AS subscr_6_m,  -- количество подписавшихся пользователей за 6 месяцев
       s3.c AS unsubscr_3_y,  -- количество отписавшихся пользователей за 3 года
       s4.c AS unsubscr_6_m  -- количество отписавшихся пользователей за 6 месяцев

FROM channels AS ch

LEFT JOIN (SELECT count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '1'
                   GROUP BY channel_id
                  ) AS s ON s.channel_id = ch.id

LEFT JOIN (SELECT count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '1' 
                   AND date_of_subscription >= SUBDATE(CURRENT_DATE, INTERVAL 3 YEAR)
                   GROUP BY channel_id
                  ) AS s1 ON s1.channel_id = ch.id

LEFT JOIN (SELECT count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '1' 
                   AND date_of_subscription >= SUBDATE(CURRENT_DATE, INTERVAL 6 MONTH)
                   GROUP BY channel_id
                  ) AS s2 ON s2.channel_id = ch.id

LEFT JOIN (SELECT count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '0' 
                   AND date_of_changes >= SUBDATE(CURRENT_DATE, INTERVAL 3 YEAR)
                   GROUP BY channel_id
                  ) AS s3 ON s3.channel_id = ch.id

LEFT JOIN (SELECT count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '0' 
                   AND date_of_changes >= SUBDATE(CURRENT_DATE, INTERVAL 6 MONTH)
                   GROUP BY channel_id
                  ) AS s4 ON s4.channel_id = ch.id

ORDER BY ch.id;



-- Распределение подписчиков канала по странам
DELIMITER //
CREATE PROCEDURE subscribers_and_countries(IN for_channel_id BIGINT) 
BEGIN
    SELECT ch.id AS ch_id,
           ch.channel_name,
           ui.country_id AS country_id,
           c.country AS country,  -- страна
           ui.c -- количество подписчиков (по странам)

    FROM channels AS ch

        LEFT JOIN (SELECT user_id, count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '1'
                   GROUP BY channel_id
                  ) AS s ON s.channel_id = ch.id

        LEFT JOIN (SELECT count(user_id) AS c, user_id, country_id 
                   FROM user_info
                   GROUP BY country_id
                  ) AS ui ON ui.user_id = s.user_id

        INNER JOIN (SELECT id, country 
                   FROM countries
                  ) AS c ON c.id = ui.country_id

        ORDER BY ui.c DESC;
END//

CALL subscribers_and_countries(1);



-- Видео и количество комментариев (по плейлистам)
DELIMITER //
CREATE PROCEDURE videos_in_playlists_on_comments(IN for_channel_id BIGINT)
BEGIN
    SELECT ch.id,
           ch.channel_name,
           p.id,
           p.playlist_name,
           pv.video_id,
           v.title,
           vc.c AS count_of_comments
           
    FROM channels AS ch 

        LEFT JOIN playlists AS p ON p.channel_id = ch.id 
        LEFT JOIN playlist_videos AS pv ON pv.playlist_id = p.id
        LEFT JOIN videos AS v ON v.id = pv.video_id
        LEFT JOIN (SELECT count(id) AS c, video_id
                   FROM video_comments
                   GROUP BY video_id
                  ) AS vc ON vc.video_id = v.id
   
    WHERE ch.id = for_channel_id

    ORDER BY vc.c DESC;
END//

CALL videos_in_playlists_on_comments(55);

