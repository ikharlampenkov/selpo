-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 29 2012 г., 00:11
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
-- База данных: `selpo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE IF NOT EXISTS `banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `banner`
--

INSERT INTO `banner` (`id`, `img`, `link`, `title`) VALUES
(1, 'img_24-01-2012-22-40-03.jpg', 'ekonom.pro', 'Клуб ярких путешествий «Мир Без Границ»'),
(5, 'img_27-01-2012-11-20-49.jpg', 'proskater.ru/specials.php', 'Место для вашей рекламы'),
(8, 'img_27-01-2012-01-30-54.jpg', 'proskater.ru/specials.php', 'proskater.ru'),
(11, 'img_29-01-2012-21-56-39.jpg', 'www.cartelauto.ru/special/624', 'Специальное кредитное предложение NISSAN FINANCE от 2,9% годовых или 9 990 в месяц'),
(12, 'img_25-01-2012-23-36-55.jpg', 'www.heverest.ru/', 'Интернет-магазин спортивных товаров Heverest.ru'),
(13, 'img_27-01-2012-17-49-11.jpg', 'justeva.ru', 'Justeva'),
(14, 'img_27-01-2012-17-58-35.jpg', 'ekonom.pro/company/view/id/17', 'Metallica'),
(15, 'img_27-01-2012-18-02-13.jpg', 'ekonom.pro/company/view/id/17', 'Металлика'),
(16, 'img_01-02-2012-15-24-28.jpg', '', 'Одежда. Обувь. Аксессуары.'),
(17, 'img_03-02-2012-15-44-36.gif', 'ekonom.pro/company/view/id/33', 'Магазины одежды \\"ИндиGO\\"'),
(18, 'img_10-02-2012-17-01-38.jpg', 'show-service.net', 'Творческий центр \\"Шоу Сервис\\"');

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

-- --------------------------------------------------------

--
-- Структура таблицы `content_page`
--

