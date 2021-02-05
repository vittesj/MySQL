/* Популярное видео ("в тренде") - 
видео (за 6 месяцев) с большим количеством 
просмотров, ещё не просмотренное пользователем */

DELIMITER //
CREATE PROCEDURE videos_in_trend(IN for_user_id BIGINT) 
BEGIN

    SELECT u.id,
           v.id AS v_id,
           v.title AS title,
           v.channel_id AS ch_id,
           ch.channel_name AS chanel_name,
           vv1.c AS count_of_views

    FROM users AS u

        CROSS JOIN (SELECT id, title, channel_id
                    FROM videos
                    WHERE created_at >= SUBDATE(CURRENT_DATE, INTERVAL 6 MONTH)
                    AND status != 'deleted'
                    AND id NOT IN (SELECT video_id
                                   FROM video_views
                                   WHERE user_id = for_user_id)
                   ) AS v

        LEFT JOIN (SELECT id, channel_name
                   FROM channels
                  ) AS ch ON ch.id = v.channel_id           

        LEFT JOIN (SELECT count(user_id) AS c, video_id
                   FROM video_views
                   GROUP BY video_id
                  ) AS vv1 ON vv1.video_id = v.id

    WHERE u.id = for_user_id
    ORDER BY vv1.c DESC 
    LIMIT 0, 3;
END//

CALL videos_in_trend(8); 



-- Видео, предлагаемые к просмотру (с канала, на который подписан пользователь)
DELIMITER //
CREATE PROCEDURE offer_to_watch_from_subscriptions(IN for_user_id BIGINT) 
BEGIN
    SELECT u.id,
           s.channel_id,  -- каналы, на которые подписан пользователь
           ch.channel_name AS channel_name,
           vv.video_id,  -- видео, которые пользователь уже посмотрел
           v1.id, -- видео, которые пользователь ещё не видел
           v1.title
                                 
    FROM users AS u

        LEFT JOIN (SELECT channel_id, user_id
                    FROM subscriptions
                    WHERE is_subscribed = '1'
                   ) AS s ON s.user_id = u.id
     
        LEFT JOIN (SELECT id, channel_name
                   FROM channels
                  ) AS ch ON ch.id = s.channel_id
                  
        LEFT JOIN (SELECT id, channel_id, title
                    FROM videos
                    WHERE status != 'deleted'
                   ) AS v ON v.channel_id = s.channel_id
                   
        LEFT JOIN (SELECT video_id, user_id 
                   FROM video_views
                  ) AS vv ON vv.user_id = u.id AND vv.video_id = v.id 
                  
        RIGHT JOIN (SELECT id, title, channel_id
                    FROM videos
                   ) AS v1 ON v1.channel_id = v.channel_id AND v1.id != vv.video_id          
                   
    WHERE u.id = for_user_id;
END//

CALL offer_to_watch_from_subscriptions(156);



-- Видео с наибольшим количеством просмотров по хештегу
DELIMITER //
CREATE PROCEDURE top_videos_on_tag(IN for_tag_id BIGINT)
BEGIN 
    SELECT t.id,
           t.tag_name, -- название хештега
           vt.video_id, 
           v_vp.title, -- название видео
           v_vp.count_of_views  -- количество просмотров видео

    FROM tags AS t 
        LEFT JOIN video_tags AS vt ON vt.tag_id = t.id
        LEFT JOIN v_video_profiles AS v_vp ON v_vp.v_id = vt.video_id

    WHERE t.id = for_tag_id
    ORDER BY v_vp.count_of_views DESC 
    LIMIT 0, 5;
END//

CALL top_videos_on_tag(21);



-- Главный хештег канала
DELIMITER //
CREATE PROCEDURE top_tag_on_channel(IN for_channel_id BIGINT)
BEGIN
    SELECT ch.id AS ch_id,
           t.id AS general_tag_id, 
           t.tag_name AS general_tag_name, -- название хештега
           vt.c AS videos_on_tags -- количество видео по хештегу

    FROM channels AS ch

        LEFT JOIN videos AS v ON v.channel_id = ch.id
     
        LEFT JOIN (SELECT count(id) AS c, tag_id, video_id
               FROM video_tags
               GROUP BY tag_id
              ) AS vt ON vt.video_id = v.id

        LEFT JOIN tags AS t ON t.id = vt.tag_id

    WHERE ch.id = for_channel_id

    ORDER BY vt.c DESC
    LIMIT 0, 1;
END//

CALL top_tag_on_channel(21);

