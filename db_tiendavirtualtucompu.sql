-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-05-2023 a las 07:54:35
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_tiendavirtualtucompu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecrated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecrated`, `ruta`, `status`) VALUES
(10, 'Laptops y notebooks', 'Las tarjetas gráficas son componentes esenciales para potenciar el rendimiento visual de tu computadora. Estas potentes unidades de procesamiento están diseñadas para mejorar la calidad de los gráficos en juegos, aplicaciones de diseño y edición de video, y ofrecen una experiencia visual inmersiva y fluida. Con una amplia gama de modelos disponibles, desde opciones básicas hasta tarjetas de gama alta, puedes elegir la que mejor se adapte a tus necesidades y presupuesto. Ya sea que busques una actualización para tu PC de juegos o una mejora para tus tareas de diseño, una tarjeta gráfica adecuada marcará la diferencia en la calidad y rendimiento visual de tu sistema.', 'img_3995258a31bd7f8cac65743d3c1c44ea.jpg', '2023-04-27 22:59:11', 'laptops-y-notebooks', 1),
(11, 'LENTES DE REALIDAD VIRTUAL', 'Los lentes de realidad virtual son dispositivos innovadores que te sumergen en mundos virtuales tridimensionales. Estos dispositivos te permiten explorar y disfrutar de experiencias de realidad virtual de forma inmersiva. Con tecnología avanzada de seguimiento de movimiento y pantallas de alta resolución, los lentes de realidad virtual te transportan a lugares imaginarios, te permiten jugar juegos emocionantes y te sumergen en contenido multimedia interactivo. Algunos modelos incluso cuentan con controles intuitivos que te permiten interactuar con el entorno virtual. Si deseas adentrarte en nuevos universos llenos de emocionantes posibilidades, los lentes de realidad virtual son una opción fascinante que te hará vivir experiencias únicas y envolventes.', 'img_bd17aebde9354393d564455507266a76.jpg', '2023-04-27 23:00:21', 'lentes-de-realidad-virtual', 1),
(12, 'LAPTOPS GAMER Y WORKSTATIONS', 'En nuestra tienda, encontrarás una amplia selección de laptops diseñadas tanto para jugadores entusiastas como para profesionales creativos. Las laptops gamer están equipadas con potentes componentes, como procesadores de alto rendimiento, tarjetas gráficas dedicadas de última generación y una gran cantidad de memoria RAM. Estas laptops ofrecen un rendimiento excepcional y una experiencia de juego inmersiva, permitiéndote disfrutar de tus juegos favoritos con gráficos impresionantes y una jugabilidad fluida, todo ello en un formato portátil.', 'img_9173815fdaefc8445d4ff71ecba2d7ca.jpg', '2023-04-27 23:04:07', 'laptops-gamer-y-workstations', 1),
(13, 'LAPTOPS', 'Descubre nuestra amplia gama de laptops que se adaptan a tus necesidades y estilo de vida. Nuestras laptops combinan rendimiento, portabilidad y diseño elegante para brindarte la herramienta perfecta tanto para el trabajo como para el entretenimiento. board', 'img_586ffccae2043b9579253375aa973dd9.jpg', '2023-04-28 18:21:41', 'laptops', 1),
(14, 'AUDIFONOS', 'Ya sea que estés disfrutando de tu música favorita, viendo películas o jugando videojuegos, nuestros audífonos te brindan un sonido envolvente y detallado, permitiéndote apreciar cada nota y efecto sonoro con una calidad excepcional. Elige nuestros audífonos y lleva tu experiencia auditiva al siguiente nivel. board', 'img_31925d633fbd2b8f56d71b45a4f4ae35.jpg', '2023-05-01 12:04:20', 'audifonos', 1),
(15, 'IPHONE', 'Equipos de la marca APPLE board', 'img_ef10f7a916a83bbc4926301fa7edae3e.jpg', '2023-05-15 00:23:15', 'iphone', 1),
(16, 'OFERTAS ESPECIALES', '¡Descubre nuestras increíbles ofertas especiales en productos seleccionados! En esta categoría, encontrarás una variedad de artículos de alta calidad a precios reducidos. Ya sea que estés buscando una laptop, una impresora, accesorios de computadora o cualquier otro producto tecnológico, nuestras ofertas especiales te brindan la oportunidad de obtener grandes descuentos y ahorrar dinero. Renovamos regularmente nuestra selección de ofertas, por lo que siempre hay algo nuevo para explorar. Aprovecha estas oportunidades para obtener productos de alta calidad a precios atractivos y disfrutar de un excelente valor por tu dinero. No te pierdas nuestras ofertas especiales y descubre cómo puedes obtener más por menos en nuestra tienda de computadoras.', 'img_2c1efa792695205447120c458315a93b.jpg', '2023-05-26 20:22:03', 'ofertas-especiales', 1),
(17, 'Nuevos Productos', 'Aqui van los nuevos productos (SALIDA)', 'img_b6b9f6eb22fe50f1aebe5d5cff816ed1.jpg', '2023-05-26 20:26:36', 'nuevos-productos', 1),
(18, 'Computadoras de escritorio', 'Encuentra la computadora de escritorio perfecta para tus necesidades profesionales o personales. Nuestras computadoras de escritorio ofrecen potencia, capacidad de expansión y rendimiento confiable para tareas exigentes o multitarea intensiva.', 'img_769fcc375203e0c861acd5db332d89c4.jpg', '2023-05-26 23:02:20', 'computadoras-de-escritorio', 1),
(19, 'Impresoras y escáneres', 'Simplifica tus tareas de impresión y escaneo con nuestras impresoras y escáneres de alta calidad. Ya sea que necesites imprimir documentos profesionales o escanear fotografías, ofrecemos soluciones versátiles y eficientes para satisfacer tus necesidades.', 'img_bf61badf7c6d96118a879f12dfd6bb62.jpg', '2023-05-26 23:02:35', 'impresoras-y-escaneres', 1),
(20, 'Dispositivos de almacenamiento', 'Mantén tus archivos seguros y accesibles con nuestros dispositivos de almacenamiento. Desde unidades de estado sólido (SSD) hasta discos duros externos, encontrarás opciones de almacenamiento confiables y de alta capacidad para respaldar y almacenar tus datos importantes.', 'img_a87dc383368db96ee35a2387af5723c3.jpg', '2023-05-26 23:02:51', 'dispositivos-de-almacenamiento', 1),
(21, 'Audio y entretenimiento', 'Mejora tu experiencia de entretenimiento con nuestros productos de audio. Desde auriculares y altavoces inalámbricos hasta sistemas de sonido envolvente, te ofrecemos soluciones de audio de alta calidad para disfrutar de música, películas y juegos inmersivos.', 'subir_foto.png', '2023-05-26 23:03:04', 'audio-y-entretenimiento', 0),
(22, 'Software y licencias', 'Optimiza tu productividad con nuestro catálogo de software y licencias. Desde sistemas operativos hasta suites de productividad y programas especializados, ofrecemos soluciones de software para satisfacer tus necesidades comerciales y personales.', 'img_8d97c07e88b80a6eb9ff9405b67baf7b.jpg', '2023-05-26 23:03:17', 'software-y-licencias', 1),
(23, 'Teclados', 'Descubre nuestra amplia selección de teclados que combinan comodidad, funcionalidad y durabilidad para mejorar tu experiencia de escritura y trabajo en tu computadora. Ya sea que necesites un teclado estándar, uno ergonómico o uno diseñado para juegos, tenemos opciones que se adaptan a tus preferencias y necesidades específicas.', 'img_0f2210dbaf088e86ce1b020c29c2650f.jpg', '2023-05-26 23:04:10', 'teclados', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_temp`
--

