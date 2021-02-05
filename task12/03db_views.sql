-- Главная информация по видео
CREATE VIEW v_video_profiles AS 
    SELECT v.id AS v_id,
           v.title AS title,
           v.channel_id AS v_channel_id,
           v.duration,
           v.created_at,  -- дата загрузки видео на канал
           vv.c AS count_of_views,  -- количество просмотров данного видео
           vc.c AS count_of_comments,  -- количество комментариев к видео
           vv1.c1 AS positive_votes,  -- количество "лайков"
           vv2.c2 AS negative_votes  -- количество "дизлайков"

    FROM videos AS v
        LEFT JOIN (SELECT count(user_id) AS c, video_id
                   FROM video_views
                   GROUP BY video_id
                ) AS vv ON vv.video_id = v.id
       
        LEFT JOIN (SELECT count(id) AS c, video_id
                   FROM video_comments
                   GROUP BY video_id
                ) AS vc ON vc.video_id = v.id
       
        LEFT JOIN (SELECT count(id) AS c1, video_id
                   FROM video_views
                   WHERE vote = '1'
                   GROUP BY video_id
                ) AS vv1 ON vv1.video_id = v.id
       
        LEFT JOIN (SELECT count(id) AS c2, video_id
                   FROM video_views
                   WHERE vote = '0'
                   GROUP BY video_id
                ) AS vv2 ON vv2.video_id = v.id

    WHERE v.status != 'deleted'   
    ORDER BY v.id;



-- Главная информация по каналам
CREATE VIEW v_channel_profiles AS 
    SELECT ch.id AS ch_id,
           ch.channel_name,
           ch.created_at,  -- дата создания канала
           v1.c AS count_of_videos,  -- общее колич-во видео на канале
           v2.duration AS all_duration,  -- суммарная длительность всех видео
           s.c AS count_of_subscribers,  -- колич-во подписчиков канала
           vvp.c AS all_count_of_views,  -- общее число просмотров всех видео канала
           p.c AS count_of_posts  -- количество публикаций (постов) на канале
               
    FROM channels AS ch

        LEFT JOIN (SELECT count(id) AS c, channel_id
                   FROM videos
                   WHERE status != 'deleted'
                   GROUP BY channel_id
                   ) AS v1 ON v1.channel_id = ch.id
       
        LEFT JOIN (SELECT SEC_TO_TIME(SUM(TIME_TO_SEC(duration))) AS duration, channel_id
                   FROM videos
                   WHERE status != 'deleted'
                   GROUP BY channel_id
                  ) AS v2 ON v2.channel_id = ch.id

        LEFT JOIN (SELECT count(is_subscribed) AS c, channel_id
                   FROM subscriptions
                   WHERE is_subscribed = '1'
                   GROUP BY channel_id
                  ) AS s ON s.channel_id = ch.id
                  
        LEFT JOIN (SELECT SUM(count_of_views) AS c, v_channel_id
                   FROM v_video_profiles 
                   GROUP BY v_channel_id
                  ) AS vvp ON vvp.v_channel_id = ch.id
                            
        LEFT JOIN (SELECT count(id) AS c, channel_id
                   FROM posts
                   GROUP BY channel_id
                  ) AS p ON p.channel_id = ch.id
        
    ORDER BY ch.id;


-- Главная информация по пользователям и их активность
CREATE VIEW v_user_profiles AS 
    SELECT u.id AS u_id,
           u.username,
           u.email,
           TIMESTAMPDIFF (YEAR, ui.date_of_birth, NOW()) AS age,
           ui.country_id,
           c.country,
           ch1.id AS ch_id,  -- канал пользователя
           s1.c AS count_of_subscriptions,  -- количество подписок (каналов)
           vv3.c AS user_video_views,  -- количество просмотров видео данным пользователем
           vc1.c AS user_video_comments,  -- количество комментариев к видео
           vv4.c AS user_vote_videos,  -- количество голосов ("лайков" и "дизлайков") за видео
           pc.c AS user_post_comments,  -- количество комментариев к постам
           pv.c AS user_vote_posts,  -- количество голосов за посты
           votes_on_vc.c AS votes_on_video_comments,  -- голоса за комментарии других польз-лей к видео
           votes_on_pc.c AS votes_on_post_comments  -- голоса за комментарии других польз-лей к постам

    FROM users AS u

        LEFT JOIN user_info AS ui ON ui.user_id = u.id

        LEFT JOIN countries AS c ON c.id = ui.country_id

        LEFT JOIN channels AS ch1 ON ch1.user_id = u.id

        LEFT JOIN (SELECT count(is_subscribed) AS c, user_id
                   FROM subscriptions
                   WHERE is_subscribed = '1'
                   GROUP BY user_id
                  ) AS s1 ON s1.user_id = u.id

        LEFT JOIN (SELECT count(id) AS c, user_id
                   FROM video_views
                   GROUP BY user_id
                  ) AS vv3 ON vv3.user_id = u.id

        LEFT JOIN (SELECT count(id) AS c, author_id
                   FROM video_comments
                   GROUP BY author_id
                  ) AS vc1 ON vc1.author_id = ch1.id

        LEFT JOIN (SELECT count(id) AS c, user_id
                   FROM video_views
                   WHERE vote = '1' OR vote = '0'
                   GROUP BY user_id
                  ) AS vv4 ON vv4.user_id = u.id

        LEFT JOIN (SELECT count(id) AS c, author_id
                   FROM post_comments
                   GROUP BY author_id
                  ) AS pc ON pc.author_id = ch1.id
        
        LEFT JOIN (SELECT count(id) AS c, user_id
                   FROM post_views
                   WHERE vote = '1' OR vote = '0'
                   GROUP BY user_id
                  ) AS pv ON pv.user_id = u.id

        LEFT JOIN (SELECT count(id) AS c, from_channel
                   FROM votes_on_video_comments
                   GROUP BY from_channel
                  ) AS votes_on_vc ON votes_on_vc.from_channel = ch1.id

        LEFT JOIN (SELECT count(id) AS c, from_channel
                   FROM votes_on_post_comments
                   GROUP BY from_channel
                  ) AS votes_on_pc ON votes_on_pc.from_channel = ch1.id

    ORDER BY u.id;




-- Информация по хештегам
    CREATE VIEW v_tags_and_videos AS 
    SELECT t.id AS t_id,
           t.tag_name AS tag_name,
           vt.v AS videos_on_tags, -- количество всех видео по хештегу
           v_vp.c AS count_of_views -- количество просмотров всех видео (по хештегу)
                                 
    FROM tags AS t

        LEFT JOIN (SELECT count(video_id) AS v, tag_id, video_id
                   FROM video_tags
                   GROUP BY tag_id
                  ) AS vt ON vt.tag_id = t.id 

        LEFT JOIN (SELECT count(count_of_views) AS c, v_id
                   FROM v_video_profiles
                   GROUP BY v_id
                  ) AS v_vp ON v_vp.v_id = vt.video_id

    ORDER BY t.id;

