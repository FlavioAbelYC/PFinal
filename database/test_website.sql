-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2021 a las 06:05:09
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_website`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `is_about`
--

CREATE TABLE `is_about` (
  `about_id` int(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `is_about`
--

INSERT INTO `is_about` (`about_id`, `title`, `content`) VALUES
(1, 'Steel Balance E.I.R.L.', '<div class=\"row showcase-section\">\r\n<div class=\"col-md-6\"><img alt=\"\" src=\"data:image/jpeg;base64,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\" style=\"width: 450px; height: 302px;\" /></div>\r\n\r\n<div class=\"col-md-6\">\r\n<div class=\"about-text\">\r\n<h3>Nuestra Empresa</h3>\r\n\r\n<p>La empresa tiene una gran experiencia en el &aacute;mbito de mantenimiento y calibraci&oacute;n de balanzas sea de mina, centros comerciales o industriales. Adem&aacute;s de dar todo en el campo, nuestros trabajadores son titulados y tienen experiencia en el campo que mas dominan. Steel balance tiene experiencia en varias minas del sur como Southern, Cerro Verde, Minsur, Tisur, Bambas, etc.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-md-4\"><!-- Heading and para -->\r\n<div class=\"block-heading-two\">\r\n<h3><span>&iquest;Por qu&eacute; escogernos?</span></h3>\r\n</div>\r\n\r\n<p>No solamente ofrecemos un trabajo impecable y profesional, sino que tambi&eacute;n ofrecemos una garant&iacute;a en nuestro trabajo, ya que si fallamos en la calibraci&oacute;n, se le da soluci&oacute;n al instante</p>\r\n</div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"block-heading-two\">\r\n<h3><span>Nuestras Metas</span></h3>\r\n</div>\r\n<!-- Accordion starts -->\r\n\r\n<div class=\"panel-group\" id=\"accordion-alt3\"><!-- Panel. Use \"panel-XXX\" class for different colors. Replace \"XXX\" with color. -->\r\n<div class=\"panel\"><!-- Panel heading -->\r\n<div class=\"panel-heading\">\r\n<h4 class=\"panel-title\"><a data-parent=\"#accordion-alt3\" data-toggle=\"collapse\" href=\"#collapseOne-alt3\">Mejorar Tiempos</a></h4>\r\n</div>\r\n\r\n<div class=\"panel-collapse collapse\" id=\"collapseOne-alt3\"><!-- Panel body -->\r\n<div class=\"panel-body\">En el trabajo siempre hay formas de reducir tiempos, ya sea en reducir procesos redundantes hasta reducir tiempo en el transporte, pero nuestra meta en s&iacute; es la de manejar mejores procesos para as&iacute; reducir tiempo sin perjudicar el resultado del trabajo.</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"panel\">\r\n<div class=\"panel-heading\">\r\n<h4 class=\"panel-title\"><a data-parent=\"#accordion-alt3\" data-toggle=\"collapse\" href=\"#collapseTwo-alt3\">Mejorar el uso de Herramientas</a></h4>\r\n</div>\r\n\r\n<div class=\"panel-collapse collapse\" id=\"collapseTwo-alt3\">\r\n<div class=\"panel-body\">Uno de nuestros problemas y que vamos a mejorar es en el tiempo que demoramos en transportar las herramientas, ya que hay diferentes tipos de balanzas y est&aacute;n posicionadas en diferentes lugares, esto quiere decir que hay diferentes tipos de herramientas que se usa en estos lugares, es por ello que estamos haciendo un conteo de las balanzas que maneja las minas con la finalidad de usar las herramientas necesarias y reducir tiempos.</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"panel\">\r\n<div class=\"panel-heading\">\r\n<h4 class=\"panel-title\"><a data-parent=\"#accordion-alt3\" data-toggle=\"collapse\" href=\"#collapseThree-alt3\">Ser la mejor Empresa</a></h4>\r\n</div>\r\n\r\n<div class=\"panel-collapse collapse\" id=\"collapseThree-alt3\">\r\n<div class=\"panel-body\">Nosotros al dar el mejor de nuestros trabajos, queremos ser reconocidos a nivel nacional, ya que solo somos reconocidos en el sur, por ello es que se quiere expandir por otras regiones para estar a disposici&oacute;n de cada empresa que requiera de nuestros servicios.</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Accordion ends --></div>\r\n\r\n<div class=\"col-md-4\">\r\n<div class=\"block-heading-two\">\r\n<h3>Nuestra experiencia</h3>\r\n</div>\r\n\r\n<h6>Balanzas de centros comerciales</h6>\r\n\r\n<div class=\"progress pb-sm\"><!-- White color (progress-bar-white) -->\r\n<div aria-valuemax=\"100\" aria-valuemin=\"0\" aria-valuenow=\"40\" class=\"progress-bar progress-bar-red\" role=\"progressbar\" style=\"width: 40%\"><span class=\"sr-only\">15% Complete (success)</span></div>\r\n</div>\r\n\r\n<h6>Balanzas Industriales</h6>\r\n\r\n<div class=\"progress pb-sm\">\r\n<div aria-valuemax=\"100\" aria-valuemin=\"0\" aria-valuenow=\"60\" class=\"progress-bar progress-bar-green\" role=\"progressbar\" style=\"width: 60%\"><span class=\"sr-only\">31% Complete (success)</span></div>\r\n</div>\r\n\r\n<h6>Balanzas Mineras</h6>\r\n\r\n<div class=\"progress pb-sm\">\r\n<div aria-valuemax=\"100\" aria-valuemin=\"0\" aria-valuenow=\"80\" class=\"progress-bar progress-bar-lblue\" role=\"progressbar\" style=\"width: 80%\"><span class=\"sr-only\">54% Complete (success)</span></div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `is_message`
--

CREATE TABLE `is_message` (
  `message_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `status` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `is_message`
