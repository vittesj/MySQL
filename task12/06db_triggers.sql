DELIMITER //
CREATE TRIGGER channels_ai
    AFTER INSERT ON channels
    FOR EACH ROW
    BEGIN
        UPDATE users AS u
        SET u.user_channel = '1', u.updated_at = NOW()
        WHERE u.id = NEW.user_id;
    END//

-- Проверка работы триггера

SELECT * FROM channels;  -- всего 143 строки
SELECT * FROM users WHERE id = 146;  -- поле user_channel = '0'

INSERT INTO `channels` (`channel_name`, `user_id`, `channel_url`, `banner_id`, `descriptions`, `created_at`, `updated_at`) 
VALUES ('id99dd', '146', 'www.aynorhagenes33.org/', '1', 'Facilissssit.', '2021-01-21 18:40:53', '2021-01-31 00:00:00');

SELECT * FROM channels;  -- добавилась новая строка с user_id = 146
SELECT * FROM users WHERE id = 146;  -- поле user_channel = '1', в поле updated_at - текущая дата и время



DELIMITER //
CREATE TRIGGER videos_ai
    AFTER INSERT ON videos
    FOR EACH ROW
    BEGIN
        INSERT INTO video_log (video_id, note, event_time)
        VALUES (NEW.id, 'new_video', NOW());
    END//

-- Проверка работы триггера

SELECT * FROM videos;  -- всего 487 строк
SELECT * FROM video_log;  -- таблица пуста (0 строк)

INSERT INTO `videos` (`title`, `channel_id`, `video_url`, `duration`, `created_at`) 
VALUES ('dd77dd', '5', 'www.agenes33.org/', '01:07:07', '2021-01-31 00:00:00');

SELECT * FROM videos;  -- добавилась новая строка с id = 488
SELECT * FROM video_log;  -- добавилась новая строка (video_id = 488, note = 'new_video', event_time - текущая дата и время)



DELIMITER //
CREATE TRIGGER subscriptions_bd
    BEFORE DELETE ON subscriptions
    FOR EACH ROW
    BEGIN
        INSERT INTO subscription_log (user_id, channel_id, note, event_time)
        VALUES (OLD.user_id, OLD.channel_id, 'deleted', NOW());
    END//

-- Проверка работы триггера

SELECT * FROM subscriptions;  -- всего 1444 строки
SELECT * FROM subscription_log;  -- таблица пуста (0 строк)

DELETE FROM subscriptions WHERE user_id = 33 AND channel_id = 33;

SELECT * FROM subscriptions;  -- всего 1443 строки (удалена строка с user_id = 33 и channel_id = 33)
SELECT * FROM subscription_log;  -- добавилась новая строка (user_id = 33, channel_id = 33, note = 'deleted', event_time - текущая дата и время)

