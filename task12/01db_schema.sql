DROP DATABASE IF EXISTS ytdb;
CREATE DATABASE ytdb;
USE ytdb;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `users` (  -- пользователи
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL UNIQUE,  -- ник (логин) пользователя
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `signed_up_at` TIMESTAMP NOT NULL DEFAULT NOW(),  -- дата регистрации на сайте
    `user_channel` ENUM ('0', '1') DEFAULT '0',  -- наличие созданного канала пользователя ('0' - нет канала, '1' - канал создан)
    `updated_at` TIMESTAMP DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `avatars` (  -- аватар пользователя
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `filename` VARCHAR(200) NOT NULL,
    `avatar_url` VARCHAR(200) NOT NULL UNIQUE,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `countries` (  -- страна проживания пользователя
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `country` VARCHAR(200) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `user_info` (  -- информация о пользователях
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT(20) UNSIGNED NOT NULL UNIQUE,
    `first_name` VARCHAR(100) NOT NULL,
    `last_name` VARCHAR(100) NOT NULL,
    `date_of_birth` DATE NOT NULL,
    `avatar_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 1,
    `phone_number` BIGINT(20) UNSIGNED UNIQUE,
    `country_id` BIGINT(20) UNSIGNED NOT NULL,
    `about` TEXT,  -- о себе
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `updated_at` TIMESTAMP DEFAULT NOW(),
    `is_private` ENUM ('0', '1') DEFAULT '0',  -- открытый или закрытый профиль

    INDEX `user_name_idx` (`first_name`, `last_name`),
    
    FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`avatar_id`) REFERENCES `avatars` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
        
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `banners` (  -- баннеры для каналов
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `banner_name` VARCHAR(200) NOT NULL,
    `banner_url` VARCHAR(200) NOT NULL UNIQUE,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `channels` (  -- каналы пользователей
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `channel_name` VARCHAR(200) NOT NULL,  -- название канала
    `user_id` BIGINT(20) UNSIGNED NOT NULL UNIQUE,  -- пользователь, создавший канал
    `channel_url` VARCHAR(200) NOT NULL UNIQUE,
    `banner_id` BIGINT(20) UNSIGNED NOT NULL DEFAULT 1,  -- баннер
    `descriptions` TEXT,  -- описание
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `updated_at` TIMESTAMP DEFAULT NOW(),

    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) 
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`) 
        ON DELETE RESTRICT
        ON UPDATE RESTRICT    
    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `subscriptions` (  -- подписки (пользователи и каналы, на которые они подписаны)
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,  -- пользователь
    `channel_id` BIGINT(20) UNSIGNED NOT NULL,  -- канал, на который подписан пользователь
    `date_of_subscription` TIMESTAMP NOT NULL DEFAULT NOW(),  -- дата подписки
    `is_subscribed` ENUM ('1', '0') DEFAULT '1',  -- состояние ('1' - пользователь подписан, '0' - пользователь был подписан, но отписался)
    `date_of_changes` TIMESTAMP NOT NULL DEFAULT NOW(),  -- дата изменения состояния подписан/отписан
    `updated_at` TIMESTAMP DEFAULT NOW(),

    UNIQUE INDEX `user_ch_subscr_idx` (`user_id`, `channel_id`),

    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
        
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `subscription_log` (  -- журнал регистрации изменений в таблице 'subscriptions'
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `channel_id` BIGINT(20) UNSIGNED NOT NULL,
    `note` TEXT,
    `event_time` TIMESTAMP NOT NULL DEFAULT NOW(),

    INDEX `user_idx` (`user_id`),
    INDEX `channel_idx` (`channel_id`),

    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE NO ACTION
        ON UPDATE CASCADE,
    FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`)
        ON DELETE NO ACTION
        ON UPDATE CASCADE
                
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `playlists` (  -- плейлисты
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `channel_id` BIGINT(20) UNSIGNED NOT NULL,  -- канал, на котором создан плейлист
    `playlist_name` VARCHAR(200) NOT NULL,  -- название плейлиста
    `description` TEXT,  -- описание
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `updated_at` TIMESTAMP DEFAULT NOW(),

    UNIQUE INDEX `ch_playlist_name_idx` (`channel_id`, `playlist_name`),

    FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `videos` (  -- видео-ролики
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title` VARCHAR(200) NOT NULL,  -- название
    `channel_id` BIGINT(20) UNSIGNED NOT NULL,  -- канал, на который загружен видео-ролик
    `video_url` VARCHAR(200) NOT NULL UNIQUE,
    `duration` TIME NOT NULL,  -- длительность видео-ролика
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `status` ENUM ('available', 'available by link', 'deleted') DEFAULT 'available',  -- статус ('available' - в открытом доступе, 'available by link' - доступен к просмотру по ссылке, 'deleted' - удалён)
    `updated_at` TIMESTAMP DEFAULT NOW(),

    INDEX `title_idx` (`title`),

    FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`)
        ON DELETE RESTRICT
        ON UPDATE RESTRICT

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `playlist_videos` (  -- плейлисты и сгруппированные в них видео-ролики
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `playlist_id` BIGINT(20) UNSIGNED NOT NULL,
    `video_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),

    FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `video_info` (  -- дополнительная информация по видео-роликам
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `video_id` BIGINT(20) UNSIGNED NOT NULL UNIQUE,
    `description` TEXT, -- описание
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `updated_at` TIMESTAMP DEFAULT NOW(),

    FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `video_log` (  -- журнал регистрации изменений в таблице 'videos'
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `video_id` BIGINT(20) UNSIGNED NOT NULL,
    `note` TEXT,
    `event_time` TIMESTAMP NOT NULL DEFAULT NOW(),

    INDEX `video_idx` (`video_id`),

    FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
        ON DELETE NO ACTION
        ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `video_views` (  -- просмотры видео-роликов пользователями и отметки
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `video_id` BIGINT(20) UNSIGNED NOT NULL,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
    `duration_of_vv` TIME NOT NULL,  -- продолжительность просмотра 
    `vote` ENUM ('1', 'NULL', '0'),  -- отметка ('1' - "лайк", '0' - "дизлайк", 'NULL' - отметки нет)
    `updated_at` TIMESTAMP DEFAULT NOW(),

    UNIQUE INDEX `video_user_idx` (`video_id`, `user_id`),

    FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `tags` (  -- хештеги
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `tag_name` VARCHAR(50) NOT NULL UNIQUE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `video_tags` (  -- видео-ролики, отмеченные хештегами
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `video_id` BIGINT(20) UNSIGNED NOT NULL,
    `tag_id` BIGINT(20) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),

    UNIQUE INDEX `video_tag_idx` (`video_id`, `tag_id`),

    FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE

) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `video_comments` (  -- комментарии к видео-роликам
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `video_id` BIGINT(20) UNSIGNED NOT NULL,  -- видео-ролик
    `author_id` BIGINT(20) UNSIGNED NOT NULL,  -- автор комментария (канал)
    `body_text` TEXT NOT NULL,  -- текст
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),

    FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`author_id`) REFERENCES `channels` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `votes_on_video_comments` (  -- отметки к комментариям к видео-роликам
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `video_comment_id` BIGINT(20) UNSIGNED NOT NULL,  -- комментарий
    `from_channel` BIGINT(20) UNSIGNED NOT NULL,  -- автор отметки (канал)
    `vote` ENUM ('1', 'NULL', '0'),  -- отметка ('1' - "лайк", '0' - "дизлайк", 'NULL' - отметки нет)

    UNIQUE INDEX `vc_from_ch_idx` (`video_comment_id`, `from_channel`),

    FOREIGN KEY (`video_comment_id`) REFERENCES `video_comments` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`from_channel`) REFERENCES `channels` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `images` (  -- картинки к постам
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `image_name` VARCHAR(200) NOT NULL,
    `image_url` VARCHAR(200) NOT NULL UNIQUE,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `posts` (  -- посты (публикации)
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `channel_id` BIGINT(20) UNSIGNED NOT NULL,  -- канал, на котором размещён пост
    `image_id` BIGINT(20) UNSIGNED,
    `description` TEXT,
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),

    INDEX `channel_idx` (`channel_id`),

    FOREIGN KEY (`channel_id`) REFERENCES `channels` (`id`)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    FOREIGN KEY (`image_id`) REFERENCES `images` (`id`)
        ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `post_views` (  -- просмотры постов пользователями и отметки
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `post_id` BIGINT(20) UNSIGNED NOT NULL,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `date_of_pv` TIMESTAMP NOT NULL DEFAULT NOW(),  -- дата просмотра
    `vote` ENUM ('1', 'NULL', '0'),  -- отметка ('1' - "лайк", '0' - "дизлайк", 'NULL' - отметки нет)
    `updated_at` TIMESTAMP DEFAULT NOW(),

    UNIQUE INDEX `post_user_idx` (`post_id`, `user_id`),

    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `post_comments` (  -- комментарии к постам
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `post_id` BIGINT(20) UNSIGNED NOT NULL,  -- пост
    `author_id` BIGINT(20) UNSIGNED NOT NULL,  -- автор комментария (канал)
    `body` TEXT NOT NULL,  -- текст комментария
    `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),

    FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`author_id`) REFERENCES `channels` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `votes_on_post_comments` (  -- отметки к комментариям к постам
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `post_comment_id` BIGINT(20) UNSIGNED NOT NULL,  -- комментарий
    `from_channel` BIGINT(20) UNSIGNED NOT NULL,  -- автор отметки (канал)
    `vote` ENUM ('1', 'NULL', '0'),  -- отметка ('1' - "лайк", '0' - "дизлайк", 'NULL' - отметки нет)

    UNIQUE INDEX `pc_from_ch_idx` (`post_comment_id`, `from_channel`),

    FOREIGN KEY (`post_comment_id`) REFERENCES `post_comments` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (`from_channel`) REFERENCES `channels` (`id`)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

