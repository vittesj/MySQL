-- 1)Проанализировать какие запросы могут выполняться наиболее часто в
-- процессе работы приложения и добавить необходимые индексы.

SHOW INDEX FROM users;

CREATE INDEX users_first_name_last_name_idx ON users(first_name, last_name);\

-- Хотел создать индекс столбца metadata в таблице media, но из-за формата JSON не удалось.

SELECT * FROM posts;

-- Так как голова поста это по сути его название, и оно не должно быть большим, создам индекс для него.

SHOW INDEX FROM posts;

CREATE INDEX posts_head_idx ON posts(head);

-- Мы не задаем уникальность имени поста, так как имя может повторятся.

-- Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы;
-- среднее количество пользователей в группах;
-- самый молодой пользователь в группе;
-- самый старший пользователь в группе;
-- общее количество пользователей в группе;
-- всего пользователей в системе;
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100.
            
SELECT DISTINCT communities.name AS group_name,
  COUNT(communities_users.user_id) OVER() / (SELECT COUNT(*) FROM communities) AS average_quantity_users_in_groups,
  MAX(profiles.birthday) OVER community_birthday_young AS youngest_user,
  MIN(profiles.birthday) OVER community_birthday_old AS oldest_user,
  COUNT(communities_users.user_id) OVER community AS users_in_group,
  (SELECT COUNT(*) FROM users) AS users_total,
  COUNT(communities_users.user_id) OVER community / (SELECT COUNT(*) FROM users) *100 AS '%%'
    FROM communities
      JOIN communities_users 
        ON communities_users.community_id = communities.id
      JOIN users 
        ON communities_users.user_id = users.id
      JOIN profiles 
        ON profiles.user_id = users.id
      WINDOW community AS (PARTITION BY communities.id),
             community_birthday_young AS (PARTITION BY communities.id ORDER BY profiles.birthday DESC),
             community_birthday_old AS (PARTITION BY communities.id ORDER BY profiles.birthday);