-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-06-2024 a las 20:03:41
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `editorial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ad_spaces`
--

CREATE TABLE `ad_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ad_spaces` int(11) NOT NULL,
  `ad_view` int(11) NOT NULL,
  `ad_url` varchar(255) NOT NULL,
  `code` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ad_spaces`
--

INSERT INTO `ad_spaces` (`id`, `ad_spaces`, `ad_view`, `ad_url`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-11 22:31:29'),
(2, 2, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:24:30'),
(3, 2, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:24:30'),
(4, 3, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:24:42'),
(5, 3, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:24:42'),
(6, 4, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:24:52'),
(7, 4, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:24:52'),
(8, 5, 1, 'https://codecanyon.net/item/infynews-laravel-news-and-magazines-blog-articles-php-script/38138839', NULL, '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(9, 6, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:26:16'),
(10, 6, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:26:16'),
(11, 7, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:26:05'),
(12, 7, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:26:05'),
(13, 8, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:47'),
(14, 8, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:47'),
(15, 9, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:18'),
(16, 9, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:18'),
(17, 10, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:36'),
(18, 10, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:36'),
(19, 11, 0, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:27'),
(20, 11, 1, '', NULL, '2023-08-17 03:59:44', '2024-06-12 22:25:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albums`
--

CREATE TABLE `albums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `album_categories`
--

CREATE TABLE `album_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analytics`
--

CREATE TABLE `analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `post_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `meta` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `analytics`
--

INSERT INTO `analytics` (`id`, `uri`, `session`, `country`, `ip`, `post_id`, `user_id`, `meta`, `created_at`, `updated_at`) VALUES
(1, '/verbum', 'qRwRALmhHZrf4PKhABKtJ5CGfZKaP6k8bSKMlvLF', '', '127.0.0.1', '22', '1', 'false', '2024-06-11 22:42:03', '2024-06-11 22:42:03'),
(2, '/cartas-a-mi-violador', 'qRwRALmhHZrf4PKhABKtJ5CGfZKaP6k8bSKMlvLF', '', '127.0.0.1', '4', '1', 'false', '2024-06-11 23:31:51', '2024-06-11 23:31:51'),
(3, '/los-movimientos-sociales-y-la-lucha-por-la-democratizacion-el-movimiento-por-la-paz-con-justicia-y-dignidad', 'qRwRALmhHZrf4PKhABKtJ5CGfZKaP6k8bSKMlvLF', '', '127.0.0.1', '5', '1', 'false', '2024-06-11 23:56:18', '2024-06-11 23:56:18'),
(4, '/conceptos-politicos-herramientas-teoricas-y-practicas-para-el-siglo-xxi', 'qRwRALmhHZrf4PKhABKtJ5CGfZKaP6k8bSKMlvLF', '', '127.0.0.1', '6', '1', 'false', '2024-06-12 00:04:23', '2024-06-12 00:04:23'),
(5, '/dra-anayanci-fregoso', 'TcKJbZU9U2SiYxZmLkGLA7fAZDD9NDwUAdTR07Vc', '', '127.0.0.1', '23', '1', 'false', '2024-06-12 22:49:34', '2024-06-12 22:49:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `article_post`
--

CREATE TABLE `article_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `article_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `article_post`
--

INSERT INTO `article_post` (`id`, `post_id`, `article_content`, `created_at`, `updated_at`) VALUES
(4, 4, '<p>Qu&eacute; bonita te ves, aun con esa mirada triste y ojos cansados. Qu&eacute; valiente luces, aun cuando pasas toda la noche llorando. Tu belleza sobrevive, en esas cicatrices en tus brazos. Ya no temas, mi ni&ntilde;a, pronto podr&aacute;s descansar; busca por la marquesina, capaz ser&aacute;s de volar.</p>', '2023-08-17 03:59:47', '2024-06-11 23:31:35'),
(5, 5, '<p>Habr&aacute; quienes sostengan que la movilizaci&oacute;n social es ef&iacute;mera, y que, debido a que en la mayor&iacute;a de las veces la organizaci&oacute;n colectiva se encuentra alejada de los procedimientos institucionales,lasposibilidades de accionar cambios defondo en una sociedad son muy pocas o nulas. Para aquellos que comparte dicha opini&oacute;n, los movimientos sociales resultan, m&aacute;s que ben&eacute;ficos, peligrosos para el orden social establecido debido a su naturaleza disidente, por lo tanto, evitar el surgimiento de la acci&oacute;norganizada o disuadir a los manifestantes de sus metas se convierte en uno de los objetivosprimordiales del gobierno en democracia. Habr&aacute;, por otro lado, quienes sostengan que los movimientos sociales no solo son una v&iacute;a para democratizaci&oacute;n, sino que, debido alcar&aacute;cter legitimador que la mayor&iacute;a de &ntilde;asveces les brinda lanaturaleza de sus demandas, se conciben como la &uacute;nica manera de accionar verdaderos cmabios sociales. La pregunta ante esta bifurcaci&oacute;n es espec&iacute;fica: &iquest;c&uacute;al es la pertinencia de los movimientos ociales dentro de los procesos de democratizaci&oacute;n?&nbsp; En torno a esta cuesti&oacute;n, este libro analiza las diferentes corrientes de pensamiento contempor&aacute;neo que dan significado al t&eacute;rmino democracia, apostando abiertaente por el fortalecimiento de un modelo democr&aacute;tico en que la participaci&oacute;n colectivase devela como parte esencial de los proceso dedemocratizaci&oacute;n. En ese sentido, el an&aacute;lisis del Movimiento por la Paz con Justicia y Dignidad que aqu&iacute; se expone funciona como una forma de evidenciar laimpunidad, la corrupci&oacute;n y la represi&oacute;n estatal como obst&aacute;culos para el ejercicio de la democracia y la vigenciadel Estado de derecho en M&eacute;xico. Pero, por otro lado, demuestra tambi&eacute;n la imperiosa necesidad de utilizar y defender canales de participaci&oacute;n ciudadana alternativos a los de las instituciones pol&iacute;ticas tradicionales. COn lareflexiones hechas alrededordeuno de los movimientos sociales m&aacute;s importantes de la &uacute;ltima d&eacute;cada en nuestro pa&iacute;s, se resaltala indeleble relaci&oacute;n qu existe entre la participaci&oacute;n colectiva y la construcci&oacute;n de ciudadan&iacute;a y arenas de deliberaci&oacute;n que nos acercan cada vez m&aacute;s a un pa&iacute;s m&aacute;s justo, digno y democr&aacute;tico.&nbsp;</p>\r\n\r\n<p>.</p>', '2023-08-17 03:59:47', '2024-06-11 23:57:23'),
(6, 6, '<p>Esta publicaci&oacute;n de car&aacute;cter colectivo busca propiciar el inicio de una genda de investigaci&oacute;n en torno a categor&iacute;as y conceptos pol&iacute;ticos que empleamos en el an&aacute;lisis defen&oacute;menos contempor&aacute;neos. Motivados por la pregunta, ahora cl&aacute;sica, de John L. Austin, &iquest;qu&eacute; hacen las palabras?, este volumen busca resaltar el car&aacute;cter activo y din&aacute;mico de los conceptos, su efecto concreto en el mundo, sus transformaciones a trav&eacute;s del tiempo, sus recorridos y cruces de fonteras geogr&aacute;ficas y simb&oacute;licas. El estudio de conceptos pol&iacute;ticos nos ofrece herramientas anl&iacute;ticas, inspira laimaginaci&oacute;n pol&iacute;tica, e interroga nuestras premisas para pensar y actuar en un contexto de cambio tanto a nivel nacional como internacional. Losart&iacute;culos incluidos en este libro no pretenden ser expresiones de erudici&oacute;n conceptual, ni ofrecer definiciones (en el sentido ortodoxo) hacia el seno de la disciplina. Este texto pretende ser algo distinto de una sistem&aacute;tica exposici&oacute;n hist&oacute;rica sobre conceptos claves de la ciencia pol&iacute;tica y refleja, m&aacute;s bien, postura particulares, peculiares elecciones metodol&oacute;gicas e interes acad&eacute;micos. Los cap&iacute;tulos de libro, cada uno de manera independiente y sumados en una direcci&oacute;n com&uacute;n, aportan al debate actual desdesus respectivos enfoques intelectuales. Lejo de pretender laerudici&oacute;n, este volumen nos presenta reflexiones vivas y pol&eacute;micas sobre conceptos tanto cl&aacute;sicos como novedosos, como lo son los conceptos de pueblo, laimprovisaci&oacute;n pol&iacute;tica, la amenaza, la corrupci&oacute;n, la participaci&oacute;n ciudadana y el Estado.&nbsp;</p>', '2023-08-17 03:59:47', '2024-06-12 00:03:45'),
(16, 22, NULL, '2024-06-11 22:41:15', '2024-06-11 23:33:16'),
(17, 23, '<p>Doctora por la Universidad de Barcelona, por el programa doctoral Recuperaci&oacute;n de la Memoria. Am&eacute;rica Latina. Maestra en Antropolog&iacute;a social por la misma casa de estudios y licenciada en Estudios Latinoamericanos por la Universidad Nacional Aut&oacute;noma de M&eacute;xico. Actualmente es profesora investigadora titular en la Universidad de Guadalajara, con adscripci&oacute;n al Departamento de Estudios en Educaci&oacute;n en el Centro Universitario de Ciencias Sociales y Humanidades. Imparte su docencia en las licenciaturas en Sociolog&iacute;a y Comunicaci&oacute;n P&uacute;blica y en la Maestr&iacute;a en Investigaci&oacute;n Educativa. Sus l&iacute;neas de investigaci&oacute;n son sobre infancia y juventud en contextos urbanos de violencia, trabajo infantil y educaci&oacute;n en contextos de encierro. Entre sus m&aacute;s recientes publicaciones est&aacute;n &ldquo;La violencia que habito. Prisi&oacute;n, mujeres y autobiograf&iacute;a&rdquo; en Estudios Jaliscienses, 112, mayo de 2018, y Educaci&oacute;n y reflexividad: repensando los fundamentos del Doctorado en Educaci&oacute;n de la Universidad de Guadalajara (2019), que coordin&oacute; con la doctora Cristina Palomar Verea, y publicado por la Universidad de Guadalajara. Es coordinadora editorial de la revista acad&eacute;mica electr&oacute;nica Di&aacute;logos sobre Educaci&oacute;n. Temas actuales en investigaci&oacute;n educativa y sostiene desde hace tres a&ntilde;os un proyecto sobre educaci&oacute;n universitaria en c&aacute;rceles en la zona metropolitana de Guadalajara.</p>', '2024-06-12 22:48:25', '2024-06-12 22:48:25'),
(18, 24, '<p>Licenciado, maestro y doctor en filosof&iacute;a. Actualmente Coordinador de Posgrados del Centro Universitario de Ciencias Sociales y Humanidades (CUCSH) de la Universidad de Guadalajara (U de G). Miembro del Comit&eacute; editorial del CUCSH Profesor en la licenciatura en filosof&iacute;a, la Maestr&iacute;a en Estudios Filos&oacute;ficos, el Doctorado en Historia, el Doctorado en Humanidades, y la Maestr&iacute;a en bio&eacute;tica de la U de G. Ocup&oacute; los cargos de Coordinador de la Maestr&iacute;a en Estudios filos&oacute;ficos y Jefe del Departamento de filosof&iacute;a. (CUCSH-U de G) Miembro del Sistema Nacional de Investigadores nivel 1 Miembro de la Asociaci&oacute;n Filos&oacute;fica de M&eacute;xico Miembro del comit&eacute; de &eacute;tica del Centro M&eacute;dico de Occidente y del Hospital Civil Fray Antonio Alcalde Miembro fundador de la Academia Mexicana de L&oacute;gica Miembro de la Red de Educaci&oacute;n en Bio&eacute;tica UNAM-U de G Anteriormente miembro del Comit&eacute; de &Eacute;tica del Consejo Estatal del Trasplantes de &Oacute;rganos y Tejidos del Estado de Jalisco. &Aacute;reas de investigaci&oacute;n: Teor&iacute;a de la Argumentaci&oacute;n, epistemolog&iacute;a, filosof&iacute;a de la tecnolog&iacute;a, bio&eacute;tica, est&eacute;tica, metodolog&iacute;a, Filosof&iacute;a Moderna, filosof&iacute;a contempor&aacute;nea y L&oacute;gica. Profesor invitado con diferentes t&oacute;picos de bio&eacute;tica, argumentaci&oacute;n, epistemolog&iacute;a, &eacute;tica y metodolog&iacute;a en la Universidad Aut&oacute;noma de San Nicol&aacute;s de Hidalgo, Universidad Aut&oacute;noma de M&eacute;xico, Universidad Aut&oacute;noma de Quintana Roo; Centro Universitario de los Altos, Universidad Aut&oacute;noma de Quer&eacute;taro, Centro Universitario de Ciencias de la Salud, Centro Universitario de la Costa, Centro Universitario de la costa Sur y Centro Universitario de Ciencias Biol&oacute;gicas y Agropecuarias de la Universidad de Guadalajara y en el Hospital Civil de Guadalajara. Algunas Publicaciones Libros Factores epistemol&oacute;gicos del desarrollo tecnol&oacute;gico (autor) Aspectos filos&oacute;ficos y sociales del trasplante de &oacute;rganos (coordinador de libro y autor) Alcanzar acuerdos en la pluralidad. Un desaf&iacute;o para la bio&eacute;tica (Cap&iacute;tulo de libro) Nociones preliminares para una bio&eacute;tica latinoamericana (cap&iacute;tulo de libro) Consenso y argumentaci&oacute;n en bio&eacute;tica (cap&iacute;tulo de libro) Argumentaci&oacute;n y tipos de racionalidad (coordinador y autor de un cap&iacute;tulo) Reflexiones sobre Argumentaci&oacute;n en filosof&iacute;a (Coordinador) Universidad y bio/&eacute;tica (coordinador y autor de un cap&iacute;tulo) Art&iacute;culos La evoluci&oacute;n como paradigma en la explicaci&oacute;n de las transformaciones de la t&eacute;cnica Nuevos desaf&iacute;os para la filosof&iacute;a. Tecnolog&iacute;a, bio&eacute;tica y trasplantes de &oacute;rganos Muerte encef&aacute;lica y duelo. El formalismo, y la tecnificaci&oacute;n como factores que propician la negaci&oacute;n de la muerte en el siglo XXI.</p>', '2024-06-12 22:55:38', '2024-06-12 22:55:38'),
(19, 25, '<p>Profesor-Investigador en la Universidad de Guadalajara. Miembro del Sistema Nacional de Investigadores, M&eacute;xico (Nivel III). Doctor en Econom&iacute;a (Estructuras Productivas y Sistema Mundial), Universidad de Par&iacute;s VII, Francia. Maestro en Sociolog&iacute;a, Universidad Iberoamericana, M&eacute;xico. Con investigaciones en pol&iacute;ticas econ&oacute;micas y sociales comparadas, sobre todo en Am&eacute;rica Latina y Corea del Sur. Ha sido autor, co-autor y coordinador de 20 libros, y autor de m&aacute;s de 150 art&iacute;culos en libros y revistas, publicados en Argentina, Australia, Brasil, Canad&aacute;, Corea del Sur, Chile, Estados Unidos, Francia, M&eacute;xico y Uruguay. Ha sido consultor para Banco Mundial, INDES Banco Interamericano del Desarrollo, CEPAL, UNICEF, UNESCO y OIT. Fue fundador y coordinador, y es miembro de la Red Mexicana de Investigaci&oacute;n en Pol&iacute;tica Social. Coordin&oacute; el Grupo de Trabajo Pobreza y Pol&iacute;ticas Sociales de CLACSO y fue Presidente del Consejo de Estudios Latinoamericanos de Asia y Ocean&iacute;a (CELAO). Es investigador del Proyecto de Investigaci&oacute;n Variedades del Capitalismo en Am&eacute;rica Latina (ColMex-Conacyt). Fue Coordinador del Doctorado en Ciencias Sociales de la Universidad de Guadalajara.</p>', '2024-06-12 23:00:18', '2024-06-12 23:00:18'),
(20, 26, '<p>Licenciado en Relaciones Internacionales por El Colegio de M&eacute;xico, Maestro en Ciencias-Sociolog&iacute;a por la Universidad de Wisconsin-Madison en los EUA, Doctor en Ciencias Sociales por la Universidad de Guadalajara (U de G) y CIESAS. Es profesor investigador Titular &ldquo;C&rdquo; de la U de G, cuenta con 38 a&ntilde;os de antig&uuml;edad, est&aacute; adscrito al Departamento de Estudios Urbanos y Sociales, es profesor de la Maestr&iacute;a y el Doctorado en Ciencias Sociales, ambos programas ambos reconocidos como posgrados de nivel internacional por CONACYT, forma parte de las Juntas Acad&eacute;micas de los dos. Hasta el 2017 fue coordinador del Doctorado ya mencionado. Ha dirigido numerosas tesis de doctorado, maestr&iacute;a y licenciatura, algunas de ellas premiadas a nivel nacional. Es miembro del Sistema Nacional de Investigaciones donde ha alcanzado el nivel III. He realizado varios proyectos de investigaci&oacute;n y ha estado a cargo de equipos de investigaci&oacute;n en el campo de las pol&iacute;ticas sociales comparadas (financiados institucionalmente y tambi&eacute;n por instituciones internacionales). He sido consultor de agencias nacionales e internacionales, entre ellas CEPAL y Euro Social. He realizado trabajos de evaluaci&oacute;n acad&eacute;mica. Es autor de numerosos art&iacute;culos y cap&iacute;tulos arbitrados, libros (como autor o editor) e informes t&eacute;cnicos en el campo de las pol&iacute;ticas sociales comparadas, publicados en M&eacute;xico y en varios pa&iacute;ses. He presentado trabajos y dictado conferencias en seminarios nacionales e internacionales. Es codirector de la Revista: &ldquo;Espiral: Estudios de Estado y Sociedad&rdquo;, que forma parte del &Iacute;ndice CONACYT de Revistas Cient&iacute;ficas Mexicanas. He participado en comit&eacute;s acad&eacute;micos, en grupos de investigaci&oacute;n social, consejos editoriales, comit&eacute;s cient&iacute;ficos internacionales, consejos departamentales, consejos acad&eacute;micos de posgrado. Ha pertenecido a consejos acad&eacute;micos internacionales y ha sido funcionario de la Universidad de Guadalajara numerosas veces (Director de la facultad de Filosof&iacute;a y Letra , Jefe del Departamento de Estudios Socio Urbanos, Director de Divisi&oacute;n de Estudios de Estado y Sociedad, Secretario Acad&eacute;mico del CUCSH). Actualmente es miembro del Comit&eacute; Acad&eacute;mico de la colecci&oacute;n &ldquo;La Cuesti&oacute;n Social&rdquo;, editada por &ldquo;Siglo veintiuno editores&rdquo;. Fue miembro del Comit&eacute; Cient&iacute;fico del Programa de Investigaci&oacute;n Comparativa sobre Pobreza (CROP) (ISSC- Noruega) de 2017 a 2018, y CROP Fellow de 2014-2018, tambi&eacute;n miembro del Comit&eacute; Directivo del Consejo Latinoamericano de Ciencias Sociales (CLACSO) como representante de M&eacute;xico de 2009 a 2012. Fue coordinador (de 2003 a 2009) y sigue siendo miembro del Grupo &ldquo;Pobreza y Pol&iacute;ticas Sociales &rdquo;de CLACSO. Ha sido profesor invitado en varias universidades nacionales e internacionales. Y ahora es miembro del Consejo Editorial del Centro Universitario de Ciencias Sociales, designado en agosto de 2019.</p>', '2024-06-12 23:02:35', '2024-06-12 23:02:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audio_post`
--

