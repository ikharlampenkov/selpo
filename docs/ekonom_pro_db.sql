-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 19 2012 г., 23:24
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
-- Структура таблицы `content_page`
--

DROP TABLE IF EXISTS `content_page`;
CREATE TABLE IF NOT EXISTS `content_page` (
  `page_title` varchar(40) NOT NULL COMMENT 'английское название для системы',
  `title` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`page_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content_page`
--

INSERT INTO `content_page` (`page_title`, `title`, `content`) VALUES
('about', 'О нас', '<p>\r\n	&nbsp;</p>\r\n<p style=\\"&quot;&quot;text-align:&quot;\\">\r\n	<span style=\\"&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;font-size:20px;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;\\"><span style=\\"&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;font-size:20px;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;\\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>&nbsp;&nbsp; Ekonom.pro</strong> &nbsp;<strong><em>- &nbsp; </em></strong></span><span style=\\"&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;font-size:16px;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;&quot;\\">сайт для людей, которые ценят свое время и деньги!</span></span></p>\r\n<p style=\\"&quot;&quot;text-align:&quot;\\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Все дисконты: скидки, распродажи, акции, &nbsp;подарки &nbsp;на одном сайте, без предварительной оплаты!</p>\r\n<p style=\\"&quot;&quot;text-align:&quot;\\">\r\n	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\\"&quot;&quot;&quot;&quot;&quot;font-size:16px;&quot;&quot;&quot;&quot;&quot;\\">&nbsp;<strong>&nbsp; Ekonom.pro &nbsp; &mdash; любая покупка с большой скидкой !</strong></span></p>\r\n<p style=\\"&quot;&quot;text-align:&quot;\\">\r\n	&nbsp; &nbsp;&nbsp;</p>\r\n'),
('contacts', 'Контактная информация', '<p>\r\n	По вопросам размещения информации - тел +7(3842) 33 86 86. &nbsp;сот - 8 923 601 0636 Константин . сот - 8 902 983 7708 Денис.</p>\r\n<p>\r\n	почта info@ekonom.pro&nbsp;</p>\r\n'),
('news', 'Новости', '<p>\r\n	<span style="font-size:14px;"><img alt="" height:="" src="/ckfinder/userfiles/images/otkrytie-bloga.gif" style="width:" />Сайт <span style="font-size:16px;"><strong>Ekonom.pro</strong> </span>&nbsp;начал работу в г. Кемерово с 1 марта 2012 года.</span></p>\r\n<p>\r\n	<span style="font-size:14px;">На сайте находится информация о компаниях города Кемерово, о скидках, акциях и распродажах ,дающая Вам возможность &nbsp;профессионально экономить !</span></p>\r\n<p>\r\n	<span style="font-size:14px;">Для удобства посетителей у нас отсутствует необходимая оплата за &nbsp;возможность пользоваться скидками, участием в акция и распродажах в городе Кемерово!&nbsp;</span></p>\r\n<p>\r\n	<span style="font-size:14px;">Мы будем постоянно добавлять компании ,предлагающие Вам возможность экономить не выходя из дома!</span></p>\r\n<p>\r\n	<span style="font-size:14px;">Вы можете&nbsp; голосовать за понравившиеся акции,оставлять отзывы, делится ими с друзьями в социальных сетях! &nbsp;&nbsp;</span></p>\r\n<p style="text-align:">\r\n	<strong><span style="font-size:14px;">&nbsp;Если &nbsp;наш сайт cтанет Вам полезен, то мы работаем не зря!</span></strong></p>\r\n<p>\r\n	<span style="font-size:14px;">Для предложений и &nbsp;пожеланий :</span></p>\r\n<p>\r\n	<span style="font-size:14px;">E-mail: <a href="mailto:info@ekonom.pro">info@ekonom.pro</a></span></p>\r\n<p>\r\n	<img alt="" src="/ckfinder/userfiles/images/123.jpg" style="height:" width:="" /></p>\r\n'),
('test', 'Тест', '<p>\r\n	аптьаптаптпатаптпатптпатм мс рвава</p>\r\n<p>\r\n	вараврва</p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_acl_role`
--

DROP TABLE IF EXISTS `tm_acl_role`;
CREATE TABLE IF NOT EXISTS `tm_acl_role` (
  `tm_user_role_id` int(10) unsigned NOT NULL,
  `tm_user_resource_id` int(10) unsigned NOT NULL,
  `is_allow` tinyint(1) NOT NULL DEFAULT '0',
  `privileges` varchar(255) NOT NULL,
  PRIMARY KEY (`tm_user_role_id`,`tm_user_resource_id`),
  KEY `tm_user_resource_id` (`tm_user_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tm_acl_role`
--

INSERT INTO `tm_acl_role` (`tm_user_role_id`, `tm_user_resource_id`, `is_allow`, `privileges`) VALUES
(1, 1, 1, 'show'),
(1, 2, 1, 'show'),
(1, 3, 1, 'show'),
(1, 4, 1, 'show'),
(1, 5, 1, 'show'),
(1, 6, 1, 'show'),
(1, 7, 1, 'show'),
(1, 8, 1, 'show'),
(1, 15, 1, 'show,show-attribute-hash,show-attribute-type,show-resource,show-role'),
(1, 19, 1, 'show'),
(1, 20, 1, 'show'),
(1, 21, 1, 'show'),
(1, 22, 1, 'show'),
(1, 23, 1, 'show'),
(1, 24, 1, 'show'),
(1, 25, 1, 'show'),
(1, 59, 1, 'show'),
(1, 67, 1, 'show'),
(1, 68, 1, 'show'),
(1, 69, 1, 'show'),
(1, 70, 1, 'show'),
(1, 71, 1, 'show'),
(1, 72, 1, 'show'),
(1, 76, 1, 'show'),
(1, 77, 1, 'show'),
(1, 78, 1, 'show'),
(1, 79, 1, 'show'),
(1, 80, 1, 'show'),
(1, 81, 1, 'show'),
(1, 82, 1, 'show'),
(1, 83, 1, 'show'),
(1, 84, 1, 'show'),
(1, 85, 1, 'show'),
(1, 86, 1, 'show,show-attribute-hash,show-attribute-type'),
(1, 87, 1, 'show'),
(1, 88, 1, 'show'),
(1, 89, 1, 'show'),
(1, 90, 1, 'show'),
(1, 91, 1, 'show'),
(1, 92, 1, 'show'),
(1, 93, 1, 'show'),
(1, 94, 1, 'show'),
(1, 95, 1, 'show'),
(1, 96, 1, 'show'),
(1, 97, 1, 'show'),
(1, 98, 1, 'show'),
(1, 99, 1, 'show'),
(1, 100, 1, 'show'),
(1, 101, 1, 'show'),
(1, 102, 1, 'show'),
(1, 103, 1, 'show'),
(1, 104, 1, 'show'),
(1, 105, 1, 'show'),
(1, 106, 1, 'show'),
(1, 107, 1, 'show'),
(1, 108, 1, 'show'),
(1, 109, 1, 'show'),
(1, 110, 1, 'show'),
(1, 111, 1, 'show'),
(1, 112, 1, 'show'),
(1, 113, 1, 'show'),
(1, 114, 1, 'show'),
(1, 115, 1, 'show'),
(1, 116, 1, 'show'),
(1, 117, 1, 'show'),
(1, 118, 1, 'show'),
(1, 119, 1, 'show'),
(1, 120, 1, 'show'),
(1, 121, 1, 'show'),
(1, 122, 1, 'show'),
(1, 123, 1, 'show'),
(1, 124, 1, 'show'),
(1, 125, 1, 'show'),
(1, 126, 1, 'show'),
(1, 127, 1, 'show'),
(1, 128, 1, 'show'),
(1, 129, 1, 'show'),
(1, 130, 1, 'show'),
(1, 131, 1, 'show'),
(1, 132, 1, 'show'),
(1, 133, 1, 'show'),
(1, 134, 1, 'show'),
(1, 135, 1, 'show,show-place'),
(1, 136, 1, 'show'),
(1, 137, 1, 'show'),
(1, 138, 1, 'show'),
(1, 139, 1, 'show'),
(1, 140, 1, 'show'),
(1, 141, 1, 'show'),
(1, 142, 1, 'show'),
(1, 143, 1, 'show'),
(1, 144, 1, 'show'),
(1, 145, 1, 'show'),
(1, 146, 1, 'show'),
(1, 147, 1, 'show'),
(1, 148, 1, 'show'),
(1, 149, 1, 'show'),
(1, 150, 1, 'show'),
(3, 1, 1, 'show'),
(3, 2, 1, 'show'),
(3, 3, 1, 'show'),
(3, 4, 1, 'show'),
(3, 5, 1, 'show'),
(3, 6, 1, 'show'),
(3, 7, 1, 'show'),
(3, 8, 1, 'show'),
(3, 15, 1, 'show'),
(3, 19, 1, 'show'),
(3, 20, 1, 'show'),
(3, 21, 1, 'show'),
(3, 22, 1, 'show'),
(3, 23, 1, 'show'),
(3, 24, 1, 'show'),
(3, 25, 1, 'show'),
(3, 59, 1, 'show'),
(3, 67, 1, 'show'),
(3, 68, 1, 'show'),
(3, 69, 1, 'show'),
(3, 70, 1, 'show'),
(3, 71, 1, 'show'),
(3, 72, 1, 'show'),
(3, 76, 0, 'show'),
(3, 77, 0, 'show'),
(3, 78, 0, 'show'),
(3, 79, 0, 'show'),
(3, 80, 1, 'show'),
(3, 81, 1, 'show'),
(3, 82, 1, 'show'),
(3, 83, 1, 'show'),
(3, 84, 1, 'show'),
(3, 85, 1, 'show'),
(3, 86, 1, 'show'),
(3, 87, 1, 'show'),
(3, 88, 1, 'show'),
(3, 89, 1, 'show'),
(3, 90, 1, 'show'),
(3, 91, 1, 'show'),
(3, 92, 1, 'show'),
(3, 93, 1, 'show'),
(3, 94, 1, 'show'),
(3, 95, 1, 'show'),
(3, 96, 1, 'show'),
(3, 97, 1, 'show'),
(3, 98, 1, 'show'),
(3, 99, 1, 'show'),
(3, 100, 1, 'show'),
(3, 101, 1, 'show'),
(3, 102, 1, 'show'),
(3, 103, 1, 'show'),
(3, 104, 1, 'show'),
(3, 105, 1, 'show'),
(3, 106, 1, 'show'),
(3, 107, 1, 'show'),
(3, 108, 1, 'show'),
(3, 109, 1, 'show'),
(3, 110, 1, 'show'),
(3, 111, 1, 'show'),
(3, 112, 1, 'show'),
(3, 113, 1, 'show'),
(3, 114, 1, 'show'),
(3, 115, 1, 'show'),
(3, 116, 1, 'show'),
(3, 117, 1, 'show'),
(3, 118, 1, 'show'),
(3, 119, 1, 'show'),
(3, 120, 1, 'show'),
(3, 121, 1, 'show'),
(3, 122, 1, 'show'),
(3, 123, 1, 'show'),
(3, 124, 0, 'show'),
(3, 125, 1, 'show'),
(3, 126, 1, 'show'),
(3, 127, 1, 'show'),
(3, 128, 1, 'show'),
(3, 129, 1, 'show'),
(3, 130, 1, 'show'),
(3, 131, 1, 'show'),
(3, 132, 1, 'show'),
(3, 133, 1, 'show'),
(3, 134, 1, 'show'),
(3, 135, 1, 'show'),
(3, 136, 1, 'show'),
(3, 137, 1, 'show'),
(3, 138, 1, 'show'),
(3, 139, 1, 'show'),
(3, 140, 1, 'show'),
(3, 141, 1, 'show'),
(3, 142, 1, 'show'),
(3, 143, 1, 'show'),
(3, 144, 1, 'show'),
(3, 145, 0, 'show'),
(3, 146, 1, 'show'),
(4, 1, 1, 'show'),
(4, 2, 1, 'show'),
(4, 3, 1, 'show'),
(4, 4, 1, 'show'),
(4, 5, 0, 'show'),
(4, 6, 0, 'show'),
(4, 7, 0, 'show'),
(4, 8, 0, 'show'),
(4, 15, 0, 'show'),
(4, 19, 0, 'show'),
(4, 20, 0, 'show'),
(4, 21, 0, 'show'),
(4, 22, 0, 'show'),
(4, 23, 0, 'show'),
(4, 24, 0, 'show'),
(4, 25, 0, 'show'),
(4, 59, 0, 'show'),
(4, 67, 0, 'show'),
(4, 68, 0, 'show'),
(4, 69, 0, 'show'),
(4, 70, 0, 'show'),
(4, 71, 0, 'show'),
(4, 72, 0, 'show'),
(4, 76, 0, 'show'),
(4, 77, 0, 'show'),
(4, 78, 0, 'show'),
(4, 79, 0, 'show'),
(4, 80, 1, 'show'),
(4, 81, 1, 'show'),
(4, 82, 0, 'show'),
(4, 83, 1, 'show'),
(4, 84, 1, 'show'),
(4, 85, 1, 'show'),
(4, 86, 1, 'show'),
(4, 87, 1, 'show'),
(4, 88, 1, 'show'),
(4, 89, 1, 'show'),
(4, 90, 1, 'show'),
(4, 91, 0, 'show'),
(4, 92, 0, 'show'),
(4, 93, 1, 'show'),
(4, 94, 1, 'show'),
(4, 95, 1, 'show'),
(4, 96, 1, 'show'),
(4, 97, 0, 'show'),
(4, 98, 0, 'show'),
(4, 99, 0, 'show'),
(4, 100, 1, 'show'),
(4, 101, 1, 'show'),
(4, 102, 1, 'show'),
(4, 103, 1, 'show'),
(4, 104, 1, 'show'),
(4, 105, 1, 'show'),
(4, 106, 1, 'show'),
(4, 107, 1, 'show'),
(4, 108, 1, 'show'),
(4, 109, 1, 'show'),
(4, 110, 0, 'show'),
(4, 111, 0, 'show'),
(4, 112, 0, 'show'),
(4, 113, 0, 'show'),
(4, 114, 1, 'show'),
(4, 115, 1, 'show'),
(4, 116, 1, 'show'),
(4, 117, 1, 'show'),
(4, 118, 1, 'show'),
(4, 119, 1, 'show'),
(4, 120, 1, 'show'),
(4, 121, 1, 'show'),
(4, 122, 1, 'show'),
(4, 123, 1, 'show'),
(4, 124, 1, 'show'),
(4, 125, 1, 'show'),
(4, 126, 1, 'show'),
(4, 127, 1, 'show'),
(4, 128, 1, 'show'),
(4, 129, 1, 'show'),
(4, 130, 1, 'show'),
(4, 131, 1, 'show'),
(4, 132, 1, 'show'),
(4, 133, 1, 'show'),
(4, 134, 1, 'show'),
(4, 135, 0, 'show'),
(4, 136, 0, 'show'),
(4, 137, 0, 'show'),
(4, 138, 0, 'show'),
(4, 139, 0, 'show'),
(4, 140, 0, 'show'),
(4, 141, 0, 'show'),
(4, 142, 0, 'show'),
(4, 143, 0, 'show'),
(4, 144, 1, 'show'),
(4, 145, 0, 'show'),
(4, 146, 1, 'show'),
(4, 147, 0, 'show'),
(4, 148, 1, 'show'),
(4, 149, 1, 'show'),
(4, 150, 1, 'show'),
(5, 1, 1, 'show'),
(5, 2, 1, 'show'),
(5, 3, 1, 'show'),
(5, 4, 1, 'show'),
(5, 5, 0, 'show'),
(5, 6, 0, 'show'),
(5, 7, 0, 'show'),
(5, 8, 0, 'show'),
(5, 15, 0, 'show'),
(5, 19, 0, 'show'),
(5, 20, 0, 'show'),
(5, 21, 0, 'show'),
(5, 22, 0, 'show'),
(5, 23, 0, 'show'),
(5, 24, 0, 'show'),
(5, 25, 0, 'show'),
(5, 59, 0, 'show'),
(5, 67, 0, 'show'),
(5, 68, 0, 'show'),
(5, 69, 0, 'show'),
(5, 70, 0, 'show'),
(5, 71, 0, 'show'),
(5, 72, 0, 'show'),
(5, 76, 0, 'show'),
(5, 77, 0, 'show'),
(5, 78, 0, 'show'),
(5, 79, 0, 'show'),
(5, 80, 1, 'show'),
(5, 81, 1, 'show'),
(5, 82, 0, 'show'),
(5, 83, 0, 'show'),
(5, 84, 0, 'show'),
(5, 85, 1, 'show'),
(5, 86, 1, 'show'),
(5, 87, 0, 'show'),
(5, 88, 0, 'show'),
(5, 89, 0, 'show'),
(5, 90, 0, 'show'),
(5, 91, 0, 'show'),
(5, 92, 0, 'show'),
(5, 93, 0, 'show'),
(5, 94, 0, 'show'),
(5, 95, 0, 'show'),
(5, 96, 0, 'show'),
(5, 97, 0, 'show'),
(5, 98, 0, 'show'),
(5, 99, 0, 'show'),
(5, 100, 0, 'show'),
(5, 101, 1, 'show'),
(5, 102, 1, 'show'),
(5, 103, 1, 'show'),
(5, 104, 1, 'show'),
(5, 105, 1, 'show'),
(5, 106, 0, 'show'),
(5, 107, 0, 'show'),
(5, 108, 0, 'show'),
(5, 109, 0, 'show'),
(5, 110, 0, 'show'),
(5, 111, 0, 'show'),
(5, 112, 0, 'show'),
(5, 113, 0, 'show'),
(5, 114, 1, 'show'),
(5, 115, 1, 'show'),
(5, 116, 1, 'show'),
(5, 117, 0, 'show'),
(5, 118, 0, 'show'),
(5, 119, 0, 'show'),
(5, 120, 0, 'show'),
(5, 121, 0, 'show'),
(5, 122, 0, 'show'),
(5, 123, 0, 'show'),
(5, 124, 0, 'show'),
(5, 125, 0, 'show'),
(5, 126, 0, 'show'),
(5, 127, 0, 'show'),
(5, 128, 0, 'show'),
(5, 129, 1, 'show'),
(5, 130, 1, 'show'),
(5, 131, 1, 'show'),
(5, 132, 1, 'show'),
(5, 133, 0, 'show'),
(5, 134, 0, 'show'),
(5, 135, 0, 'show'),
(5, 136, 0, 'show'),
(5, 137, 0, 'show'),
(5, 138, 0, 'show'),
(5, 139, 0, 'show'),
(5, 140, 0, 'show'),
(5, 141, 0, 'show'),
(5, 142, 0, 'show'),
(5, 143, 0, 'show'),
(5, 144, 1, 'show'),
(5, 145, 0, 'show'),
(5, 146, 1, 'show'),
(5, 147, 0, 'show'),
(5, 148, 1, 'show'),
(5, 149, 1, 'show'),
(5, 150, 1, 'show'),
(7, 1, 1, 'show'),
(7, 2, 1, 'show'),
(7, 3, 1, 'show'),
(7, 4, 1, 'show'),
(7, 5, 1, 'show'),
(7, 6, 1, 'show'),
(7, 7, 1, 'show'),
(7, 8, 1, 'show'),
(7, 15, 1, 'show'),
(7, 19, 0, 'show'),
(7, 20, 0, 'show'),
(7, 21, 0, 'show'),
(7, 22, 0, 'show'),
(7, 23, 0, 'show'),
(7, 24, 0, 'show'),
(7, 25, 0, 'show'),
(7, 59, 0, 'show'),
(7, 67, 0, 'show'),
(7, 68, 0, 'show'),
(7, 69, 0, 'show'),
(7, 70, 0, 'show'),
(7, 71, 0, 'show'),
(7, 72, 0, 'show'),
(7, 76, 0, 'show'),
(7, 77, 0, 'show'),
(7, 78, 0, 'show'),
(7, 79, 0, 'show'),
(7, 80, 1, 'show'),
(7, 81, 1, 'show'),
(7, 82, 1, 'show'),
(7, 83, 1, 'show'),
(7, 84, 1, 'show'),
(7, 85, 1, 'show'),
(7, 86, 1, 'show'),
(7, 87, 1, 'show'),
(7, 88, 1, 'show'),
(7, 89, 1, 'show'),
(7, 90, 1, 'show'),
(7, 91, 1, 'show'),
(7, 92, 1, 'show'),
(7, 93, 0, 'show'),
(7, 94, 1, 'show'),
(7, 95, 1, 'show'),
(7, 96, 1, 'show'),
(7, 97, 0, 'show'),
(7, 98, 0, 'show'),
(7, 99, 0, 'show'),
(7, 100, 1, 'show'),
(7, 101, 0, 'show'),
(7, 102, 1, 'show'),
(7, 103, 1, 'show'),
(7, 104, 0, 'show'),
(7, 105, 0, 'show'),
(7, 106, 1, 'show'),
(7, 107, 1, 'show'),
(7, 108, 1, 'show'),
(7, 109, 1, 'show'),
(7, 110, 0, 'show'),
(7, 111, 0, 'show'),
(7, 112, 0, 'show'),
(7, 113, 0, 'show'),
(7, 114, 1, 'show'),
(7, 115, 1, 'show'),
(7, 116, 1, 'show'),
(7, 117, 1, 'show'),
(7, 118, 1, 'show'),
(7, 119, 1, 'show'),
(7, 120, 1, 'show'),
(7, 121, 1, 'show'),
(7, 122, 1, 'show'),
(7, 123, 1, 'show'),
(7, 124, 0, 'show'),
(7, 125, 1, 'show'),
(7, 126, 1, 'show'),
(7, 127, 1, 'show'),
(7, 128, 1, 'show'),
(7, 129, 1, 'show'),
(7, 130, 1, 'show'),
(7, 131, 1, 'show'),
(7, 132, 1, 'show'),
(7, 133, 1, 'show'),
(7, 134, 1, 'show'),
(7, 135, 0, 'show'),
(7, 136, 0, 'show'),
(7, 137, 0, 'show'),
(7, 138, 0, 'show'),
(7, 139, 0, 'show'),
(7, 140, 0, 'show'),
(7, 141, 0, 'show'),
(7, 142, 0, 'show'),
(7, 143, 0, 'show'),
(7, 144, 1, 'show'),
(7, 145, 0, 'show'),
(7, 146, 1, 'show'),
(7, 147, 0, 'show'),
(7, 148, 1, 'show'),
(7, 149, 1, 'show'),
(7, 150, 1, 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user`
--

DROP TABLE IF EXISTS `tm_user`;
CREATE TABLE IF NOT EXISTS `tm_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `date_create` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`),
  KEY `fk_tm_user_tm_user_role1` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Дамп данных таблицы `tm_user`
--

INSERT INTO `tm_user` (`id`, `login`, `password`, `role_id`, `date_create`) VALUES
(1, 'admin', '151170', 1, '2011-11-16 16:26:00'),
(2, 'user', '321', 4, '2011-11-17 23:35:18'),
(6, 'user2', '333', 4, '2011-11-25 21:50:32'),
(7, 'moder', '654', 4, '2011-12-16 21:58:00'),
(9, 'mbg', '123456', 4, '2011-12-28 14:34:00'),
(10, 'absolut', '111', 4, '2012-01-18 15:31:00'),
(11, 'neptun', '555', 4, '2012-01-18 17:05:00'),
(13, 'Sany', '555', 1, '2012-01-18 21:39:00'),
(15, 'reg', 'regreg', 7, '2012-01-26 12:06:00'),
(16, 'toll', '555', 7, '2012-01-30 13:31:00'),
(17, 'indigo', '666666', 4, '2012-01-31 12:41:00'),
(18, 'ETK', '5555', 4, '2012-02-03 15:50:00'),
(19, 'rostov', '151515', 7, '2012-02-15 15:34:00');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_attribute`
--

DROP TABLE IF EXISTS `tm_user_attribute`;
CREATE TABLE IF NOT EXISTS `tm_user_attribute` (
  `user_id` int(10) unsigned NOT NULL,
  `attribute_key` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `attribute_value` text NOT NULL,
  `is_fill` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`attribute_key`),
  KEY `fk_tm_task_attribute_tm_task1` (`user_id`),
  KEY `fk_tm_document_attribute_tm_document_attribute_type1` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tm_user_attribute`
--

INSERT INTO `tm_user_attribute` (`user_id`, `attribute_key`, `type_id`, `attribute_value`, `is_fill`) VALUES
(1, 'name', 1, 'Администратор', 1),
(2, 'name', 1, 'Первый пользователь', 1),
(6, 'name', 1, 'Второй пользователь', 1),
(7, 'name', 1, 'Модератор первой компании', 1),
(9, 'name', 1, 'МирТур', 1),
(10, 'name', 1, 'Абсолют', 1),
(11, 'name', 1, 'neptun', 1),
(13, 'name', 1, 'sacha', 1),
(15, 'name', 1, 'Региональный пердставитель', 1),
(16, 'name', 1, 'Валерий тольятти', 1),
(17, 'name', 1, 'Катерина', 1),
(18, 'name', 1, 'ETK павел', 1),
(19, 'name', 1, 'Rostov', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_attribute_type`
--

DROP TABLE IF EXISTS `tm_user_attribute_type`;
CREATE TABLE IF NOT EXISTS `tm_user_attribute_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `tm_user_attribute_type`
--

INSERT INTO `tm_user_attribute_type` (`id`, `title`, `handler`, `description`) VALUES
(1, 'Строка', 'TM_Attribute_AttributeType', 'Любое строковое значение'),
(2, 'Текст', 'TM_Attribute_AttributeTypeText', 'Многострочный  текст'),
(3, 'Список', 'TM_Attribute_AttributeTypeList', 'Список из возможных вариантов');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_hash`
--

DROP TABLE IF EXISTS `tm_user_hash`;
CREATE TABLE IF NOT EXISTS `tm_user_hash` (
  `user_id` int(10) unsigned DEFAULT NULL,
  `attribute_key` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type_id` int(10) unsigned NOT NULL,
  `list_value` text,
  PRIMARY KEY (`attribute_key`),
  KEY `fk_tm_document_hash_tm_task_attribute_type1` (`type_id`),
  KEY `fk_tm_document_hash_tm_task1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tm_user_hash`
--

INSERT INTO `tm_user_hash` (`user_id`, `attribute_key`, `title`, `type_id`, `list_value`) VALUES
(NULL, 'name', 'Имя', 1, ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_profile`
--

DROP TABLE IF EXISTS `tm_user_profile`;
CREATE TABLE IF NOT EXISTS `tm_user_profile` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_key` varchar(255) NOT NULL,
  `profile_value` text NOT NULL,
  PRIMARY KEY (`user_id`,`profile_key`),
  KEY `fk_tm_user_profile_tm_user1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_resource`
--

DROP TABLE IF EXISTS `tm_user_resource`;
CREATE TABLE IF NOT EXISTS `tm_user_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `rtitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Дамп данных таблицы `tm_user_resource`
--

INSERT INTO `tm_user_resource` (`id`, `title`, `rtitle`) VALUES
(1, 'login', 'Вход'),
(2, 'login/index', 'Вход'),
(3, 'login/logout', 'Выход'),
(4, 'index/index', 'Главная'),
(5, 'user', 'Пользователи'),
(6, 'user/add', ''),
(7, 'user/edit', 'Пользователи/Редактировать'),
(8, 'user/delete', ''),
(15, 'user/index', 'Пользователи'),
(19, 'user/addRole', 'Пользователи/Добавить роль'),
(20, 'user/editRole', ''),
(21, 'user/deleteRole', ''),
(22, 'user/addResource', ''),
(23, 'user/editResource', ''),
(24, 'user/deleteResource', ''),
(25, 'user/fillResource', ''),
(59, 'user/showRoleAcl', ''),
(67, 'user/addAttributeType', ''),
(68, 'user/editAttributeType', ''),
(69, 'user/deleteAttributeType', ''),
(70, 'user/addAttributeHash', ''),
(71, 'user/editAttributeHash', ''),
(72, 'user/deleteAttributeHash', ''),
(76, 'city', 'Города'),
(77, 'city/index', 'Города'),
(78, 'city/add', 'Города/Добавить'),
(79, 'city/edit', 'Города/Редактировать'),
(80, 'company', 'Компании'),
(81, 'company/index', 'Компании'),
(82, 'company/add', 'Компании/Добавить'),
(83, 'company/edit', ''),
(84, 'company/delete', 'Компании/Удалить'),
(85, 'catalog', 'Каталог'),
(86, 'catalog/index', 'Каталог'),
(87, 'company/viewAddress', 'Компания/Просмотреть адреса'),
(88, 'company/addAddress', ''),
(89, 'company/editAddress', ''),
(90, 'company/deleteAddress', ''),
(91, 'catalog/addRubric', 'Каталог/Добавить рубрику'),
(92, 'catalog/editRubric', 'Каталог/Редактировать рубрику'),
(93, 'catalog/deleteRubric', 'Каталог/Удалить рубрику'),
(94, 'catalog/add', 'Каталог/Добавить товар'),
(95, 'catalog/edit', 'Каталог/Редактировать товар'),
(96, 'catalog/delete', 'Каталог/Удалить товар'),
(97, 'user/viewAttributeType', 'Пользователи/Показать типы атрибутов'),
(98, 'user/viewResource', 'Пользователи/Показать ресурсы'),
(99, 'user/viewHash', 'Пользователи/Показать список атрибутов'),
(100, 'company/showAcl', 'Компания/Права пользователей'),
(101, 'about.html', 'О компании'),
(102, 'about/index', 'О компании/О компании'),
(103, 'company/view', 'Компания/Просмотреть'),
(104, 'actions/index', 'Акции/Акции'),
(105, 'actions/view', 'Акции/Просмотреть акцию'),
(106, 'company/viewGallery', 'Компании/Просмотреть галерею'),
(107, 'company/addGallery', 'Компания/Добавить фото'),
(108, 'company/editGallery', 'Компания/Редактировать фото'),
(109, 'company/deleteGallery', 'Компания/Удалить фото'),
(110, 'contentPage/index', 'Контентные страницы'),
(111, 'contentPage/add', 'Контентные страницы/Добавить'),
(112, 'contentPage/edit', 'Контентные страницы/Редактировать'),
(113, 'contentPage/delete', 'Контентные страницы/Удалить'),
(114, 'catalog/viewSubMenu', 'Каталог/Показать подменю'),
(115, 'index/chooseCity', 'Главная/Выбрать город'),
(116, 'catalog/viewProduct', 'Каталог/Показать продукт'),
(117, 'catalog/addAttributeHash', 'Каталог/Добавить атрибут'),
(118, 'catalog/editAttributeHash', 'Каталог/Редактировать атрибут'),
(119, 'catalog/deleteAttributeHash', 'Каталог/Удалить атрибут'),
(120, 'catalog/viewHash', 'Каталог/Список атрибутов'),
(121, 'catalog/viewAttributeType', 'Каталог/Типы атрибутов'),
(122, 'catalog/editAttributeType', 'Каталог/Редактировать тип атрибута'),
(123, 'catalog/addAttributeType', 'Каталог/Добавить тип атрибута'),
(124, 'catalog/delteAttributeType', 'Каталог/Удалить тип атрибута'),
(125, 'catalog/viewGallery', 'Каталог/Просмотреть галерею'),
(126, 'catalog/editGallery', 'Каталог/Редактировать фото'),
(127, 'catalog/deleteGallery', 'Каталог/Удалить фото'),
(128, 'catalog/addGallery', 'Каталог/Добавить фото'),
(129, 'catalog/reserve', 'Каталог/Отложить'),
(130, 'catalog/share', 'Каталог/Поделиться'),
(131, 'catalog/addComments', 'Каталог/Добавить комментарий'),
(132, 'catalog/viewComments', 'Каталог/Просмотреть комментарии'),
(133, 'catalog/editComments', 'Каталог/Редактировать комментарий'),
(134, 'catalog/deleteComments', 'Каталог/Удалить комментарий'),
(135, 'banner/index', 'Баннеры'),
(136, 'banner/viewPlace', 'Баннеры/Просмотреть площадки'),
(137, 'banner/add', 'Баннеры/Добавить баннер'),
(138, 'banner/edit', 'Баннеры/Редактировать баннер'),
(139, 'banner/delete', 'Баннеры/Удалить баннер'),
(140, 'banner/addPlace', 'Баннеры/Добавить площадку'),
(141, 'banner/editPlace', 'Баннеры/Редактировать площадку'),
(142, 'banner/deletePlace', 'Баннеры/Удалить площадку'),
(143, 'banner/placemark', 'Баннеры/Размещение'),
(144, 'search/index', 'Поиск'),
(145, 'city/delete', 'Города/Удалить'),
(146, 'catalog/addLike', 'Каталог/Нравится'),
(147, 'city/showAcl', 'Города/Права'),
(148, 'index/showProductList', 'Главная/Показать блок товаров'),
(149, 'distributionList/index', 'Новостная рассылка'),
(150, 'news/index', 'Новости');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_user_role`
--

DROP TABLE IF EXISTS `tm_user_role`;
CREATE TABLE IF NOT EXISTS `tm_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `rtitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `tm_user_role`
--

INSERT INTO `tm_user_role` (`id`, `title`, `rtitle`) VALUES
(1, 'admin', 'Администратор'),
(3, 'customer', 'Покупатель'),
(4, 'companyadmin', 'Модератор магазина'),
(5, 'guest', 'Гость'),
(7, 'regional_admin', 'Региональный представитель');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tm_acl_role`
--
ALTER TABLE `tm_acl_role`
  ADD CONSTRAINT `tm_acl_role_ibfk_1` FOREIGN KEY (`tm_user_role_id`) REFERENCES `tm_user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tm_acl_role_ibfk_2` FOREIGN KEY (`tm_user_resource_id`) REFERENCES `tm_user_resource` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tm_user`
--
ALTER TABLE `tm_user`
  ADD CONSTRAINT `tm_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tm_user_role` (`id`);

--
-- Ограничения внешнего ключа таблицы `tm_user_attribute`
--
ALTER TABLE `tm_user_attribute`
  ADD CONSTRAINT `tm_user_attribute_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tm_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tm_user_attribute_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `tm_user_attribute_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tm_user_hash`
--
ALTER TABLE `tm_user_hash`
  ADD CONSTRAINT `tm_user_hash_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `tm_user_attribute_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
