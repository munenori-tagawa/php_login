-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-01-09 06:32:51
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_s13katsuo`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_cl_table`
--

CREATE TABLE `gs_cl_table` (
  `id` int(12) NOT NULL COMMENT 'ID',
  `name` varchar(64) NOT NULL COMMENT '名前',
  `email` varchar(256) NOT NULL COMMENT 'アドレス',
  `comment` text NOT NULL COMMENT 'コメント',
  `indate` datetime NOT NULL COMMENT '日付',
  `age` int(3) NOT NULL COMMENT '年齢'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_cl_table`
--

INSERT INTO `gs_cl_table` (`id`, `name`, `email`, `comment`, `indate`, `age`) VALUES
(1, 'イソノカツオ', 'test', 'testtest', '2023-01-09 12:25:23', 11);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_login_table`
--

CREATE TABLE `gs_login_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lid` varchar(128) NOT NULL,
  `lpw` varchar(64) NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_login_table`
--

INSERT INTO `gs_login_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'テスト１管理者', 'user1', '$2y$10$7DRS.op8ECeFdLWynbsvcOMo/9w5udtm898hRZVkv9UztzxeSEyJO', 1, 0),
(2, 'テスト2一般', 'test2', 'test2', 0, 0),
(3, 'テスト３', 'test3', 'test3', 0, 0);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_cl_table`
--
ALTER TABLE `gs_cl_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_login_table`
--
ALTER TABLE `gs_login_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_cl_table`
--
ALTER TABLE `gs_cl_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=2;

--
-- テーブルの AUTO_INCREMENT `gs_login_table`
--
ALTER TABLE `gs_login_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
