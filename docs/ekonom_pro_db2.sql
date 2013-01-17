-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 28 2012 г., 23:52
-- Версия сервера: 5.1.50
-- Версия PHP: 5.3.9-ZS5.6.0

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT=0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ekonom_pro_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` int(10) unsigned NOT NULL DEFAULT '1',
  `multi_city` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `banner`
--

INSERT INTO `banner` (`id`, `city_id`, `multi_city`, `img`, `link`, `title`) VALUES
(1, 1, 0, 'img_24-01-2012-22-40-03.jpg', 'ekonom.pro', 'Клуб ярких путешествий «Мир Без Границ»'),
(5, 1, 1, 'img_27-01-2012-11-20-49.jpg', 'proskater.ru/specials.php', 'Место для вашей рекламы'),
(8, 1, 1, 'img_27-01-2012-01-30-54.jpg', 'proskater.ru/specials.php', 'proskater.ru'),
(11, 1, 1, 'img_29-01-2012-21-56-39.jpg', 'www.cartelauto.ru/special/624', 'Специальное кредитное предложение NISSAN FINANCE от 2,9% годовых или 9 990 в месяц'),
(12, 1, 1, 'img_25-01-2012-23-36-55.jpg', 'www.heverest.ru/', 'Интернет-магазин спортивных товаров Heverest.ru'),
(13, 1, 1, 'img_27-01-2012-17-49-11.jpg', 'justeva.ru', 'Justeva'),
(14, 1, 0, 'img_27-01-2012-17-58-35.jpg', 'ekonom.pro/company/view/id/17', 'Metallica'),
(15, 1, 0, 'img_27-01-2012-18-02-13.jpg', 'ekonom.pro/company/view/id/17', 'Металлика'),
(16, 1, 1, 'img_01-02-2012-15-24-28.jpg', '', 'Одежда. Обувь. Аксессуары.'),
(17, 1, 0, 'img_03-02-2012-15-44-36.gif', 'ekonom.pro/company/view/id/33', 'Магазины одежды \\"ИндиGO\\"'),
(18, 1, 0, 'img_10-02-2012-17-01-38.jpg', 'show-service.net', 'Творческий центр \\"Шоу Сервис\\"');

-- --------------------------------------------------------

--
-- Структура таблицы `banner_place`
--

DROP TABLE IF EXISTS `banner_place`;
CREATE TABLE IF NOT EXISTS `banner_place` (
  `banner_id` int(10) unsigned NOT NULL,
  `bplace_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`banner_id`,`bplace_id`),
  KEY `fk_banner_place_banner1` (`banner_id`),
  KEY `bplace_id` (`bplace_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banner_place`
--

INSERT INTO `banner_place` (`banner_id`, `bplace_id`) VALUES
(1, 1),
(8, 4),
(11, 1),
(12, 1),
(13, 2),
(13, 6),
(14, 2),
(14, 6),
(15, 4),
(16, 1),
(17, 1),
(18, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `bplace`
--

DROP TABLE IF EXISTS `bplace`;
CREATE TABLE IF NOT EXISTS `bplace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `change_time` int(10) unsigned NOT NULL DEFAULT '5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `bplace`
--

INSERT INTO `bplace` (`id`, `title`, `width`, `height`, `change_time`) VALUES
(1, 'Главная', 994, 230, 5),
(2, 'Справа от компании', 187, 357, 10),
(4, 'На главной снизу справа', 490, 83, 10),
(5, 'На главной снизу слева', 490, 83, 5),
(6, 'Справа от компании нижний', 187, 357, 5);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `banner`
--
ALTER TABLE `banner`
  ADD CONSTRAINT `banner_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `banner_place`
--
ALTER TABLE `banner_place`
  ADD CONSTRAINT `banner_place_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banner_place_ibfk_2` FOREIGN KEY (`bplace_id`) REFERENCES `bplace` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