CREATE TABLE `audio_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `audio_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bulk_mails`
--

CREATE TABLE `bulk_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `show_in_menu` varchar(255) NOT NULL,
  `show_in_home_page` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `show_in_menu`, `show_in_home_page`, `color`, `lang_id`, `created_at`, `updated_at`) VALUES
(1, 'Publicaciones', 'animal', '1', '1', '#b51cb2', 4, '2023-08-17 03:59:47', '2024-06-11 23:10:05'),
(2, 'Gaming', 'gaming', '0', '0', '#2bc3a9', 1, '2023-08-17 03:59:47', '2024-06-12 22:28:46'),
(3, 'Revistas', 'music', '1', '1', '#d514a5', 4, '2023-08-17 03:59:47', '2024-06-11 22:37:00'),
(5, 'Sports', 'sports', '0', '0', '#5c1030', 1, '2023-08-17 03:59:47', '2024-06-12 22:33:58'),
(6, 'Colecciones', 'colecciones', '1', '1', NULL, 4, '2024-06-12 22:29:18', '2024-06-12 22:29:18'),
(7, 'Consejo Editorial', 'consejo-editorial', '1', '1', NULL, 4, '2024-06-12 22:40:54', '2024-06-12 22:40:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency_name` varchar(255) NOT NULL,
  `currency_icon` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_icon`, `currency_code`, `created_at`, `updated_at`) VALUES
(1, 'USD US Dollar', '$', 'USD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(2, 'EUR Euro', '€', 'EUR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(3, 'HKD Hong Kong Dollar', '$', 'HKD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(4, 'INR Indian Rupee', '₹', 'INR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(5, 'AUD Australian Dollar', '$', 'AUD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(6, 'JMD Jamaican Dollar', 'J$', 'JMD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(7, 'CAD Canadian Dollar', '$', 'CAD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(8, 'AED United Arab Emirates Dirham', 'د.إ', 'AED', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(9, 'AFN Afghanistan Afghani', '؋', 'AFN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(10, 'ALL Albania Lek', 'Lek', 'ALL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(11, 'AMD Armenian Dram', '֏', 'AMD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(12, 'ANG Netherlands Antilles Guilder', 'ƒ', 'ANG', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(13, 'AOA Angola kwanza', 'Kz', 'AOA', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(14, 'ARS Argentina Peso', '$', 'ARS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(15, 'AWG Aruba Guilder', 'ƒ', 'AWG', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(16, 'AZN Azerbaijan Manat', '₼', 'AZN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(17, 'BAM Bosnia and Herzegovina Convertible Marka', 'KM', 'BAM', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(18, 'BBD Barbados Dollar', '$', 'BBD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(19, 'BDT Bangladesh Taka', '৳', 'BDT', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(20, 'BGN Bulgaria Lev', 'лв', 'BGN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(21, 'BMD Bermuda Dollar', '$', 'BMD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(22, 'BND Brunei Darussalam Dollar', '$', 'BND', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(23, 'BOB Bolivia Boliviano', '$b', 'BOB', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(24, 'BRL Brazil Real', 'R$', 'BRL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(25, 'BSD Bahamas Dollar', '$', 'BSD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(26, 'BWP Botswana Pula', 'P', 'BWP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(27, 'BZD Belize Dollar', 'BZ$', 'BZD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(28, 'CDF Congo Congolese franc', 'FC', 'CDF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(29, 'CHF Switzerland Franc', 'CHF', 'CHF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(30, 'CNY China Yuan Renminbi', '¥', 'CNY', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(31, 'COP Colombia Peso', '$', 'COP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(32, 'CRC Costa Rica Colon', '₡', 'CRC', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(33, 'CVE Cape Verde Escudo', '$', 'CVE', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(34, 'CZK Czech Republic Koruna', 'Kč', 'CZK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(35, 'DKK Denmark Krone', 'kr', 'DKK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(36, 'DOP Dominican Republic Peso', 'RD$', 'DOP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(37, 'DZD Algeria Dinar', 'دج', 'DZD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(38, 'EGP Egypt Pound', '£', 'EGP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(39, 'ETB Ethiopia Birr', 'ብር', 'ETB', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(40, 'FJD Fiji Dollar', '$', 'FJD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(41, 'FKP Falkland Islands Pound', '£', 'FKP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(42, 'GBP United Kingdom Pound', '£', 'GBP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(43, 'GEL Georgia Lari', '₾', 'GEL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(44, 'GIP Gibraltar Pound', '£', 'GIP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(45, 'GMD Gambia Dalasi', 'D', 'GMD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(46, 'GTQ Guatemala Quetzal', 'Q', 'GTQ', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(47, 'GYD Guyana Dollar', '$', 'GYD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(48, 'HNL Honduras Lempira', 'L', 'HNL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(49, 'HRK Croatia Kuna', 'kn', 'HRK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(50, 'HTG Haiti Gourde', 'G', 'HTG', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(51, 'HUF Hungary Forint', 'Ft', 'HUF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(52, 'IDR Indonesia Rupiah', 'Rp', 'IDR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(53, 'ILS Israel Shekel', '₪', 'ILS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(54, 'ISK Iceland Krona', 'kr', 'ISK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(55, 'KES Kenya Shilling', '/=', 'KES', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(56, 'KGS Kyrgyzstan Som', 'лв', 'KGS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(57, 'KHR Cambodia Riel', '៛', 'KHR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(58, 'KYD Cayman Dollar', '$', 'KYD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(59, 'KZT Kazakhstan Tenge', 'лв', 'KZT', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(60, 'LAK Laos Kip', '₭', 'LAK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(61, 'LBP Lebanon Pound', '£', 'LBP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(62, 'LKR Sri Lanka Rupee', '₨', 'LKR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(63, 'LRD Liberia Dollar', '$', 'LRD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(64, 'LSL Lesotho Loti', 'L', 'LSL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(65, 'MAD Morocco Dirham', 'MAD', 'MAD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(66, 'MDL Moldova Leu', 'L', 'MDL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(67, 'MKD Macedonia Denar', 'ден', 'MKD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(68, 'MMK Myanmar Kyat', 'K', 'MMK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(69, 'MNT Mongolia Tughrik', '₮', 'MNT', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(70, 'MOP Macau P ataca', 'MOP$', 'MOP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(71, 'MRO Mauritania Ouguiya', 'MRU', 'MRO', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(72, 'MUR Mauritius Rupee', '₨', 'MUR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(73, 'MVR Maldives Rufiyaa', '.ރ', 'MVR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(74, 'MWK Malawi Kwacha', 'MK', 'MWK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(75, 'MXN Mexico Peso', '$', 'MXN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(76, 'MYR Malaysia Ringgit', 'RM', 'MYR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(77, 'MZN Mozambique Metical', 'MT', 'MZN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(78, 'NAD Namibia Dollar', '$', 'NAD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(79, 'NGN Nigeria Naira', '₦', 'NGN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(80, 'NIO Nicaragua Cordoba', 'C$', 'NIO', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(81, 'NOK Norway Krone', 'kr', 'NOK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(82, 'NPR Nepal Rupee', '₨', 'NPR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(83, 'NZD New Zealand Dollar', '$', 'NZD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(84, 'PAB Panama Balboa', 'B/.', 'PAB', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(85, 'PEN Peru Nuevo Sol', 'S/.', 'PEN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(86, 'PGK Papua New Guinea Kina', 'K', 'PGK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(87, 'PHP Philippines Peso', '₱', 'PHP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(88, 'PKR Pakistan Rupee', '₨', 'PKR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(89, 'PLN Poland Zloty', 'zł', 'PLN', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(90, 'QAR Qatar Riyal', '﷼', 'QAR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(91, 'RON Romania New Leu', 'lei', 'RON', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(92, 'RSD Serbia Dinar', 'Дин.', 'RSD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(93, 'RUB Russia Ruble', '₽', 'RUB', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(94, 'SAR Saudi Arabia Riyal', '﷼', 'SAR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(95, 'SBD Solomon Islands Dollar', '$', 'SBD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(96, 'SCR Seychelles Rupee', '₨', 'SCR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(97, 'SEK Sweden Krona', 'kr', 'SEK', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(98, 'SGD Singapore Dollar', '$', 'SGD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(99, 'SHP Saint Helena Pound', '£', 'SHP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(100, 'SLL Sierra Leone Leone', 'Le', 'SLL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(101, 'SOS Somalia Shilling', 'S', 'SOS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(102, 'SRD Suriname Dollar', '$', 'SRD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(103, 'STD São Tomé and Príncipe Dobra', 'Db', 'STD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(104, 'SZL Eswatini lilangeni', 'L', 'SZL', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(105, 'THB Thailand Baht', '฿', 'THB', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(106, 'TJS Tajikistan Somoni', 'ЅM', 'TJS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(107, 'TOP Tonga Pa’anga', 'T$', 'TOP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(108, 'TRY Turkey Lira', '₺', 'TRY', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(109, 'TTD Trinidad and Tobago Dollar', 'TT$', 'TTD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(110, 'TWD Taiwan New Dollar', 'NT$', 'TWD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(111, 'TZS Tanzania Shiling', 'TSh', 'TZS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(112, 'UAH Ukraine Hryvna', '₴', 'UAH', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(113, 'UYU Uruguay Peso', '$U', 'UYU', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(114, 'UZS Uzbekistan Som', 'лв', 'UZS', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(115, 'WST Samoa  Tālā', 'WS$', 'WST', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(116, 'XCD Eastern Caribbean States Dollar', '$', 'XCD', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(117, 'YER Yemen Rial', '﷼', 'YER', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(118, 'ZAR South Africa Rand', 'R', 'ZAR', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(119, 'ZMW Zambia Kwacha', 'ZK', 'ZMW', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(120, 'BIF Burundi Franc', 'FBu', 'BIF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(121, 'CLP Chile Peso', '$', 'CLP', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(122, 'DJF Djibouti Franc', 'Fdj', 'DJF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(123, 'GNF Guinea Franc', 'GFr', 'GNF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(124, 'JPY Japan Yen', '¥', 'JPY', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(125, 'KMF Comoros Franc', 'CF', 'KMF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(126, 'KRW Korea Won', '₩', 'KRW', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(127, 'MGA Madagascar Ariary ', 'Ar', 'MGA', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(128, 'PYG Paraguay Guarani', 'Gs', 'PYG', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(129, 'RWF Rwanda Franc', 'R₣', 'RWF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(130, 'UGX Uganda Shilling', 'USh', 'UGX', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(131, 'VND Viet Nam Dong', '₫', 'VND', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(132, 'VUV Vanuatu Vatu', 'VT', 'VUV', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(133, 'XAF Central Africa Central African CFA Franc', 'FCFA', 'XAF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(134, 'XOF West Africa West African CFA Franc', 'CFA', 'XOF', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(135, 'XPF France Franc', '₣', 'XPF', '2023-08-17 03:59:44', '2023-08-17 03:59:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emoji`
--

CREATE TABLE `emoji` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emoji` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `emoji`
--

INSERT INTO `emoji` (`id`, `emoji`, `name`, `status`, `created_at`, `updated_at`) VALUES
(8, '&#128077;', 'like', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(9, '&#128078;', 'dislike', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(10, '&#128525;', 'love', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(11, '&#128545;', 'angry', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(12, '&#128557;', 'sad', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(13, '&#128514;', 'funny', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(14, '&#128561;', 'wow', 1, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(15, '&#128591;', 'pray', 0, '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(16, '&#128076;', 'super', 0, '2023-08-17 03:59:45', '2023-08-17 03:59:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(160) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `followers`
--

CREATE TABLE `followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `following` bigint(20) UNSIGNED NOT NULL,
  `followers` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `album_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(160) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gallery_post`
--

CREATE TABLE `gallery_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `gallery_title` varchar(255) DEFAULT NULL,
  `image_description` text DEFAULT NULL,
  `gallery_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `iso_code` varchar(160) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `front_language_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`id`, `name`, `iso_code`, `is_default`, `created_at`, `updated_at`, `front_language_status`) VALUES
(1, 'English', 'en', 1, '2023-08-17 03:59:47', '2023-08-17 03:59:47', 1),
(4, 'Spanish', 'es', 0, '2023-08-17 03:59:47', '2023-08-17 03:59:47', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mail_settings`
--

CREATE TABLE `mail_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_protocol` int(11) NOT NULL,
  `mail_library` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `mail_port` int(11) NOT NULL,
  `mail_host` varchar(255) NOT NULL,
  `mail_username` varchar(255) NOT NULL,
  `mail_password` varchar(255) NOT NULL,
  `mail_title` varchar(255) NOT NULL,
  `reply_to` varchar(255) NOT NULL,
  `email_verification` int(11) NOT NULL,
  `contact_messages` int(11) DEFAULT NULL,
  `contact_mail` varchar(255) DEFAULT NULL,
  `send_mail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `mail_protocol`, `mail_library`, `encryption`, `mail_port`, `mail_host`, `mail_username`, `mail_password`, `mail_title`, `reply_to`, `email_verification`, `contact_messages`, `contact_mail`, `send_mail`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', 587, 'mail@codingest.com', 'info@codingest.com', 'mail@123', 'Varient', 'info2@codingest.com', 1, 1, 'info3@codingest.com', 'info4@codingest.com', '2023-08-17 03:59:47', '2023-08-17 03:59:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(160) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) DEFAULT NULL,
  `collection_name` varchar(170) NOT NULL,
  `name` varchar(170) NOT NULL,
  `file_name` varchar(170) NOT NULL,
  `mime_type` varchar(160) DEFAULT NULL,
  `disk` varchar(170) NOT NULL,
  `conversions_disk` varchar(170) DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext NOT NULL,
  `custom_properties` longtext NOT NULL,
  `generated_conversions` longtext NOT NULL,
  `responsive_images` longtext NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Setting', 39, '6f082571-1cf6-4ead-afff-8aab6531b660', 'logo', 'Logo', 'Logo.png', 'image/jpeg', 'public', 'public', 75343, '[]', '[]', '[]', '[]', 1, '2024-06-11 22:18:00', '2024-06-11 22:18:00'),
(2, 'App\\Models\\Setting', 40, '276af971-ae52-45d6-88dc-dd84c8064a05', 'favicon', 'Logo', 'Logo.png', 'image/jpeg', 'public', 'public', 75343, '[]', '[]', '[]', '[]', 1, '2024-06-11 22:18:01', '2024-06-11 22:18:01'),
(3, 'App\\Models\\AdSpaces', 1, '795f81da-38d5-40ff-9afc-b43301e80bad', 'post image', 'editorial_cucsh_logo-02 (1)', 'editorial_cucsh_logo-02-(1).jpg', 'image/jpeg', 'public', 'public', 12642, '[]', '[]', '[]', '[]', 1, '2024-06-11 22:31:29', '2024-06-11 22:31:29'),
(4, 'App\\Models\\Post', 22, 'df5c89ab-f13f-4df4-b9c8-f0106dc359fc', 'post image', 'logo_vel', 'logo_vel.jpeg', 'image/jpeg', 'public', 'public', 80248, '[]', '[]', '[]', '[]', 1, '2024-06-11 22:41:15', '2024-06-11 22:41:15'),
(5, 'App\\Models\\Post', 4, 'ae63aea1-b978-4240-b5ee-83ad30cd2676', 'post file', 'cartas_a_mi_violador_ebook', 'cartas_a_mi_violador_ebook.pdf', 'application/pdf', 'public', 'public', 4243668, '[]', '[]', '[]', '[]', 1, '2024-06-11 23:31:05', '2024-06-11 23:31:05'),
(6, 'App\\Models\\Post', 4, '71232bcb-0af9-4114-8d94-4826b9439ca7', 'post image', 'cartas_a_mi_violador', 'cartas_a_mi_violador.png', 'image/png', 'public', 'public', 308799, '[]', '[]', '[]', '[]', 2, '2024-06-11 23:31:35', '2024-06-11 23:31:35'),
(7, 'App\\Models\\Post', 5, 'df86e0ea-ed0b-4a7b-a995-75a52dbca686', 'post image', 'los_movimientos_sociales_y_la_lucha_por_la_democratizacion', 'los_movimientos_sociales_y_la_lucha_por_la_democratizacion.png', 'image/png', 'public', 'public', 286212, '[]', '[]', '[]', '[]', 1, '2024-06-11 23:56:01', '2024-06-11 23:56:01'),
(8, 'App\\Models\\Post', 5, 'd15d0bf6-871c-4ee2-bc48-b70398d10c29', 'post file', 'los_movimientos_sociales_democratizacion_0', 'los_movimientos_sociales_democratizacion_0.pdf', 'application/pdf', 'public', 'public', 12740227, '[]', '[]', '[]', '[]', 2, '2024-06-11 23:56:01', '2024-06-11 23:56:01'),
(9, 'App\\Models\\Post', 6, '1ff9eb8c-2e68-45c4-a6cd-232dcdc5c189', 'post image', 'conceptos_politicos', 'conceptos_politicos.png', 'image/png', 'public', 'public', 452984, '[]', '[]', '[]', '[]', 1, '2024-06-12 00:03:45', '2024-06-12 00:03:45'),
(10, 'App\\Models\\Post', 6, '9f900df4-f4d8-4ffd-a0d7-8f8b9278f556', 'post file', 'conceptospoliticos', 'conceptospoliticos.pdf', 'application/pdf', 'public', 'public', 6007588, '[]', '[]', '[]', '[]', 2, '2024-06-12 00:03:45', '2024-06-12 00:03:45'),
(11, 'App\\Models\\Post', 23, '35f8d597-1d33-40b8-9aa3-f4a778a8020e', 'post image', 'dra._anayanci_fregoso_centeno_copy.directorio_0', 'dra._anayanci_fregoso_centeno_copy.directorio_0.jpg', 'image/jpeg', 'public', 'public', 5584, '[]', '[]', '[]', '[]', 1, '2024-06-12 22:48:25', '2024-06-12 22:48:25'),
(12, 'App\\Models\\Post', 24, '80452c51-82e9-4019-a6eb-fb89ed30d45b', 'post image', 'cuauhtemoc_mayorga_2_0', 'cuauhtemoc_mayorga_2_0.jpg', 'image/jpeg', 'public', 'public', 6969, '[]', '[]', '[]', '[]', 1, '2024-06-12 22:55:38', '2024-06-12 22:55:38'),
(13, 'App\\Models\\Post', 25, 'ff07fc47-d3d3-4e4f-877b-5a0701669f3d', 'post image', 'enrique_val', 'enrique_val.jpg', 'image/jpeg', 'public', 'public', 5732, '[]', '[]', '[]', '[]', 1, '2024-06-12 23:00:18', '2024-06-12 23:00:18'),
(14, 'App\\Models\\Post', 26, '0dfcde30-6acf-4da3-91f7-b7421db29d59', 'post image', 'carlos_barba_0', 'carlos_barba_0.jpg', 'image/jpeg', 'public', 'public', 7629, '[]', '[]', '[]', '[]', 1, '2024-06-12 23:02:35', '2024-06-12 23:02:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_menu_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `show_in_menu` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_26_044558_create_media_table', 1),
(5, '2021_07_28_114939_create_settings_table', 1),
(6, '2021_08_05_085326_create_permission_tables', 1),
(7, '2022_03_09_073651_creat_languages_table', 1),
(8, '2022_03_09_090704_create_categories_table', 1),
(9, '2022_03_09_120141_create_albums_table', 1),
(10, '2022_03_09_120142_create_album_categories_table', 1),
(11, '2022_03_10_054126_create_sub_categories_table', 1),
(12, '2022_03_10_055607_create_menus_table', 1),
(13, '2022_03_10_105057_create_polls_table', 1),
(14, '2022_03_11_054720_create_pages_table', 1),
(15, '2022_03_11_105713_create_navigation_table', 1),
(16, '2022_03_11_121526_create_mail_settings_table', 1),
(17, '2022_03_12_062921_create_seo_tools_table', 1),
(18, '2022_03_14_060718_create_galleries_table', 1),
(19, '2022_03_15_060007_create_posts_table', 1),
(20, '2022_03_17_122201_create_gallery_post', 1),
(21, '2022_03_19_050520_create_article_post', 1),
(22, '2022_03_21_065053_create_sort_list_post', 1),
(23, '2022_03_24_043738_add_parent_menu_id_to_menus_table', 1),
(24, '2022_03_24_111534_change_column_to_article_post_table', 1),
(25, '2022_03_24_123132_create_subscribers', 1),
(26, '2022_03_30_043655_create_analytics_table', 1),
(27, '2022_03_30_085103_create_poll_result_table', 1),
(28, '2022_04_01_062431_create_comments_table', 1),
(29, '2022_04_09_062145_create_contacts_table', 1),
(30, '2022_05_18_103900_change_media_table', 1),
(31, '2022_06_06_075009_add_slug_sub_categories_table', 1),
(32, '2022_07_08_074541_add_dark_mode_field_to_users_table', 1),
(33, '2022_08_24_085555_update_field_type_in_article_post_table', 1),
(34, '2022_12_05_053847_create_video_post', 1),
(35, '2022_12_05_092203_create_rss_feeds_table', 1),
(36, '2022_12_06_064321_create_audio_post', 1),
(37, '2022_12_06_072438_add_rss_feed_to_posts_table', 1),
(38, '2022_12_08_085841_create_ad_spaces_table', 1),
(39, '2022_12_10_052005_add_rss_feed_seeder_to_setting_table', 1),
(40, '2022_12_12_120235_add_ad_spaces_seeder_to_setting_table', 1),
(41, '2022_12_13_043816_add_default_ad_seeder_to_ad_spaces_table', 1),
(42, '2022_12_14_042144_add_default_ad_permission_to_ad_spaces_table', 1),
(43, '2022_12_30_043615_create_currencies_table', 1),
(44, '2022_12_30_044834_create_plans_table', 1),
(45, '2022_12_31_094536_add_customer_role_permission_table', 1),
(46, '2023_01_02_055032_create_transactions_table', 1),
(47, '2023_01_02_055033_create_subscriptions_table', 1),
(48, '2023_01_03_095117_create_post_reactions_table', 1),
(49, '2023_01_04_070136_create_social_accounts_table', 1),
(50, '2023_01_05_051819_add_payment_guide_setting_seeder_table', 1),
(51, '2023_01_16_062238_create_payment_gateways_table', 1),
(52, '2023_01_17_105551_add_payment_rejected_notes_to_subscriptions_table', 1),
(53, '2023_01_18_065211_add_code_in_ad_spaces_table', 1),
(54, '2023_01_24_073135_create_emoji_table', 1),
(55, '2023_01_26_041021_add_default_emojis_on_emoji_table', 1),
(56, '2023_02_08_123737_add_front_language_status_to_languages_table', 1),
(57, '2023_02_16_041456_add_default_emaji_seeder_to_emoji_table', 1),
(58, '2023_02_17_060213_add_emoji_permission_to_emoji_table', 1),
(59, '2023_03_03_043038_create_followers_table', 1),
(60, '2023_03_03_063723_add_about_us_to_users_table', 1),
(61, '2023_03_04_040933_add_social_media_sharing_to_settings_table', 1),
(62, '2023_04_01_072129_add_posts_auto_post_deletion_to_posts_table', 1),
(63, '2023_04_07_050212_add_advanced_setting_seeder_to_settings_table', 1),
(64, '2023_04_07_054635_add_username_to_users_table', 1),
(65, '2023_04_12_124143_add_post_delete_to_posts_table', 1),
(66, '2023_04_13_111805_add_rss_tag_and_date_to_rss_feeds_table', 1),
(67, '2023_05_19_074931_add_index_for_post_id_on_analytics_table', 1),
(68, '2023_05_22_063220_add_show_captcha_on_registration_to_settings', 1),
(69, '2023_06_12_062723_create_email_sending', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(160) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(160) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navigation`
--

CREATE TABLE `navigation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `navigationable_type` varchar(255) DEFAULT NULL,
  `navigationable_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `navigation`
--

INSERT INTO `navigation` (`id`, `navigationable_type`, `navigationable_id`, `order_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Category', 1, 1, NULL, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(2, 'App\\Models\\Category', 2, 2, NULL, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(3, 'App\\Models\\Category', 3, 3, NULL, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(4, 'App\\Models\\Category', 4, 4, NULL, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(5, 'App\\Models\\Category', 5, 5, NULL, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(8, 'App\\Models\\SubCategory', 3, 1, 2, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(9, 'App\\Models\\SubCategory', 4, 1, 1, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(10, 'App\\Models\\SubCategory', 5, 1, 4, '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(14, 'App\\Models\\SubCategory', 6, 2, 1, '2024-06-11 23:11:07', '2024-06-11 23:11:07'),
(15, 'App\\Models\\SubCategory', 7, 3, 1, '2024-06-11 23:13:33', '2024-06-11 23:13:33'),
(16, 'App\\Models\\SubCategory', 8, 4, 1, '2024-06-11 23:14:09', '2024-06-11 23:14:09'),
(17, 'App\\Models\\SubCategory', 9, 5, 1, '2024-06-11 23:14:50', '2024-06-11 23:14:50'),
(18, 'App\\Models\\Category', 6, 7, NULL, '2024-06-12 22:29:18', '2024-06-12 22:29:18'),
(20, 'App\\Models\\SubCategory', 11, 1, 6, '2024-06-12 22:30:21', '2024-06-12 22:30:21'),
(21, 'App\\Models\\SubCategory', 12, 2, 6, '2024-06-12 22:30:49', '2024-06-12 22:30:49'),
(22, 'App\\Models\\SubCategory', 13, 3, 6, '2024-06-12 22:31:11', '2024-06-12 22:31:11'),
(23, 'App\\Models\\SubCategory', 14, 4, 6, '2024-06-12 22:31:21', '2024-06-12 22:31:21'),
(24, 'App\\Models\\SubCategory', 15, 5, 6, '2024-06-12 22:31:44', '2024-06-12 22:31:44'),
(25, 'App\\Models\\SubCategory', 16, 6, 6, '2024-06-12 22:32:10', '2024-06-12 22:32:10'),
(26, 'App\\Models\\SubCategory', 17, 7, 6, '2024-06-12 22:32:30', '2024-06-12 22:32:30'),
(27, 'App\\Models\\SubCategory', 18, 8, 6, '2024-06-12 22:33:00', '2024-06-12 22:33:00'),
(28, 'App\\Models\\SubCategory', 19, 1, 3, '2024-06-12 22:35:40', '2024-06-12 22:35:40'),
(29, 'App\\Models\\Category', 7, 7, NULL, '2024-06-12 22:40:54', '2024-06-12 22:40:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `location` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `show_title` tinyint(1) NOT NULL,
  `show_right_column` tinyint(1) NOT NULL,
  `show_breadcrumb` tinyint(1) NOT NULL,
  `permission` tinyint(1) NOT NULL,
  `content` longtext DEFAULT NULL,
  `parent_menu_link` bigint(20) UNSIGNED DEFAULT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(160) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_gateway_id` int(11) NOT NULL,
  `payment_gateway` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `guard_name` varchar(160) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_ad', 'Manage Ad', 'web', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(2, 'manage_plans', 'Manage Plans', 'web', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(3, 'cash_payment', 'Cash Payment', 'web', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(4, 'manage_menu', 'Manage Menu', 'web', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(5, 'manage_categories', 'Manage Categories', 'web', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(6, 'manage_sub_categories', 'Manage Sub Categories', 'web', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(7, 'manage_albums', 'Manage Albums', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(8, 'manage_albums_category', 'Manage Albums Category', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(9, 'manage_gallery', 'Manage Gallery', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(10, 'manage_pages', 'Manage Pages', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(11, 'manage_settings', 'Manage Settings', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(12, 'manage_staff', 'Manage Staff', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(13, 'manage_roles_permission', 'Manage Roles Permission', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(14, 'manage_add_post', 'Manage Add Post ', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(15, 'manage_all_post', 'Manage All Post', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(16, 'manage_rss_feeds', 'Manage Rss Feeds', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(17, 'manage_mail_setting', 'Manage Mail Setting', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(18, 'manage_polls', 'Manage polls', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(19, 'manage_all_user_can_vote', 'Manage All User Can Vote', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(20, 'manage_only_register_user_vote', 'Manage Only Register User Vote', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(21, 'manage_gallery_image', 'Manage Gallery Image', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(22, 'manage_language', 'Manage Language', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(23, 'manage_navigation', 'Manage Navigation', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(24, 'manage_seo_tools', 'Manage SEO Tools', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(25, 'manage_news_letter', 'Manage News Letter', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(26, 'manage_comment', 'Manage Comment', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(27, 'manage_contacts', 'Manage Contacts', 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `post_count` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `currency_id` bigint(20) UNSIGNED NOT NULL,
  `frequency` int(11) NOT NULL,
  `trial_days` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `plans`
--

INSERT INTO `plans` (`id`, `name`, `post_count`, `price`, `currency_id`, `frequency`, `trial_days`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Standard', 7, 10.00, 1, 1, 7, 1, '2023-08-17 03:59:44', '2023-08-17 03:59:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(181) NOT NULL,
  `option1` varchar(181) DEFAULT NULL,
  `option2` varchar(181) DEFAULT NULL,
  `option3` varchar(181) DEFAULT NULL,
  `option4` varchar(181) DEFAULT NULL,
  `option5` varchar(181) DEFAULT NULL,
  `option6` varchar(181) DEFAULT NULL,
  `option7` varchar(181) DEFAULT NULL,
  `option8` varchar(181) DEFAULT NULL,
  `option9` varchar(181) DEFAULT NULL,
  `option10` varchar(181) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `vote_permission` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poll_result`
--

CREATE TABLE `poll_result` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `visibility` tinyint(1) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `breaking` tinyint(1) NOT NULL,
  `slider` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `show_on_headline` tinyint(1) NOT NULL,
  `show_registered_user` tinyint(1) NOT NULL,
  `optional_url` varchar(255) DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  `post_types` int(11) NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `scheduled_post` int(11) NOT NULL DEFAULT 0,
  `scheduled_post_time` timestamp NULL DEFAULT NULL,
  `scheduled_post_delete` int(11) DEFAULT NULL,
  `scheduled_delete_post_time` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `rss_link` varchar(255) DEFAULT NULL,
  `is_rss` tinyint(1) NOT NULL DEFAULT 0,
  `rss_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `keywords`, `visibility`, `featured`, `breaking`, `slider`, `recommended`, `show_on_headline`, `show_registered_user`, `optional_url`, `tags`, `post_types`, `lang_id`, `category_id`, `sub_category_id`, `scheduled_post`, `scheduled_post_time`, `scheduled_post_delete`, `scheduled_delete_post_time`, `status`, `rss_link`, `is_rss`, `rss_id`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Cartas a mi violador', 'cartas-a-mi-violador', 'Este libro es por todas aquellas a quienes hemos perdido, para todas las que seguimos sufriendo, y porque aún quedan muchas a las que podemos salvar', 'Cartas', 1, 1, 1, 1, 1, 0, 0, NULL, 'Sufrir,Cartas,Salvar', 1, 4, 1, 6, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2023-08-17 03:59:47', '2024-06-12 00:04:08'),
(5, 'Los movimientos sociales y la lucha por la democratización. El movimiento por la Paz con Justicia y Dignidad', 'los-movimientos-sociales-y-la-lucha-por-la-democratizacion-el-movimiento-por-la-paz-con-justicia-y-dignidad', 'En ese sentido, el análisis del Movimiento por la Paz con Justicia y Dignidad que aquí se expone funciona como una forma de evidenciar la impunidad, la corrupción y la represión estatal como obstáculos para el ejercicio de la democracia y la vigenciadel Estado de derecho en México.', 'Impunidad, Corrupcion, Paz, Justicia', 1, 1, 1, 0, 1, 1, 0, NULL, 'Corrupcion,Justicia,Democracia', 1, 4, 1, 6, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2023-08-17 03:59:47', '2024-06-11 23:57:23'),
(6, 'Conceptos políticos Herramientas teóricas y prácticas para el siglo XXI', 'conceptos-politicos-herramientas-teoricas-y-practicas-para-el-siglo-xxi', 'El estudio de conceptos políticos nos ofrece herramientas anlíticas, inspira laimaginación política, e interroga nuestras premisas para pensar y actuar en un contexto de cambio tanto a nivel nacional como internacional. Losartículos incluidos en este libro no pretenden ser expresiones de erudición conceptual, ni ofrecer definiciones (en el sentido ortodoxo) hacia el seno de la disciplina.', 'Politicos', 1, 1, 1, 0, 1, 1, 0, NULL, 'Politicos,Teorias,Practicas,Herramientas', 1, 4, 1, 6, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2023-08-17 03:59:47', '2024-06-12 00:03:52'),
(22, 'Verbum', 'verbum', 'Verbum et Lingua: Didáctica, lengua y cultura', 'Didatica, lengua, cultura', 1, 0, 0, 1, 0, 0, 0, NULL, 'Cultura,Lengua,Idioma', 1, 4, 3, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2024-06-11 22:41:15', '2024-06-12 00:04:07'),
(23, 'Dra. Anayanci Fregoso', 'dra-anayanci-fregoso', 'Doctora por la Universidad de Barcelona, por el programa doctoral Recuperación de la Memoria. América Latina. Maestra en Antropología social por la misma casa de estudios y licenciada en Estudios Latinoamericanos', 'Doctora', 1, 0, 0, 1, 0, 0, 0, NULL, 'Universidad,Doctora', 1, 4, 7, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2024-06-12 22:48:24', '2024-06-12 22:48:48'),
(24, 'Dr. Cuahutémoc Mayorga', 'dr-cuahutemoc-mayorga', 'Licenciado, maestro y doctor en filosofía. Actualmente Coordinador de Posgrados del Centro Universitario de Ciencias Sociales y Humanidades (CUCSH) de la Universidad de Guadalajara (U de G).', 'Licenciado', 1, 0, 0, 1, 0, 0, 0, NULL, 'Universidad,Coordinador,Licenciatura', 1, 4, 7, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2024-06-12 22:55:38', '2024-06-12 22:55:54'),
(25, 'Dr. Enrique Valencia Lomelí', 'dr-enrique-valencia-lomeli', 'Profesor-Investigador en la Universidad de Guadalajara. Miembro del Sistema Nacional de Investigadores, México (Nivel III). Doctor en Economía (Estructuras Productivas y Sistema Mundial), Universidad de París VII, Francia.', 'Profesor', 1, 0, 0, 1, 0, 0, 0, NULL, 'Profesor,Investigador,Doctor', 1, 4, 7, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2024-06-12 23:00:18', '2024-06-12 23:00:18'),
(26, 'Dr. Carlos Barba Solano', 'dr-carlos-barba-solano', 'Licenciado en Relaciones Internacionales por El Colegio de México, Maestro en Ciencias-Sociología por la Universidad de Wisconsin-Madison en los EUA, Doctor en Ciencias Sociales por la Universidad de Guadalajara (U de G) y CIESAS.', 'Licenciado', 1, 0, 0, 1, 0, 0, 0, NULL, 'Licenciado,Maestro,Sociologia', 1, 4, 7, NULL, 0, NULL, 0, NULL, 1, NULL, 0, NULL, 1, '2024-06-12 23:02:35', '2024-06-12 23:02:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_reactions`
--

CREATE TABLE `post_reactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `emoji_id` int(11) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(160) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `guard_name` varchar(160) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_default`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'customer', 'Customer', 1, 'web', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(2, 'admin', 'Admin', 1, 'web', '2023-08-17 03:59:46', '2023-08-17 03:59:46'),
(3, 'staff', 'Staff', 1, 'web', '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(4, 'moderator', 'Moderator', 1, 'web', '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(5, 'author', 'Author', 1, 'web', '2023-08-17 03:59:47', '2023-08-17 03:59:47'),
(6, 'user', 'User', 1, 'web', '2023-08-17 03:59:47', '2023-08-17 03:59:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(4, 2),
(5, 2),
(5, 3),
(5, 4),
(6, 2),
(6, 3),
(8, 4),
(10, 2),
(10, 4),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(14, 5),
(15, 2),
(15, 3),
(15, 4),
(15, 6),
(17, 2),
(18, 2),
(18, 3),
(19, 2),
(20, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feed_name` varchar(255) NOT NULL,
  `feed_url` varchar(255) NOT NULL,
  `no_post` int(11) NOT NULL,
  `language_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `auto_update` tinyint(1) NOT NULL DEFAULT 1,
  `show_btn` tinyint(1) NOT NULL DEFAULT 1,
  `post_draft` tinyint(1) NOT NULL DEFAULT 0,
  `scheduled_delete_post_time` timestamp NULL DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seo_tools`
--

CREATE TABLE `seo_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `site_title` varchar(255) NOT NULL,
  `home_title` varchar(255) NOT NULL,
  `site_description` text NOT NULL,
  `keyword` text NOT NULL,
  `google_analytics` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `seo_tools`
--

INSERT INTO `seo_tools` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keyword`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 1, 'Editorial CUCSH', 'Inicio', 'Obtenga las últimas publicaciones', 'Sitio web de libros, publicaciones y revistas de CUSH', '', '2023-08-17 03:59:47', '2024-06-11 22:23:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'rss_feed_update_time', '3', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(2, 'header', '1', '2023-08-17 03:59:44', '2023-08-17 03:59:44'),
(3, 'index_top', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(4, 'index_bottom', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(5, 'post_details', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(6, 'details_side', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(7, 'categories', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(8, 'trending_post', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(9, 'popular_news', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(10, 'trending_post_index_page', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(11, 'popular_news_index_page', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(12, 'recommended_post_index_page', '0', '2023-08-17 03:59:44', '2024-06-12 22:27:12'),
(13, 'manual_payment_guide', '', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(14, 'facebook', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(15, 'twitter', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(16, 'linkedin', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(17, 'reddit', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(18, 'whatsapp', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(19, 'registration_system', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(20, 'emoji_system', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(21, 'show_captcha_on_registration', '0', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(22, 'application_name', 'Editorial CUCSH', '2023-08-17 03:59:45', '2024-06-11 22:18:42'),
(23, 'contact_no', '+52 3327836068', '2023-08-17 03:59:45', '2024-06-11 22:18:42'),
(24, 'email', 'test@email.com', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(25, 'copy_right_text', 'All Rights Reserved ©2024', '2023-08-17 03:59:45', '2024-06-11 22:19:09'),
(26, 'site_key', ' ', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(27, 'secret_key', ' ', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(28, 'show_captcha', '0', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(29, 'facebook_url', 'https://www.facebook.com/infyom/', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(30, 'twitter_url', 'https://twitter.com/infyom?lang=en', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(31, 'instagram_url', 'https://www.instagram.com/?hl=en', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(32, 'pinterest_url', 'https://www.pinterest.com/', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(33, 'linkedin_url', 'https://www.linkedin.com/organization-guest/company/infyom-technologies?challengeId=AQFgQaMxwSxCdAAAAXOA_wosiB2vYdQEoITs6w676AzV8cu8OzhnWEBNUQ7LCG4vds5-A12UIQk1M4aWfKmn6iM58OFJbpoRiA&submissionId=0088318b-13b3-2416-9933-b463017e531e', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(34, 'vk_url', 'https://vk.com/?lang=en', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(35, 'telegram_url', 'https://www.telegram.org/k/', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(36, 'youtube_url', 'https://www.youtube.com/', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(37, 'show_cookie', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(38, 'cookie_warning', 'Your experience on this site will be improved by allowing cookies.', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(39, 'logo', 'http://127.0.0.1:8000/uploads/logo\\1\\Logo.png', '2023-08-17 03:59:45', '2024-06-11 22:18:00'),
(40, 'favicon', 'http://127.0.0.1:8000/uploads/favicon\\2\\Logo.png', '2023-08-17 03:59:45', '2024-06-11 22:18:01'),
(41, 'contact_address', 'C-303, Atlanta Shopping Mall,Nr.Sudama Chowk, Mota Varachha,Surat-394101, Gujarat, India.', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(42, 'about_text', 'Leading Web & Mobile Development Company with proven expertise, India\'s Leading Laravel Open-Source contributor with over 3 million+ Downloads.', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(43, 'terms&conditions', '', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(44, 'privacy', '', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(45, 'support', '', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(46, 'comment_approved', '1', '2023-08-17 03:59:45', '2023-08-17 03:59:45'),
(47, 'front_language', '4', '2023-08-17 03:59:45', '2024-06-12 22:18:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sort_list_post`
--

CREATE TABLE `sort_list_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `sort_list_title` varchar(255) DEFAULT NULL,
  `image_description` text DEFAULT NULL,
  `sort_list_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `payable_amount` double(8,2) NOT NULL,
  `plan_frequency` int(11) NOT NULL,
  `starts_at` date NOT NULL,
  `ends_at` date NOT NULL,
  `trial_ends_at` date DEFAULT NULL,
  `no_of_post` int(11) NOT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `payment_type` text DEFAULT NULL,
  `reject_notes` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `show_in_menu` varchar(255) NOT NULL DEFAULT '0',
  `parent_category_id` bigint(20) UNSIGNED NOT NULL,
  `lang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `slug`, `show_in_menu`, `parent_category_id`, `lang_id`, `created_at`, `updated_at`) VALUES
(3, 'Mobile Gaming', 'mobile-gaming', '0', 2, 1, '2023-08-17 03:59:47', '2024-06-11 23:11:25'),
(6, '2018 - 2020', '2018-2020', '1', 1, 4, '2024-06-11 23:11:07', '2024-06-11 23:12:17'),
(7, '2012 - 2017', '2012-2017', '1', 1, 4, '2024-06-11 23:13:33', '2024-06-11 23:13:33'),
(8, '1996 - 2011', '1996-2011', '1', 1, 4, '2024-06-11 23:14:09', '2024-06-11 23:14:09'),
(9, '2021 - 2024', '2021-2024', '1', 1, 4, '2024-06-11 23:14:50', '2024-06-11 23:14:50'),
(11, 'Estudios del Hombre', 'estudios-del-hombre', '1', 6, 4, '2024-06-12 22:30:21', '2024-06-12 22:30:21'),
(12, 'Formación Profesional', 'formacion-profesional', '1', 6, 4, '2024-06-12 22:30:49', '2024-06-12 22:30:49'),
(13, 'Cuadernos de CUCSH', 'cuadernos-de-cucsh', '1', 6, 4, '2024-06-12 22:31:11', '2024-06-12 22:31:11'),
(14, 'Graduados', 'graduados', '1', 6, 4, '2024-06-12 22:31:21', '2024-06-12 22:31:21'),
(15, 'Humanidades', 'humanidades', '1', 6, 4, '2024-06-12 22:31:44', '2024-06-12 22:31:44'),
(16, 'Catedras', 'catedras', '1', 6, 4, '2024-06-12 22:32:10', '2024-06-12 22:32:10'),
(17, 'Arborius', 'arborius', '1', 6, 4, '2024-06-12 22:32:30', '2024-06-12 22:32:30'),
(18, 'Academia', 'academia', '1', 6, 4, '2024-06-12 22:33:00', '2024-06-12 22:33:00'),
(19, 'Cientificas', 'cientificas', '1', 3, 4, '2024-06-12 22:35:40', '2024-06-12 22:35:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `type` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(160) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `contact` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `language` varchar(255) DEFAULT 'en',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `about_us` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `contact`, `dob`, `gender`, `status`, `language`, `dark_mode`, `email_verified_at`, `password`, `type`, `blood_group`, `remember_token`, `created_at`, `updated_at`, `about_us`) VALUES
(1, 'Super', 'Admin', 'admin@infynews.com', NULL, '1234567890', NULL, 1, 1, 'es', 0, '2023-08-17 03:59:45', '$2y$10$syCSQqTVTeeWlItpZVs8l.QFN8yTomsQsVZwYMocPYOCWrwFJJKj.', 1, NULL, NULL, '2023-08-17 03:59:45', '2024-06-12 22:23:16', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `video_post`
--

CREATE TABLE `video_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `video_content` longtext DEFAULT NULL,
  `thumbnail_image_url` varchar(255) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `video_embed_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ad_spaces`
--
ALTER TABLE `ad_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `album_categories`
--
ALTER TABLE `album_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_categories_album_id_foreign` (`album_id`),
  ADD KEY `album_categories_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `analytics`
--
ALTER TABLE `analytics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `analytics_post_id_index` (`post_id`);

--
-- Indices de la tabla `article_post`
--
ALTER TABLE `article_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_post_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `audio_post`
--
ALTER TABLE `audio_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audio_post_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `bulk_mails`
--
ALTER TABLE `bulk_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emoji`
--
ALTER TABLE `emoji`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emoji_name_unique` (`name`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_following_foreign` (`following`),
  ADD KEY `followers_followers_foreign` (`followers`);

--
-- Indices de la tabla `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `galleries_title_unique` (`title`),
  ADD KEY `galleries_lang_id_foreign` (`lang_id`),
  ADD KEY `galleries_album_id_foreign` (`album_id`),
  ADD KEY `galleries_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `gallery_post`
--
ALTER TABLE `gallery_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_post_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_iso_code_unique` (`iso_code`);

--
-- Indices de la tabla `mail_settings`
--
ALTER TABLE `mail_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_menu_id_foreign` (`parent_menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_parent_menu_link_foreign` (`parent_menu_link`),
  ADD KEY `pages_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`),
  ADD KEY `plans_currency_id_foreign` (`currency_id`);

--
-- Indices de la tabla `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `polls_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `poll_result`
--
ALTER TABLE `poll_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poll_result_user_id_foreign` (`user_id`),
  ADD KEY `poll_result_poll_id_foreign` (`poll_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_foreign` (`created_by`),
  ADD KEY `posts_lang_id_foreign` (`lang_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `posts_rss_id_foreign` (`rss_id`);

--
-- Indices de la tabla `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_reactions_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rss_feeds_feed_url_unique` (`feed_url`),
  ADD KEY `rss_feeds_language_id_foreign` (`language_id`),
  ADD KEY `rss_feeds_user_id_foreign` (`user_id`),
  ADD KEY `rss_feeds_category_id_foreign` (`category_id`),
  ADD KEY `rss_feeds_subcategory_id_foreign` (`subcategory_id`);

--
-- Indices de la tabla `seo_tools`
--
ALTER TABLE `seo_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_tools_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `sort_list_post`
--
ALTER TABLE `sort_list_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sort_list_post_post_id_foreign` (`post_id`);

--
-- Indices de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_plan_id_foreign` (`plan_id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_transaction_id_foreign` (`transaction_id`);

--
-- Indices de la tabla `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_parent_category_id_foreign` (`parent_category_id`),
  ADD KEY `sub_categories_lang_id_foreign` (`lang_id`);

--
-- Indices de la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indices de la tabla `video_post`
--
ALTER TABLE `video_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_post_post_id_foreign` (`post_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ad_spaces`
--
ALTER TABLE `ad_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `albums`
--
ALTER TABLE `albums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `album_categories`
--
ALTER TABLE `album_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `analytics`
--
ALTER TABLE `analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `article_post`
--
ALTER TABLE `article_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `audio_post`
--
ALTER TABLE `audio_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bulk_mails`
--
ALTER TABLE `bulk_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `emoji`
--
ALTER TABLE `emoji`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `followers`
--
ALTER TABLE `followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gallery_post`
--
ALTER TABLE `gallery_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `mail_settings`
--
ALTER TABLE `mail_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `poll_result`
--
ALTER TABLE `poll_result`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `post_reactions`
--
ALTER TABLE `post_reactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `seo_tools`
--
ALTER TABLE `seo_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sort_list_post`
--
ALTER TABLE `sort_list_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `video_post`
--
ALTER TABLE `video_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `album_categories`
--
ALTER TABLE `album_categories`
  ADD CONSTRAINT `album_categories_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `album_categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `article_post`
--
ALTER TABLE `article_post`
  ADD CONSTRAINT `article_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `audio_post`
--
ALTER TABLE `audio_post`
  ADD CONSTRAINT `audio_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_followers_foreign` FOREIGN KEY (`followers`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `followers_following_foreign` FOREIGN KEY (`following`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `galleries_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `album_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `galleries_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `gallery_post`
--
ALTER TABLE `gallery_post`
  ADD CONSTRAINT `gallery_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_menu_id_foreign` FOREIGN KEY (`parent_menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pages_parent_menu_link_foreign` FOREIGN KEY (`parent_menu_link`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `plans`
--
ALTER TABLE `plans`
  ADD CONSTRAINT `plans_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `polls`
--
ALTER TABLE `polls`
  ADD CONSTRAINT `polls_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `poll_result`
--
ALTER TABLE `poll_result`
  ADD CONSTRAINT `poll_result_poll_id_foreign` FOREIGN KEY (`poll_id`) REFERENCES `polls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poll_result_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_rss_id_foreign` FOREIGN KEY (`rss_id`) REFERENCES `rss_feeds` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `post_reactions`
--
ALTER TABLE `post_reactions`
  ADD CONSTRAINT `post_reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD CONSTRAINT `rss_feeds_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rss_feeds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `seo_tools`
--
ALTER TABLE `seo_tools`
  ADD CONSTRAINT `seo_tools_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`);

--
-- Filtros para la tabla `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sort_list_post`
--
ALTER TABLE `sort_list_post`
  ADD CONSTRAINT `sort_list_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sub_categories_parent_category_id_foreign` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `video_post`
--
ALTER TABLE `video_post`
  ADD CONSTRAINT `video_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