--

INSERT INTO `is_message` (`message_id`, `date`, `name`, `email`, `message`, `status`) VALUES
(1, '2021-07-15 03:32:59', 'abel', 'abel_fyc@gmail.com', 'Necesito información sobre la capacidad de trabajadores', 'n'),
(2, '2021-07-16 02:14:37', 'Gustavo', 'gustavo@hotmail.com', 'Quiero informes', 'n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `is_portfolio`
--

CREATE TABLE `is_portfolio` (
  `portfolio_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `is_portfolio`
--

INSERT INTO `is_portfolio` (`portfolio_id`, `title`, `image`) VALUES
(4, 'Mina de Minsur', 'minsur.jpg'),
(5, 'Mina de Tisur', 'tisur.jpg'),
(6, 'Mina de Tambomayo', 'tambomayo.jpg'),
(7, 'Mina de Bambas', 'bambas.jpg'),
(8, 'Mina de Southern', 'southern.jpg'),
(9, 'Mina de Cerro Verde', 'cerro verde.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `is_service`
--

CREATE TABLE `is_service` (
  `service_id` int(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `is_service`
--

INSERT INTO `is_service` (`service_id`, `title`, `content`) VALUES
(1, 'Nuestros servicios', '<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"about-logo\">\r\n<h3>Nuestros Mejores Servicios</h3>\r\n\r\n<p>Nuestros servicios ofrecen desde limpieza, medidas y calibraci&oacute;n de balanzas, un ejemplo de ello seria Cerro Verde que maneja 3 tipos de paneles de calibraci&oacute;n electr&oacute;nica, de los cuales 2 de ellos se deben adquirir conocimientos en el extranjero, es por ello que nuestro trabajo profesional, contamos con especialistas en el rubro.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 info-blocks\">\r\n<div class=\"info-blocks-in\">\r\n<h3>&nbsp;</h3>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 info-blocks\">\r\n<div class=\"info-blocks-in\">\r\n<h3>Balanzas Mineras</h3>\r\n\r\n<p>Las balanzas mineras son las m&aacute;s complejas de dar mantenimiento, ya que como son las m&aacute;s grandes de los 3 tipos que manejamos adem&aacute;s de seguir rigurosamente los protocolos de cada diferente minera, es por ello que los hacen complejas, adem&aacute;s de que el mantenimiento debe ser m&aacute;s preciso porque cualquier peque&ntilde;o error podr&iacute;a costar millones a la empresa.&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 info-blocks\">\r\n<div class=\"info-blocks-in\">\r\n<h3>Balanzas Industriales</h3>\r\n\r\n<p>Estas balanzas a diferencia de las mineras son mas sencillas ya que la cantidad de polines a los cuales se les debe dar mantenimiento son menores, por ello el mantenimiento es m&aacute;s f&aacute;cil y r&aacute;pido.</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-sm-4 info-blocks\">\r\n<div class=\"info-blocks-in\">\r\n<h3>Balanzas de Centros Comerciales</h3>\r\n\r\n<p>Las balanzas de los centros comerciales son las m&aacute;s f&aacute;ciles y r&aacute;pidas de dar mantenimiento, adem&aacute;s de que no necesita mucha mano de obra, solamente 2 uno que sea el t&eacute;cnico especializado en mantenimiento y el otro que es el que calibrar&aacute;.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row service-v1 margin-bottom-40\">\r\n<div class=\"col-md-4 md-margin-bottom-40\">\r\n<div class=\"card small\">\r\n<div class=\"card-image\"><img alt=\"\" src=\"https://vidmargroup.com/wp-content/uploads/2018/02/bascula-integradora2-1024x576.png\" style=\"width: 270px; height: 160px;\" /></div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 md-margin-bottom-40\">\r\n<div class=\"card small\">\r\n<div class=\"card-image\"><img alt=\"\" src=\"https://www.acorsa-peru.com/wp-content/uploads/2017/11/FAJA-TRANSPORTADORA-PVC-SANITARIA-PARA-ALIMENTOS.jpg\" style=\"width: 300px; height: 200px;\" />&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-md-4 md-margin-bottom-40\">\r\n<div class=\"card small\">\r\n<div class=\"card-image\"><span class=\"card-title\"><img alt=\"\" src=\"data:image/jpeg;base64,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\" style=\"width: 250px; height: 147px;\" /></span></div>\r\n</div>\r\n</div>\r\n</div>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `is_user`
--

CREATE TABLE `is_user` (
  `user_id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `is_user`
--

INSERT INTO `is_user` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'SteelBalance', '454296f231d39d9708aef0634bbdb80a', 'Flavio Abel');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `is_about`
--
ALTER TABLE `is_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indices de la tabla `is_message`
--
ALTER TABLE `is_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `is_portfolio`
--
ALTER TABLE `is_portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indices de la tabla `is_service`
--
ALTER TABLE `is_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indices de la tabla `is_user`
--
ALTER TABLE `is_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `is_about`
--
ALTER TABLE `is_about`
  MODIFY `about_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `is_message`
--
ALTER TABLE `is_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `is_portfolio`
--
ALTER TABLE `is_portfolio`
  MODIFY `portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `is_service`
--
ALTER TABLE `is_service`
  MODIFY `service_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `is_user`
--
ALTER TABLE `is_user`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