DROP TABLE IF EXISTS `content_page`;
CREATE TABLE IF NOT EXISTS `content_page` (
  `link_id` int(10) unsigned NOT NULL,
  `page_title` varchar(255) NOT NULL COMMENT 'английское название для системы',
  `parent_page` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text,
  PRIMARY KEY (`page_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content_page`
--

INSERT INTO `content_page` (`link_id`, `page_title`, `parent_page`, `title`, `content`) VALUES
(22, 'bdjene_edva', NULL, 'Бюджетные средства', ''),
(17, 'fom_dokmenov', NULL, 'Формы документов', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1.Граждане имеют право на индивидуальные и коллективные обращения в органы местного самоуправления муниципального образования Моховское сельское поселение.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2. Обращения граждан подлежат рассмотрению в порядке и сроки, установленные Федеральным законом &laquo;О порядке рассмотрения обращений граждан Российской Федерации&raquo;.</span></span></p>\r\n'),
(11, 'inomaionne_iem', NULL, 'Информационные системы', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Регистр &laquo;Муниципальное образование&raquo;.</span></span></p>\r\n'),
(30, 'inomaiya_o_aboe_godavennogo_ogana', NULL, 'Информация о работе государственного органа', '<p>\r\n	<strong><span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Прием ведут:</span></span></strong></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Глава сельского поселения &ndash; каждый вторник &nbsp;с 9-00 до 12-00</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Руководитель аппарата администрации &ndash; ежедневно с 8-00 до 12-00</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Совет ветеранов &ndash; каждый четверг с&nbsp;&nbsp; 11-00 до 12-00.</span></span></p>\r\n'),
(28, 'konak', NULL, 'Контакты', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>Телефон: </strong>8(38452)53129, 8(38452)53144.</span></span></p>\r\n'),
(23, 'lgo_pedpinimaelyam', NULL, 'Льготы предпринимателям', ''),
(35, 'main_page', NULL, 'Главная страница', '<p>\r\n	ccvnhchndhd</p>\r\n'),
(29, 'obazovaelne_ejdeniya', NULL, 'Образовательные учреждения', '<p>\r\n	<strong><span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Нет.</span></span></strong></p>\r\n'),
(33, 'obzo_obaeniy', NULL, 'Обзоры обращений', ''),
(32, 'ovevenne_lia', NULL, 'Ответственные лица', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Трофимова Ольга Александровна, руководитель аппарата администрации,</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">&nbsp;тел. 8(38452) 53129</span></span></p>\r\n'),
(1, 'o_nas', NULL, 'О нас', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>Наименование: </strong>Моховское сельское поселение. </span></span></p>\r\n<p>\r\n	<strong><span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Структура: </span></span></strong></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">- совет народных депутатов Моховского сельского поселения </span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">&ndash; представительный орган</span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">- глава Моховского сельского поселения</span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">&ndash; высшее должностное лицо поселения</span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">- администрация Моховского сельского поселения</span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">&ndash; исполнительно-распорядительный орган поселения. </span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>Почтовый адрес:</strong> 652661 Кемеровская область, Беловский район, с. Мохово, ул. Центральная, 1 а. </span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>E-mail: </strong>mohovskiy@mail.ru </span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>тел: </strong>8(38452)53144, </span></span></p>\r\n<p>\r\n	<span style=\\"font-size: 14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>тел/факс: </strong>8(38452)53129</span></span></p>\r\n'),
(7, 'podvedomstvennye_organizatsii', NULL, 'Подведомственные организации', '<p>\r\n	<strong><span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Нет</span></span>.</strong></p>\r\n'),
(3, 'polnomochija', NULL, 'Полномочия', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1. Органы местного самоуправления Моховского сельского поселения в целях решения вопросов местного значения обладают следующими полномочиями:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1) принятие Устава Моховского сельского поселения и внесение в него изменений и дополнений, издание муниципальных правовых актов;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2) установление официальных символов Моховского сельского поселения;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3) создание муниципальных предприятий и учреждений, осуществление финансового обеспечения деятельности муниципальных казенных учреждений и финансового обеспечения выполнения муниципального задания бюджетными и автономными муниципальными учреждениями, а также формирование и размещение муниципального заказа;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">4) установление тарифов на услуги, предоставляемые муниципальными предприятиями и учреждениями, если иное не предусмотрено федеральными законами;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">5) регулирование тарифов на подключение к системе коммунальной инфраструктуры, тарифов организаций коммунального комплекса на подключение, надбавок к тарифам на товары и услуги организаций коммунального комплекса, надбавок к ценам (тарифам) для потребителей. Полномочия органов местного самоуправления по регулированию тарифов на подключение к системе коммунальной инфраструктуры, тарифов организаций коммунального комплекса на подключение, надбавок к тарифам на товары и услуги организаций коммунального комплекса, надбавок к ценам, тарифам для потребителей могут полностью или частично передаваться на основе соглашений между органами местного самоуправления Моховского сельского поселения и органами местного самоуправления Беловского муниципального района;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">6) организационное и материально-техническое обеспечение подготовки и проведения муниципальных выборов, местного референдума, голосования по отзыву депутата, главы Моховского сельского поселения, голосования по вопросам изменения границ Моховского сельского поселения, преобразования Моховского сельского поселения;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">7) принятие и организация выполнения планов и программ комплексного социально-экономического развития Моховского сельского поселения, а также организация сбора статистических показателей, характеризующих состояние экономики и социальной сферы Моховского сельского поселения, и предоставление указанных данных органам государственной власти в порядке, установленном Правительством Российской Федерации;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">8) осуществление международных и внешнеэкономических связей в соответствии с федеральными законами;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">9) учреждение печатного средства массовой информации для опубликования муниципальных правовых актов, обсуждения проектов муниципальных правовых актов по вопросам местного значения, доведения до сведения жителей Моховского сельского поселения официальной информации о социально-экономическом и культурном развитии Моховского сельского поселения, о развитии ее общественной инфраструктуры и иной официальной информации;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">10) организация подготовки, переподготовки и повышения квалификации выборных должностных лиц местного самоуправления, членов Совета народных депутатов Моховского сельского поселения, главы Моховского сельского поселения, а также профессиональной подготовки, переподготовки и повышения квалификации муниципальных служащих и работников муниципальных учреждений;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">11) решение вопросов местного значения;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">12) утверждение и реализация муниципальных программ в области энергосбережения и повышения энергетической эффективности, организация проведения энергетического обследования многоквартирных домов, помещения в которых составляют муниципальный жилищный фонд в границах муниципального образования, организация и проведение иных мероприятий, предусмотренных законодательством об энергосбережении и о повышении энергетической эффективности;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">13) полномочиями по организации теплоснабжения, предусмотренными Федеральным законом &laquo;О теплоснабжении&raquo;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">14) иными полномочиями в соответствии с федеральными законами и Уставом.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2. Органы местного самоуправления Моховского сельского поселения вправе в соответствии с уставом принимать решение о привлечении граждан к выполнению на добровольной основе социально значимых для поселения работ (в том числе дежурств) в целях решения вопросов местного значения поселений.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">К социально значимым работам могут быть отнесены только работы, не требующие специальной профессиональной подготовки.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">К выполнению социально значимых работ могут привлекаться совершеннолетние трудоспособные жители Моховского сельского поселения в свободное от основной работы или учебы время на безвозмездной основе не более чем один раз в три месяца. При этом продолжительность социально значимых работ не может составлять более четырех часов подряд.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Перечень законов и нормативных правовых актов, определяющих эти полномочия: Конституция Российской Федерации, Федеральный закон от 06.10.2003 года № 131-ФЗ &laquo;Об общих принципах организации местного самоуправления в Российской Федерации&raquo;, Устав Моховского сельского поселения, принятый решением Моховского сельского&nbsp; Совета народных депутатов от 29.06.2010 № 124.</span></span></p>\r\n'),
(18, 'poyadok_objalovaniya', NULL, 'Порядок обжалования', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Решения, принятые путем прямого волеизъявления граждан, решения и действия (бездействие) органов местного самоуправления и должностных лиц местного самоуправления могут быть обжалованы в суд или арбитражный суд в установленном законом порядке.</span></span></p>\r\n'),
(31, 'poyadok_piema', NULL, 'Порядок приема', ''),
(24, 'poyadok_popleniya', NULL, 'Порядок поступления', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1. На муниципальную службу вправе поступать граждане, достигшие возраста 18 лет, владеющие государственным языком Российской Федерации и соответствующие квалификационным требованиям, установленным в соответствии с Федеральным законом &quot;О муниципальной службе в Российской Федерации&quot; для замещения должностей муниципальной службы, при отсутствии обстоятельств, указанных в статье 11 настоящего Положения в качестве ограничений, связанных с муниципальной службой.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2. При поступлении на муниципальную службу, а также при ее прохождении не допускается установление каких бы то ни было прямых или косвенных ограничений или преимуществ в зависимости от пола, расы, национальности, происхождения, имущественного и должностного положения, места жительства, отношения к религии, убеждений, принадлежности к общественным объединениям, а также от других обстоятельств, не связанных с профессиональными и деловыми качествами муниципального служащего.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3. При поступлении на муниципальную службу гражданин представляет:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1) заявление с просьбой о поступлении на муниципальную службу и замещении должности муниципальной службы;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2) собственноручно заполненную и подписанную анкету по форме, установленной Правительством Российской Федерации;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3) паспорт;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">4) трудовую книжку, за исключением случаев, когда трудовой договор (контракт) заключается впервые;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">5) документ об образовании;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">6) страховое свидетельство обязательного пенсионного страхования, за исключением случаев, когда трудовой договор (контракт) заключается впервые;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">7) свидетельство о постановке физического лица на учет в налоговом органе по месту жительства на территории Российской Федерации;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">8) документы воинского учета - для военнообязанных и лиц, подлежащих призыву на военную службу;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">9) заключение медицинского учреждения об отсутствии заболевания, препятствующего поступлению на муниципальную службу;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">10) сведения о доходах за год, предшествующий году поступления на муниципальную службу, об имуществе и обязательствах имущественного характера;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">11) иные документы, предусмотренные федеральными законами, указами Президента Российской Федерации и постановлениями Правительства Российской Федерации.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">4. Сведения, представленные гражданином при поступлении на муниципальную службу, могут подвергаться проверке в установленном федеральными законами порядке.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">5. В случае установления в процессе проверки, предусмотренной частью 4 настоящей статьи, обстоятельств, препятствующих поступлению гражданина на муниципальную службу, указанный гражданин информируется в письменной форме о причинах отказа в поступлении на муниципальную службу.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">6. Поступление гражданина на муниципальную службу осуществляется в результате назначения на должность муниципальной службы на условиях трудового договора в соответствии с трудовым законодательством с учетом особенностей, предусмотренных настоящим Положением.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">7. Поступление гражданина на муниципальную службу оформляется актом представителя нанимателя (работодателя) о назначении на должность муниципальной службы.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">8. Сторонами трудового договора при поступлении на муниципальную службу являются представитель нанимателя (работодатель) и муниципальный служащий.</span></span></p>\r\n'),
(16, 'reglamen_i_anda', NULL, 'Регламенты и стандарты', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Административный регламент предоставления муниципальной услуги по выдаче документов (выписки из похозяйственной и домовой книги, справок)</span></span>.</p>\r\n'),
(19, 'rezla_poveok', NULL, 'Результаты проверок', ''),
(9, 'rkovodvo', NULL, 'Руководство ', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>Глава Моховского сельского поселения </strong>&ndash; Дашков Тимур Геннадьевич.</span></span></p>\r\n'),
(13, 'smi', NULL, 'СМИ', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>Нет.</strong></span></span></p>\r\n'),
(21, 'sooyanie_i_dinamika', NULL, 'Состояние и динамика', ''),
(26, 'tebovaniya', NULL, 'Требования', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1. Для замещения должностей муниципальной службы лицо, поступающее на муниципальную службу, должно соответствовать квалификационным требованиям, предъявляемым к уровню профессионального образования, стажу муниципальной службы (государственной службы) или стажу работы по специальности, профессиональным знаниям и навыкам, необходимым для исполнения должностных обязанностей (далее - квалификационные требования).</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2. Квалификационные требования по соответствующей должности муниципальной службы устанавливаются муниципальным правовым актом с учетом задач и функций органа местного самоуправления.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Квалификационные требования, установленные муниципальным правовым актом, могут содержать повышенные требования к уровню профессионального образования, стажу муниципальной службы, профессиональным знаниям и навыкам, необходимым для исполнения должностных обязанностей, чем те, которые установлены в пунктах 3 - 6 настоящей статьи.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3. Квалификационные требования к уровню профессионального образования:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1) для высших должностей муниципальной службы - высшее профессиональное образование;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2) для главных, ведущих и старших должностей муниципальной службы - высшее профессиональное образование либо среднее профессиональное образование по специальности, соответствующей должностным обязанностям муниципального служащего;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3) для младших должностей муниципальной службы - среднее профессиональное образование.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">4. Квалификационные требования к стажу:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1) для высших должностей муниципальной службы - стаж муниципальной службы на должностях не ниже главной группы (государственной службы на должностях не ниже старшей группы) не менее 3 лет;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2) для главных должностей муниципальной службы - стаж муниципальной службы на должностях не ниже ведущей группы (государственной службы на должностях не ниже старшей группы) не менее 3 лет;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3) для ведущих должностей муниципальной службы - стаж муниципальной службы на должностях не ниже старшей группы (государственной службы на должностях младшей группы) не менее 2 лет;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">4) для старших должностей муниципальной службы &ndash; требование к стажу не предъявляется в случае наличия высшего профессионального образования, соответствующего направлению деятельности органа местного самоуправления или его структурного подразделения, в иных случаях требуется наличие стажа (опыта) работы по специальности не менее 3 лет;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">5) для младших должностей муниципальной службы - без предъявления требований к стажу работы.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">5. Квалификационные требования к профессиональным знаниям:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">знание правовых актов, регламентирующих деятельность органа местного самоуправления;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">знание правовых актов, регламентирующих служебную деятельность;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">специальные профессиональные знания, необходимые для исполнения должностных обязанностей;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">знание основ делопроизводства;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">знание основ этики, правил делового общения.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">6. Квалификационные требования к профессиональным навыкам:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">владение навыками делового письма;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">навыки работы с документами;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">навыки владения современными средствами, методами и технологией работы с информацией;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">организационные навыки, в том числе применения специальных знаний.</span></span></p>\r\n'),
(6, 'territorialnye_organy', NULL, ' Территориальные органы', '<p>\r\n	<strong><span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Нет</span></span>.</strong></p>\r\n'),
(27, 'uloviya_i_ezla_konkov', NULL, 'Условия и результаты конкурсов', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">1. В случаях, предусмотренных нормативными правовыми актами муниципального образования, замещение вакантной муниципальной должности муниципальной службы производится на конкурсной основе.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Конкурс на замещение вакантной муниципальной должности муниципальной службы проводится среди граждан, подавших заявление об участии в конкурсе.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">2. Конкурс может проводиться в форме конкурса документов или конкурса-испытания. Форму конкурса определяет конкурсная комиссия.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">3. Конкурс на замещение вакантной муниципальной должности проводится в порядке, определенном законодательством о муниципальной службе, конкурсной комиссией в виде:</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">а) конкурса документов;</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">б) конкурса-испытания.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">4. Конкурсная комиссия состоит из председателя, секретаря, членов комиссии, включающих специалистов администрации. Состав комиссии утверждается распоряжением главы сельского поселения. Заседание конкурсной комиссии считается правомочным, если на нем присутствует не менее двух третей ее состава. Порядок проведения конкурса предусматривает обнародование его условий, сведений о дате, времени и месте его проведения не позднее чем за 20 дней до дня проведения конкурса. Решение комиссии по результатам проведения конкурса принимается открытым голосованием большинством голосов от числа ее членов, присутствующих на заседании. При равенстве голосов членов конкурсной комиссии решающим является мнение ее председателя. Решение конкурсной комиссии принимается в отсутствие кандидата и является основанием для назначения его на соответствующую муниципальную должность либо мотивированного отказа в таком назначении. Решение конкурсной комиссии подписывается ее председателем.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">Результаты конкурса каждому участнику сообщаются в письменной форме в течение месяца.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">5. При проведении конкурса в виде конкурса документов конкурсная комиссия оценивает участников конкурса на основании документов об образовании, о прохождении муниципальной или государственной службы и о другой трудовой деятельности, а также на основании рекомендаций, результатов тестирования и собеседования по соответствующей должности муниципальной службы.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">6. При проведении конкурса-испытания комиссией могут использоваться разнообразные методы оценки профессиональных и личностных качеств кандидатов, включая индивидуальное собеседование, анкетирование, проведение групповых дискуссий. Выбор метода оценки определяется решением конкурсной комиссии.</span></span></p>\r\n<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\">При оценке указанных качеств кандидата конкурсная комиссия исходит из соответствующих квалификационных требований, предъявляемых по муниципальной должности, и требований должностной инструкции.</span></span></p>\r\n'),
(25, 'vakanii', NULL, 'Вакансии', '<p>\r\n	<span style=\\"font-size:14px;\\"><span style=\\"font-family: arial,helvetica,sans-serif;\\"><strong>Нет.</strong></span></span></p>\r\n'),
(15, 'zakaz', NULL, 'Заказы', '');

