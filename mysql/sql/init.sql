DROP SCHEMA IF EXISTS shukatsu;
CREATE SCHEMA shukatsu;
USE shukatsu;
-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- ホスト: db
-- 生成日時: 2022 年 5 月 26 日 07:36
-- サーバのバージョン： 8.0.27
-- PHP のバージョン: 8.0.15
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- データベース: `shukatsu`
--
-- --------------------------------------------------------
--
-- テーブルの構造 `admin_login`
--
CREATE TABLE `admin_login` (
  `id` int NOT NULL,
  `email` text NOT NULL,
  `login_password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `admin_login`
--
INSERT INTO `admin_login` (`id`, `email`, `login_password`) VALUES
(1, 'email@email', '$2y$10$4NDL25xbvDDnk/Xmgywluug.focPjCiGpgL8psMotMkyeX3YcA72G');
-- --------------------------------------------------------
--
-- テーブルの構造 `agents`
--
CREATE TABLE `agents` (
  `id` int NOT NULL,
  `corporate_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insert_company_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `started_at` date DEFAULT NULL,
  `ended_at` date DEFAULT NULL,
  `login_email` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_pass` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `to_send_email` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `application_max` int NOT NULL,
  `charge` int NOT NULL,
  `client_name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `client_department` text NOT NULL,
  `client_email` text NOT NULL,
  `client_tel` text NOT NULL,
  `insert_logo` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insert_recommend_1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insert_recommend_2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insert_recommend_3` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `insert_handled_number` text NOT NULL,
  `list_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `agents`
--
INSERT INTO `agents` (`id`, `corporate_name`, `insert_company_name`, `started_at`, `ended_at`, `login_email`, `login_pass`, `to_send_email`, `application_max`, `charge`, `client_name`, `client_department`, `client_email`, `client_tel`, `insert_logo`, `insert_recommend_1`, `insert_recommend_2`, `insert_recommend_3`, `insert_handled_number`, `list_status`) VALUES
(1, '株式会社キャリセン', 'キャリセン就活エージェント', '2022-05-01', '2025-05-01', 'kyari@k', '$2y$10$hMrq80SW3OfR.FZnO3kOPOXJ8kqnVVEjhWHrLgtZkiAgkUb5xR/oi', 'kashiken@gmail.com', 0, 1000, '鹿島健太', '広報部', 'kirin.myk2018@gmail.com', '0809000300', '20220522060636_st-logo-careecen.png', '先輩利用者のES回答例や体験談もチェックできる', '初回から専任のコンサルタントと1時間じっくり面談', '累計6万人が利用してきた豊富な経験と実績', '1000', 3),
(2, '株式会社リクナビ ', 'リクナビ就職エージェント', '2022-05-19', '2022-05-11', 'rikunabi@com', '$2y$10$nr6NIa/HklHXr6Lm5sDYR.13z3kCAkdsqh9eD.bxIHblsonOOv4..', '', 1000, 1000, '', '', '', '', '20220522060246_rikunabi.jpg', '大手リクルートが運営するため求人数が多い', '非公開求人も多く、様々な業種から探しやすい', '週3～4回相談できるから不安を解消しやすい', '非公開', 2),
(3, 'NaS株式会社', ' DiG UP CAREER', '2022-05-19', '2022-06-09', 'dig@dig', '$2y$10$OkaSb2pISuNuBOyaQp8vxu5GqErapQA2B/cFn73dPe3zfQ1M6lMbC', 'dig@up', 50, 1000, '鹿島健太', 'カルチャー局', 'kashiken@kkkkkkk', '08011112222', '20220525090926_dig.png', '就活のプロ（元人事・人材会社出身）がLINEも使って親身になって手厚いサポート', '企業選び・自己理解のプロによる就活セミナーが受けられ、理解が深まる', '就活生に無理強いはしない寄り添ったサービスで、満足度90%超！友人紹介も60%超！', '3000', 1),
(4, '株式会社meets company', 'meets company', '2022-05-19', '2022-05-19', 'meets@com', '$2y$10$2mQ1u9d5AgnEetwTUGezLOmXwzl17JmeWWTXSgbJNBIkZcRS4Keum', '', 1000, 1000, 'テスト氏名', '', '', '', '20220522060525_meets.jpg', '年間1000回を超えるマッチングイベントを開催！', '東証一部上場企業からベンチャー企業まで豊富な企業数', '7拠点を中心に全国対応のため地方在住でも利用しやすい', '非公開', 2),
(5, '株式会社マイナビ', 'マイナビ新卒紹介', '2022-05-12', '2022-06-02', 'mainabi@com', '$2y$10$Us0.mv2xooOktQmtHxA7Fe3pNsZR0wf7jo3KYkEG/RMzn3ftngpva', 'mainabi@mainabi', 1000, 1000, '西山直輝', 'カルチャー局', 'naoki@kinketsu.co', '08011380033', '20220522062036_mainabi.jpg', '約46万人以上の学生が利用', '採用基準や面接情報を把握	', 'ここにしかない非公開求人に出会いたい人におすすめここにし', '50000', 1),
(6, 'Leverages', 'キャリアチケット', '2022-05-07', '2022-05-06', 'kirin.myk2018@gma', '$2y$10$G.z0WIWxPDDB/k0DBUadMu5QX7m669sYGzqWJqDepDYKI.hiRXICe', 'kashiken@gmail.com', 0, 1000, 'テスト氏名', '部署名', 'kirin.myk2018@gmail.com', '08090228045', '', 'エントリーシート（ES）の添削や面接対策を受けられる\r\n', '紹介企業を厳選。ブラック企業を避けられ、最短3日の内定実績もある', 'キャリアアドバイザーに無料で就活相談ができる\r\n', '4444', 2),
(7, '株式会社ネオキャリア', '就職エージェントNeo', '2022-05-12', '2022-05-27', 'email@email', '$2y$10$ekGCtPSYChjFpjd8AO7li.Rexz/H7poWOhDv1WFiYf/PiZTBu0KBC', 'kashiken@ddddd', 1000, 1000, '鹿島健太', 'カルチャー局', 'kkkkk@co.jp', '08099999999', '20220526030357_neo.png', 'イニシャル課金の送客サービスあり。1名15,000円～（希望人数やスペックによるため要問合せ）', '文系・理系・上位校・留学生・体育会系・地方学生など、幅広い領域をカバー', '業界のパイオニア的存在。学生登録数・紹介支援実績トップクラス', '10000', 1),
(8, 'レバテック株式会社', 'レバテック', '2022-05-10', '2022-05-27', 'leva@com', '$2y$10$tDVVGDG5d8.U06RwGEuZl.57WIR9rJmUoRXEbmbH5UcaG0inh4TiW', 'leverages@co.jp', 1000, 1000, '西山直輝', 'カルチャー局', 'naoki@kinketsu.com', '08070707070', '20220525072023_leva2.jpg', 'レバテック登録者実績20万人', 'エンジニアが利用したい転職エージェントNo.1', '志望度の高い企業は現場社員との面談も可能', '5000', 1);
-- --------------------------------------------------------
--
-- テーブルの構造 `agents_past`
--
CREATE TABLE `agents_past` (
  `id` int NOT NULL,
  `corporate_name` text NOT NULL,
  `started_at` date DEFAULT NULL,
  `ended_at` date DEFAULT NULL,
  `login_email` text NOT NULL,
  `login_pass` text NOT NULL,
  `to_send_email` text NOT NULL,
  `application_max` int NOT NULL,
  `charge` int NOT NULL,
  `client_name` text NOT NULL,
  `client_department` text NOT NULL,
  `client_email` text NOT NULL,
  `client_tel` text NOT NULL,
  `insert_company_name` text NOT NULL,
  `insert_logo` text NOT NULL,
  `insert_recommend_1` text NOT NULL,
  `insert_recommend_2` text NOT NULL,
  `insert_recommend_3` text NOT NULL,
  `insert_handled_number` text NOT NULL,
  `list_status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `agents_past`
--
INSERT INTO `agents_past` (`id`, `corporate_name`, `started_at`, `ended_at`, `login_email`, `login_pass`, `to_send_email`, `application_max`, `charge`, `client_name`, `client_department`, `client_email`, `client_tel`, `insert_company_name`, `insert_logo`, `insert_recommend_1`, `insert_recommend_2`, `insert_recommend_3`, `insert_handled_number`, `list_status`) VALUES
(1, '株式会社かしまホールディングス', '2022-05-01', '2025-05-01', 'kashiken@keio', '$2y$10$5h0y2/hKyYJC4gzxalcPUOrqwmvP77iGuBVh7uph0BFNnoO44jO4q', 'kashiken@gmail.com', 0, 10000, '鹿島健太', '広報部', 'kirin.myk2018@gmail.com', '0809000300', 'かしまホールディングス', '', '面接対策充実', '手厚い保障', '幅広い視点', '500000', 3),
(50, '新しいん', '2022-05-19', '2022-05-11', '', '$2y$10$wb6aGTheu53TWMX7GH1F2uWtSEn2UZv3OF5t6T7bQAWY0g/NsEpGO', '', 0, 0, '', '', '', '', '鹿島新しいん', '20220521100212_creer+.png', '', '', '', '', 2),
(52, '', '2022-05-19', '2022-05-26', '', '$2y$10$RzvzMOfCacQdoikAJDt7NO.fDfQb8CBIDgCzIYfBO/zmWOjV5njW.', '', 0, 0, '', '', '', '', '新規がどうなっているのか', '', '', '', '', '', 3),
(53, '', '2022-06-09', '2022-05-27', '', '$2y$10$VEgk3C3GKYwnCx1j6xRKEOwMnA75vJvdHOLdhnSBYDs3v/Uja3NFW', '', 0, 0, '', '', '', '', 'タグがあるやつ', '', '', '', '', '', 2),
(56, '( ,,`･&omega;･&acute;)ﾝﾝﾝ？', '2022-05-19', '2022-05-19', '', '$2y$10$P/JSsgHiy9v/EyVjtvVeZe.4OPIck9WCW9ntikJhUAWLiQCbAFQO2', '', 0, 0, 'テスト氏名', '', '', '', '顔文字は文字化けする', '', '', '', '', '', 2),
(57, '', '2022-05-14', '2022-06-07', 'kirin.myk2018@gmail.com', '$2y$10$Inw8mCmWKiduWlyrNXivseuv0tBWI85m8YKivBqBeHSCz4yp46ZT2', '', 0, 0, '', '', '', '', 'Email重複テスト成功', '', '', '', '', '', 3),
(58, '', '2022-05-12', '2022-06-02', '', '$2y$10$anQOqRDY0p4.F3A/1zCPC.mE5glDFfq0jNhnPdJaZV3gU/95FwDWu', '', 0, 0, '', '', '', '', 'メールなかったらどうなる？', '', '', '', '', '', 3),
(59, 'まえエラーで滝がする', '2022-05-07', '2022-05-06', 'kirin.myk2018@gma', '$2y$10$G.z0WIWxPDDB/k0DBUadMu5QX7m669sYGzqWJqDepDYKI.hiRXICe', 'kashiken@gmail.com', 0, 0, 'テスト氏名', '部署名', 'kirin.myk2018@gmail.com', '08090228045', '追加はでないが編集はでるんだっけ？', '', '', '', '', '', 2),
(60, '管理者ログイン', '2022-05-12', '2022-05-13', 'email@email', '$2y$10$ekGCtPSYChjFpjd8AO7li.Rexz/H7poWOhDv1WFiYf/PiZTBu0KBC', '', 0, 0, '', '', '', '', '管理者ログイン', '', '', '', '', '', 2),
(61, 'テスト', '2022-05-06', '2022-05-16', '', '$2y$10$g8Dfq5avhUrQ6qjFQD6cve3B9D7DKpe.Fnup6M6U4lmaPkHkKy7hS', '', 0, 0, '', '', '', '', '鹿島エージェント', '', '', '', '', '', 2),
(62, '株式会社feature', '2022-05-13', '2022-06-02', 'feature@mail', '$2y$10$lyUdsI01nmhwbDe7iPZfxuTIE.RA5/yrFwE7NCBcwwg2.sxQMgxP6', 'kashiken@gmail.com', 3, 0, '未来ひかり', '未来部', 'email@email', '0809999', 'featureエージェント', '20220524042630_recruit.png', '将来性', '貢献性', '確実性', '数千社', 1),
(63, '', '2022-05-13', '2022-05-27', '', '$2y$10$fFlwz7o3PGpQ9sAubJq6muLKulBsKHXvryzzML0qtja0AIFIzDVzq', '', 0, 0, '', '', '', '', 'var_dump掃き出し', '', '', '', '', '', 3),
(64, '', '2022-05-23', '2022-05-23', '', '$2y$10$WBEn/gOOkn20P7flddYBN.FWhyaVbLTI0TvgsK3wk4YONBg/8ySUe', '', 0, 0, '', '', '', '', 'なぜか日付', '', '', '', '', '', 2),
(65, '', '2022-05-14', '2022-05-22', '', '$2y$10$4AnsxJ6vI9HItPW/FAisSOjCvvNzIijICZAgcVDdug9JOd6ZzW13K', '', 0, 0, '', '', '', '', '掲載期間自動判定done', '', '', '', '', '', 2),
(66, '', '2022-05-12', '2022-05-23', '', '$2y$10$elet799ti5brJXk5DyyBROM5bL8iiriCb/FPK2YSHBETi7QOC4q4G', '', 6, 0, '', '', '', '', '掲載ｓます', '', '', '', '', '', 2),
(67, '', '2022-05-26', '2022-05-26', '', '$2y$10$UoaXy6IdpXSkVjtJ/4CttunVemVmkGdFq053W0sF3BOQE9hOJL9YO', '', 100, 10000, '', '', '', '', '請求金額表示テスト', '', '', '', '', '', 2),
(68, 'テスト', '2022-05-03', '2022-05-27', 'kashiken@ke', '$2y$10$7cugKqEVzIgS6G4M8gazEehVuJQ4K/reRYStRlKH29JzLaazMVuLO', 'kashiken@gmail.com', 0, 99, 'テスト氏名', '部署名', 'ooo@kk', '08090228045', '鹿島エージェント', '20220523225409_POSSE_Top_01 (1).png', 'かっこいい', 'かわいい', 'すごい', 'およそ五兆', 3),
(69, 'テスト', '2022-05-07', '2022-05-19', 'a@a', '$2y$10$4SJAlf5qyw6j8xJz60YFwuzZIkaflcrWirojTXCkXc3QiXt/uOHde', 'a@a', 1, 1, 'q', '1', '1@1', '1', '1', '20220524070721_POSSE_Top_01 (1).png', '1', '1', '1', '1', 2);
-- --------------------------------------------------------
--
-- テーブルの構造 `agents_tags`
--
CREATE TABLE `agents_tags` (
  `id` int NOT NULL,
  `agent_id` int NOT NULL,
  `tag_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `agents_tags`
--
INSERT INTO `agents_tags` (`id`, `agent_id`, `tag_id`) VALUES
(66, 44, 1),
(67, 44, 2),
(68, 44, 3),
(69, 44, 4),
(70, 44, 5),
(71, 45, 1),
(72, 45, 3),
(73, 48, 3),
(74, 48, 4),
(75, 48, 8),
(76, 48, 5),
(77, 49, 3),
(78, 49, 5),
(85, 53, 3),
(86, 53, 4),
(87, 53, 8),
(93, 54, 3),
(105, 16, 3),
(106, 16, 11),
(111, 61, 16),
(116, 1, 16),
(118, 68, 16),
(120, 62, 16),
(121, 62, 17),
(122, 69, 16),
(124, 66, 16),
(125, 66, 18),
(126, 66, 19),
(127, 58, 17),
(128, 58, 18),
(129, 58, 20),
(130, 52, 16),
(131, 52, 17),
(132, 52, 18),
(133, 52, 19),
(134, 52, 20),
(135, 7, 16),
(136, 7, 17),
(137, 7, 18),
(138, 7, 19),
(139, 7, 20),
(140, 8, 16),
(141, 8, 18),
(142, 8, 19),
(143, 3, 17),
(144, 3, 19),
(145, 3, 20),
(146, 5, 16),
(147, 5, 19),
(148, 5, 20);
-- --------------------------------------------------------
--
-- テーブルの構造 `agent_list_status`
--
CREATE TABLE `agent_list_status` (
  `id` int NOT NULL,
  `list_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `agent_list_status`
--
INSERT INTO `agent_list_status` (`id`, `list_status`) VALUES
(1, '掲載中'),
(2, '掲載停止'),
(3, '申込上限到達');
-- --------------------------------------------------------
--
-- テーブルの構造 `filter_sorts`
--
CREATE TABLE `filter_sorts` (
  `id` int NOT NULL,
  `sort_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `filter_sorts`
--

phpmyadmin.netphpmyadmin.net
phpMyAdmin (29 kB)
https://www.phpmyadmin.net/






19:02
INSERT INTO `filter_sorts` (`id`, `sort_name`) VALUES
(1, 'エージェントのタイプ'),
(2, '志望会社の規模');
-- --------------------------------------------------------
--
-- テーブルの構造 `filter_tags`
--
19:02
CREATE TABLE `filter_tags` (
  `tag_id` int NOT NULL,
  `sort_id` int NOT NULL,
  `tag_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `filter_tags`
--
INSERT INTO `filter_tags` (`tag_id`, `sort_id`, `tag_name`) VALUES
(1, 1, '特化型'),
(2, 1, '総合型'),
(3, 2, '大手志望'),
(4, 2, 'ベンチャー志望');
-- --------------------------------------------------------
19:02
--
-- テーブルの構造 `invalid_requests`
--
CREATE TABLE `invalid_requests` (
  `id` int NOT NULL,
  `contact_id` int NOT NULL,
  `invalid_request_memo` text NOT NULL,
  `invalid_request_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `invalid_requests`
--
INSERT INTO `invalid_requests` (`id`, `contact_id`, `invalid_request_memo`, `invalid_request_created`) VALUES
(1, 1, '不適切', '2022-05-08 12:59:39'),
(2, 2, '連絡つかない', '2022-05-08 12:59:39'),
(3, 12, '通報テスト', '2022-05-21 01:25:14'),
(13, 7, '通報初めて', '2022-05-21 02:45:25'),
(19, 13, '名前が氏名になっていない', '2022-05-21 09:00:58'),
(20, 11, 'なんか生意気そうだから', '2022-05-26 07:32:25'),
(21, 11, 'なんか生意気そうだから', '2022-05-26 07:32:26'),
(22, 11, 'なんか生意気そうだから', '2022-05-26 07:32:30'),
(23, 11, 'なんか生意気そうだから', '2022-05-26 07:32:51');
-- --------------------------------------------------------
--
-- テーブルの構造 `students`
--
CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `collage` text NOT NULL,
  `department` text NOT NULL,
  `class_of` int NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL,
  `address` text NOT NULL,
  `memo` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `students`
--
INSERT INTO `students` (`id`, `name`, `collage`, `department`, `class_of`, `email`, `tel`, `address`, `memo`, `created`) VALUES
(1, 'あきら', '', '', 0, 'akira', '111111', '東京都', '不安', '2022-05-08 12:41:11'),
(3, 'こうへい', '', '', 0, 'akira', '111111', '', '不安', '2022-05-08 12:41:11'),
(4, '渡邊美由貴', '慶應', '経済学部', 2025, 'kirin.myk2018@gmail.com', '08090338206', '練馬区', 'できるかな', '2022-05-18 04:32:03'),
(5, 'みゆき', '慶應', '経済学部', 25, 'kirin.myk2018@gmail.com', 'uvjfc', '練馬区', '祭さい確認ボタン', '2022-05-18 04:46:11'),
(6, 'みゆき', '慶應', '経済学部', 44, 'gmail@com', 'uvjfc', '練馬区', 'kkkk', '2022-05-18 04:56:52'),
(7, '渡邊美由貴', '慶應', '経済学部', 2025, 'kirin.myk2018@gmail.com', '08090338206', '練馬区', '', '2022-05-18 06:08:56'),
(8, '渡邊美由貴', '慶應', '経済学部', 2, 'kirin.myk2018@gmail.com', '08090338206', '練馬区', '', '2022-05-18 12:39:43'),
(9, '渡邊美由貴', '慶應', '経済学部', 4, 'kirin.myk2018@gmail.com', '08090338206', '練馬区', '', '2022-04-21 14:01:10'),
(10, 'みゆき', '慶應', '経済学部', 6, 'kirin.myk2018@gmail.com', '08090338206', '練馬区', 'kkk', '2022-05-18 14:04:42'),
(11, '鹿島健太', '東京大学', '理工学部', 24, 'kasiken@gmail.', '080903387777', '練馬区', 'pp', '2022-05-19 07:49:14'),
(12, '渡邊美由貴', '慶應', '経済学部', 24, 'kirin.myk2018@gmail.com', '08090338206', '練馬区', '', '2022-05-20 08:45:34'),
(13, '小林あきら', '新潟大学', '教育学部', 24, 'akira@gmail.com', '0809033822222', '練馬区', '', '2022-05-21 16:04:37'),
(14, '田口まいの', '北海道大学', '経済学部', 24, 'maino@mail.com', '08011111111', '練馬区', '', '2022-04-20 16:04:37');
-- --------------------------------------------------------
--
-- テーブルの構造 `students_contacts`
--
CREATE TABLE `students_contacts` (
  `id` int NOT NULL,
  `student_id` int NOT NULL,
  `agent_id` int NOT NULL,
  `valid_status_id` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `students_contacts`
--
INSERT INTO `students_contacts` (`id`, `student_id`, `agent_id`, `valid_status_id`, `created`) VALUES
(3, 1, 2, 1, '2022-05-08 13:18:44'),
(4, 1, 2, 1, '2022-05-08 13:18:44'),
(5, 1, 3, 1, '2022-05-08 13:18:44'),
(6, 2, 3, 1, '2022-05-08 13:18:44'),
(7, 9, 1, 2, '2022-04-21 14:01:10'),
(8, 9, 3, 1, '2022-05-18 14:01:10'),
(9, 9, 16, 1, '2022-05-18 14:01:10'),
(10, 10, 1, 2, '2022-05-18 14:04:42'),
(11, 10, 3, 2, '2022-05-18 14:04:42'),
(12, 10, 16, 2, '2022-05-18 14:04:42'),
(13, 11, 1, 2, '2022-05-19 07:49:14'),
(14, 11, 16, 1, '2022-05-19 07:49:14'),
(15, 12, 1, 1, '2022-05-20 08:45:34'),
(16, 12, 3, 3, '2022-05-20 08:45:34'),
(17, 12, 16, 1, '2022-05-20 08:45:34'),
(18, 13, 1, 3, '2022-05-21 16:04:37'),
(19, 13, 3, 3, '2022-05-21 16:04:37'),
(20, 13, 16, 1, '2022-05-21 16:04:37'),
(21, 13, 69, 1, '2022-05-21 16:04:37'),
(22, 12, 69, 3, '2022-05-20 08:45:34'),
(23, 12, 62, 1, '2022-05-20 08:45:34'),
(24, 13, 62, 1, '2022-05-20 08:45:34'),
(25, 14, 62, 1, '2022-05-20 08:45:34');
-- --------------------------------------------------------
--
-- テーブルの構造 `students_valid_status`
--
CREATE TABLE `students_valid_status` (
  `id` int NOT NULL,
  `vlid_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
--
-- テーブルのデータのダンプ `students_valid_status`
--
INSERT INTO `students_valid_status` (`id`, `vlid_status`) VALUES
(1, '正常'),
(2, '無効登録済'),
(3, '無効申請あり');
--
-- ダンプしたテーブルのインデックス
--
--
-- テーブルのインデックス `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `agents_past`
--
ALTER TABLE `agents_past`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `agents_tags`
--
ALTER TABLE `agents_tags`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `agent_list_status`
--
ALTER TABLE `agent_list_status`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `filter_sorts`
--
ALTER TABLE `filter_sorts`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `filter_tags`
--
ALTER TABLE `filter_tags`
  ADD PRIMARY KEY (`tag_id`);
--
-- テーブルのインデックス `invalid_requests`
--
ALTER TABLE `invalid_requests`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `students_contacts`
--
ALTER TABLE `students_contacts`
  ADD PRIMARY KEY (`id`);
--
-- テーブルのインデックス `students_valid_status`
--
ALTER TABLE `students_valid_status`
  ADD PRIMARY KEY (`id`);
--
-- ダンプしたテーブルの AUTO_INCREMENT
--
--
-- テーブルの AUTO_INCREMENT `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- テーブルの AUTO_INCREMENT `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- テーブルの AUTO_INCREMENT `agents_past`
--
ALTER TABLE `agents_past`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- テーブルの AUTO_INCREMENT `agents_tags`
--
ALTER TABLE `agents_tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- テーブルの AUTO_INCREMENT `agent_list_status`
--
ALTER TABLE `agent_list_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- テーブルの AUTO_INCREMENT `filter_sorts`
--
ALTER TABLE `filter_sorts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- テーブルの AUTO_INCREMENT `filter_tags`
--
ALTER TABLE `filter_tags`
  MODIFY `tag_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- テーブルの AUTO_INCREMENT `invalid_requests`
--
ALTER TABLE `invalid_requests`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- テーブルの AUTO_INCREMENT `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- テーブルの AUTO_INCREMENT `students_contacts`
--
ALTER TABLE `students_contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- テーブルの AUTO_INCREMENT `students_valid_status`
--
ALTER TABLE `students_valid_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;