INSERT INTO `detalle_temp` (`id`, `personaid`, `productoid`, `precio`, `cantidad`, `transaccionid`) VALUES
(17, 1, 17, '3699.00', 1, 'omobpv74na8q2rl8ld193nlqjd'),
(18, 11, 17, '3699.00', 1, 'omobpv74na8q2rl8ld193nlqjd'),
(19, 1, 23, '230.00', 1, '7cktsjpdtvu130hjg286gdv8ui'),
(20, 1, 23, '230.00', 1, 'gvejv4loui6pbcsf72pepv4lfc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(15, 18, 'pro_a92cbb774f62ea5e22bd4861416201f2.jpg'),
(16, 18, 'pro_62b00751e34f3a9bf703890a24a56ce5.jpg'),
(17, 18, 'pro_49f259a87afe2cc20698f636ca7e74ee.jpg'),
(18, 18, 'pro_a0c1b1fa0d48f3623fcdb446e8cad5a1.jpg'),
(19, 19, 'pro_52ac4a03913954866d1eb6d3f96d87d5.jpg'),
(20, 19, 'pro_8537baedd0499e77c51f612ce78a9a4f.jpg'),
(21, 19, 'pro_43d024f55b402a20324a8ec34c29b58a.jpg'),
(22, 19, 'pro_93fa1d96f415ff760d7ef360652bc079.jpg'),
(23, 19, 'pro_40c8804fed2d76dad03687c01230908b.jpg'),
(24, 17, 'pro_49c9c7f405941f5b82bdc9610cd96bc0.jpg'),
(25, 21, 'pro_7003c19f3ba4cd888e8a16fc43c7f74e.jpg'),
(26, 21, 'pro_766318a6725b8aecd06670abceaef3ad.jpg'),
(27, 21, 'pro_1dbd727d121ffd7d8613a7cf69936cca.jpg'),
(28, 21, 'pro_a13793f72cf2d40184055d834a8702a2.jpg'),
(29, 22, 'pro_19cecbede8bf3e4e50de45303e794098.jpg'),
(30, 22, 'pro_a674091ee251d25389df366fa6952b8b.jpg'),
(31, 22, 'pro_7c0580114953cac341321e112599866c.jpg'),
(32, 22, 'pro_50358fdbac84f82a2bc013addbd184b6.jpg'),
(33, 23, 'pro_ca9b6780baf03b3a8835decbf82c6549.jpg'),
(34, 23, 'pro_ca9b6780baf03b3a8835decbf82c6549.jpg'),
(35, 23, 'pro_940fb3d0e4310bcd90700ecc6a1dba24.jpg'),
(36, 23, 'pro_64769966e972dd57b55a6e947d21b78f.jpg'),
(37, 23, 'pro_6ec8d0a3e92fd432759a0f9fb596de66.jpg'),
(38, 24, 'pro_87773938c8a93fc7c0bf1833b9557d00.jpg'),
(39, 24, 'pro_8ba091824b637fc39f7df80e3be71f22.jpg'),
(40, 24, 'pro_fbd8dcba6cc0a81643f01189248d8ab0.jpg'),
(41, 24, 'pro_63bf7913f51899ddbd7e9d02a644dc97.jpg'),
(42, 25, 'pro_766318a6725b8aecd06670abceaef3ad.jpg'),
(43, 25, 'pro_1dbd727d121ffd7d8613a7cf69936cca.jpg'),
(44, 25, 'pro_87773938c8a93fc7c0bf1833b9557d00.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de la tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorías', 'Categorías Productos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(156, 2, 1, 1, 0, 0, 0),
(157, 2, 2, 1, 0, 0, 0),
(158, 2, 3, 0, 0, 0, 0),
(159, 2, 4, 0, 0, 0, 0),
(160, 2, 5, 0, 0, 0, 0),
(161, 2, 6, 0, 0, 0, 0),
(222, 1, 1, 1, 0, 0, 0),
(223, 1, 2, 1, 1, 1, 1),
(224, 1, 3, 1, 1, 1, 1),
(225, 1, 4, 1, 1, 1, 1),
(226, 1, 5, 1, 0, 0, 0),
(227, 1, 6, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '6156548496', 'Henry', 'Jaramillo', 489161326, 'jh412478@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '415616', 'Henry Jaramillo', 'San Martin de Porres', 'b5a885543730b5a04ce7-1a53e864e0f9fb85a901-dd511c70b7248cfa01ac-e2119b4aa5e122f3156b', 1, '2023-01-06 12:45:22', 1),
(2, '25659222', 'Samuel', 'Jaramillo', 34524245, 'jh516@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '', '', 1, '2023-01-06 12:47:36', 1),
(3, '16165', 'Karla', 'Abelino', 72755277, 'karla18@gmail.com', '481f6cc0511143ccdd7e2d1b1b94faf0a700a8b49cd13922a70b5ae28acaa8c5', 'CD', 'AE', 'CEEC', '', 3, '2023-01-11 20:38:48', 0),
(5, '345345', 'Sam', 'Wors', 275242, 'jh412@gmail.com', '2fdf9bb19615eb6700bd54c794ab383330ba26a8b1e0b115e9e08073164e4c7f', '5242452', 'Sam', 'Lima', '', 3, '2023-04-11 14:14:07', 0),
(6, '', 'Gustavo', 'Campos', 991644337, 'gustavo2015.gcr@gmail.com', 'ed81397702ffacf16d97f5f09784e9e6222ebefb1a6c732be4e02ce033081f23', '', '', '', '', 3, '2023-05-20 10:13:33', 1),
(7, '', 'Luis', 'Perez', 994665887, 'gustavo2015@gmail.com', '2ad464e725c1f8850242a42235d5b383db52fdb0776b91f30b8c21d2725ec83a', '', '', '', '', 3, '2023-05-20 10:15:14', 0),
(8, '', 'Gustavo', 'Ramirez', 921458771, 'gustavo2018@gmail.com', '45fa34b64295e2fee94133db4d3a250f4e46556ab1ccf55861869e5f17333160', '', '', '', '', 3, '2023-05-20 10:37:21', 0),
(9, '', 'Gustavo', 'CAIM', 12311231231, 'asdasg@info.com', 'f9c5ce055040850350b567368c06a1b16efcd3963a6c9dd84a4bfb2fd8f189f3', '', '', '', '', 3, '2023-05-20 10:42:47', 0),
(10, '', 'Joaquin', 'Lescano', 99164337777, 'joaco@gmail.com', '35a7c63d528a6a4f9f363446c095efa3aeaf255cdab2092fa492f8d2a1914e24', '', '', '', '', 3, '2023-05-20 13:14:23', 0),
(11, '', 'Gustavo', 'Campos', 9916423142, 'gustavo2092@gmail.com', 'db0c35b5d820847e64d9061d2c023aed4614fb39383c6cd2f762a957618c0595', '', '', '', '', 3, '2023-05-28 01:46:57', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `categoriaid`, `codigo`, `nombre`, `descripcion`, `precio`, `stock`, `imagen`, `datecreated`, `ruta`, `status`) VALUES
(17, 15, '1514647988', 'IPHONE 13', '<p>El iPhone 13 es la &uacute;ltima incorporaci&oacute;n a la aclamada l&iacute;nea de smartphones de Apple. Dise&ntilde;ado con una est&eacute;tica elegante y sofisticada, este dispositivo ofrece una experiencia de usuario excepcional. El iPhone 13 cuenta con una pantalla Super Retina XDR brillante y n&iacute;tida, que muestra colores vibrantes y un contraste impresionante. Su potente chip A15 Bionic, combinado con una generosa cantidad de memoria RAM, garantiza un rendimiento r&aacute;pido y fluido en todas las tareas.</p> <p>Con una c&aacute;mara avanzada de doble o triple lente (seg&uacute;n el modelo), el iPhone 13 te permite capturar fotos y videos de alta calidad, incluso en condiciones de poca luz. Adem&aacute;s, ofrece caracter&iacute;sticas como el Modo Noche, Deep Fusion y la capacidad de grabar videos en resoluci&oacute;n 4K. La duraci&oacute;n de la bater&iacute;a ha sido mejorada en comparaci&oacute;n con modelos anteriores, permiti&eacute;ndote disfrutar de m&aacute;s tiempo de uso sin preocupaciones.</p> <p>El iPhone 13 tambi&eacute;n incluye caracter&iacute;sticas adicionales como resistencia al agua, carga inal&aacute;mbrica, Face ID para una autenticaci&oacute;n segura y soporte para conectividad 5G, lo que te permite aprovechar al m&aacute;ximo la velocidad y el ancho de banda de las redes m&oacute;viles de &uacute;ltima generaci&oacute;n.</p> <p>Si est&aacute;s buscando un smartphone potente, vers&aacute;til y lleno de caracter&iacute;sticas innovadoras, el iPhone 13 es una opci&oacute;n que te ofrece un rendimiento excepcional y una experiencia de usuario superior.</p>', '3699.00', 10, '', '2023-05-26 21:22:21', 'iphone-13', 1),
(18, 12, '2154798798', 'LAPTOP GAMER DELL G15 G15RE-A386GRY-PUS AMD RYZEN 7 6800H 16GB DDR5 512GB SSD T VIDEO RTX 3050TI 4GB 15.6 FHD WINDOWS 11', '<ul class=\"ficha-tecnica\"> <li>Marca :&nbsp;<strong>Dell</strong></li> <li>Modelo :&nbsp;<strong>G15RE-A386GRY-PUS</strong></li> <li>Producto :&nbsp;<strong>Laptop Gaming</strong></li> <li>Procesador :&nbsp;<strong>AMD Ryzen 7-6800H</strong></li> <li>Tarjeta de video :&nbsp;<strong>NVIDIA RTX 3050TI</strong></li> <li>Memoria RAM :&nbsp;<strong>16GB DDR5</strong></li> <li>Almacenamiento :&nbsp;<strong>512GB(SSD)</strong></li> <li>Pantalla :&nbsp;<strong>15.6\'\'FHD</strong></li> <li>Teclado :&nbsp;<strong>Ingl&eacute;s</strong></li> <li>Sistema Operativo :&nbsp;<strong>Windows 11</strong></li> <li>SKUP:&nbsp;<strong>GO002</strong></li> <li>IMPORTANTE:&nbsp;<strong>FECHA DE LLEGADA 26-05</strong></li> </ul>', '4619.00', 20, '', '2023-05-26 23:40:57', 'laptop-gamer-dell-g15-g15re-a386gry-pus-amd-ryzen-7-6800h-16gb-ddr5-512gb-ssd-t-video-rtx-3050ti-4gb-156-fhd-windows-11', 1),
(19, 13, '1214524124', 'LAPTOP HP 15-DY2059LA I3-1115G4 8GB 256 SSD 15.6\" HD WINDOWS11', '<ul class=\"ficha-tecnica\"> <li>Marca:&nbsp;<strong>HP</strong></li> <li>Modelo:&nbsp;<strong>15-DY2059LA</strong></li> <li>Producto:&nbsp;<strong>Laptop</strong></li> <li>Procesador:&nbsp;<strong>Core i3 - 11th Gen</strong></li> <li>Tarjeta de Video:&nbsp;<strong>Intel UHD Graphics</strong></li> <li>Memoria RAM:&nbsp;<strong>8GB DDR4</strong></li> <li>Almacenamiento:&nbsp;<strong>256GB(SSD)</strong></li> <li>Pantalla:&nbsp;<strong>15.6\" HD</strong></li> <li>Teclado:&nbsp;<strong>Espa&ntilde;ol</strong></li> <li>Sistema Operativo:&nbsp;<strong>Windows 11</strong></li> <li>SKUP :&nbsp;<strong>ECO22</strong></li> </ul>', '1200.00', 15, '', '2023-05-26 23:42:57', 'laptop-hp-15-dy2059la-i3-1115g4-8gb-256-ssd-156\"-hd-windows11', 1),
(20, 15, '1231242141', 'Iphone 13', '<p>asdasdasd</p>', '123.00', 12, '', '2023-05-28 01:48:39', 'iphone-13', 0),
(21, 12, '1231241212', 'LAPTOP LENOVO IDEAPAD GAMING 3 AMD RYZEN 5 16GB RAM 512GB SSD 15.6\'\'', '<table class=\"table table-striped\"> <tbody> <tr> <td>Marca</td> <td>LENOVO</td> </tr> <tr> <td>Largo (cm)</td> <td>35.9 cm</td> </tr> <tr> <td>NFC</td> <td>No</td> </tr> <tr> <td>Lector de tarjetas</td> <td>No</td> </tr> <tr> <td>Parlantes</td> <td>2</td> </tr> <tr> <td>Tipo de Producto</td> <td>Laptops</td> </tr> <tr> <td>Disco duro</td> <td>512GB</td> </tr> <tr> <td>Peso (kg)</td> <td>2.25 kg</td> </tr> <tr> <td>Wi-Fi</td> <td>S&iacute;</td> </tr> <tr> <td>Micr&oacute;fono integrado</td> <td>S&iacute;</td> </tr> <tr> <td>Teclado Num&eacute;rico</td> <td>S&iacute;</td> </tr> <tr> <td>Resoluci&oacute;n de la pantalla</td> <td>1920 x 1080</td> </tr> <tr> <td>Tarjeta de video</td> <td>NVIDIA GeForce RTX 3050 (4GB)</td> </tr> <tr> <td>Memoria RAM</td> <td>16GB</td> </tr> <tr> <td>Color</td> <td>Negro</td> </tr> <tr> <td>Tipo Procesador</td> <td>AMD Ryzen 5 5600H</td> </tr> <tr> <td>Garant&iacute;a</td> <td>1 a&ntilde;o</td> </tr> <tr> <td>Incluye mouse</td> <td>No</td> </tr> <tr> <td>Capacidad de bater&iacute;a</td> <td>45 Wh</td> </tr> <tr> <td>Sistema operativo</td> <td>Windows 11 Home</td> </tr> <tr> <td>Tipo de bater&iacute;a</td> <td>Pol&iacute;mero de litio de 45 Wh</td> </tr> <tr> <td>Duraci&oacute;n Bater&iacute;a (Hr)</td> <td>Hasta 5 Horas</td> </tr> <tr> <td>Cantidad puertos USB</td> <td>3</td> </tr> <tr> <td>Resoluci&oacute;n video</td> <td>Full HD (1920 x 1080)</td> </tr> <tr> <td>Tama&ntilde;o de pantalla rango</td> <td>Entre 15 a 16.9\"</td> </tr> <tr> <td>Bluetooth</td> <td>S&iacute;</td> </tr> <tr> <td>Modelo</td> <td>IdeaPad Gaming 3</td> </tr> <tr> <td>Conectividad</td> <td>Wi-Fi / Bluetooth / Ethernet</td> </tr> <tr> <td>Tipo de memoria</td> <td>DDR4</td> </tr> <tr> <td>Ancho (cm)</td> <td>25.1 cm</td> </tr> <tr> <td>Velocidad Procesador (GHz)</td> <td>3.3 Ghz</td> </tr> <tr> <td>Puerto VGA</td> <td>0</td> </tr> <tr> <td>Unidad &oacute;ptica</td> <td>No</td> </tr> <tr> <td>Procesador</td> <td>AMD Ryzen 5</td> </tr> <tr> <td>Pantalla Touch</td> <td>No</td> </tr> <tr> <td>Alto (cm)</td> <td>2.42 cm</td> </tr> <tr> <td>Puerto ethernet</td> <td>S&iacute;</td> </tr> <tr> <td>Entrada de audio</td> <td>S&iacute;</td> </tr> <tr> <td>Tama&ntilde;o de la pantalla</td> <td>15.6</td> </tr> <tr> <td>Puertos HDMI</td> <td>1</td> </tr> <tr> <td>C&aacute;mara</td> <td>HD 720p con obturador de c&aacute;mara</td> </tr> <tr> <td>Tipo de disco duro</td> <td>SSD</td> </tr> </tbody> </table>', '3599.00', 23, '', '2023-05-28 02:24:10', 'laptop-lenovo-ideapad-gaming-3-amd-ryzen-5-16gb-ram-512gb-ssd-156\'\'', 1),
(22, 19, '2312412412', 'IMPRESORA HP TODO EN UNO SMART TANK 580 INALÁMBRICA', '<table class=\"table table-striped\"> <tbody> <tr> <td>Marca</td> <td>HP</td> </tr> <tr> <td>Peso (kg)</td> <td>5.03</td> </tr> <tr> <td>Impresi&oacute;n doble cara</td> <td>No</td> </tr> <tr> <td>Tipo de Producto</td> <td>Impresoras</td> </tr> <tr> <td>Modelo</td> <td>Smart Tank 580</td> </tr> <tr> <td>Tecnolog&iacute;a de impresi&oacute;n</td> <td>Inyecci&oacute;n de Tinta</td> </tr> <tr> <td>Velocidad max. Impresi&oacute;n</td> <td>Negro (ISO): Hasta 12 ppm, Color(ISO): Hasta 5 ppm</td> </tr> <tr> <td>Resoluci&oacute;n de impresi&oacute;n</td> <td>M&aacute;s 1200 dpi</td> </tr> <tr> <td>Compatibilidad (TINTAS)</td> <td>-</td> </tr> <tr> <td>Formatos compatibles (TAMA&Ntilde;O PAPEL)</td> <td>A4, B5, A6, SobreDL, legal.</td> </tr> <tr> <td>Compatibilidad</td> <td>Papel com&uacute;n, papeles para folletos mate, papeles para folletos con brillo, papeles fotogr&aacute;ficos, sobres, otros papeles especiales de inyecci&oacute;n de tinta.</td> </tr> <tr> <td>Tipo de pantalla</td> <td>LCD</td> </tr> <tr> <td>Bluetooth</td> <td>S&iacute;</td> </tr> <tr> <td>Wi-Fi integrado</td> <td>S&iacute;</td> </tr> <tr> <td>Cantidad puertos USB</td> <td>1</td> </tr> <tr> <td>Puerto ethernet</td> <td>No</td> </tr> <tr> <td>Alto (cm)</td> <td>15.72</td> </tr> <tr> <td>Ancho (cm)</td> <td>43.46</td> </tr> <tr> <td>Tipo de esc&aacute;ner</td> <td>Cama Plana</td> </tr> <tr> <td>Resoluci&oacute;n de esc&aacute;ner (dpi)</td> <td>Hardware: Hasta 1200 x 1200 dpi, &Oacute;ptica: hasta 1200 ppp.</td> </tr> <tr> <td>Velocidad de copia</td> <td>JPEG, PDF</td> </tr> <tr> <td>Largo (cm)</td> <td>36.15</td> </tr> <tr> <td>Conexi&oacute;n inal&aacute;mbrica</td> <td>Wi-Fi, Bluetooth</td> </tr> <tr> <td>Capacidad de papel (hojas)</td> <td>100</td> </tr> <tr> <td>Copias m&uacute;ltiples</td> <td>S&iacute;</td> </tr> <tr> <td>Tipo de impresoras</td> <td>Multifuncional</td> </tr> <tr> <td>Impresi&oacute;n sin bordes</td> <td>S&iacute;</td> </tr> <tr> <td>Incluye cable USB</td> <td>No</td> </tr> <tr> <td>Incluye cartuchos</td> <td>S&iacute;</td> </tr> <tr> <td>Garant&iacute;a</td> <td>2 a&ntilde;os ( 1 a&ntilde;o + 1 a&ntilde;o si el cliente se registra en http://www.hp.com/go/extendmywarranty dentro de los 60 primeros d&iacute;as de compra).</td> </tr> <tr> <td>Cantidad de cartuchos de impresi&oacute;n</td> <td>5</td> </tr> <tr> <td>Resoluci&oacute;n de la fotocopiadora (dpi)</td> <td>Negro (texto y gr&aacute;ficos): hasta 1200 ppp, Color(texto y gr&aacute;ficos): Hasta 1200 x 1200 ppp.</td> </tr> <tr> <td>Resoluci&oacute;n de impresi&oacute;n a Color (dpi)</td> <td>Hasta 4800 x 1200 dpi.</td> </tr> <tr> <td>Resoluci&oacute;n de impresi&oacute;n en negro (dpi)</td> <td>Hasta 1200 x 1200 ppp.</td> </tr> <tr> <td>Velocidad de la fotocopiadora a Color (ipm)</td> <td>Hasta 1200 x 1200 ppp.</td> </tr> <tr> <td>Velocidad de la fotocopiadora en blanco y negro (ipm)</td> <td>Hasta 1200 ppp.</td> </tr> </tbody> </table>', '739.00', 30, '', '2023-05-28 02:25:26', 'impresora-hp-todo-en-uno-smart-tank-580-inalambrica', 1),
(23, 23, '1255545675', 'TECLADO REDRAGON DYAUS 2 ( K509RGB SP ) GAMING | RETROILUMINADO', '<p>DAYDREAM<br><br>FRESCOR ESTIVAL.<br>Menta, lila, blanco y amarillo se combinan en una est&eacute;tica rom&aacute;ntica con un punto de refrescante mojito. Disfruta con POP Keys en Daydream.<br><br>SENTIMIENTOS MUY A MANO<br><br>&iquest;Felicidad? &iquest;Enojo? &iquest;Amor? POP Keys ofrece ocho teclas de emojis intercambiables que puedes combinar como quieras seg&uacute;n tu estado de &aacute;nimo. Las puedes asignar a cualquier emoji existente, mediante software Logitech, o puedes presionar la tecla de men&uacute; de emojis para elegir uno mientras conversas con tus amigos.<br><br>OPTA POR LO MEC&Aacute;NICO<br><br>Disfruta de una escritura casi adictiva con teclas mec&aacute;nicas al estilo de las de las m&aacute;quinas de escribir. Siente tus dedos moverse por las teclas y oye el clic-clac de los interruptores mec&aacute;nicos con cada pulsaci&oacute;n. Gratamente tradicional.<br><br>CONEXI&Oacute;N SIMULT&Aacute;NEA DE TRES DISPOSITIVOS<br><br>Expr&eacute;sate en varios dispositivos a la vez, mediante las teclas Easy Switch de POP Keys, que te permiten alternar con una sola pulsaci&oacute;n entre 3 dispositivos emparejados simult&aacute;neamente. Conecta tu computadora, tablet o tel&eacute;fono De momento, los emojis y el software se admiten &uacute;nicamente en Windows y macOS.&nbsp;por tecnolog&iacute;a Bluetooth&nbsp;inal&aacute;mbrica o con el receptor USB Logi Bolt.<br><br>Funciona con Windows, macOS, Chrome OS, Android, iOS y iPadOS</p>', '230.00', 12, '', '2023-05-28 02:27:09', 'teclado-redragon-dyaus-2-(-k509rgb-sp-)-gaming-|-retroiluminado', 1),
(24, 14, '6784576657', 'AUDIFONOS TRUST GXT450 BLIZZ RGB 7.1', '<ul class=\"ficha-tecnica\"> <li>Marca:&nbsp;Trust</li> <li>Modelo:&nbsp;GXT450 BLIZZ</li> <li>Producto:&nbsp;Aud&iacute;fono</li> <li>Reproducci&oacute;n de sonido:&nbsp;Sonido envolvente</li> <li>Canales de audio:&nbsp;7.1</li> <li>Respuesta frecuente:&nbsp;20 Hz - 20 000 Hz</li> <li>Tama&ntilde;o del controlador:&nbsp;40mm</li> <li>Unidades de controlador:&nbsp;2</li> <li>Sensibilidad:&nbsp;120dB</li> <li>Nivel de presi&oacute;n de sonido:&nbsp;113dB</li> <li>Micr&oacute;fono:&nbsp;s&iacute;</li> </ul>', '148.00', 62, '', '2023-05-28 02:30:21', 'audifonos-trust-gxt450-blizz-rgb-71', 1),
(25, 10, '5798794546', 'TECLADO GAMER DELL ALIENWARE AW310K BLACK', '<p><strong>Dell</strong>&nbsp;te ofrece su exclusiva l&iacute;nea de accesorios para c&oacute;mputo fabricados con materiales premium para garantizar resistencia y durabilidad. Rinde al m&aacute;ximo en tus actividades y disfruta de los beneficios que esta exclusiva marca trae para ti.</p> <p>&nbsp;</p> <p>No esperes m&aacute;s, elige tu modelo favorito y empieza a disfrutar de una experiencia &uacute;nica.</p> <p>Las mejores marcas a un clic de tus manos.</p>', '229.99', 30, '', '2023-05-28 02:43:26', 'teclado-gamer-dell-alienware-aw310k-black', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Gerente', 'Encargado de supervisar la tienda', 1),
(3, 'Cliente', 'Clientes de la tienda', 1),
(4, 'Asesor', 'Encargado de atender a los clientes en sus dudas', 1),
(5, 'Ayudante de ventas', 'Encargado de ayudar al asesor cuando hay muchos clientes', 1),
(6, 'Cajero/a', 'Encargado de cobrar las productos que se vendan', 1),
(7, 'Mesero/a', 'Encargado de repartir las pizzas a las mesas y de mantenerlas limpias', 0),
(8, 'Repartidor', 'Encargado de repartir las pizzas para los clientes que compraron por llamada o a través de la pagina web', 0),
(26, 'modifca', 'modifica', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'Paypal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Deposito bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