-- --------------------------------------------------------

--
-- Структура таблицы `document`
--

DROP TABLE IF EXISTS `document`;
CREATE TABLE IF NOT EXISTS `document` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `short_text` text,
  `full_text` longtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_id` (`link_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `document`
--

INSERT INTO `document` (`id`, `link_id`, `parent_id`, `title`, `short_text`, `full_text`, `file`, `date_create`) VALUES
(10, 12, 1, 'Проверка', 'Вакансии', 'апрпарпар парп арп ра оапаа вап пара', 'file_27-05-2012-11-23-51.doc', '2012-05-27'),
(11, 12, NULL, 'Приоритет', 'Проверка', 'README\r\n======\r\n\r\nThis directory should be used to place project specfic documentation including\r\nbut not limited to project notes, generated API/phpdoc documentation, or\r\nmanual files generated or hand written.  Ideally, this directory would remain\r\nin your development environment only and should not be deployed with your\r\napplication to it''s final production location.\r\n\r\n\r\nSetting Up Your VHOST\r\n=====================\r\n\r\nThe following is a sample VHOST you might want to consider for your project.\r\n\r\n<VirtualHost *:80>\r\n   DocumentRoot "F:/www/igkh/public"\r\n   ServerName .local\r\n\r\n   # This should be omitted in the production environment\r\n   SetEnv APPLICATION_ENV development\r\n\r\n   <Directory "F:/www/igkh/public">\r\n       Options Indexes MultiViews FollowSymLinks\r\n       AllowOverride All\r\n       Order allow,deny\r\n       Allow from all\r\n   </Directory>\r\n\r\n</VirtualHost>', 'file_27-05-2012-14-10-50.jpg', '2012-05-27');

