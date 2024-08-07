USE main_db;

SET NAMES utf8mb4;

START TRANSACTION;

INSERT INTO `department` VALUES ('日本語日本文学科'), ('歴史学科'), ('歴史遺産学科'), ('国際英語学科'), 
            ('児童教育学科'), ('総合心理学科'), ('経済学科'), ('経営学科'), ('情報工学科'), ('建築デザイン学科'), 
            ('看護学科'), ('理学療法学科'), ('作業療法学科'), ('救急救命学科'), ('臨床検査学科');

COMMIT;

START TRANSACTION;

INSERT INTO `tag` VALUES ('共通'), ('人文科学'), ('社会科学'), ('理・工・農学'), ('医・歯・薬・家政学');

COMMIT;

START TRANSACTION;

INSERT INTO `users` VALUES (10000001, 'a601023136', 'キムラ', '情報工学科', 2, NOW(), NOW()),
                            (10000002, 'a601023226', 'タナカ', '情報工学科', 2, NOW(), NOW()),
                            (10000003, 'a601023418', 'ミズタニ', '情報工学科', 2, NOW(), NOW());

COMMIT;

START TRANSACTION;

INSERT INTO `class_info` VALUES ('abc000a0', 2024, '前期', '月', 1, 'test_class', 'a', '日本語日本文学科', '橘　太郎', 1),
                                ('a60102d1', 2024, '前期', '火', 2, 'データ構造とアルゴリズム', 'a', '情報工学科', '東野　輝夫', 2),
                                ('a60102e950', 2024, '後期', '月', 1, 'AIプログラミング', 'a', '情報工学科', '西出　俊', 2);

COMMIT;

START TRANSACTION;

INSERT INTO `serv_info` VALUES ('10000001', '共通', 'UNIVERSAL PASSPORT', 'https://unipa.tachibana-u.ac.jp/uprx/');

COMMIT;

START TRANSACTION;

INSERT INTO `thread_type` VALUES ('board'), ('class_info'), ('support');

COMMIT;

START TRANSACTION;

INSERT INTO `room` VALUES ('public', 100), ('large', 20), ('medium', 10), ('small', 5);

COMMIT;

START TRANSACTION;

INSERT INTO `thread` (`title`, `overview`, `room_size`, `current_NoP`, `thread_type`) VALUES 
('test', 'テストのスレッド', 'large', '1', 'board');

COMMIT;

START TRANSACTION;

INSERT INTO `comment` (`user_id`, `body`, `post_date`, `thread_id`) VALUES 
('10000001', 'テストコメント', now(), '1');

COMMIT;

START TRANSACTION;

INSERT INTO `accounts` VALUES (1, 10000001, 'mail1@example.com', '$2y$10$ViZvhMF.Mgqw0xwsJMvlu.D74LIgWl5uFURpdk0vN6FlpeDiUKpFe'),
                                (2, 10000002, 'mail2@example.com', '$2y$10$KLtpYtCY3JP5iFx.XC0Lj..N/fsupe8XnznRLQu5jwFq8cSKW0Wle'),
                                (3, 10000003, 'mail3@example.com', '$2y$10$E2HWlrf6ECWyO.XlqTDUM.7rG.uE2iZWTucwEQAm6iNsUWTCvPvcG');

COMMIT;