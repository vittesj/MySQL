#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Romaguera Group', '1976-02-07 14:27:07', '1986-03-07 14:27:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Smith Inc', '2000-04-15 21:09:47', '1998-01-21 00:17:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Rolfson, Buckridge and Ebert', '2007-03-29 23:38:01', '1989-10-01 22:46:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Sawayn Group', '1995-09-04 21:24:14', '2001-10-23 07:27:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Kohler-Lynch', '1976-06-16 08:31:08', '1973-09-13 23:55:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Murazik-Bins', '1984-05-15 07:38:41', '2000-02-21 16:38:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Lowe and Sons', '2008-12-14 13:59:33', '1984-08-12 03:32:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Crooks PLC', '1995-03-06 03:21:55', '1971-10-27 19:26:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Powlowski Inc', '1981-05-25 01:48:22', '2018-03-23 10:32:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Sauer, Kulas and Brown', '2008-03-19 07:15:42', '2010-09-26 05:48:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Stroman-Bosco', '1979-08-15 05:18:46', '2014-12-20 10:04:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'West-Hilll', '2014-07-02 15:05:18', '1988-02-18 21:09:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Gutkowski and Sons', '1991-09-11 14:11:08', '2012-01-13 22:23:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Hegmann, Doyle and Considine', '1978-04-18 23:31:41', '2008-07-15 05:31:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Leffler PLC', '1989-04-13 08:06:42', '1996-12-02 19:08:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'Kling, Larkin and Spinka', '2015-05-07 21:39:52', '2009-08-16 13:04:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Cremin-Romaguera', '1984-08-05 02:39:59', '1977-04-30 14:58:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'Fay, Mitchell and Deckow', '1998-06-12 22:46:02', '2018-07-28 16:45:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Dickinson PLC', '1996-09-16 09:10:06', '1989-02-15 06:15:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Kunze-Harvey', '1972-08-27 20:56:52', '2006-06-06 08:41:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'Wehner Inc', '1999-09-08 19:44:54', '1981-04-12 05:10:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'Kris, Lynch and Willms', '1981-08-22 14:37:50', '1970-01-05 17:30:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'Kozey-Schinner', '1971-09-07 22:19:33', '1984-12-06 00:28:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'Will, Hodkiewicz and Quigley', '1976-03-11 11:46:05', '2017-08-13 09:21:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'Will PLC', '2012-09-23 09:20:41', '1994-07-09 22:03:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'Wuckert-Kulas', '2013-10-17 02:15:29', '1998-04-30 04:47:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'Blick Inc', '2008-08-15 01:10:46', '2004-05-10 19:58:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'Block, Hagenes and Daugherty', '1984-08-03 18:30:54', '2011-11-25 07:26:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'O\'Hara LLC', '1999-02-28 23:30:52', '1992-03-16 09:14:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'Steuber LLC', '1983-03-12 17:02:19', '2009-03-30 04:27:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'Ziemann-McDermott', '1976-01-22 19:52:37', '2007-10-17 17:35:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'Greenholt-Vandervort', '1987-07-20 04:23:14', '2004-07-02 16:28:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'O\'Conner-Leannon', '1989-06-23 16:51:21', '1970-02-01 23:20:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'Schinner, Bednar and Legros', '2007-11-14 02:38:38', '2013-04-07 20:35:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'Dickinson, Renner and Conroy', '2018-04-03 14:52:18', '1972-01-03 01:28:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'Luettgen, Simonis and Spencer', '2001-04-13 07:03:11', '1993-04-06 06:35:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'Ankunding PLC', '2001-12-17 02:07:24', '1996-04-11 19:23:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'Ledner, Hirthe and Raynor', '2011-07-31 14:37:34', '2008-06-27 12:35:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'Walker-Goodwin', '1986-06-13 23:45:37', '1979-05-20 14:47:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'Ratke PLC', '2004-10-10 15:07:02', '2001-05-20 08:40:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'Wunsch-Parker', '2015-11-19 20:42:30', '1990-05-04 12:52:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'Oberbrunner-Grimes', '1975-08-18 10:22:58', '2002-09-13 07:58:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'Pfannerstill Ltd', '1983-03-12 08:30:04', '1982-11-27 01:50:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'Christiansen LLC', '1977-12-09 23:14:14', '1998-10-16 04:27:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'Effertz, O\'Reilly and Batz', '2019-09-15 14:15:24', '1974-05-02 13:12:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'Kuhn, Schulist and Legros', '2015-04-04 17:36:16', '1992-04-24 22:24:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'Glover LLC', '2004-07-04 16:07:45', '1980-10-27 04:36:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'Bogan, Howell and Bernier', '2012-11-14 13:13:19', '2001-11-10 04:16:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'Kihn-Murray', '1990-03-10 16:28:42', '1974-02-07 04:45:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'Kemmer-McDermott', '2011-03-12 20:05:35', '2014-07-14 03:58:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'Reichert, Veum and D\'Amore', '1979-09-09 23:18:30', '1984-09-12 03:22:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'Fay-Weber', '2012-03-16 20:39:11', '1988-04-09 10:30:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'Muller-Marvin', '2019-10-11 13:37:29', '2018-09-19 20:16:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'Weimann, Schinner and Huels', '1997-01-28 06:30:09', '2000-11-14 22:15:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'Jacobs Ltd', '2008-08-12 12:56:26', '1985-02-15 15:33:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'Walter PLC', '1992-06-07 04:21:53', '1999-05-21 04:56:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'Gutmann, Kassulke and Dicki', '2013-03-06 04:03:09', '2008-12-18 00:19:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'Lynch LLC', '1996-01-25 14:51:28', '1999-01-28 08:55:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'Greenholt, Goodwin and Wisoky', '1998-03-05 14:58:03', '2000-12-08 19:33:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'Abbott-Gislason', '1984-09-09 13:52:27', '2008-03-09 19:25:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'Nikolaus-Hickle', '1982-04-20 17:40:05', '2005-03-01 14:43:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'Walker LLC', '1973-04-18 10:25:52', '2013-08-02 14:49:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'Vandervort and Sons', '1975-05-18 00:24:31', '1983-05-28 16:05:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'Friesen, Osinski and Emard', '1977-11-30 16:09:04', '1971-06-07 18:31:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'Emard Group', '1973-08-19 13:50:56', '2012-05-31 12:43:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'Kuhlman-Jenkins', '2007-04-11 17:56:58', '1986-07-10 12:15:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'Schuster Ltd', '2003-01-24 11:04:42', '1985-07-21 01:07:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'Nikolaus, Grady and Beatty', '2006-10-22 12:22:00', '1972-02-12 16:40:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'Wiza Inc', '2012-11-23 22:18:39', '2002-10-06 03:47:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'Keeling, Greenholt and Kulas', '2006-02-25 02:12:30', '1991-12-01 17:21:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'Beier and Sons', '2020-02-22 23:40:31', '1992-05-03 22:49:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'McDermott-Wilkinson', '1995-12-16 20:39:59', '2011-12-11 03:49:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'Connelly PLC', '1976-01-16 19:48:37', '2008-01-23 19:08:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'Moen Ltd', '1973-07-21 21:30:25', '2005-06-05 13:27:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'Boyer, Collier and Jaskolski', '2011-12-04 22:22:55', '1974-04-10 01:23:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'Cruickshank-Weber', '2006-06-26 18:32:10', '2001-09-20 06:45:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'O\'Conner-Jenkins', '1992-07-14 22:15:47', '2006-11-18 08:58:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'Rodriguez-Hickle', '2011-04-08 07:32:15', '2014-06-26 02:05:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'O\'Connell, Hartmann and Kris', '1983-02-19 10:22:29', '1976-11-02 15:34:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'O\'Keefe, Willms and Prosacco', '1983-03-14 22:25:02', '1997-12-29 11:23:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'Goyette Ltd', '2008-01-29 02:35:00', '2002-06-28 19:03:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'Abbott, Murazik and Raynor', '2018-03-08 05:27:19', '1971-07-11 06:06:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'Christiansen and Sons', '1997-12-01 23:25:11', '2002-04-01 10:08:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'Rodriguez and Sons', '1997-03-23 19:27:58', '1979-09-10 21:17:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'Flatley, Bernier and Bruen', '2001-11-30 18:47:55', '2014-10-26 19:18:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'Hackett Inc', '1972-01-11 00:59:21', '1983-12-21 18:01:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'Treutel, Lakin and Halvorson', '2011-02-06 13:44:50', '1982-04-13 07:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'Kuhn, Rippin and Schmeler', '1995-03-22 23:35:17', '1996-03-10 16:04:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'Bernier-Kuhlman', '1984-04-22 00:52:45', '2002-02-14 19:38:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'Tillman PLC', '1997-11-29 20:45:00', '1970-08-02 07:03:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'Dooley PLC', '1982-11-26 04:02:10', '1993-11-01 05:41:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'Reilly-Keeling', '1998-08-07 03:41:20', '1989-03-03 23:42:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'Gulgowski Inc', '2014-03-17 17:38:45', '1991-05-16 21:22:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'Sauer, Beier and Thiel', '2015-04-16 02:33:06', '2002-10-21 08:42:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'Kohler-Schmitt', '1995-06-22 19:02:04', '2013-07-08 07:04:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'Balistreri-Eichmann', '1975-01-26 19:51:16', '2001-06-20 19:10:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'Rolfson Ltd', '1995-08-18 07:00:35', '1980-01-05 16:11:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'McKenzie, Schulist and Roberts', '1977-03-22 11:32:26', '1977-03-14 14:05:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'Miller, Bosco and Beier', '2007-12-11 01:04:53', '2016-04-05 20:38:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'Haag PLC', '2000-11-15 10:34:14', '1998-02-17 07:23:15');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1972-09-19 04:43:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1971-06-30 05:57:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2010-06-26 21:21:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2014-11-11 00:07:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1973-05-16 07:23:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1986-01-31 04:42:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1971-10-19 12:20:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2004-09-09 12:17:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1988-03-25 21:50:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1983-06-18 16:14:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2006-10-27 11:28:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1983-11-13 07:49:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2012-10-07 00:10:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1990-10-09 12:14:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1979-05-04 14:50:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1997-10-23 17:43:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '2016-03-24 11:51:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1999-03-22 00:55:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1973-11-07 15:39:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2008-04-03 00:46:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '2012-06-30 18:48:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2001-12-24 22:01:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '1988-07-28 00:22:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '1997-11-13 19:58:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '1997-12-02 17:51:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '1980-06-11 14:01:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '1973-09-28 07:38:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1996-11-03 03:39:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '2009-04-04 21:39:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2006-03-05 23:23:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '2015-08-25 00:15:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2017-07-12 08:26:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '1975-08-15 19:08:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2000-01-14 03:29:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2013-08-08 06:12:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '2012-12-04 03:22:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1978-01-28 17:12:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '2001-11-06 10:16:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '1995-09-22 07:18:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '2003-02-26 20:05:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '1985-06-22 06:21:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '1996-12-26 18:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2010-01-11 09:22:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1988-08-09 21:16:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2002-03-24 20:44:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '1989-06-12 14:02:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '2008-01-24 14:31:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1989-06-20 16:31:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1990-01-19 09:39:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1994-01-22 23:13:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '1976-04-24 08:27:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1983-06-02 17:09:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1976-04-16 02:15:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2013-04-17 06:03:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '2017-01-06 03:36:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '1983-06-09 16:39:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '1975-03-28 17:02:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '1993-09-22 01:21:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1973-05-01 13:49:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1996-12-03 08:14:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '1996-11-09 03:17:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1970-09-14 06:42:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '1996-02-29 09:39:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '1991-08-06 13:53:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '2009-07-31 12:34:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '2012-06-02 12:50:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '1985-10-24 07:37:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2000-08-29 16:04:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '2002-01-30 01:34:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '1987-08-28 02:14:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '1990-10-03 01:24:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '1988-01-01 08:07:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '2000-02-11 20:08:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '2009-07-26 07:11:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '1995-12-05 11:05:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1978-04-14 05:32:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2000-07-22 13:36:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '1972-07-21 04:29:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2014-03-15 15:16:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '2014-06-21 18:57:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '2009-12-21 15:53:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '2000-04-01 08:02:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '1992-08-20 19:41:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2009-10-28 05:22:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1997-07-07 21:35:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '2000-11-17 00:32:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1977-01-13 08:33:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '1978-09-24 10:12:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1996-05-06 19:01:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '2012-03-15 23:36:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '1985-11-27 15:05:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1991-06-11 11:08:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1991-12-06 22:28:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1970-10-30 16:45:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '1983-09-26 13:33:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1996-05-11 05:39:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '2019-02-17 07:00:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '1997-09-18 21:09:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '1990-03-26 03:05:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '1993-12-31 00:15:58');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 0, 101, '1976-06-09 01:37:34', '2010-10-30 02:28:06', '1980-06-22 02:49:53', '1974-03-02 17:36:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 0, 106, '1996-01-21 17:26:07', '1994-12-17 15:59:34', '2006-10-31 07:36:56', '2008-01-21 08:53:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 0, 101, '1984-12-12 05:31:21', '1989-07-10 19:47:07', '1998-11-20 08:13:18', '1996-07-15 09:49:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 0, 106, '2003-04-07 11:26:42', '2003-03-17 12:28:15', '2013-07-14 20:54:05', '2004-05-22 02:10:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 0, 101, '2014-10-27 22:23:50', '1993-10-29 16:52:57', '1992-10-22 04:48:28', '1983-07-09 06:23:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 0, 106, '2007-03-05 16:40:25', '2013-07-18 00:21:20', '2003-08-30 07:21:20', '1986-09-11 14:00:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 0, 101, '2001-09-19 15:04:39', '1986-05-17 12:57:16', '1981-01-25 11:45:08', '2016-06-06 17:07:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 0, 106, '2006-04-06 00:04:04', '1992-09-15 08:58:44', '1987-06-25 17:17:40', '1993-12-31 00:10:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 0, 101, '2018-01-31 16:48:46', '2020-05-28 16:30:12', '2001-06-03 21:19:41', '2001-01-09 15:30:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 0, 106, '1971-10-24 21:59:32', '2010-10-03 04:04:14', '1981-01-21 23:43:36', '1995-10-30 16:04:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 0, 101, '2012-07-30 19:25:02', '1972-11-03 18:24:33', '1996-03-13 01:42:23', '1975-12-10 01:58:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 0, 106, '1994-02-24 05:04:54', '1992-04-28 11:19:22', '2014-11-30 01:23:36', '2004-11-21 09:22:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 0, 101, '1998-05-03 16:46:20', '1984-04-16 12:02:08', '1991-07-27 09:52:15', '1987-10-17 23:08:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 0, 106, '1990-07-08 14:23:50', '1970-08-17 18:23:03', '2002-04-11 17:00:46', '1993-02-06 16:38:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 0, 101, '2003-10-02 19:10:55', '2019-06-07 09:40:20', '1986-12-27 01:07:53', '2010-06-12 08:29:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 0, 106, '2017-12-02 13:07:45', '1986-11-13 00:41:35', '1982-05-01 21:57:13', '1988-03-07 16:21:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 0, 101, '2004-06-24 16:19:20', '2005-03-21 02:57:49', '2020-01-27 08:11:12', '1982-04-09 18:34:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 0, 106, '1983-02-15 01:46:59', '1975-12-16 06:10:39', '2018-05-28 08:17:12', '2007-05-29 13:10:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 0, 101, '1998-04-02 07:26:06', '2008-06-29 15:01:01', '1986-04-04 15:30:17', '2016-07-04 09:36:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 0, 106, '2014-08-19 04:23:02', '1991-06-27 19:20:05', '1984-01-16 12:21:37', '1980-08-07 18:09:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 0, 101, '2013-08-11 18:34:13', '2005-11-08 22:06:36', '1997-10-05 13:32:32', '2005-04-17 18:48:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 0, 106, '1992-12-17 04:06:30', '2004-04-29 01:51:14', '2000-09-29 01:49:24', '2007-11-10 21:28:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 0, 101, '2018-01-18 11:39:22', '2005-12-16 11:55:39', '1984-01-30 00:07:25', '1989-04-16 11:52:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 0, 106, '1992-04-17 20:44:02', '1986-03-28 09:04:53', '1987-07-29 14:51:01', '1973-01-05 01:46:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 0, 101, '1998-06-30 18:17:44', '1990-10-16 14:31:49', '2011-03-21 08:31:51', '1980-01-04 03:33:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 0, 106, '2010-11-03 04:41:53', '1983-04-19 22:36:50', '1972-11-28 05:29:27', '1994-10-28 16:02:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 0, 101, '1996-01-09 16:02:39', '1976-07-28 21:27:37', '1973-06-30 00:29:23', '1992-05-05 22:09:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 0, 106, '2016-06-21 20:39:23', '1975-06-29 01:57:38', '1974-10-10 16:15:07', '1974-02-05 10:09:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 0, 101, '1983-12-13 20:30:46', '1995-03-11 02:54:05', '2006-07-07 07:23:35', '2013-04-19 20:24:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 0, 106, '2014-08-17 08:28:00', '1999-06-20 15:29:50', '1998-11-13 03:00:52', '2013-09-20 10:34:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 0, 101, '2010-05-06 08:23:15', '1979-09-16 02:36:38', '1987-07-16 19:02:50', '1994-05-01 06:20:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 0, 106, '1997-11-21 22:46:10', '1993-02-24 12:55:25', '1987-05-10 11:34:29', '1976-10-07 17:09:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 0, 101, '1986-12-21 10:05:06', '2001-07-27 00:01:18', '1991-01-22 02:26:14', '1979-03-13 08:31:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 0, 106, '1996-03-06 10:59:45', '1975-03-11 03:45:16', '2001-05-16 04:21:16', '2000-06-03 20:20:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 0, 101, '2003-02-25 04:28:54', '2014-07-29 09:53:41', '1987-02-21 21:31:52', '1976-01-10 08:49:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 0, 106, '2009-04-08 13:04:19', '1970-05-18 19:00:43', '1977-09-01 05:11:03', '1970-03-05 14:06:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 0, 101, '2013-11-30 03:03:23', '1981-10-27 17:13:48', '2014-04-16 02:30:26', '2015-09-09 16:23:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 0, 106, '2017-11-09 03:42:14', '1970-08-10 07:24:57', '2014-04-06 10:25:37', '1999-05-09 09:50:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 0, 101, '1976-09-30 04:31:22', '1977-01-27 00:47:25', '1982-12-05 00:57:30', '1978-12-17 15:48:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 0, 106, '1999-06-26 17:07:37', '1989-03-14 18:04:04', '1973-11-16 22:11:20', '2008-04-20 15:00:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 0, 101, '2005-11-11 13:49:23', '1989-01-04 13:30:35', '1987-02-05 11:16:54', '2004-07-12 05:17:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 0, 106, '1981-05-20 14:34:21', '1979-10-13 19:53:44', '1999-05-06 11:00:34', '2019-07-02 19:05:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 0, 101, '1989-12-16 20:20:57', '2020-08-10 19:17:32', '1997-01-09 06:14:37', '2020-11-09 09:21:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 0, 106, '2009-09-25 08:06:18', '2015-10-12 21:36:13', '1979-10-15 00:15:08', '1992-01-12 05:22:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 0, 101, '2019-12-22 16:47:39', '1971-09-30 19:36:03', '1975-08-06 01:13:09', '2012-09-08 07:08:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 0, 106, '2013-12-06 19:47:10', '1996-03-06 05:31:47', '2013-05-18 08:44:44', '1982-02-22 17:58:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 0, 101, '2001-02-21 10:06:21', '2009-07-06 04:25:25', '2001-12-03 15:29:31', '2013-05-29 23:59:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 0, 106, '1986-10-04 10:46:25', '1977-08-22 08:26:54', '2011-01-31 07:58:02', '2015-06-09 20:35:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 0, 101, '1975-05-15 23:23:25', '1985-07-10 00:56:13', '2008-11-01 04:54:24', '1989-10-10 07:09:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 0, 106, '2012-04-08 22:58:30', '1971-06-06 23:45:33', '2014-12-31 20:05:23', '1975-02-16 16:05:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 0, 101, '1974-02-27 18:05:39', '1986-03-16 22:33:10', '2003-08-30 21:14:56', '1976-02-18 04:00:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 0, 106, '1992-02-21 02:26:34', '1987-05-08 05:49:22', '1981-07-12 07:33:17', '1975-10-31 08:21:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 0, 101, '2015-06-29 16:39:51', '2011-08-27 11:13:34', '2000-11-22 13:46:17', '2005-09-06 11:38:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 0, 106, '2014-05-31 19:22:48', '2008-06-01 08:36:14', '1994-12-30 22:13:43', '1983-06-29 20:17:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 0, 101, '2013-08-14 08:56:28', '2002-04-10 12:43:43', '2014-10-14 22:38:11', '1985-04-28 20:01:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 0, 106, '1991-11-07 09:23:49', '1992-09-28 19:52:27', '1990-04-22 06:58:32', '2003-08-17 09:34:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 0, 101, '2007-01-31 19:31:56', '2002-08-08 18:31:30', '1971-05-20 02:44:00', '1989-04-09 18:16:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 0, 106, '1974-03-06 14:18:50', '1970-05-25 17:45:35', '1987-12-22 05:51:49', '2004-08-18 13:19:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 0, 101, '1984-09-21 12:33:27', '1973-08-19 06:56:10', '2013-12-17 04:24:56', '1988-07-17 07:08:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 0, 106, '1992-04-11 13:47:33', '2005-03-13 07:22:40', '2002-08-31 05:13:40', '1986-05-12 15:02:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 0, 101, '1991-05-13 12:11:20', '1992-08-21 15:42:28', '1989-11-23 14:41:32', '2016-08-26 08:55:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 0, 106, '1996-08-11 05:12:26', '2010-12-28 16:17:18', '1979-02-20 17:48:46', '2002-02-08 16:13:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 0, 101, '1976-12-04 05:50:28', '1981-09-16 06:34:09', '2006-09-12 03:00:29', '2014-09-30 10:17:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 0, 106, '2020-07-15 07:29:53', '2007-02-23 02:43:26', '1981-01-17 14:17:35', '2009-10-06 17:16:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 0, 101, '2010-09-05 21:33:21', '2000-04-16 12:40:46', '1990-04-27 10:48:42', '2013-12-03 02:40:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 0, 106, '2020-05-29 06:27:03', '1978-02-23 01:49:36', '1995-10-12 12:21:07', '2019-11-28 01:54:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 0, 101, '1979-10-31 01:54:02', '2007-03-03 21:00:01', '1994-08-29 04:43:37', '2008-02-15 07:00:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 0, 106, '2000-06-03 11:25:45', '1997-12-29 01:49:56', '2004-02-27 22:05:57', '2000-07-11 17:52:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 0, 101, '1974-08-15 19:52:40', '2011-02-17 04:52:38', '1998-01-08 03:40:26', '2009-06-12 03:04:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 0, 106, '1994-04-11 13:02:22', '1990-08-19 23:10:58', '2013-07-14 17:16:43', '2017-11-14 08:54:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 0, 101, '1985-03-29 05:19:26', '1978-01-05 22:03:11', '1989-12-02 19:04:55', '1971-03-24 18:16:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 0, 106, '2018-08-29 00:38:28', '1976-12-16 04:54:29', '1990-07-21 12:02:15', '2000-08-22 00:56:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 0, 101, '1973-05-27 09:16:25', '1997-08-02 19:02:23', '1973-08-10 06:02:24', '2014-07-09 13:53:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 0, 106, '1991-07-26 05:33:45', '2018-10-09 15:02:47', '1998-12-23 21:45:10', '1982-11-29 21:47:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 0, 101, '1984-05-10 16:15:23', '1974-06-21 14:54:45', '2013-11-22 14:26:23', '2017-02-13 02:10:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 0, 106, '1971-12-27 12:46:28', '1988-12-19 23:32:31', '1985-04-11 07:53:21', '1995-02-21 22:16:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 0, 101, '1999-10-18 07:37:53', '1976-02-16 03:40:18', '2017-12-24 01:34:23', '2012-02-03 20:43:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 0, 106, '1997-02-25 19:02:06', '1985-01-29 04:52:39', '1986-01-29 19:39:28', '2004-06-12 05:48:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 0, 101, '2016-09-28 02:27:37', '2017-03-14 04:37:30', '2003-09-14 05:11:33', '1985-10-23 23:32:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 0, 106, '1986-07-04 22:11:25', '1974-06-16 06:18:04', '1974-09-24 03:56:47', '2016-04-22 01:10:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 0, 101, '2019-11-21 01:34:15', '1993-10-27 10:41:15', '1984-03-24 18:56:10', '1989-08-05 22:57:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 0, 106, '1985-05-23 18:19:47', '1982-08-09 04:27:21', '1970-04-26 00:15:16', '1993-10-11 06:58:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 0, 101, '1998-11-18 16:10:12', '1972-04-25 00:46:10', '2011-11-30 13:34:52', '1983-02-03 12:29:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 0, 106, '1995-09-27 18:49:47', '1996-02-21 02:10:29', '2014-01-28 06:10:44', '2004-01-05 14:06:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 0, 101, '2016-12-26 01:13:46', '2015-09-20 09:57:22', '2009-10-05 17:10:34', '1981-03-18 22:15:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 0, 106, '2016-06-07 17:01:33', '1972-12-18 18:27:37', '2008-07-16 15:27:08', '2012-11-24 03:59:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 0, 101, '1983-02-21 07:52:22', '1994-01-21 02:29:59', '1984-04-13 11:56:16', '2010-07-12 14:50:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 0, 106, '1979-04-19 02:52:10', '1986-05-07 05:38:50', '1980-02-08 18:42:38', '1984-06-21 00:51:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 0, 101, '1983-12-24 18:43:51', '1990-12-14 02:07:16', '1995-01-05 21:12:27', '2015-02-12 04:57:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 0, 106, '2020-08-06 07:36:42', '1970-10-08 03:06:20', '2018-07-24 14:44:58', '2018-01-22 03:26:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 0, 101, '1974-09-10 07:30:32', '2010-05-14 17:31:53', '1982-04-16 08:49:05', '2014-02-02 13:26:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 0, 106, '2016-06-08 13:46:47', '2004-08-12 15:05:42', '1992-10-06 16:26:58', '1981-01-30 19:02:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 0, 101, '2017-12-12 10:42:59', '1987-10-31 02:10:37', '1974-06-12 17:54:38', '1974-10-02 20:20:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 0, 106, '2015-01-20 16:16:21', '1982-09-26 18:53:06', '1971-07-01 10:45:08', '1997-10-27 21:09:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 0, 101, '1994-08-17 06:17:05', '1992-07-21 15:25:30', '1993-11-09 23:17:54', '2020-07-30 12:31:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 0, 106, '1971-09-27 01:11:55', '1979-12-26 05:01:52', '1970-01-22 08:15:33', '1992-05-20 18:14:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 0, 101, '1996-05-11 09:48:09', '2002-08-29 03:26:39', '2003-06-15 18:24:11', '1989-07-18 20:32:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 0, 106, '2001-09-20 20:48:01', '2005-08-09 14:19:22', '1988-06-06 07:11:30', '1971-07-30 04:42:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 0, 101, '2019-11-03 07:43:15', '1989-06-29 02:43:23', '1973-11-04 14:41:53', '1974-06-12 05:31:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 0, 106, '1982-10-03 03:55:37', '2011-04-08 06:02:47', '2018-12-11 10:10:26', '2002-01-28 12:47:39');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'not friend', '2005-04-29 11:17:40', '2004-06-27 18:34:40');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (106, 'friend', '1999-12-27 06:12:14', '1971-09-22 20:44:39');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'aqzn', 3, NULL, 101, '2014-12-10 04:36:56', '2018-10-17 19:30:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'daer', 9, NULL, 102, '1976-03-27 15:37:53', '1974-12-09 00:55:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'acgj', 7, NULL, 103, '1984-01-24 10:05:37', '1990-03-27 05:02:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'qhey', 1, NULL, 101, '2012-10-29 07:04:29', '1990-08-13 18:09:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'ergy', 4, NULL, 102, '1978-05-19 20:14:09', '2005-05-05 13:48:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'hapf', 1, NULL, 103, '1978-11-03 21:43:17', '1999-08-21 11:12:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'humw', 3, NULL, 101, '1992-06-20 05:35:56', '1998-03-20 02:53:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'bjuw', 2, NULL, 102, '2007-05-30 23:36:30', '2003-02-27 10:55:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'iahv', 0, NULL, 103, '2007-07-06 13:23:08', '2009-02-19 04:54:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'ujzg', 2, NULL, 101, '2014-06-05 19:26:05', '1974-06-08 11:50:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'wucm', 2, NULL, 102, '1999-04-09 22:04:44', '2009-11-16 14:03:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'piek', 9, NULL, 103, '2014-06-22 10:17:53', '2003-04-03 18:57:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'yeff', 8, NULL, 101, '2015-06-17 14:13:28', '2013-10-14 05:30:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'taci', 1, NULL, 102, '1986-06-01 07:30:37', '1999-12-27 03:50:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'bqrl', 1, NULL, 103, '1976-08-20 19:15:19', '2016-08-24 15:19:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'jlme', 1, NULL, 101, '1972-10-05 14:43:48', '1970-04-27 08:24:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'tukm', 5, NULL, 102, '1997-03-20 08:21:39', '1971-01-15 11:34:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'tzvq', 1, NULL, 103, '1993-09-29 05:23:09', '1994-06-07 09:04:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'xkgd', 0, NULL, 101, '1971-07-30 04:17:18', '1999-12-01 13:30:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'fddg', 1, NULL, 102, '2019-12-08 05:29:10', '2007-08-03 21:42:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'pfzc', 2, NULL, 103, '1997-11-08 17:56:38', '2000-09-18 00:31:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'udtx', 5, NULL, 101, '1990-06-21 12:58:44', '2016-01-22 14:34:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'dgzm', 7, NULL, 102, '1986-05-03 00:40:56', '1972-06-11 21:26:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'sujm', 6, NULL, 103, '1982-03-10 08:55:28', '1990-12-26 13:45:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'fxxq', 0, NULL, 101, '2012-04-26 15:04:28', '1980-09-04 21:18:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'svqh', 3, NULL, 102, '1988-09-13 21:09:25', '1972-05-17 13:36:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'ihtu', 8, NULL, 103, '2011-02-05 01:49:59', '1982-01-17 22:02:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'zddx', 1, NULL, 101, '1970-11-12 14:10:05', '1992-04-18 00:18:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'nxbx', 6, NULL, 102, '1991-08-10 16:27:39', '1975-05-07 05:43:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'jnuu', 1, NULL, 103, '1998-09-03 04:55:56', '2014-11-09 08:44:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'ppys', 1, NULL, 101, '1987-06-23 05:20:51', '2002-03-14 18:54:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'pyqm', 9, NULL, 102, '1973-09-19 12:35:00', '1971-10-18 00:36:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'bjwv', 5, NULL, 103, '1985-10-24 17:59:44', '1974-10-09 07:41:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'wgdz', 0, NULL, 101, '1978-10-27 00:33:02', '1989-05-13 17:02:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'zwde', 8, NULL, 102, '1979-08-16 01:19:12', '1987-06-18 13:48:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'uqcc', 5, NULL, 103, '1974-03-23 01:09:47', '1999-01-19 17:00:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'gnwj', 2, NULL, 101, '2001-11-20 09:48:32', '1999-06-29 15:15:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'pyae', 7, NULL, 102, '2000-10-14 01:04:21', '1990-02-04 07:56:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'aqik', 1, NULL, 103, '2019-07-12 08:34:58', '1972-01-29 23:19:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'kfhc', 4, NULL, 101, '1985-05-16 16:46:37', '2016-04-07 21:51:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'jyto', 0, NULL, 102, '2003-01-03 08:19:07', '1975-03-10 07:09:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'ikql', 5, NULL, 103, '2014-08-11 10:55:50', '2011-07-18 22:51:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'lzpa', 6, NULL, 101, '2013-12-14 08:16:35', '1985-07-23 23:18:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'pmyu', 0, NULL, 102, '2002-01-21 17:27:17', '1979-05-05 03:39:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'ttoy', 6, NULL, 103, '2019-08-31 02:24:58', '2009-12-16 05:30:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'krbl', 7, NULL, 101, '1979-12-17 12:35:47', '1998-08-28 14:32:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'oslj', 7, NULL, 102, '1992-05-18 10:43:03', '1979-09-07 02:42:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'atmy', 4, NULL, 103, '2000-01-13 11:34:49', '2015-04-17 13:41:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'vbmd', 3, NULL, 101, '2011-12-28 19:03:37', '1982-08-14 21:29:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'wjuv', 0, NULL, 102, '2017-04-07 18:38:46', '1977-10-30 04:29:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'yspj', 9, NULL, 103, '1975-11-14 10:37:55', '2013-12-11 22:29:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'bebz', 0, NULL, 101, '2000-04-04 07:50:55', '1978-05-05 23:49:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'efap', 5, NULL, 102, '2004-07-02 15:05:09', '1990-10-07 15:59:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'ythx', 1, NULL, 103, '1998-05-21 08:01:31', '2017-04-25 08:28:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'jjkd', 5, NULL, 101, '1989-10-12 15:03:37', '2008-12-30 18:51:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'rjji', 3, NULL, 102, '2019-02-08 11:03:35', '1992-03-09 06:28:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'rdpx', 3, NULL, 103, '2015-07-25 13:34:27', '1988-08-09 03:37:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'nceq', 0, NULL, 101, '2002-07-19 11:23:38', '1971-07-17 06:22:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'eman', 9, NULL, 102, '1978-10-25 22:28:43', '1979-02-08 15:20:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'cgel', 0, NULL, 103, '1970-07-21 13:21:56', '1980-09-14 06:47:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'phqx', 5, NULL, 101, '1974-07-09 18:13:28', '1984-09-27 09:00:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'cczx', 8, NULL, 102, '1990-09-24 19:40:17', '2013-10-01 17:04:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'gztr', 4, NULL, 103, '1980-08-01 07:31:15', '1988-02-27 05:22:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'zneg', 5, NULL, 101, '1971-12-06 16:30:13', '1995-10-27 04:04:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'jctt', 4, NULL, 102, '2019-06-01 19:36:40', '1999-02-15 03:10:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'ynqq', 5, NULL, 103, '1973-12-24 15:40:55', '2017-03-18 21:59:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'bdrt', 4, NULL, 101, '1976-08-02 16:02:33', '1989-05-29 13:22:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'uavz', 5, NULL, 102, '1971-02-20 22:53:27', '1993-05-07 15:41:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'olhl', 9, NULL, 103, '1986-10-07 03:09:45', '2007-09-23 15:24:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'clbj', 6, NULL, 101, '1973-09-30 06:06:24', '2019-06-14 07:40:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'dtzj', 3, NULL, 102, '2009-02-06 14:27:02', '1989-02-11 21:44:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'jhzg', 9, NULL, 103, '1976-07-27 22:01:52', '1985-01-24 04:36:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'udvl', 1, NULL, 101, '2012-08-19 19:50:16', '1980-01-26 03:46:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'dzge', 3, NULL, 102, '1971-07-29 06:42:20', '1993-02-10 00:14:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'whou', 0, NULL, 103, '1997-04-11 09:51:27', '1988-09-11 08:34:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'tlld', 4, NULL, 101, '1994-04-04 23:10:41', '2018-06-11 13:43:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'xmip', 4, NULL, 102, '2007-02-04 17:09:24', '1989-10-16 02:50:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'uduy', 8, NULL, 103, '2020-04-20 14:26:44', '2015-06-25 00:12:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'lwlt', 8, NULL, 101, '2010-04-06 21:41:23', '2010-10-06 03:31:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'mfhn', 7, NULL, 102, '2017-07-02 05:16:02', '1998-01-29 17:16:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'nfiy', 9, NULL, 103, '2017-12-30 06:01:43', '2011-02-12 04:11:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'kyib', 1, NULL, 101, '2003-02-06 12:00:32', '2011-10-21 21:09:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'kigr', 7, NULL, 102, '1981-02-22 05:39:21', '1971-04-03 10:09:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'lyqf', 7, NULL, 103, '1993-11-10 19:02:13', '1999-04-04 14:17:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'jemu', 0, NULL, 101, '2011-06-25 03:05:07', '1981-12-21 09:10:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'ikvq', 9, NULL, 102, '2001-10-24 17:22:18', '1994-07-11 20:03:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'jyhw', 0, NULL, 103, '1975-04-30 01:34:35', '2019-02-24 12:32:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'bnun', 0, NULL, 101, '2001-09-04 06:57:00', '2010-12-02 23:33:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'zoaa', 6, NULL, 102, '1994-12-15 19:21:00', '1985-08-03 17:24:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'ayem', 8, NULL, 103, '2003-07-08 22:29:26', '1989-05-22 06:45:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'scub', 7, NULL, 101, '1970-12-19 03:24:38', '1989-03-17 19:43:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'qbxs', 9, NULL, 102, '1998-01-25 13:02:01', '1984-04-20 01:51:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'ppnq', 2, NULL, 103, '1985-12-23 19:03:53', '2005-08-03 04:00:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'lfhq', 9, NULL, 101, '1986-03-25 07:43:07', '1970-12-10 06:37:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'orwa', 0, NULL, 102, '1984-11-08 20:42:10', '2009-07-31 15:03:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'gnnj', 9, NULL, 103, '2006-04-19 05:27:51', '1978-01-28 05:27:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'dpyf', 2, NULL, 101, '2002-04-20 10:57:18', '2019-11-03 19:59:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'dfjp', 9, NULL, 102, '2009-08-04 00:32:11', '1998-11-05 01:36:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'qpse', 6, NULL, 103, '2000-09-23 17:47:51', '1976-04-16 09:50:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'zvvi', 3, NULL, 101, '1989-06-27 14:57:58', '2018-12-22 13:26:35');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (101, 'image', '1998-06-12 18:13:18', '1970-04-06 21:05:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (102, 'music', '1981-01-18 08:47:56', '2008-05-07 14:07:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (103, 'video', '1985-05-12 04:42:27', '2004-02-24 07:04:04');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 9, 'Molestiae voluptatum totam cum rerum non et. Nemo optio enim suscipit repellendus totam labore. Veritatis est animi consequuntur cumque enim. Ab excepturi inventore sed voluptatem possimus perferendis. Qui repellat reiciendis perferendis necessitatibus et.', 0, 0, '2007-08-22 13:15:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 12, 'Dolores reiciendis ut accusantium tempore quo occaecati animi. In voluptatem quos sit quis.', 0, 0, '2016-05-06 03:36:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 83, 'Dolores necessitatibus ut sunt. Consectetur ad amet consequatur autem eum provident alias. Autem nostrum expedita ad at maiores iste.', 0, 0, '2017-06-06 12:41:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 49, 'At doloremque necessitatibus exercitationem minima delectus voluptatem ut. Et deleniti ipsa non ea qui distinctio.', 0, 0, '2007-05-28 19:00:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 38, 'Dolorem est consequatur et ut dolores libero. Rerum nostrum possimus neque maiores. Odio dolores dolor ut eveniet repellendus.', 0, 0, '1997-07-21 18:30:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 29, 'Ut laboriosam nulla aut et iste. Qui aut hic molestias at. Laboriosam a consequatur aliquam aut. Ad et non est labore.', 0, 0, '2006-05-25 19:18:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 66, 'Voluptatem modi nihil temporibus. Eum enim sunt reprehenderit accusantium quasi inventore aspernatur nisi. Delectus consequuntur enim non laudantium sed.', 0, 0, '1980-10-27 19:06:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 2, 'Beatae perferendis id architecto aut eaque voluptates odit. Ut facere quia hic fuga corporis suscipit. Eum ea architecto et. Velit optio dignissimos molestiae enim et harum dolore.', 0, 0, '1985-10-15 12:41:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 25, 'Tenetur omnis quas fugit. Vel dignissimos fuga excepturi totam exercitationem autem. Aut sed aperiam aspernatur ipsum.', 0, 0, '1974-07-28 09:21:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 31, 'Unde nam et deleniti consectetur saepe. Sit voluptatibus aut aut nostrum nam modi quibusdam. Quos soluta enim placeat culpa. Consequatur rerum voluptatem consequatur necessitatibus nam facilis magni.', 0, 0, '1998-03-22 20:05:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Adipisci modi ducimus veniam dignissimos eveniet aut praesentium. Odit nobis quo est illum voluptatibus. Quis reprehenderit ut nam maxime cum.', 0, 0, '1984-04-08 12:42:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 64, 'Quaerat id dolorem corrupti expedita. Laudantium eos quo adipisci neque. Sint harum quia harum ut. Iste voluptatibus consectetur consectetur et cupiditate perspiciatis.', 0, 0, '2004-05-25 14:46:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 75, 'Architecto commodi est adipisci amet ut. Maiores sint non quia. Nihil at corrupti qui molestiae.', 0, 0, '2003-07-17 13:20:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 37, 'Libero voluptatem natus odio enim. Corporis tenetur nesciunt praesentium ea omnis ratione voluptatum ratione. Soluta sit corporis qui odio sed qui nemo. Sit quibusdam labore quod culpa modi sit rerum atque.', 0, 0, '2017-02-01 16:37:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 74, 'Cum quo et quae in sunt nostrum quisquam et. Ut modi pariatur adipisci molestiae enim. Sapiente et dolor ut dolores facilis quia provident. Quas voluptatem perferendis impedit corrupti eum adipisci enim impedit.', 0, 0, '2016-03-09 16:26:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 36, 'Numquam et nihil sed officia. Perspiciatis aut blanditiis repellendus beatae. Rerum aut laboriosam et enim et. Voluptate hic ad at.', 0, 0, '1991-03-31 10:08:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 10, 'Consequatur unde quas aliquid eligendi consectetur. Non quo omnis rerum sapiente velit. Saepe tempora totam temporibus commodi officia. Sint et et omnis similique non modi sed.', 0, 0, '1998-02-26 07:50:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 86, 'Recusandae nisi eum est enim dolorem repudiandae. Sit quia illum accusamus qui. Ut assumenda ex ducimus.', 0, 0, '1971-08-25 10:43:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 59, 'Modi quas culpa deleniti et quo quia. Architecto consectetur officiis voluptatum minus. Tempora omnis fuga facilis. Quis est amet aut rem.', 0, 0, '2012-07-10 14:08:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 88, 'Velit perferendis vero quia consequatur eum aut. Ut est vitae fugiat. Vel quo non molestiae. Ea necessitatibus voluptatem omnis labore. Facere recusandae reiciendis sit eligendi quisquam eos quae.', 0, 0, '2014-07-03 08:02:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 72, 'Est nobis ducimus aut eos harum temporibus quo iure. Earum voluptas beatae enim explicabo libero earum omnis optio. Eveniet provident consequatur excepturi nihil minus. Sit fuga quibusdam rem qui nulla corrupti incidunt.', 0, 0, '1987-05-25 11:38:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 71, 'Est qui dolorum repellat sunt. Vero odit nihil sit odio rerum. Officiis eaque odio commodi et error.', 0, 0, '2000-03-11 06:09:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 68, 'Velit corporis ut et qui. Ipsa mollitia accusantium distinctio accusamus quo quo libero. Aliquam dolor est itaque sit est.', 0, 0, '1990-05-31 03:42:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 34, 'Necessitatibus deserunt blanditiis nesciunt voluptatem. Voluptatum at modi dignissimos blanditiis voluptate nemo modi. Et ut molestias qui rerum in et amet debitis. Voluptas ut et aliquam deserunt possimus libero. Voluptate itaque aliquam quam cum est doloremque suscipit corrupti.', 0, 0, '1986-09-30 07:20:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 12, 'Laboriosam quia vero aut aut ullam voluptatem iusto. Sunt aut illo sequi sed dolores labore. Animi numquam culpa mollitia rerum veritatis aut. Facilis ex minus quae quam labore dolorum saepe.', 0, 0, '2003-10-28 13:53:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 71, 'Numquam delectus et corrupti molestiae. Atque voluptatem dolorem ad modi molestiae natus eos et. Voluptatem at molestiae nemo consequuntur sed.', 0, 0, '1982-01-22 23:25:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Est dolore rem nisi assumenda commodi. Atque nesciunt totam et temporibus qui perferendis. Voluptates et et assumenda voluptatem beatae enim.', 0, 0, '1987-03-30 11:15:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 65, 'Quia harum quas repellendus vel iure aut alias ducimus. Provident reiciendis vitae rerum quo ea consectetur. Culpa recusandae corrupti nihil aliquam eos ut impedit.', 0, 0, '1971-02-20 22:10:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 70, 'Expedita dolorem mollitia quisquam aperiam quo nam rerum. Distinctio voluptas odio laboriosam deleniti non rerum. Quas in dolores qui qui. Et aliquam fuga natus quam quibusdam.', 0, 0, '1992-09-17 13:36:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 71, 'Voluptas dolor quod tempore aut accusamus aperiam. Molestiae repudiandae ab a. Non odio in fugiat cum quos.', 0, 0, '1995-12-17 11:43:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 42, 'Fuga placeat doloribus earum rerum dolore ut. Et dolores non eaque natus fugiat ex. Iure et voluptas ratione et.', 0, 0, '1982-11-18 06:08:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 21, 'Maxime repudiandae quia quod quibusdam natus. Consequatur dignissimos quod dolores earum eius et eius. Sint molestiae ipsum enim reprehenderit non natus ab. Eius omnis voluptas corporis.', 0, 0, '1984-12-15 06:52:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 12, 'Et laudantium voluptas delectus vel voluptatem ullam quod. Quasi mollitia qui consectetur. Voluptatibus non a ad hic suscipit ut voluptas.', 0, 0, '1983-04-12 12:57:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 35, 'Corporis alias quae et quam. Ea veniam odit odit qui autem voluptatem qui. Autem nihil nobis modi hic cum maiores molestias.', 0, 0, '1975-01-26 10:01:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 18, 'Ut sit ut ipsum quae odio rem. Et vero consectetur quibusdam molestiae sapiente alias nihil. Est temporibus atque repellendus et. Quo alias nisi illo. Id dolor reprehenderit consectetur.', 0, 0, '2012-01-04 18:33:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 52, 'Recusandae dolor consequatur est necessitatibus. Officiis pariatur commodi exercitationem dignissimos. Autem eveniet incidunt facilis qui sed sunt qui. Eveniet minus rerum illum et. Tenetur aut voluptas beatae aut.', 0, 0, '2001-01-25 03:13:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 65, 'Dolores ullam quia aut quidem saepe voluptate incidunt. Error dicta earum eos omnis consectetur. Atque fugit natus tenetur rerum excepturi maiores. Adipisci quis modi molestias quia qui perferendis odio.', 0, 0, '2012-03-10 10:38:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 43, 'Quibusdam aut aut qui velit explicabo necessitatibus. Neque veritatis optio at quis sapiente quia illo. Aut magnam voluptatibus aut veritatis quisquam ut fugiat.', 0, 0, '2010-11-23 21:51:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 25, 'Qui perspiciatis nam aut alias. Et ut voluptas nihil consequatur nam iste similique. Consequatur nemo impedit voluptatum dolores harum.', 0, 0, '1991-09-01 08:06:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 37, 'Enim rerum autem nam dignissimos a. Id nostrum et impedit ut. Quisquam eos asperiores omnis et qui porro dolorem. Eos sed vel quos quaerat cupiditate qui hic. Aut voluptatum quia sint voluptatem eaque non non.', 0, 0, '1987-10-25 22:28:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 60, 'Voluptates quos ipsam libero error itaque accusamus. Voluptatem nihil maxime ut et quia dolore. Officia nemo autem voluptatum non dicta dolorem. Nihil nihil sit voluptates perspiciatis necessitatibus enim libero.', 0, 0, '2018-11-02 07:56:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 75, 'Exercitationem et alias est quae quasi repudiandae. Vel facilis voluptas aspernatur ut. Praesentium rerum aut quo hic. Pariatur id omnis voluptas veniam. Non est quo iusto dolorum sed voluptates assumenda unde.', 0, 0, '1986-09-26 03:49:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 89, 'Sed nesciunt est laudantium blanditiis accusamus dignissimos. Sit et harum non unde beatae eum possimus. Omnis esse est ut harum. Rerum eveniet et inventore tenetur dignissimos eos.', 0, 0, '1996-12-19 03:05:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 81, 'Aut soluta odit rerum provident sit. Reiciendis iusto similique voluptatem ea in. Deleniti facilis quia dolorem nihil recusandae. Ipsam aut error iure blanditiis alias.', 0, 0, '2013-11-10 02:23:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 92, 'Deserunt et deserunt ratione quos. Est molestiae molestiae consequatur eligendi. Autem quia enim voluptatem aut.', 0, 0, '1986-03-16 13:08:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 51, 'Ut ipsa reiciendis accusantium nostrum. Et praesentium et vel autem quasi doloremque dicta sequi. Impedit et optio aut dolores quae ea et. Incidunt inventore quam rerum cumque.', 0, 0, '1983-08-06 09:39:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 67, 'Maxime et ut incidunt velit eos expedita. Quas nostrum fuga aliquid sit voluptas enim. Corrupti harum assumenda nihil pariatur rerum et. Facere nisi quam doloremque voluptatum quae dolor.', 0, 0, '2019-03-22 20:56:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 99, 'Error est illum nam optio et officiis. Velit asperiores optio nulla rem tempore officia sit. Et laboriosam fugiat ipsam perferendis. Dolorem quia corporis cumque ut repudiandae nam eos.', 0, 0, '1970-12-02 04:39:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 91, 'Quia facere modi et. Qui distinctio suscipit rerum aut odit quo ut. Dolor id repellendus laborum.', 0, 0, '1984-06-03 03:13:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 66, 'Perspiciatis accusantium est quas assumenda necessitatibus fugit. Est eos molestias eligendi repellendus eligendi soluta. Repellendus omnis aut qui. Facilis dolores non corrupti.', 0, 0, '1995-05-07 08:54:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 19, 'Odit eum vero autem saepe quo voluptas aut est. Molestias cupiditate magni nihil. Laudantium voluptatum eum sint similique.', 0, 0, '2001-07-22 06:06:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 72, 'Dignissimos ducimus minus impedit ipsum. Quod aliquam tempore sit quibusdam. Inventore aut eos quo dicta enim explicabo et ea. Exercitationem quia maiores asperiores neque cum.', 0, 0, '1972-09-28 07:56:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 26, 'Similique dolorem nihil commodi et facilis eos sed. Et iusto impedit rerum eaque. Ab a delectus hic quibusdam. Est explicabo et dolor ea at.', 0, 0, '2014-11-09 07:23:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 37, 'Quia aut omnis dolores iure. Enim saepe aperiam quaerat aliquam. Eaque et ipsam quo alias sint et. Sint expedita consequatur explicabo maxime.', 0, 0, '2016-09-21 09:24:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 10, 'Repudiandae ab voluptates repudiandae recusandae. Laborum et neque maiores nihil. Vero sunt recusandae harum reiciendis. Ut praesentium id ullam ducimus in quis hic.', 0, 0, '1983-08-19 08:03:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 40, 'Rerum dignissimos labore ab et sed voluptatem et enim. Qui ut qui qui omnis odio sit facilis fugit.', 0, 0, '2008-07-28 04:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 80, 'Non voluptatem pariatur assumenda et vel. Aut sint quis voluptas nihil repudiandae amet velit. Dignissimos nesciunt harum repellendus.', 0, 0, '1994-04-18 16:05:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 10, 'Sed asperiores esse commodi tempora voluptatem molestiae. Amet vel quasi ut harum mollitia earum. Qui tempora sapiente est est consequuntur aliquam. Dolorem possimus dolore voluptas non nesciunt consequatur.', 0, 0, '2007-08-23 04:22:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 81, 'Voluptatem enim repellat quis rerum dolore repellendus. Ducimus magni est ad sequi consequatur enim dolorem. Eos accusantium libero voluptatum.', 0, 0, '1984-11-15 17:23:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 41, 'Voluptatem sed culpa quidem fugit rem. Quia aut ipsum numquam. Consequuntur laudantium dolorem eligendi accusamus.', 0, 0, '2019-04-21 13:17:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 44, 'Et qui earum ipsa praesentium quia sapiente. Ut at fugit illo quo voluptatum nemo accusamus. Et dolores ipsam sit voluptatem deleniti aut hic.', 0, 0, '1991-06-20 09:00:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 5, 'Nihil voluptas aliquid ut deserunt aut iste. Tempore dolor laudantium architecto explicabo. Aut maxime iure aliquam commodi nulla unde et. Hic dolorem laudantium optio quidem minima beatae.', 0, 0, '1974-12-21 18:10:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 72, 'Sunt nihil ut temporibus est nesciunt. Fugiat voluptas voluptatibus in incidunt quis culpa fuga. Aut vero quia quia. Dolor cumque autem dolorum est. Quia et ut consequatur incidunt repellendus sit qui sint.', 0, 0, '2014-06-12 20:03:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 35, 'Aut omnis itaque consectetur qui eligendi earum id laborum. Deserunt tenetur qui sed. Et dolores repellat voluptatibus id ab.', 0, 0, '2005-11-24 04:19:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 45, 'Ut provident vel esse quidem et laboriosam. Nesciunt consequatur omnis ea corrupti quo voluptatum ab. Eius repudiandae et ex vel.', 0, 0, '2001-04-07 16:56:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 41, 'Corrupti debitis est facilis non quam laudantium. Laudantium debitis nihil sint odit iure. Sit ducimus aut temporibus cum possimus aliquam nostrum. Magni qui eos id ducimus rerum sunt amet.', 0, 0, '1999-02-06 08:37:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 60, 'Voluptatem placeat temporibus repellendus perspiciatis facere. Et eos repellat ut culpa enim non non. Voluptatibus qui vel consequatur ratione corporis est.', 0, 0, '2010-05-02 10:16:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 18, 'Delectus esse doloribus aut enim accusamus odio praesentium. Repellat aut sint et non molestiae quidem. Voluptates et expedita saepe repellendus ratione aspernatur quia. Necessitatibus amet sit placeat repellendus tempora consectetur et provident.', 0, 0, '1992-05-08 01:30:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 90, 'Accusamus quasi quia ducimus aliquid ea est. Voluptatem sit consequatur et dolorum soluta doloribus. Sequi ipsam aut voluptates.', 0, 0, '1977-12-04 15:26:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 49, 'Occaecati optio tenetur placeat magni. Iste assumenda magnam tempora similique. Iure molestiae laboriosam cupiditate est accusantium eum. Rerum ab quibusdam ea. Totam sed aliquam ut omnis totam.', 0, 0, '1992-04-27 08:18:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 83, 'Voluptatem voluptatem vero totam iure. Vero veritatis eum molestiae et distinctio qui in. Illum neque provident totam.', 0, 0, '2010-01-21 12:01:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 91, 'Qui voluptas unde aut et. Qui eum rerum id. Vel odit ut corporis sapiente explicabo. Velit cumque et possimus recusandae perferendis necessitatibus.', 0, 0, '1994-07-08 03:04:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 47, 'In architecto sunt et facilis delectus reprehenderit. Quaerat quo quibusdam facere et. Commodi sint nihil vel nihil. Voluptatem inventore nihil et omnis rerum.', 0, 0, '1991-03-18 00:37:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 39, 'Ipsa soluta perspiciatis ut modi nam amet dolorem. Quod possimus quia beatae neque recusandae et qui. Ea fugit et nam dolor esse. Aspernatur dolores dolorem adipisci nesciunt molestiae aut consequatur.', 0, 0, '2002-07-05 09:30:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 84, 'Est quo sequi in et animi quam. Eum qui sit voluptas numquam voluptatem est deleniti. Illo et sequi velit quia. Vel earum expedita quisquam praesentium est perspiciatis.', 0, 0, '1971-05-21 15:02:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 9, 'Repudiandae aliquam ut rerum numquam ut. Nisi sed minus dolores ipsa quia aut eius. Exercitationem voluptatem molestiae asperiores omnis enim nesciunt. Rerum quasi id laborum ab.', 0, 0, '1986-05-02 18:40:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 44, 'Aspernatur iure culpa sequi vero non. Placeat cumque expedita quas est molestiae. Sapiente eos voluptatem quis exercitationem.', 0, 0, '1995-05-04 03:53:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 73, 'Veniam et pariatur debitis modi accusamus id. In suscipit sit quo beatae. Et a sunt veritatis. Possimus aut nulla accusantium asperiores.', 0, 0, '1976-02-15 12:40:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 84, 'Molestiae vitae occaecati dolore commodi quasi tenetur assumenda. Beatae iusto et quasi molestiae unde eos laborum. Id similique cupiditate autem. Voluptatem at optio consequatur est ut nihil.', 0, 0, '1982-08-18 05:38:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 61, 'Quis eum sunt sit optio magnam in dolores. Placeat voluptatem dolor et quo soluta. Recusandae animi quis ullam est repudiandae. Voluptatibus ut non occaecati autem est.', 0, 0, '2005-03-27 14:10:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 0, 'Accusamus rem totam aut voluptas nobis aut. Facere laboriosam voluptates id expedita excepturi earum officiis et. Quidem tempora magni in quia. Quos cum expedita veniam omnis aut et. Minus ea ratione illo necessitatibus adipisci pariatur nostrum.', 0, 0, '2017-07-11 00:06:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 78, 'Iure sint et architecto possimus amet. Unde quidem eum itaque aperiam. Eius quaerat delectus aut.', 0, 0, '2006-03-24 08:38:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 44, 'Deleniti ut occaecati sit quidem sed ut tempore. Dignissimos voluptatem aperiam corporis et voluptatem et sint. Eum labore ea ut velit ut tempora omnis quam.', 0, 0, '2013-10-25 19:26:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 53, 'Molestias eligendi eum ea aliquam ipsam. Illo aperiam corrupti velit provident et sequi quo. Eum quod error sit consequatur ut. Fugit tenetur modi sint voluptatem.', 0, 0, '2014-01-22 14:12:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 91, 'Quas laudantium error rem vel quis reprehenderit quas. Doloribus dolorem vel molestias maxime molestiae quis. Voluptas neque voluptatum amet occaecati iure.', 0, 0, '2009-07-30 21:25:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 89, 'Optio ut voluptates sapiente aliquid consequuntur. Labore maxime consequatur nam quia accusamus consequatur omnis temporibus. Aliquid deserunt occaecati sapiente fugiat amet qui voluptatem. Voluptates assumenda distinctio corrupti repellendus.', 0, 0, '2011-01-26 07:09:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 10, 'Impedit qui nostrum rem incidunt deleniti ab. Voluptatem perspiciatis id ullam. Nam qui maiores dolorem.', 0, 0, '1976-01-16 10:48:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 33, 'Quae corrupti necessitatibus illo eius. Consectetur nisi est doloremque voluptas fuga dolore laboriosam. Fugit facere expedita autem eveniet mollitia fuga rem. Rem quo omnis est.', 0, 0, '1981-02-18 17:08:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 36, 'Qui beatae aliquam iusto harum ut dolores. Ipsa labore quis eum id dolore natus voluptatem. Aut omnis aut eveniet rerum in consequatur non. Rem ut error consectetur.', 0, 0, '1992-03-04 16:46:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 38, 'Necessitatibus iure fuga autem sequi est aut tenetur. Laborum nobis sit sapiente dolor pariatur a dignissimos. Reiciendis nesciunt voluptatem officiis impedit. Accusamus sed temporibus officia id quae.', 0, 0, '1979-08-19 21:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 74, 'In doloribus nulla et est autem sunt et. Veritatis odio et neque mollitia odio. Id quia possimus facilis ipsam. Sapiente consequuntur voluptatum similique perferendis.', 0, 0, '1993-05-23 13:49:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 80, 'Quo voluptas eius et facilis consequatur unde. Ad praesentium officia nam beatae. Officiis laudantium nam hic nostrum et. Non quis est quod et. Et sit enim inventore veritatis vitae est.', 0, 0, '1986-10-22 10:43:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 19, 'Tempore necessitatibus quia nihil laboriosam. Molestias fugiat commodi provident nostrum quia. Quam doloremque repudiandae mollitia.', 0, 0, '1988-08-15 02:36:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 46, 'In iure nesciunt dolore ducimus et quia. Modi aut labore cum. Et in ut rerum libero enim. Id consectetur aliquid est quia voluptates tempora voluptatem dolorem.', 0, 0, '2018-02-13 04:58:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 50, 'Et ea officiis ex magnam accusantium distinctio vitae. Ipsum assumenda aperiam autem eos eos quos in. Dolore eligendi et eligendi molestias eligendi. Impedit veniam illo eos odio consequuntur vel fugiat velit.', 0, 0, '1975-03-11 13:26:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 32, 'Quibusdam corporis et quos porro nulla placeat quis. Et laboriosam aut placeat alias neque. Sed distinctio ipsum velit ut repudiandae voluptate est.', 0, 0, '1995-03-04 20:48:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 27, 'Molestias voluptas sit sed sit. Accusantium odit doloremque quam labore. Ratione nam omnis quod possimus minus minima unde.', 0, 0, '1977-12-02 03:50:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 39, 'A facilis ea tempora quaerat. Est qui officiis dolor in corrupti.', 0, 0, '2016-09-03 21:59:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 42, 'Minima culpa repellendus dolorem dolorem optio numquam enim. Earum pariatur officia non iste alias excepturi. Iste fugit molestiae qui architecto aperiam commodi doloremque. Incidunt quo culpa voluptas et rerum quos inventore.', 0, 0, '1983-09-28 12:36:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 30, 'Quis id non odit et aut rem reiciendis illo. Quia commodi eum quisquam saepe. Consequuntur facere veritatis molestiae dolore aspernatur veritatis voluptas.', 0, 0, '1998-07-06 20:46:36');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'f', '1986-12-21', 'Orlochester', 'Bermuda', '1991-06-16 09:47:30', '1985-04-23 14:04:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1983-07-28', 'West Garrick', 'Guyana', '2004-09-30 19:19:55', '1996-06-26 01:26:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'm', '1982-12-24', 'Howefort', 'Spain', '1986-07-05 14:17:08', '2010-06-17 14:54:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'm', '1974-02-05', 'Lake Audra', 'Equatorial Guinea', '1980-10-04 16:32:36', '1990-07-26 10:02:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'm', '2009-12-11', 'Elisemouth', 'Canada', '1993-08-19 10:44:40', '2009-05-07 09:39:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1970-02-08', 'Adrianamouth', 'Norfolk Island', '2017-10-08 20:13:20', '1979-04-02 17:20:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'm', '1977-04-14', 'New Lorenaberg', 'Papua New Guinea', '2002-10-12 05:28:19', '1983-12-23 13:33:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'f', '2016-01-12', 'Hiramshire', 'Swaziland', '2007-02-08 22:32:08', '2009-08-31 10:02:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'f', '1985-02-04', 'East Esther', 'Wallis and Futuna', '2013-10-05 23:29:42', '2015-03-18 17:58:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'f', '1971-01-21', 'New Bryanaburgh', 'Anguilla', '2013-02-17 13:37:08', '2006-03-19 08:12:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'f', '1978-07-06', 'Leilastad', 'Turkey', '2018-06-18 19:14:28', '2007-01-14 21:15:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'm', '1991-12-13', 'Port Judgeside', 'Macedonia', '2002-09-05 17:37:27', '2003-01-21 05:39:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'f', '1999-03-27', 'Haneborough', 'Greenland', '2007-05-14 13:51:48', '2011-03-02 16:25:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'f', '1985-07-18', 'Kaleshire', 'Nepal', '2001-02-27 12:46:32', '1985-07-09 00:23:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'f', '1979-10-11', 'Floshire', 'Hungary', '1982-12-06 15:59:19', '1979-07-29 05:59:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'm', '2019-06-28', 'Columbusberg', 'Guatemala', '1980-03-09 08:51:03', '2000-10-18 20:54:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'm', '1991-05-10', 'Port Julius', 'Norfolk Island', '1974-10-27 19:31:31', '1994-03-06 14:07:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'm', '1978-06-16', 'Boyerfurt', 'Cook Islands', '1989-01-04 22:58:50', '2002-02-27 16:14:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'm', '2007-07-24', 'Rathberg', 'Saint Barthelemy', '2020-02-23 16:10:52', '1989-04-11 19:25:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'm', '1971-12-24', 'West Lindseychester', 'Madagascar', '1990-05-26 03:36:12', '1996-07-22 00:56:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'm', '1978-04-19', 'East Pattie', 'British Virgin Islands', '1979-12-05 20:38:42', '2000-11-08 17:49:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'f', '1977-05-14', 'Josiahmouth', 'Austria', '1986-06-14 15:08:29', '1972-03-31 17:53:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'f', '1996-09-15', 'Curtisstad', 'Rwanda', '1975-01-21 02:00:13', '1994-08-13 19:30:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'f', '2015-05-23', 'Alecfurt', 'Gabon', '1998-09-22 08:53:28', '2011-04-23 19:38:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'm', '2011-09-27', 'Shanelfort', 'Germany', '1995-05-11 07:25:41', '1987-10-16 09:27:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'f', '2004-08-26', 'Kihnside', 'Zambia', '1986-02-21 05:28:37', '2012-02-03 05:16:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'f', '2003-07-07', 'Yasmeenton', 'Micronesia', '1995-06-29 19:40:49', '1985-09-26 22:09:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'f', '1999-07-17', 'Fanniefurt', 'Mali', '1978-07-06 08:55:33', '1993-04-02 17:59:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'm', '1996-08-31', 'South Adellashire', 'Sierra Leone', '2013-12-31 16:51:27', '1997-10-08 05:00:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'm', '2000-03-23', 'Elwinshire', 'Suriname', '2012-03-17 13:43:50', '1991-01-18 11:29:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'm', '1996-07-09', 'Amosport', 'Italy', '1971-07-28 12:41:06', '2005-04-11 19:26:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'f', '1988-07-24', 'Port Mariano', 'Philippines', '2019-03-27 18:32:35', '1983-12-05 22:27:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'f', '1970-04-10', 'Treutelmouth', 'Mali', '1986-03-27 15:21:53', '2000-10-07 06:58:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'm', '2007-09-26', 'Osinskitown', 'Oman', '2000-08-05 21:21:19', '2018-11-22 08:56:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'f', '1981-05-31', 'North John', 'Poland', '1981-12-06 12:41:38', '1985-07-09 15:01:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'm', '1985-03-26', 'Wittingbury', 'Azerbaijan', '2009-09-24 11:56:49', '1977-10-01 09:26:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'm', '1981-11-13', 'Vallieville', 'Poland', '2011-07-13 01:04:07', '1980-04-25 14:12:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'f', '1975-02-02', 'Hauckfurt', 'Romania', '1992-05-24 05:34:27', '1994-11-20 07:06:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'm', '1986-03-01', 'Wymanton', 'South Africa', '1993-03-20 05:41:14', '1993-05-15 11:39:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'm', '2001-12-08', 'Drewfort', 'Madagascar', '1999-06-06 07:42:29', '2006-06-26 16:55:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'm', '1989-09-18', 'Whitneyview', 'Ukraine', '1999-09-28 06:05:52', '1979-04-30 10:05:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'f', '2020-10-04', 'North Garryshire', 'Tunisia', '1973-06-18 16:58:01', '1997-07-10 15:26:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'm', '1992-11-28', 'New Tyra', 'Niue', '2002-11-11 06:29:35', '1970-12-15 12:57:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'f', '2005-05-10', 'Desmondborough', 'Jersey', '2015-03-30 14:21:41', '1976-11-03 04:57:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'm', '2004-07-21', 'New Maurice', 'Senegal', '1979-08-24 00:19:44', '1998-11-17 12:38:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'm', '1972-06-22', 'South Franz', 'Bulgaria', '1979-05-17 18:18:12', '2014-08-22 04:02:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'f', '1985-05-07', 'Bernardside', 'Niue', '1999-01-05 21:09:50', '1972-09-26 04:57:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'f', '2012-03-05', 'Grantside', 'Kazakhstan', '1987-12-05 02:46:22', '2011-11-27 01:34:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'f', '1970-06-26', 'New Brandiborough', 'Serbia', '1994-02-20 10:52:07', '2009-04-27 15:25:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'm', '2010-01-13', 'New Justice', 'Spain', '2000-12-10 22:17:03', '1973-09-01 09:43:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'm', '2001-10-20', 'North Manuelaburgh', 'Cayman Islands', '2015-08-22 18:30:52', '2007-08-01 01:28:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'm', '1994-08-11', 'New Chad', 'Pitcairn Islands', '2015-09-20 03:58:57', '1992-04-15 02:53:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'f', '1983-11-10', 'West Anibal', 'Hong Kong', '1990-05-26 13:52:42', '1995-03-04 03:01:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'm', '1978-04-02', 'New Kian', 'Andorra', '1982-09-30 09:52:09', '1978-01-12 06:27:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'f', '2015-03-16', 'Port Shayna', 'Wallis and Futuna', '1997-04-08 03:59:15', '1988-10-06 10:10:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'f', '2005-03-16', 'North Janie', 'Colombia', '1987-06-24 09:08:03', '2016-05-30 20:04:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'm', '1995-09-03', 'Sipesfurt', 'Cocos (Keeling) Islands', '1977-06-23 20:39:26', '1986-11-20 11:27:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'f', '1999-12-01', 'West Earlene', 'Australia', '1994-07-30 12:23:38', '1996-09-17 05:05:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'm', '2017-08-14', 'Penelopefurt', 'Myanmar', '2000-01-18 20:29:01', '2007-11-21 12:33:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'f', '1984-03-20', 'East Aureliashire', 'Sao Tome and Principe', '2008-10-10 04:31:10', '1995-04-02 07:31:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'f', '1996-08-23', 'Margotland', 'Spain', '1991-03-06 12:42:32', '1990-08-15 03:34:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'f', '2018-09-11', 'Port Rhodatown', 'Slovakia (Slovak Republic)', '1971-03-06 10:54:18', '2015-03-05 14:31:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'm', '2004-04-22', 'Lake Eliseside', 'Argentina', '2011-11-12 14:57:21', '1998-01-20 05:58:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'f', '1991-01-24', 'New Marcelotown', 'Oman', '2008-02-28 22:00:13', '1990-08-13 18:35:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'f', '2002-02-14', 'Langview', 'Martinique', '1998-06-08 04:26:45', '1980-04-08 08:04:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'f', '2015-04-11', 'South Ryann', 'Bolivia', '1976-12-13 00:06:58', '1973-05-19 00:46:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'f', '2012-10-29', 'Maudehaven', 'Guam', '2016-07-21 01:29:58', '1994-09-26 15:04:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'm', '1989-12-21', 'Maciton', 'Bermuda', '1991-04-08 02:11:00', '1988-04-28 15:18:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'm', '1980-05-15', 'Cheyanneland', 'Panama', '1994-06-12 17:01:17', '2009-08-26 15:49:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'f', '2005-09-23', 'East Corbin', 'Eritrea', '2001-11-25 02:42:33', '2012-06-19 17:38:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'm', '2018-06-22', 'New Santinachester', 'Bermuda', '1976-03-27 23:32:40', '1982-11-24 21:53:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'f', '1975-06-13', 'Lake Keven', 'Gambia', '2013-01-20 07:14:40', '2013-03-26 21:53:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'm', '1989-01-20', 'Kaleyfort', 'Myanmar', '2007-12-18 19:04:06', '1984-06-28 21:07:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'm', '1994-01-26', 'Ziemeport', 'Mauritius', '1987-01-17 16:43:48', '1998-03-20 12:24:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'f', '2010-05-06', 'Grahamville', 'Italy', '1993-11-12 14:48:51', '1979-11-10 21:10:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'm', '1980-02-19', 'Jeanetteland', 'Guadeloupe', '1972-12-21 18:21:50', '1978-11-09 09:44:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'm', '1980-12-10', 'Jaylanfurt', 'Chad', '2000-06-28 07:09:18', '1981-09-03 19:14:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'f', '2016-06-18', 'Daphneyshire', 'United States Virgin Islands', '2019-04-01 02:49:41', '2011-01-15 14:47:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'm', '2016-07-26', 'East Haylie', 'Sri Lanka', '1980-08-21 07:08:53', '1991-05-09 00:12:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'm', '2006-08-02', 'North Anaisburgh', 'Central African Republic', '1995-02-22 15:03:43', '1992-05-16 14:00:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'm', '1971-06-20', 'Greenholtbury', 'Mexico', '2014-10-19 06:47:49', '2009-11-13 05:14:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'm', '1989-03-03', 'Ricardofort', 'Paraguay', '1970-06-02 21:49:39', '1987-01-03 06:48:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'm', '1988-08-17', 'Jaceland', 'Switzerland', '2010-02-22 22:38:29', '1987-08-17 04:13:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'm', '1977-07-18', 'East Taraburgh', 'Qatar', '2000-11-04 17:40:56', '2011-09-19 06:00:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'f', '2011-11-17', 'Kautzermouth', 'Montenegro', '2015-12-25 12:21:09', '1982-06-14 05:58:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'm', '1992-03-05', 'Port Godfreystad', 'Macedonia', '1977-01-13 05:10:45', '2011-01-19 01:00:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'm', '2004-07-23', 'East Adelia', 'Hong Kong', '2000-08-09 07:54:17', '2003-09-06 05:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'f', '2019-09-04', 'Lewiston', 'Macedonia', '1982-06-29 01:10:09', '2006-06-17 15:05:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'm', '2007-12-24', 'Everettfort', 'Kazakhstan', '1973-01-23 04:20:20', '1984-01-02 11:15:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'm', '2015-06-26', 'Armstronghaven', 'Mongolia', '1996-12-27 07:54:18', '2001-07-29 04:36:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'f', '2008-06-09', 'Boscomouth', 'Nepal', '1987-04-12 19:15:47', '1992-05-15 13:51:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'm', '2015-03-07', 'Lake Cierraport', 'Guadeloupe', '1981-11-25 01:46:36', '1999-05-02 23:42:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'f', '1998-10-10', 'D\'Amorebury', 'Chad', '2006-12-11 12:29:37', '1976-12-18 03:22:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'm', '1985-06-08', 'Natashastad', 'Peru', '2020-04-22 12:32:52', '2010-03-01 16:34:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'f', '2010-12-11', 'Cartwrightmouth', 'American Samoa', '2013-11-13 06:26:34', '2002-06-21 02:20:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'f', '1993-11-26', 'South Jarret', 'Korea', '1984-09-11 19:54:31', '2020-09-06 17:01:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'm', '2020-11-01', 'Ullrichtown', 'Tonga', '1997-09-03 15:08:07', '1994-10-03 15:44:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'f', '2014-02-09', 'Port Edna', 'Greenland', '2010-11-25 15:58:53', '2007-08-16 05:05:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'm', '2019-02-23', 'East Wellington', 'Maldives', '2013-07-31 22:46:16', '2008-02-12 21:06:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'f', '1977-05-27', 'Hirtheton', 'Cayman Islands', '1991-10-18 09:02:09', '1980-09-30 20:48:43');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Bulah', 'Wiza', 'breana.sanford@example.net', '1-008-358-1411', '1986-07-31 06:39:01', '2012-08-05 09:47:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Chris', 'O\'Kon', 'jerrell.stanton@example.com', '1-731-417-8569', '1972-07-31 10:47:33', '1990-05-14 17:40:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Hayley', 'Spinka', 'adams.carley@example.org', '+71(9)1626195651', '2007-03-16 21:15:14', '1997-09-06 20:03:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Annamae', 'Senger', 'mcclure.trever@example.net', '509.619.1172', '1990-01-14 13:40:08', '2009-09-13 20:03:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Kenyon', 'Collier', 'qbayer@example.com', '1-230-873-2887x3839', '2002-07-03 15:47:10', '2007-07-13 09:01:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Emelia', 'Sanford', 'bherman@example.net', '876.092.7161x0418', '2002-06-06 14:56:36', '2015-02-07 06:23:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Micheal', 'Hartmann', 'braulio.bahringer@example.org', '(640)573-9954', '2008-07-03 07:32:27', '2012-05-22 10:18:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Dortha', 'Grant', 'gklocko@example.net', '(321)774-7502', '1995-10-17 15:46:22', '1982-01-06 19:14:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Jamey', 'Huels', 'llehner@example.org', '05889284573', '1985-05-24 15:32:39', '1993-11-01 11:20:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Bell', 'Tromp', 'becker.carlee@example.com', '(227)398-6646x554', '1998-06-12 14:56:26', '2017-03-31 22:30:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Rickie', 'Upton', 'sawayn.jovanny@example.org', '664.838.0465x85950', '1970-11-22 16:59:41', '1979-05-17 08:19:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Imani', 'Hartmann', 'caden08@example.com', '(557)510-3829x068', '1973-07-06 10:26:04', '2010-10-22 13:47:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Drew', 'Bartell', 'bins.karianne@example.com', '957.661.2151', '2004-02-08 11:16:49', '1974-05-21 01:32:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Eduardo', 'Kub', 'brielle54@example.com', '1-841-984-0022', '1985-06-08 00:04:53', '1971-03-12 21:13:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Loma', 'Funk', 'lindgren.nathanial@example.org', '301.515.8126x320', '1988-09-15 23:29:26', '1971-10-31 10:59:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Alexander', 'Hoeger', 'jconroy@example.net', '1-156-406-5930', '1979-11-25 02:53:54', '2005-07-12 15:51:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Faye', 'Gibson', 'avon@example.net', '879.936.0717x114', '1986-11-19 08:01:28', '1999-06-10 09:12:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Jessyca', 'Ratke', 'dayton87@example.net', '(578)406-3253x3844', '2014-05-18 17:32:02', '1982-11-28 10:16:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Claude', 'West', 'llewellyn86@example.org', '652.628.2613x47775', '2005-10-15 10:45:38', '2010-05-08 06:01:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Katlyn', 'Terry', 'ugorczany@example.net', '07512309172', '2010-06-04 08:21:38', '2010-03-22 01:13:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Deontae', 'Fisher', 'frederik.dickens@example.com', '211-329-1192', '1999-04-24 12:20:57', '1977-04-09 22:26:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Jena', 'O\'Keefe', 'della.corkery@example.org', '(958)357-4831x098', '1992-04-21 08:39:17', '2012-11-17 10:48:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Kasey', 'Bergnaum', 'althea44@example.org', '1-925-898-3682', '2016-12-25 13:49:45', '2011-12-11 08:58:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Keenan', 'Wuckert', 'dianna41@example.org', '567.420.5707x48861', '1983-09-03 11:42:27', '1997-10-23 22:19:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Leonardo', 'Roberts', 'colton.jones@example.com', '(650)410-8358x6272', '1998-09-06 14:43:02', '1991-08-12 18:11:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Giovani', 'Nitzsche', 'braulio91@example.org', '1-710-070-3344x3547', '1999-11-07 23:49:25', '2008-06-25 13:10:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Meaghan', 'Shields', 'koepp.barton@example.com', '(052)602-8468', '1987-11-15 16:46:32', '2016-01-12 18:22:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Jess', 'Marvin', 'lynn12@example.com', '(936)264-1142', '2005-03-16 13:10:38', '1978-01-16 17:35:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Lily', 'Bashirian', 'mquitzon@example.org', '392-136-1282x671', '2000-02-01 08:06:46', '1995-11-11 07:43:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Cortney', 'West', 'itzel.farrell@example.net', '01301205808', '1993-12-08 00:55:48', '1987-12-20 13:39:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Roderick', 'Purdy', 'corwin.shyann@example.org', '+82(9)1872195910', '2012-06-06 14:47:20', '1986-11-23 15:21:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Marley', 'Weissnat', 'nayeli.king@example.net', '074.625.5171x936', '1979-05-27 11:43:07', '1977-07-15 17:43:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Carter', 'Bosco', 'oconn@example.org', '091-139-8870', '2020-01-29 06:36:40', '1993-05-25 20:46:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Antwan', 'Bauch', 'edickens@example.com', '+22(2)1067800754', '2011-12-28 05:08:40', '1976-08-12 08:05:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Dawson', 'Rodriguez', 'psenger@example.org', '778.364.6687', '2000-01-14 10:47:30', '1976-12-18 02:56:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Rowena', 'Wolff', 'prosacco.abigail@example.com', '253.253.0105x80395', '2017-11-27 23:50:39', '1991-07-05 00:02:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Kyra', 'Hane', 'balistreri.hosea@example.org', '+94(3)6577863387', '1993-08-11 04:47:36', '2017-12-29 04:18:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Breana', 'Friesen', 'gutkowski.letha@example.net', '06982144219', '2004-03-28 16:35:46', '1991-08-21 03:46:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Laron', 'Ferry', 'ohills@example.net', '(488)696-3750x146', '1974-11-16 07:27:06', '1972-08-25 19:20:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Elvera', 'Tromp', 'emmanuel.runolfsdottir@example.com', '1-723-297-6775x39606', '2020-10-01 00:16:01', '2009-01-30 23:51:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Ida', 'Prosacco', 'frida.willms@example.com', '250-547-8113x77031', '2015-03-10 20:22:16', '1999-01-01 04:23:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Kareem', 'Wolf', 'clementina.abernathy@example.com', '+59(2)1942353381', '1977-03-20 15:03:53', '1995-04-29 06:06:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Fae', 'Sauer', 'morissette.laurel@example.com', '(449)889-1963x15795', '2002-11-08 20:31:04', '1983-11-29 04:32:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Cathy', 'McLaughlin', 'krista34@example.com', '(360)272-7322', '2012-11-08 09:47:20', '1988-06-24 01:24:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Wilma', 'Treutel', 'enrico76@example.net', '322.715.9259x0547', '2001-05-16 03:39:59', '2013-02-28 18:16:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Nikki', 'Schmitt', 'cordelia.hartmann@example.net', '1-261-544-3400', '1998-04-28 23:07:38', '2009-02-07 15:41:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Daphney', 'Upton', 'millie99@example.org', '217.556.6966x5962', '1982-02-25 22:01:41', '1987-02-01 02:28:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Ted', 'Quitzon', 'sparker@example.net', '155.606.9965x714', '1970-07-19 04:14:11', '1986-07-01 11:03:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Reba', 'Reichert', 'joaquin.renner@example.org', '01370815299', '1983-12-01 15:16:56', '1982-02-06 12:17:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Imogene', 'Bernhard', 'sasha.murray@example.com', '+53(7)4288498043', '1985-09-05 09:32:06', '1984-01-07 05:14:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Katherine', 'Ratke', 'camren34@example.net', '1-912-822-1513x3236', '2009-10-14 16:15:39', '1977-12-11 16:01:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Danial', 'Osinski', 'walker73@example.com', '904.669.0884x82602', '2000-03-31 09:57:11', '1992-05-01 12:59:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Alysa', 'McLaughlin', 'meda47@example.com', '690.487.7003', '1993-01-30 07:36:02', '1974-07-04 17:42:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Raquel', 'Yundt', 'pfannerstill.stephen@example.com', '(676)729-9051', '2017-12-27 04:13:35', '1984-02-13 18:19:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Garrison', 'Weber', 'ltorphy@example.com', '700-081-1808x1879', '1975-04-27 23:30:07', '2011-12-09 22:33:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Joy', 'Schamberger', 'qhansen@example.net', '(902)064-4568', '1979-06-22 11:06:40', '1996-08-01 17:05:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Dallin', 'Mann', 'maia81@example.com', '611-405-1347x98710', '1998-03-24 13:47:05', '1995-11-01 18:17:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Alexie', 'Stiedemann', 'lang.tom@example.org', '131-054-0775', '2004-12-01 09:10:40', '1970-04-27 08:32:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Jared', 'Reichel', 'zander.brown@example.org', '1-893-435-6632', '1986-09-11 15:33:40', '2000-03-09 14:17:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Jalen', 'Kautzer', 'carlee.wiza@example.net', '(815)293-0984x27011', '1992-07-05 17:52:00', '1990-03-08 08:46:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Greg', 'Von', 'ariane26@example.org', '1-981-904-5942x55528', '2006-10-21 04:54:33', '1990-05-12 02:29:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Dina', 'Kassulke', 'tsenger@example.org', '098-303-4234x46334', '1975-10-17 14:07:37', '2006-04-07 15:00:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Tia', 'Yundt', 'nikolaus.travon@example.net', '434-412-4264x40908', '2008-01-25 13:48:07', '2015-04-03 19:03:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Griffin', 'Hammes', 'sarah69@example.net', '148-235-8618x54169', '2006-08-28 09:23:20', '1998-10-17 15:43:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Thelma', 'Crist', 'sonny.kirlin@example.com', '1-436-926-7372', '1986-11-15 18:00:06', '1977-12-26 16:20:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Angelina', 'Russel', 'hwisoky@example.net', '724.870.6087', '1992-07-20 15:26:03', '2017-04-28 21:47:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jayson', 'Lebsack', 'emelia.abbott@example.net', '+42(4)4050429157', '1985-01-16 12:59:48', '2010-09-10 00:48:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Micaela', 'Roob', 'yundt.adella@example.net', '(162)721-9890', '1988-12-07 13:18:11', '1996-11-06 03:37:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Breanne', 'O\'Connell', 'cecelia.o\'keefe@example.net', '(278)059-4111', '2005-08-13 02:38:11', '2010-06-30 16:00:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Ferne', 'Thompson', 'vkuhn@example.org', '678.491.1023x9895', '1977-02-12 07:39:23', '1988-07-25 19:55:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Maeve', 'Toy', 'toy.flo@example.com', '1-324-607-7956x967', '1992-06-05 16:01:37', '1976-08-07 18:13:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Marjolaine', 'Parker', 'dakota23@example.com', '07066779976', '2007-07-27 23:39:48', '1980-02-24 08:02:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Velma', 'Hyatt', 'hegmann.jacklyn@example.com', '612-003-8622x5200', '1979-07-09 09:19:19', '2015-11-10 03:08:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Rhea', 'Wolf', 'destiney74@example.net', '02419504416', '2011-09-01 21:28:48', '2001-12-20 09:03:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Jeanette', 'Jaskolski', 'karianne.marvin@example.net', '558-626-9630', '1988-10-26 13:08:47', '1977-11-23 10:46:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Elyssa', 'Legros', 'rubie.johnston@example.com', '(887)904-1371x3092', '1978-08-13 13:00:22', '1997-06-11 14:31:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Mohammad', 'Marquardt', 'fheller@example.com', '521-159-0062x9292', '1991-07-19 23:49:54', '2015-09-30 19:47:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Akeem', 'Hegmann', 'zgleason@example.org', '1-985-977-4667x6567', '2018-06-17 17:01:42', '2018-03-03 11:44:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Stuart', 'Batz', 'arvilla.beer@example.com', '+81(5)3922946119', '2001-10-12 19:01:04', '1995-04-17 02:56:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Haven', 'Reynolds', 'amaya36@example.org', '1-898-618-9519x331', '2009-04-27 00:22:12', '1975-02-07 23:19:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Sandy', 'Rutherford', 'umccullough@example.net', '+95(9)2895339503', '2018-06-16 20:19:11', '2003-09-15 22:50:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Stuart', 'Kiehn', 'dare.crystal@example.net', '037.479.8167', '1998-03-23 22:27:40', '1976-05-27 23:12:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Richard', 'Jacobs', 'hartmann.tillman@example.net', '808.414.0461x2791', '1971-08-13 11:04:56', '1971-07-27 18:33:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Myrl', 'Tillman', 'rhianna93@example.org', '+11(0)4628958852', '1977-08-01 21:42:52', '1981-12-17 15:38:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Josianne', 'Hermiston', 'art.lindgren@example.org', '02750223104', '2000-02-05 00:19:32', '2014-11-28 07:18:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Abdul', 'Weissnat', 'kbruen@example.net', '993.294.6075', '2007-02-04 11:06:15', '1980-12-25 00:13:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Jonathon', 'McClure', 'wreichel@example.com', '147.507.3838x562', '1972-05-24 01:21:01', '2012-01-19 20:55:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Ari', 'Greenfelder', 'rkulas@example.org', '468-593-3837', '2009-03-29 17:37:26', '1972-06-08 20:46:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Oran', 'Johns', 'dietrich.anika@example.net', '046.985.1704', '2017-12-13 16:52:42', '2011-09-08 05:36:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Juvenal', 'King', 'brody35@example.org', '147.565.9728x0533', '2019-10-16 23:40:03', '2016-04-25 12:01:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Lafayette', 'Moen', 'manuela.ziemann@example.org', '03841394834', '1972-09-20 11:44:30', '1973-08-21 04:47:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Zion', 'McKenzie', 'bziemann@example.com', '414.745.7368', '1973-08-07 20:53:32', '2011-11-01 04:36:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Benjamin', 'Ratke', 'mario32@example.net', '+25(6)1472986670', '1989-08-01 13:53:50', '2010-05-29 20:30:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Stefanie', 'Maggio', 'gkeebler@example.org', '261.285.6359', '1970-01-09 02:30:50', '1995-09-28 17:48:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Ethyl', 'Kling', 'anastacio.schmeler@example.com', '723-628-0650x64099', '1996-12-11 12:52:00', '2011-01-25 08:39:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Bertram', 'Fahey', 'glover.lionel@example.com', '496.807.7795', '2010-04-05 04:45:32', '2015-07-16 11:56:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Jose', 'Reilly', 'reichel.judah@example.com', '104-499-9392x4903', '1998-08-29 07:28:07', '1990-07-19 16:05:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Otha', 'Cummerata', 'joanny90@example.org', '383.887.7642', '1982-04-23 13:32:33', '2003-03-11 04:19:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Annamarie', 'McGlynn', 'baumbach.donavon@example.org', '553.893.9680', '1978-05-08 11:19:38', '1973-10-22 01:00:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Aditya', 'Grant', 'tanner.hauck@example.net', '653-228-7170x0053', '1979-08-04 12:25:08', '2000-11-03 05:41:08');