-- --------------------------------------------------------

--
-- Структура таблицы `document_folder`
--

DROP TABLE IF EXISTS `document_folder`;
CREATE TABLE IF NOT EXISTS `document_folder` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `date_create` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_id` (`link_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `document_folder`
--

INSERT INTO `document_folder` (`id`, `link_id`, `parent_id`, `title`, `date_create`) VALUES
(1, 12, NULL, 'Тест', '2012-05-27'),
(3, 12, 1, 'Еще тест', '2012-05-27'),
(4, 14, NULL, 'Проверка', '2012-05-27');

-- --------------------------------------------------------

--
-- Структура таблицы `document_search`
--

DROP TABLE IF EXISTS `document_search`;
CREATE TABLE IF NOT EXISTS `document_search` (
  `id` int(10) unsigned NOT NULL,
  `search_text` text NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `search_text` (`search_text`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `document_search`
--

INSERT INTO `document_search` (`id`, `search_text`) VALUES
(11, 'README\r\n======\r\n\r\nThis directory should be used to place project specfic documentation including\r\nbut not limited to project notes, generated API/phpdoc documentation, or\r\nmanual files generated or hand written.  Ideally, this directory would remain\r\nin your development environment only and should not be deployed with your\r\napplication to it''s final production location.\r\n\r\n\r\nSetting Up Your VHOST\r\n=====================\r\n\r\nThe following is a sample VHOST you might want to consider for your project.\r\n\r\n<VirtualHost *:80>\r\n   DocumentRoot "F:/www/igkh/public"\r\n   ServerName .local\r\n\r\n   # This should be omitted in the production environment\r\n   SetEnv APPLICATION_ENV development\r\n\r\n   <Directory "F:/www/igkh/public">\r\n       Options Indexes MultiViews FollowSymLinks\r\n       AllowOverride All\r\n       Order allow,deny\r\n       Allow from all\r\n   </Directory>\r\n\r\n</VirtualHost>'),
(10, 'апрпарпар парп арп ра оапаа вап пара');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_group`
--

DROP TABLE IF EXISTS `menu_group`;
CREATE TABLE IF NOT EXISTS `menu_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Дамп данных таблицы `menu_group`
--

INSERT INTO `menu_group` (`id`, `title`, `link`) VALUES
(1, 'Общая информация', 'Obshhaja_informacija'),
(2, 'Законодательство', 'Zakonodatelstvo'),
(3, 'Целевые программы', 'tselevye_programmy'),
(5, 'Черезвычайные ситуации (ЧС)', 'cheezvayne_iaii_chs'),
(6, 'Результаты проверок', 'rezla_poveok'),
(7, 'Пресс служба', 'pe_ljba'),
(8, 'Статистика', 'saiika'),
(9, 'Государственная служба', 'godavennaya_ljba'),
(10, 'Обращения', 'obaeniya');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_handler`
--

DROP TABLE IF EXISTS `menu_handler`;
CREATE TABLE IF NOT EXISTS `menu_handler` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `menu_handler`
--

INSERT INTO `menu_handler` (`id`, `title`, `controller`) VALUES
(1, 'Контент', 'Contentpage'),
(2, 'Документы', 'Document'),
(3, 'Новости', 'News'),
(4, 'Обращения', 'Vote');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
CREATE TABLE IF NOT EXISTS `menu_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `group_id` int(10) unsigned NOT NULL,
  `handler_id` int(10) unsigned NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`,`handler_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `menu_item`
--

INSERT INTO `menu_item` (`id`, `title`, `link`, `group_id`, `handler_id`, `is_visible`) VALUES
(1, 'О нас', 'o_nas', 1, 1, 1),
(3, 'Полномочия', 'polnomochija', 1, 1, 1),
(6, 'Территориальные органы  ', 'territorialnye_organy', 1, 1, 1),
(7, 'Подведомственные организации', 'podvedomstvennye_organizatsii', 1, 1, 1),
(9, 'Руководство  ', 'rkovodvo', 1, 1, 1),
(11, 'Информационные системы', 'inomaionne_iem', 1, 1, 1),
(12, 'Нормативно-правовые акты', 'nomaivnopavove_ak', 2, 2, 1),
(13, 'СМИ', 'smi', 1, 1, 1),
(14, 'Тексты проектов', 'tek_poekov', 2, 2, 1),
(15, 'Заказы', 'zakaz', 2, 1, 1),
(16, 'Регламенты и стандарты', 'reglamen_i_anda', 2, 1, 1),
(17, 'Формы документов', 'fom_dokmenov', 2, 1, 1),
(18, 'Порядок обжалования', 'poyadok_objalovaniya', 2, 1, 1),
(19, 'Результаты проверок', 'rezla_poveok', 6, 1, 1),
(20, 'Пресс служба', 'pe_ljba', 7, 3, 1),
(21, 'Состояние и динамика', 'sooyanie_i_dinamika', 8, 1, 1),
(22, 'Бюджетные средства', 'bdjene_edva', 8, 1, 1),
(23, 'Льготы предпринимателям', 'lgo_pedpinimaelyam', 8, 1, 1),
(24, 'Порядок поступления', 'poyadok_popleniya', 9, 1, 1),
(25, 'Вакансии', 'vakanii', 9, 1, 1),
(26, 'Требования', 'tebovaniya', 9, 1, 1),
(27, 'Условия и результаты конкурсов', 'uloviya_i_ezla_konkov', 9, 1, 1),
(28, 'Контакты', 'konak', 9, 1, 1),
(29, 'Образовательные учреждения', 'obazovaelne_ejdeniya', 9, 1, 1),
(30, 'Информация о работе государственного органа', 'inomaiya_o_aboe_godavennogo_ogana', 10, 1, 1),
(31, 'Порядок приема', 'poyadok_piema', 10, 1, 1),
(32, 'Ответственные лица', 'ovevenne_lia', 10, 1, 1),
(33, 'Обзоры обращений', 'obzo_obaeniy', 10, 1, 1),
(34, 'Интернет-приемная', 'inenepiemnaya', 10, 4, 1),
(35, 'Главная страница', 'main_page', 1, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(10) unsigned NOT NULL,
  `date_public` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `short_text` text,
  `full_text` text,
  `date_create` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_id` (`link_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `link_id`, `date_public`, `title`, `file`, `short_text`, `full_text`, `date_create`) VALUES
(2, 20, '2012-05-27 00:00:00', 'Первая новость', 'img_27-05-2012-18-25-25.jpg', 'апр  еек ек е ке екекекрек к', ' кек ек  к кенуекнерпварвпарваснрвен нукн35673ав укн6 кн5347653нуЭЭЭ!";%:?**((', '2012-05-27');

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
(1, 97, 1, 'show'),
(1, 98, 1, 'show'),
(1, 99, 1, 'show'),
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
(5, 97, 0, 'show'),
(5, 98, 0, 'show'),
(5, 99, 0, 'show');

-- --------------------------------------------------------

--
-- Структура таблицы `tm_task_attribute_type`
--

DROP TABLE IF EXISTS `tm_task_attribute_type`;
CREATE TABLE IF NOT EXISTS `tm_task_attribute_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `handler` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `tm_task_attribute_type`
--

INSERT INTO `tm_task_attribute_type` (`id`, `title`, `handler`, `description`) VALUES
(1, 'Строка', 'TM_Attribute_AttributeType', 'Любое строковое значение'),
(2, 'Текст', 'TM_Attribute_AttributeTypeText', 'Многострочный  текст'),
(3, 'Список', 'TM_Attribute_AttributeTypeList', 'Список из возможных вариантов'),
(4, 'Дата', 'TM_Attribute_AttributeTypeDate', ''),
(5, 'Список пользователей', 'TM_Attribute_AttributeTypeUserList', 'Список пользователей'),
(6, 'Условие с активным пользователем', 'TM_Attribute_AttributeTypeActiveUser', 'Условие с активным пользователем'),
(7, 'Список пользователей с активным пользователем', 'TM_Attribute_AttributeTypeActiveUserList', 'Список пользователей с активным пользователем');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `tm_user`
--

INSERT INTO `tm_user` (`id`, `login`, `password`, `role_id`, `date_create`) VALUES
(1, 'admin', '123', 1, '2011-11-16 16:26:00');

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
(1, 'name', 1, 'Администратор', 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

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
(97, 'user/viewAttributeType', 'Пользователи/Показать типы атрибутов'),
(98, 'user/viewResource', 'Пользователи/Показать ресурсы'),
(99, 'user/viewHash', 'Пользователи/Показать список атрибутов');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `tm_user_role`
--

INSERT INTO `tm_user_role` (`id`, `title`, `rtitle`) VALUES
(1, 'admin', 'Администратор'),
(5, 'guest', 'Гость');

-- --------------------------------------------------------

--
-- Структура таблицы `vote_email`
--

DROP TABLE IF EXISTS `vote_email`;
CREATE TABLE IF NOT EXISTS `vote_email` (
  `link_id` int(10) unsigned NOT NULL,
  `val` varchar(255) NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vote_email`
--

INSERT INTO `vote_email` (`link_id`, `val`) VALUES
(34, 'ivan87kharlampenkov@gmail.com');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `banner_place`
--
ALTER TABLE `banner_place`
  ADD CONSTRAINT `banner_place_ibfk_1` FOREIGN KEY (`banner_id`) REFERENCES `banner` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `banner_place_ibfk_2` FOREIGN KEY (`bplace_id`) REFERENCES `bplace` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `document`
--
ALTER TABLE `document`
  ADD CONSTRAINT `document_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `document_folder` (`id`),
  ADD CONSTRAINT `document_ibfk_2` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`);

--
-- Ограничения внешнего ключа таблицы `document_folder`
--
ALTER TABLE `document_folder`
  ADD CONSTRAINT `document_folder_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`),
  ADD CONSTRAINT `document_folder_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `document_folder` (`id`);

--
-- Ограничения внешнего ключа таблицы `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`link_id`) REFERENCES `menu_item` (`id`);

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
