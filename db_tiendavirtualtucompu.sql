-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 26-06-2023 a las 02:40:29
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
(10, 'Laptops y notebooks', 'Las tarjetas gráficas son componentes esenciales para potenciar el rendimiento visual de tu computadora. Estas potentes unidades de procesamiento están diseñadas para mejorar la calidad de los gráficos en juegos, aplicaciones de diseño y edición de video, y ofrecen una experiencia visual inmersiva y fluida. Con una amplia gama de modelos disponibles, desde opciones básicas hasta tarjetas de gama alta, puedes elegir la que mejor se adapte a tus necesidades y presupuesto. Ya sea que busques una actualización para tu PC de juegos o una mejora para tus tareas de diseño, una tarjeta gráfica adecuada marcará la diferencia en la calidad y rendimiento visual de tu sistema.', 'img_91309a24ecd922bf2a213ac76e78e15e.jpg', '2023-04-27 22:59:11', 'laptops-y-notebooks', 1),
(11, 'LENTES DE REALIDAD VIRTUAL', 'Los lentes de realidad virtual son dispositivos innovadores que te sumergen en mundos virtuales tridimensionales. Estos dispositivos te permiten explorar y disfrutar de experiencias de realidad virtual de forma inmersiva. Con tecnología avanzada de seguimiento de movimiento y pantallas de alta resolución, los lentes de realidad virtual te transportan a lugares imaginarios, te permiten jugar juegos emocionantes y te sumergen en contenido multimedia interactivo. Algunos modelos incluso cuentan con controles intuitivos que te permiten interactuar con el entorno virtual. Si deseas adentrarte en nuevos universos llenos de emocionantes posibilidades, los lentes de realidad virtual son una opción fascinante que te hará vivir experiencias únicas y envolventes.', 'img_de8875c0ddaa94bce5b3787eb7ff0b46.jpg', '2023-04-27 23:00:21', 'lentes-de-realidad-virtual', 1),
(12, 'LAPTOPS GAMER Y WORKSTATIONS', 'En nuestra tienda, encontrarás una amplia selección de laptops diseñadas tanto para jugadores entusiastas como para profesionales creativos. Las laptops gamer están equipadas con potentes componentes, como procesadores de alto rendimiento, tarjetas gráficas dedicadas de última generación y una gran cantidad de memoria RAM. Estas laptops ofrecen un rendimiento excepcional y una experiencia de juego inmersiva, permitiéndote disfrutar de tus juegos favoritos con gráficos impresionantes y una jugabilidad fluida, todo ello en un formato portátil.', 'img_957f73071623f84355f134c2b833ca03.jpg', '2023-04-27 23:04:07', 'laptops-gamer-y-workstations', 1),
(13, 'LAPTOPS', 'Descubre nuestra amplia gama de laptops que se adaptan a tus necesidades y estilo de vida. Nuestras laptops combinan rendimiento, portabilidad y diseño elegante para brindarte la herramienta perfecta tanto para el trabajo como para el entretenimiento. board.', 'img_51bfdd2dec7bbf7769f12159465dd52e.jpg', '2023-04-28 18:21:41', 'laptops', 1),
(14, 'AUDIFONOS', 'Ya sea que estés disfrutando de tu música favorita, viendo películas o jugando videojuegos, nuestros audífonos te brindan un sonido envolvente y detallado, permitiéndote apreciar cada nota y efecto sonoro con una calidad excepcional. Elige nuestros audífonos y lleva tu experiencia auditiva al siguiente nivel. board', 'img_19bc015263d0c29e30161bc4d950e3a8.jpg', '2023-05-01 12:04:20', 'audifonos', 1),
(15, 'IPHONE', 'Equipos de la marca APPLE board', 'img_234695052492cdcd6faab90fb7c649b7.jpg', '2023-05-15 00:23:15', 'iphone', 1),
(16, 'OFERTAS ESPECIALES', '¡Descubre nuestras increíbles ofertas especiales en productos seleccionados! En esta categoría, encontrarás una variedad de artículos de alta calidad a precios reducidos. Ya sea que estés buscando una laptop, una impresora, accesorios de computadora o cualquier otro producto tecnológico, nuestras ofertas especiales te brindan la oportunidad de obtener grandes descuentos y ahorrar dinero. Renovamos regularmente nuestra selección de ofertas, por lo que siempre hay algo nuevo para explorar. Aprovecha estas oportunidades para obtener productos de alta calidad a precios atractivos y disfrutar de un excelente valor por tu dinero. No te pierdas nuestras ofertas especiales y descubre cómo puedes obtener más por menos en nuestra tienda de computadoras.', 'img_7421e60dc9635634a56f438c68050b4b.jpg', '2023-06-17 00:36:59', 'ofertas-especiales', 1),
(17, 'Nuevos Productos', 'Aqui van los nuevos productos (SALIDA)', 'img_8ca81d02ef4979ea6ffdc1fd5281c6ed.jpg', '2023-06-17 00:37:46', 'nuevos-productos', 1),
(18, 'Computadoras de escritorio', 'Encuentra la computadora de escritorio perfecta para tus necesidades profesionales o personales. Nuestras computadoras de escritorio ofrecen potencia, capacidad de expansión y rendimiento confiable para tareas exigentes o multitarea intensiva.', 'img_389c62ab3576795bdb28ea1bb78df06e.jpg', '2023-06-17 00:38:18', 'computadoras-de-escritorio', 1),
(19, 'Impresoras y escáneres', 'Simplifica tus tareas de impresión y escaneo con nuestras impresoras y escáneres de alta calidad. Ya sea que necesites imprimir documentos profesionales o escanear fotografías, ofrecemos soluciones versátiles y eficientes para satisfacer tus necesidades.', 'img_301ad0254610ad9a460266b3b37b2cf3.jpg', '2023-06-17 00:38:42', 'impresoras-y-escaneres', 1),
(20, 'Dispositivos de almacenamiento', 'Mantén tus archivos seguros y accesibles con nuestros dispositivos de almacenamiento. Desde unidades de estado sólido (SSD) hasta discos duros externos, encontrarás opciones de almacenamiento confiables y de alta capacidad para respaldar y almacenar tus datos importantes.', 'img_76cfe8e97435024e0b5db7e0978353e8.jpg', '2023-06-17 00:39:41', 'dispositivos-de-almacenamiento', 1),
(21, 'Audio y entretenimiento', 'Mejora tu experiencia de entretenimiento con nuestros productos de audio. Desde auriculares y altavoces inalámbricos hasta sistemas de sonido envolvente, te ofrecemos soluciones de audio de alta calidad para disfrutar de música, películas y juegos inmersivos.', 'img_4d2ad577bda98762a1a144df56569001.jpg', '2023-06-17 00:44:06', 'audio-y-entretenimiento', 1),
(22, 'Software y licencias', 'Optimiza tu productividad con nuestro catálogo de software y licencias. Desde sistemas operativos hasta suites de productividad y programas especializados, ofrecemos soluciones de software para satisfacer tus necesidades comerciales y personales.', 'img_fa22d9a9784f02b988e10f8499f056ae.jpg', '2023-06-17 00:44:39', 'software-y-licencias', 1),
(23, 'Teclados', 'Descubre nuestra amplia selección de teclados que combinan comodidad, funcionalidad y durabilidad para mejorar tu experiencia de escritura y trabajo en tu computadora. Ya sea que necesites un teclado estándar, uno ergonómico o uno diseñado para juegos, tenemos opciones que se adaptan a tus preferencias y necesidades específicas.', 'img_3dc6dd0bb9fe7286bd3cab18f6d3dfd6.jpg', '2023-06-17 00:45:03', 'teclados', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `dispositivo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `useragent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Henry', 'pruebamail@gmail.com', 'mensajeprueba', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-15 16:51:23'),
(2, 'Henry', 'fgfdgl@gmail.com', 'mensajeprueba', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-15 16:51:45'),
(3, 'Henry', 'henrs@gmail.com', 'kjnfd', '127.0.0.1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', '2023-06-15 16:52:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_pedido`
--

INSERT INTO `detalle_pedido` (`id`, `pedidoid`, `productoid`, `precio`, `cantidad`) VALUES
(1, 2, 15, '23.00', 1),
(2, 3, 16, '5.00', 2),
(3, 3, 14, '123.00', 1),
(4, 3, 15, '23.00', 1),
(9, 8, 15, '23.00', 1),
(10, 9, 15, '23.00', 6),
(11, 10, 16, '5.00', 1),
(12, 11, 7, '13.00', 2),
(13, 12, 9, '230.00', 1),
(14, 13, 14, '123.00', 2),
(15, 13, 9, '230.00', 1),
(16, 13, 15, '23.00', 12),
(17, 13, 3, '102.00', 1),
(18, 13, 7, '13.00', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `detalle_temp`
--

INSERT INTO `detalle_temp` (`id`, `personaid`, `productoid`, `precio`, `cantidad`, `transaccionid`) VALUES
(13, 3, 15, '23.00', 1, 'bfjmealfrtskvcip7b8k5vl9c8'),
(14, 3, 3, '102.00', 1, 'bfjmealfrtskvcip7b8k5vl9c8'),
(16, 10, 2, '21.90', 1, 'kt95trc59lngpc2jarppptkt83'),
(33, 1, 14, '123.00', 1, '5b107b6drjeqlntjrqbfbrnnfr');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `productoid`, `img`) VALUES
(2, 2, 'pro_c8bcad5bc026f101ea06330cbc21ea32.jpg'),
(3, 3, 'pro_316d98b5d7fa869fe5feaaa5ff2d5314.jpg'),
(4, 7, 'pro_0de88cc6d77069c36607fae9ab5af234.jpg'),
(5, 9, 'pro_964f30a113cb77c4d363c4456ad7078b.jpg'),
(6, 13, 'pro_5c926e5d91dc5e166317fd0d5dc1c76f.jpg'),
(7, 14, 'pro_8e5a130fb95aa49bea7d6561a2244efa.jpg'),
(8, 15, 'pro_f5514f516ecd3e045378c492f0311caa.jpg'),
(9, 16, 'pro_adfabcdbd586884cc5f13031dfffaad6.jpg'),
(10, 17, 'pro_e705ff6cfef89aa804a9e4452801081b.jpg'),
(11, 18, 'pro_41613a0539ef0e47fd33f664bc0d792e.jpg'),
(12, 18, 'pro_ab14f9477b2c3fb1d5432b107bb92bcd.jpg'),
(13, 18, 'pro_99b3a7feef42676f2c9f7951f6dc4792.jpg'),
(14, 18, 'pro_f8ac893c0280fb7dc7cc6ca5cb69c6b1.jpg'),
(15, 19, 'pro_e7b7daa42f65b7eff2f9055119767d6a.jpg'),
(16, 19, 'pro_401b74e04b3919049115eebbb0221f9b.jpg'),
(17, 19, 'pro_bbb629be2b4f7bc005c3b398518d9bec.jpg'),
(18, 19, 'pro_b82cfc73cf44f660843af779af4197bd.jpg'),
(19, 19, 'pro_fa22d9a9784f02b988e10f8499f056ae.jpg'),
(20, 21, 'pro_76cfe8e97435024e0b5db7e0978353e8.jpg'),
(21, 21, 'pro_986eeab8b237010d79ded9861e33fd8a.jpg'),
(22, 21, 'pro_f37f8caa0a702bdc1f1ed8d012889d75.jpg'),
(23, 21, 'pro_4d2ad577bda98762a1a144df56569001.jpg'),
(25, 22, 'pro_0c86301a6930b0a4d0ce3389932a1082.jpg'),
(26, 22, 'pro_de8875c0ddaa94bce5b3787eb7ff0b46.jpg'),
(27, 22, 'pro_3b6610bf083e2ef549f85945735840bd.jpg'),
(28, 22, 'pro_b82cfc73cf44f660843af779af4197bd.jpg'),
(29, 23, 'pro_a7a38957962175dd234a6b0d502db220.jpg'),
(30, 23, 'pro_4276319ff1bac4016da9dbf505f3ce00.jpg'),
(31, 23, 'pro_ba9539841ec273e942c2e08d8d22ea34.jpg'),
(32, 23, 'pro_0cfed43a7c21e678bd54883fe4152837.jpg'),
(33, 24, 'pro_f44ff02c8c977c457dce9606cc73bc30.jpg'),
(34, 24, 'pro_03593c314ac5684cebd93c607abe1d8d.jpg'),
(35, 24, 'pro_bedf4a7c14f7a8ccf8a86adb8218f60a.jpg'),
(36, 24, 'pro_4de3025b5989d5150e19aea2f0fae423.jpg'),
(37, 25, 'pro_053b320d24a9812741fcdc9a42a15dc3.jpg'),
(38, 25, 'pro_7accc9142579858785c0be3d94b49fa6.jpg'),
(39, 25, 'pro_f773ea2dd139fc6b05be90baced7834a.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de la tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorías', 'Categorías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`idpedido`, `referenciacobro`, `idtransaccionpaypal`, `datospaypal`, `personaid`, `fecha`, `costo_envio`, `monto`, `tipopagoid`, `direccion_envio`, `status`) VALUES
(2, NULL, '9B9059610V1745110', '{\"id\":\"2HM14188TY7289526\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"31.00\"},\"payee\":{\"email_address\":\"sb-zzqp726098652@business.example.com\",\"merchant_id\":\"J8W7PVLRTGV96\"},\"description\":\"Compra de artículos en Pizza Raul por $ 31\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"9B9059610V1745110\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"31.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2023-05-30T21:56:19Z\",\"update_time\":\"2023-05-30T21:56:19Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-mpabg26090493@personal.example.com\",\"payer_id\":\"SFSLFRB7GUXUL\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2023-05-30T21:55:46Z\",\"update_time\":\"2023-05-30T21:56:19Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/2HM14188TY7289526\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2023-05-30 16:56:19', '0.00', '31.00', 1, 'adas, dsadas', 'Completo'),
(3, NULL, '5FP10163SX576163T', '{\"id\":\"9WL881991C104551H\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"164.00\"},\"payee\":{\"email_address\":\"sb-zzqp726098652@business.example.com\",\"merchant_id\":\"J8W7PVLRTGV96\"},\"description\":\"Compra de artículos en Pizza Raul por $ 164\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"5FP10163SX576163T\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"164.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2023-05-30T22:19:36Z\",\"update_time\":\"2023-05-30T22:19:36Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-mpabg26090493@personal.example.com\",\"payer_id\":\"SFSLFRB7GUXUL\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2023-05-30T22:19:21Z\",\"update_time\":\"2023-05-30T22:19:36Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/9WL881991C104551H\",\"rel\":\"self\",\"method\":\"GET\"}]}', 1, '2023-05-30 17:19:35', '0.00', '164.00', 1, 'dsada, adsdas', 'Completo'),
(8, NULL, '6G66442154020703B', '{\"id\":\"7M5628806N723233T\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"31.00\"},\"payee\":{\"email_address\":\"sb-zzqp726098652@business.example.com\",\"merchant_id\":\"J8W7PVLRTGV96\"},\"description\":\"Compra de artículos en Pizza Raul por $ 31\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"6G66442154020703B\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"31.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2023-06-01T22:38:59Z\",\"update_time\":\"2023-06-01T22:38:59Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-mpabg26090493@personal.example.com\",\"payer_id\":\"SFSLFRB7GUXUL\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2023-06-01T22:38:41Z\",\"update_time\":\"2023-06-01T22:38:59Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/7M5628806N723233T\",\"rel\":\"self\",\"method\":\"GET\"}]}', 6, '2023-06-01 17:38:59', '8.00', '31.00', 1, 'dasdasdasd, limalima', 'Completo'),
(9, NULL, '7VH06446N84091248', '{\"id\":\"1EJ87353HV350960A\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"146.00\"},\"payee\":{\"email_address\":\"sb-zzqp726098652@business.example.com\",\"merchant_id\":\"J8W7PVLRTGV96\"},\"description\":\"Compra de artículos en Pizza Raul por $ 146\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"7VH06446N84091248\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"146.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2023-06-03T04:35:00Z\",\"update_time\":\"2023-06-03T04:35:00Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-mpabg26090493@personal.example.com\",\"payer_id\":\"SFSLFRB7GUXUL\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2023-06-03T04:33:44Z\",\"update_time\":\"2023-06-03T04:35:00Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/1EJ87353HV350960A\",\"rel\":\"self\",\"method\":\"GET\"}]}', 6, '2023-06-02 23:35:00', '8.00', '146.00', 1, 'ASDASD, ASDASD', 'Aprobado'),
(10, NULL, '78709279YV629901G', '{\"id\":\"67534282RC6440447\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"13.00\"},\"payee\":{\"email_address\":\"sb-zzqp726098652@business.example.com\",\"merchant_id\":\"J8W7PVLRTGV96\"},\"description\":\"Compra de artículos en Pizza Raul por $ 13\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"78709279YV629901G\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"13.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2023-06-03T04:43:02Z\",\"update_time\":\"2023-06-03T04:43:02Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-mpabg26090493@personal.example.com\",\"payer_id\":\"SFSLFRB7GUXUL\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2023-06-03T04:42:36Z\",\"update_time\":\"2023-06-03T04:43:02Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/67534282RC6440447\",\"rel\":\"self\",\"method\":\"GET\"}]}', 3, '2023-06-02 23:43:02', '8.00', '13.00', 1, 'qwefas, weqwrqwr', 'Completo'),
(11, NULL, '1G966206BN330331C', '{\"id\":\"5588147093497993U\",\"intent\":\"CAPTURE\",\"status\":\"COMPLETED\",\"purchase_units\":[{\"reference_id\":\"default\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"34.00\"},\"payee\":{\"email_address\":\"sb-zzqp726098652@business.example.com\",\"merchant_id\":\"J8W7PVLRTGV96\"},\"description\":\"Compra de artículos en Pizza Raul por $ 34\",\"shipping\":{\"name\":{\"full_name\":\"John Doe\"},\"address\":{\"address_line_1\":\"Free Trade Zone\",\"admin_area_2\":\"Lima\",\"admin_area_1\":\"Lima\",\"postal_code\":\"07001\",\"country_code\":\"PE\"}},\"payments\":{\"captures\":[{\"id\":\"1G966206BN330331C\",\"status\":\"COMPLETED\",\"amount\":{\"currency_code\":\"USD\",\"value\":\"34.00\"},\"final_capture\":true,\"seller_protection\":{\"status\":\"ELIGIBLE\",\"dispute_categories\":[\"ITEM_NOT_RECEIVED\",\"UNAUTHORIZED_TRANSACTION\"]},\"create_time\":\"2023-06-04T05:53:28Z\",\"update_time\":\"2023-06-04T05:53:28Z\"}]}}],\"payer\":{\"name\":{\"given_name\":\"John\",\"surname\":\"Doe\"},\"email_address\":\"sb-mpabg26090493@personal.example.com\",\"payer_id\":\"SFSLFRB7GUXUL\",\"address\":{\"country_code\":\"PE\"}},\"create_time\":\"2023-06-04T05:53:12Z\",\"update_time\":\"2023-06-04T05:53:28Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v2/checkout/orders/5588147093497993U\",\"rel\":\"self\",\"method\":\"GET\"}]}', 3, '2023-06-04 00:53:29', '8.00', '34.00', 1, 'Av comas, comas comas', 'Completo'),
(12, '1233333212312', NULL, NULL, 1, '2023-06-04 17:36:53', '8.00', '238.00', 2, 'Cusc, Cusco Cusco', 'Aprobado'),
(13, NULL, NULL, NULL, 1, '2023-06-09 19:28:13', '8.00', '875.00', 2, 'Av Los cielos, Con diosito/ Con diosito', 'Pendiente');

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
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

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
(288, 3, 1, 0, 0, 0, 0),
(289, 3, 2, 0, 0, 0, 0),
(290, 3, 3, 0, 0, 0, 0),
(291, 3, 4, 0, 0, 0, 0),
(292, 3, 5, 1, 0, 0, 0),
(293, 3, 6, 0, 0, 0, 0),
(328, 1, 1, 1, 1, 1, 1),
(329, 1, 2, 1, 1, 1, 1),
(330, 1, 3, 1, 1, 1, 1),
(331, 1, 4, 1, 1, 1, 1),
(332, 1, 5, 1, 1, 1, 1),
(333, 1, 6, 1, 1, 1, 1),
(334, 1, 7, 1, 1, 1, 1),
(335, 1, 8, 1, 1, 1, 1),
(336, 1, 9, 1, 1, 1, 1);

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
(3, '16165', 'Karla', 'Abelino', 72755277, 'karla18@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'a', 'a', 'a', '', 3, '2023-01-11 20:38:48', 1),
(5, '345345', 'Sam', 'Wors', 275242, 'jh412@gmail.com', '2fdf9bb19615eb6700bd54c794ab383330ba26a8b1e0b115e9e08073164e4c7f', '5242452', 'Sam', 'Lima', '', 3, '2023-04-11 14:14:07', 0),
(6, '864562312', 'Gustavo', 'Campos', 991644337, 'gustavo2015.gcr@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '2345645', 'admin', 'admin', '', 3, '2023-05-20 10:13:33', 1),
(7, '', 'Luis', 'Perez', 994665887, 'gustavo2015@gmail.com', '2ad464e725c1f8850242a42235d5b383db52fdb0776b91f30b8c21d2725ec83a', '', '', '', '', 3, '2023-05-20 10:15:14', 0),
(8, '', 'Gustavo', 'Ramirez', 921458771, 'gustavo2018@gmail.com', '45fa34b64295e2fee94133db4d3a250f4e46556ab1ccf55861869e5f17333160', '', '', '', '', 3, '2023-05-20 10:37:21', 0),
(9, '', 'Gustavo', 'CAIM', 12311231231, 'asdasg@info.com', 'f9c5ce055040850350b567368c06a1b16efcd3963a6c9dd84a4bfb2fd8f189f3', '', '', '', '', 3, '2023-05-20 10:42:47', 0),
(10, '', 'Joaquin', 'Lescano', 99164337777, 'joaco@gmail.com', '35a7c63d528a6a4f9f363446c095efa3aeaf255cdab2092fa492f8d2a1914e24', '', '', '', '', 3, '2023-05-20 13:14:23', 0),
(11, '', 'Antornio', 'Banderas', 4949766464, 'antoniob@gmail.com', '0581ff3ba55c7a17c49e2b0abbe6a9e7ee4629c03b9a499ec4481d143f9dc5b9', '', '', '', '', 3, '2023-06-01 16:45:41', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Nosotros', '<section class=\"bg0 p-t-75 p-b-120\"> <div class=\"container\"> <div class=\"row p-b-148\"> <div class=\"col-md-7 col-lg-8\"> <div class=\"p-t-7 p-r-85 p-r-15-lg p-r-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Misi&oacute;n</h3> <p>En \"TuCompu\", nuestra misi&oacute;n es ofrecer a nuestros clientes una experiencia excepcional en el mundo de la tecnolog&iacute;a. Nos apasiona brindar soluciones inform&aacute;ticas de calidad y superar las expectativas de nuestros clientes en todo momento. Trabajamos arduamente para proporcionar productos aut&eacute;nticos y confiables, fabricados con los mejores componentes y materiales del mercado.</p> <p>Creemos en la importancia de la atenci&oacute;n al detalle y nos comprometemos a brindar un servicio c&aacute;lido, amigable y eficiente en un entorno acogedor. Nuestro equipo de expertos en tecnolog&iacute;a est&aacute; siempre dispuesto a ayudarte a encontrar la computadora, laptop o accesorio perfecto para tus necesidades espec&iacute;ficas. Nos enorgullece ofrecer un servicio personalizado y asesoramiento experto para garantizar que encuentres exactamente lo que est&aacute;s buscando.</p> <p>Adem&aacute;s, en \"TuCompu\" nos preocupamos por el medio ambiente y la sostenibilidad. Trabajamos para reducir nuestro impacto ecol&oacute;gico mediante la adopci&oacute;n de pr&aacute;cticas empresariales responsables. Fomentamos el reciclaje de productos electr&oacute;nicos y promovemos la reutilizaci&oacute;n de materiales para minimizar el desperdicio y contribuir a un futuro m&aacute;s verde.</p> <p>Te invitamos a visitar \"TuCompu\" y descubrir nuestra amplia selecci&oacute;n de productos tecnol&oacute;gicos. Desde computadoras de escritorio de &uacute;ltima generaci&oacute;n hasta laptops de alto rendimiento, perif&eacute;ricos y accesorios, tenemos todo lo que necesitas para potenciar tu vida digital. &iexcl;Esperamos brindarte una experiencia inolvidable en \"TuCompu\"!</p> <p class=\"stext-113 cl6 p-b-26\">&nbsp;</p> </div> </div> <div class=\"col-11 col-md-5 col-lg-4 m-lr-auto\"> <div class=\"how-bor1 \"> <div class=\"hov-img0\"><img src=\"&lt;?= media() ?&gt;/tienda/images/about-01.jpg\" alt=\"IMG\"></div> </div> </div> </div> <div class=\"row\"> <div class=\"order-md-2 col-md-7 col-lg-8 p-b-30\"> <div class=\"p-t-7 p-l-85 p-l-15-lg p-l-0-md\"> <h3 class=\"mtext-111 cl2 p-b-16\">Visi&oacute;n</h3> <p>En \"TuCompu\", nuestra visi&oacute;n es convertirnos en la tienda de referencia en el campo de la tecnolog&iacute;a en nuestra comunidad y m&aacute;s all&aacute;. Buscamos ser el destino preferido de las personas que buscan soluciones inform&aacute;ticas de calidad, combinadas con creatividad y originalidad en cada recomendaci&oacute;n y producto que ofrecemos. Queremos establecer una reputaci&oacute;n s&oacute;lida como un referente tecnol&oacute;gico de primera categor&iacute;a, donde la excelencia y la satisfacci&oacute;n del cliente sean nuestras principales prioridades. Aspiramos a expandirnos y abrir nuevas sucursales en diferentes ciudades, compartiendo nuestra pasi&oacute;n por la tecnolog&iacute;a con un p&uacute;blico m&aacute;s amplio.</p> <p>Adem&aacute;s, nos esforzamos por ser l&iacute;deres en la industria de la computaci&oacute;n, siendo un modelo a seguir en t&eacute;rminos de innovaci&oacute;n, calidad, sostenibilidad y responsabilidad social. Nos comprometemos a mantenernos al tanto de las &uacute;ltimas tendencias tecnol&oacute;gicas y ofrecer productos vanguardistas que mejoren la vida digital de nuestros clientes. Tambi&eacute;n nos preocupamos por reducir nuestro impacto ambiental, promoviendo el reciclaje de productos electr&oacute;nicos y adoptando pr&aacute;cticas empresariales sostenibles.</p> <p>Nuestro objetivo final es crear momentos memorables para nuestros clientes, estableciendo relaciones duraderas y convirti&eacute;ndonos en un referente en la industria de la tecnolog&iacute;a. Queremos ser reconocidos como un &iacute;cono en el mundo de la inform&aacute;tica, donde cada experiencia en \"TuCompu\" sea &uacute;nica y excepcional. &iexcl;Estamos comprometidos a brindarte la mejor atenci&oacute;n y a ser tu socio confiable en todo lo relacionado con la tecnolog&iacute;a!</p> </div> </div> <div class=\"order-md-1 col-11 col-md-5 col-lg-4 m-lr-auto p-b-30\"> <div class=\"how-bor2\"> <div class=\"hov-img0\"><img src=\"&lt;?= media() ?&gt;/tienda/images/about-02.jpg\" alt=\"IMG\"></div> </div> </div> </div> </div> </section>', 'img_837545941456f9e05fb24dcd7c521d23.jpg', '2023-06-15 20:45:08', 'nosotros', 1),
(2, 'Tienda', '<p>contenido</p>', '', '2023-06-15 23:42:38', 'tienda', 1),
(3, 'Contacto', '<div class=\"map\"><iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d632.7823908502429!2d-77.07840161309261!3d-11.9374028565575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105d16cdaecc84f%3A0x3281f45be1a5f7b4!2sPizza%20Ra%C3%BAl%20Pro!5e0!3m2!1ses!2spe!4v1686805534497!5m2!1ses!2spe\" width=\"100%\" height=\"600\" allowfullscreen=\"allowfullscreen\" loading=\"lazy\"></iframe></div>', 'img_2dd74b6e7fcf58fa3627ee22a48d8e4c.jpg', '2023-06-15 23:43:45', 'contacto', 1),
(4, 'Inicio', '<p>contenido</p>', NULL, '2023-06-16 20:11:04', 'inicio', 1),
(5, 'Carrito', '<p>contenido</p>', NULL, '2023-06-16 20:11:38', 'carrito', 1),
(6, 'Preguntas frecuentes', '<p><strong>1. &iquest;Cu&aacute;les son los tipos de pizza que ofrecen?</strong><br>Ofrecemos una amplia variedad de tipos de pizza, desde cl&aacute;sicas como margarita y pepperoni, hasta opciones gourmet como la pizza de cuatro quesos y la pizza de pollo a la barbacoa.</p> <p><strong>2. &iquest;Tienen opciones de pizza vegetariana o vegana?</strong><br>S&iacute;, tenemos opciones de pizza vegetariana y vegana. Ofrecemos una pizza vegetariana con una deliciosa combinaci&oacute;n de verduras frescas, y tambi&eacute;n tenemos una pizza vegana con queso vegano y una variedad de ingredientes sin productos de origen animal.</p> <p><strong>3. &iquest;Cu&aacute;l es el tama&ntilde;o de las pizzas que ofrecen?</strong><br>Nuestras pizzas est&aacute;n disponibles en tres tama&ntilde;os: personal, mediano y familiar. El tama&ntilde;o personal es ideal para una persona, el mediano es perfecto para compartir entre dos o tres personas, y el familiar es ideal para grupos m&aacute;s grandes.</p> <p><strong>4. &iquest;Cu&aacute;nto tiempo tarda en estar lista una pizza para llevar?</strong><br>Normalmente, nuestras pizzas est&aacute;n listas para llevar en aproximadamente 15 a 20 minutos. Sin embargo, el tiempo de preparaci&oacute;n puede variar dependiendo de la demanda en ese momento espec&iacute;fico.</p> <p><strong>5. &iquest;Ofrecen servicio de entrega a domicilio?</strong><br>S&iacute;, ofrecemos servicio de entrega a domicilio. Puedes realizar tu pedido por nuestra p&aacute;gina web o aplicaci&oacute;n y te lo entregaremos en la comodidad de tu hogar.</p> <p><strong>6. &iquest;Cu&aacute;les son los ingredientes que utilizan en sus pizzas?</strong><br>Utilizamos ingredientes frescos y de alta calidad en nuestras pizzas. Nuestra salsa de tomate se elabora con tomates maduros y nuestros ingredientes son seleccionados cuidadosamente para ofrecerte el mejor sabor en cada pizza.</p>', '', '2023-06-16 20:15:24', 'preguntas-frecuentes', 1),
(7, 'Términos y Condiciones', '<p>Bienvenido/a a nuestros T&eacute;rminos y Condiciones. Estos t&eacute;rminos son un contrato legalmente vinculante entre usted, en calidad de usuario o cliente, y nosotros, la empresa o entidad propietaria y operadora del sitio web, aplicaci&oacute;n m&oacute;vil u otro servicio en l&iacute;nea al que est&aacute; accediendo. Lea detenidamente estos T&eacute;rminos y Condiciones antes de utilizar nuestros servicios.</p> <p><strong>1. Aceptaci&oacute;n de los T&eacute;rminos y Condiciones</strong><br>&nbsp; &nbsp; &nbsp; &nbsp; Al acceder o utilizar nuestros servicios, usted reconoce haber le&iacute;do, entendido y aceptado los presentes T&eacute;rminos y Condiciones en su totalidad, as&iacute; como cualquier otra pol&iacute;tica o aviso legal que pueda estar relacionado con nuestros servicios. Si no est&aacute; de acuerdo con estos t&eacute;rminos, le rogamos que no utilice nuestros servicios.</p> <p><strong>2. Uso de nuestros Servicios</strong><br>&nbsp; &nbsp; &nbsp; &nbsp; a. Licencia: Con sujeci&oacute;n al cumplimiento de estos T&eacute;rminos y Condiciones, se le otorga una licencia limitada, no exclusiva, intransferible y revocable para acceder y utilizar nuestros servicios con fines personales y no comerciales.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; b. Restricciones de uso: Usted se compromete a no utilizar nuestros servicios de manera contraria a la ley, los derechos de terceros o estos T&eacute;rminos y Condiciones. Queda prohibida cualquier acci&oacute;n que pueda causar da&ntilde;o, interrupci&oacute;n o deterioro en nuestros servicios.<br><br>&nbsp; &nbsp; &nbsp; &nbsp; c. Contenido del usuario: Al utilizar nuestros servicios, usted puede enviar, publicar o cargar contenido. Usted conserva todos los derechos de propiedad intelectual sobre dicho contenido, pero nos otorga una licencia no exclusiva, global, libre de regal&iacute;as y transferible para utilizar, reproducir, modificar, adaptar, publicar, traducir, distribuir y mostrar p&uacute;blicamente dicho contenido en relaci&oacute;n con la prestaci&oacute;n de nuestros servicios.<br><br><strong>3. Privacidad</strong><br>&nbsp; &nbsp; &nbsp; &nbsp; Respetamos su privacidad y nos comprometemos a proteger sus datos personales de acuerdo con nuestra Pol&iacute;tica de Privacidad. Al utilizar nuestros servicios, usted acepta el tratamiento de sus datos personales de acuerdo con nuestra Pol&iacute;tica de Privacidad.<br>&nbsp; &nbsp; &nbsp; &nbsp; <br><strong>4. Propiedad Intelectual</strong><br>&nbsp; &nbsp; &nbsp; &nbsp; Todos los derechos de propiedad intelectual relacionados con nuestros servicios (incluyendo, pero no limitado a, software, dise&ntilde;o, gr&aacute;ficos, logotipos, marcas comerciales, nombres comerciales y contenido) son de nuestra propiedad o est&aacute;n licenciados para nosotros. Queda prohibida cualquier reproducci&oacute;n, distribuci&oacute;n o uso no autorizado de estos elementos sin nuestro consentimiento previo por escrito.<br><br></p>', '', '2023-06-16 20:35:39', 'terminos-y-condiciones', 1),
(8, 'Sucursales', '<p>Contenido</p>', 'img_3d91ff3cd03aeba1f14b32453607dd58.jpg', '2023-06-16 20:45:20', 'sucursales', 1),
(9, 'Not found', '<p>Contenido</p>', '', '2023-06-16 21:22:50', 'not-found', 1);

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
(2, 10, '2312212424', 'Pizza Brava', '<p>La Pizza Brava incluye salami picante, chorizo, pepperoni o salchichas, que le dan un sabor intenso y picante.</p>', '21.90', 12, '', '2023-04-28 18:24:31', 'pizza-brava', 0),
(3, 14, '1231241241', 'Categoria 5', '<p><sup>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</sup></p> <hr> <p style=\"padding-left: 120px;\"><span style=\"background-color: rgb(224, 62, 45);\"><strong><em><sup>UNO</sup></em></strong></span></p> <p style=\"padding-left: 120px;\"><span style=\"background-color: rgb(35, 111, 161);\"><strong><em><sup>DOS&nbsp;</sup></em></strong></span></p> <p style=\"padding-left: 120px;\"><span style=\"background-color: rgb(206, 212, 217);\"><strong><em><sup>TRES</sup></em></strong></span></p> <p style=\"text-align: justify;\"><strong><em><sup>Lorem Ipsum&nbsp;is simply dummy te</sup></em></strong></p> <hr> <p style=\"text-align: justify;\"><strong><em><sup>xt of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</sup></em></strong></p>', '102.00', 12, '', '2023-04-30 22:37:01', 'categoria-5', 0),
(4, 13, '1234123', '123123', '<p>uno</p> <p>dos</p> <p>tres</p>', '123.00', 2, '', '2023-04-30 22:39:08', '123123', 0),
(5, 13, '1231412412', 'EJEMPLOS', '<p>UNO<br>DOS<br>TRES</p>', '10.00', 2, '', '2023-04-30 22:42:38', '', 0),
(6, 13, '2132165478', 'Producto Nuevo', '<p>Hola | Como estas | Estas bien?</p> <p style=\"padding-left: 80px;\">-Uno</p> <p style=\"padding-left: 80px;\">-Dos</p> <p style=\"padding-left: 80px;\">-Tres</p>', '150.00', 3, '', '2023-04-30 22:59:27', '', 0),
(7, 15, '2312312424', 'Platano', '<p>Platano grande</p>', '13.00', 50, '', '2023-04-30 23:27:38', 'platano', 0),
(8, 14, '1231241242', 'Platano super', '<p>Super platano sayajin</p>', '120.00', 1, '', '2023-05-01 21:27:58', '', 0),
(9, 13, '5453454654', 'Nuevo producto revolucionario', '<p>Nose xd</p>', '230.00', 12, '', '2023-05-01 23:40:53', 'nuevo-producto-revolucionario', 0),
(10, 14, '1231424242', 'Otro Productoo', '<p>Otro producto descripcion</p>', '123.00', 22, '', '2023-05-02 02:08:53', '', 0),
(11, 14, '1231244324', 'Platano super super 2', '<p>Holaaaaaaaa</p>', '23.00', 12, '', '2023-05-02 02:30:37', '', 0),
(12, 11, '1231231231', '123', '<p>123123</p>', '12.00', 123, '', '2023-05-02 02:58:45', '', 0),
(13, 14, '2543543737', 'Producto 666', '<p>Producto maldito xd</p>', '12.00', 33, '', '2023-05-20 00:02:01', 'producto-666', 0),
(14, 15, '1236576756', 'Producto 777777', '<p>Eh vegeta</p>', '123.00', 2, '', '2023-05-20 00:02:36', 'producto-777777', 0),
(15, 12, '1234534345', 'Producto 8888', '<p>8 mocho morochjo23</p>', '23.00', 113, '', '2023-05-20 00:03:50', 'producto-8888', 0),
(16, 13, '1343445354', 'asdasdasdasd', '<p>12asfasfasd</p>', '5.00', 13, '', '2023-05-20 00:04:54', 'asdasdasdasd', 0),
(17, 15, '1514647988', 'IPHONE 13', '<p>El iPhone 13 es la &uacute;ltima incorporaci&oacute;n a la aclamada l&iacute;nea de smartphones de Apple. Dise&ntilde;ado con una est&eacute;tica elegante y sofisticada, este dispositivo ofrece una experiencia de usuario excepcional. El iPhone 13 cuenta con una pantalla Super Retina XDR brillante y n&iacute;tida, que muestra colores vibrantes y un contraste impresionante. Su potente chip A15 Bionic, combinado con una generosa cantidad de memoria RAM, garantiza un rendimiento r&aacute;pido y fluido en todas las tareas.</p> <p>Con una c&aacute;mara avanzada de doble o triple lente (seg&uacute;n el modelo), el iPhone 13 te permite capturar fotos y videos de alta calidad, incluso en condiciones de poca luz. Adem&aacute;s, ofrece caracter&iacute;sticas como el Modo Noche, Deep Fusion y la capacidad de grabar videos en resoluci&oacute;n 4K. La duraci&oacute;n de la bater&iacute;a ha sido mejorada en comparaci&oacute;n con modelos anteriores, permiti&eacute;ndote disfrutar de m&aacute;s tiempo de uso sin preocupaciones.</p> <p>El iPhone 13 tambi&eacute;n incluye caracter&iacute;sticas adicionales como resistencia al agua, carga inal&aacute;mbrica, Face ID para una autenticaci&oacute;n segura y soporte para conectividad 5G, lo que te permite aprovechar al m&aacute;ximo la velocidad y el ancho de banda de las redes m&oacute;viles de &uacute;ltima generaci&oacute;n.</p> <p>Si est&aacute;s buscando un smartphone potente, vers&aacute;til y lleno de caracter&iacute;sticas innovadoras, el iPhone 13 es una opci&oacute;n que te ofrece un rendimiento excepcional y una experiencia de usuario superior.</p>', '3699.00', 10, '', '2023-06-17 00:50:09', 'iphone-13', 1),
(18, 12, '2154798798', 'LAPTOP GAMER DELL G15 G15RE-A386GRY-PUS AMD RYZEN 7 6800H 16GB DDR5 512GB SSD T VIDEO RTX 3050TI 4GB 15.6 FHD WINDOWS 11', '<ul class=\"ficha-tecnica\"> <li>Marca :&nbsp;<strong>Dell</strong></li> <li>Modelo :&nbsp;<strong>G15RE-A386GRY-PUS</strong></li> <li>Producto :&nbsp;<strong>Laptop Gaming</strong></li> <li>Procesador :&nbsp;<strong>AMD Ryzen 7-6800H</strong></li> <li>Tarjeta de video :&nbsp;<strong>NVIDIA RTX 3050TI</strong></li> <li>Memoria RAM :&nbsp;<strong>16GB DDR5</strong></li> <li>Almacenamiento :&nbsp;<strong>512GB(SSD)</strong></li> <li>Pantalla :&nbsp;<strong>15.6\'\'FHD</strong></li> <li>Teclado :&nbsp;<strong>Ingl&eacute;s</strong></li> <li>Sistema Operativo :&nbsp;<strong>Windows 11</strong></li> <li>SKUP:&nbsp;<strong>GO002</strong></li> <li>IMPORTANTE:&nbsp;<strong>FECHA DE LLEGADA 26-05</strong></li> </ul>', '4619.00', 20, '', '2023-06-17 00:50:44', 'laptop-gamer-dell-g15-g15re-a386gry-pus-amd-ryzen-7-6800h-16gb-ddr5-512gb-ssd-t-video-rtx-3050ti-4gb-156-fhd-windows-11', 1),
(19, 13, '1214524124', 'LAPTOP HP 15-DY2059LA I3-1115G4 8GB 256 SSD 15.6\" HD WINDOWS11', '<ul class=\"ficha-tecnica\"> <li>Marca:&nbsp;<strong>HP</strong></li> <li>Modelo:&nbsp;<strong>15-DY2059LA</strong></li> <li>Producto:&nbsp;<strong>Laptop</strong></li> <li>Procesador:&nbsp;<strong>Core i3 - 11th Gen</strong></li> <li>Tarjeta de Video:&nbsp;<strong>Intel UHD Graphics</strong></li> <li>Memoria RAM:&nbsp;<strong>8GB DDR4</strong></li> <li>Almacenamiento:&nbsp;<strong>256GB(SSD)</strong></li> <li>Pantalla:&nbsp;<strong>15.6\" HD</strong></li> <li>Teclado:&nbsp;<strong>Espa&ntilde;ol</strong></li> <li>Sistema Operativo:&nbsp;<strong>Windows 11</strong></li> <li>SKUP :&nbsp;<strong>ECO22</strong></li> </ul>', '1200.00', 15, '', '2023-06-17 00:52:04', 'laptop-hp-15-dy2059la-i3-1115g4-8gb-256-ssd-156\"-hd-windows11', 1),
(20, 15, '1231242141', 'Iphone 13', '<p>asdasdasd</p>', '123.00', 12, '', '2023-06-17 00:54:01', 'iphone-13', 0),
(21, 12, '1231241212', 'LAPTOP LENOVO IDEAPAD GAMING 3 AMD RYZEN 5 16GB RAM 512GB SSD 15.6\'\'', '<table class=\"table table-striped\"> <tbody> <tr> <td>Marca</td> <td>LENOVO</td> </tr> <tr> <td>Largo (cm)</td> <td>35.9 cm</td> </tr> <tr> <td>NFC</td> <td>No</td> </tr> <tr> <td>Lector de tarjetas</td> <td>No</td> </tr> <tr> <td>Parlantes</td> <td>2</td> </tr> <tr> <td>Tipo de Producto</td> <td>Laptops</td> </tr> <tr> <td>Disco duro</td> <td>512GB</td> </tr> <tr> <td>Peso (kg)</td> <td>2.25 kg</td> </tr> <tr> <td>Wi-Fi</td> <td>S&iacute;</td> </tr> <tr> <td>Micr&oacute;fono integrado</td> <td>S&iacute;</td> </tr> <tr> <td>Teclado Num&eacute;rico</td> <td>S&iacute;</td> </tr> <tr> <td>Resoluci&oacute;n de la pantalla</td> <td>1920 x 1080</td> </tr> <tr> <td>Tarjeta de video</td> <td>NVIDIA GeForce RTX 3050 (4GB)</td> </tr> <tr> <td>Memoria RAM</td> <td>16GB</td> </tr> <tr> <td>Color</td> <td>Negro</td> </tr> <tr> <td>Tipo Procesador</td> <td>AMD Ryzen 5 5600H</td> </tr> <tr> <td>Garant&iacute;a</td> <td>1 a&ntilde;o</td> </tr> <tr> <td>Incluye mouse</td> <td>No</td> </tr> <tr> <td>Capacidad de bater&iacute;a</td> <td>45 Wh</td> </tr> <tr> <td>Sistema operativo</td> <td>Windows 11 Home</td> </tr> <tr> <td>Tipo de bater&iacute;a</td> <td>Pol&iacute;mero de litio de 45 Wh</td> </tr> <tr> <td>Duraci&oacute;n Bater&iacute;a (Hr)</td> <td>Hasta 5 Horas</td> </tr> <tr> <td>Cantidad puertos USB</td> <td>3</td> </tr> <tr> <td>Resoluci&oacute;n video</td> <td>Full HD (1920 x 1080)</td> </tr> <tr> <td>Tama&ntilde;o de pantalla rango</td> <td>Entre 15 a 16.9\"</td> </tr> <tr> <td>Bluetooth</td> <td>S&iacute;</td> </tr> <tr> <td>Modelo</td> <td>IdeaPad Gaming 3</td> </tr> <tr> <td>Conectividad</td> <td>Wi-Fi / Bluetooth / Ethernet</td> </tr> <tr> <td>Tipo de memoria</td> <td>DDR4</td> </tr> <tr> <td>Ancho (cm)</td> <td>25.1 cm</td> </tr> <tr> <td>Velocidad Procesador (GHz)</td> <td>3.3 Ghz</td> </tr> <tr> <td>Puerto VGA</td> <td>0</td> </tr> <tr> <td>Unidad &oacute;ptica</td> <td>No</td> </tr> <tr> <td>Procesador</td> <td>AMD Ryzen 5</td> </tr> <tr> <td>Pantalla Touch</td> <td>No</td> </tr> <tr> <td>Alto (cm)</td> <td>2.42 cm</td> </tr> <tr> <td>Puerto ethernet</td> <td>S&iacute;</td> </tr> <tr> <td>Entrada de audio</td> <td>S&iacute;</td> </tr> <tr> <td>Tama&ntilde;o de la pantalla</td> <td>15.6</td> </tr> <tr> <td>Puertos HDMI</td> <td>1</td> </tr> <tr> <td>C&aacute;mara</td> <td>HD 720p con obturador de c&aacute;mara</td> </tr> <tr> <td>Tipo de disco duro</td> <td>SSD</td> </tr> </tbody> </table>', '3599.00', 23, '', '2023-06-17 00:55:05', 'laptop-lenovo-ideapad-gaming-3-amd-ryzen-5-16gb-ram-512gb-ssd-156\'\'', 1),
(22, 19, '2312412412', 'IMPRESORA HP TODO EN UNO SMART TANK 580 INALÁMBRICA', '<table class=\"table table-striped\"> <tbody> <tr> <td>Marca</td> <td>HP</td> </tr> <tr> <td>Peso (kg)</td> <td>5.03</td> </tr> <tr> <td>Impresi&oacute;n doble cara</td> <td>No</td> </tr> <tr> <td>Tipo de Producto</td> <td>Impresoras</td> </tr> <tr> <td>Modelo</td> <td>Smart Tank 580</td> </tr> <tr> <td>Tecnolog&iacute;a de impresi&oacute;n</td> <td>Inyecci&oacute;n de Tinta</td> </tr> <tr> <td>Velocidad max. Impresi&oacute;n</td> <td>Negro (ISO): Hasta 12 ppm, Color(ISO): Hasta 5 ppm</td> </tr> <tr> <td>Resoluci&oacute;n de impresi&oacute;n</td> <td>M&aacute;s 1200 dpi</td> </tr> <tr> <td>Compatibilidad (TINTAS)</td> <td>-</td> </tr> <tr> <td>Formatos compatibles (TAMA&Ntilde;O PAPEL)</td> <td>A4, B5, A6, SobreDL, legal.</td> </tr> <tr> <td>Compatibilidad</td> <td>Papel com&uacute;n, papeles para folletos mate, papeles para folletos con brillo, papeles fotogr&aacute;ficos, sobres, otros papeles especiales de inyecci&oacute;n de tinta.</td> </tr> <tr> <td>Tipo de pantalla</td> <td>LCD</td> </tr> <tr> <td>Bluetooth</td> <td>S&iacute;</td> </tr> <tr> <td>Wi-Fi integrado</td> <td>S&iacute;</td> </tr> <tr> <td>Cantidad puertos USB</td> <td>1</td> </tr> <tr> <td>Puerto ethernet</td> <td>No</td> </tr> <tr> <td>Alto (cm)</td> <td>15.72</td> </tr> <tr> <td>Ancho (cm)</td> <td>43.46</td> </tr> <tr> <td>Tipo de esc&aacute;ner</td> <td>Cama Plana</td> </tr> <tr> <td>Resoluci&oacute;n de esc&aacute;ner (dpi)</td> <td>Hardware: Hasta 1200 x 1200 dpi, &Oacute;ptica: hasta 1200 ppp.</td> </tr> <tr> <td>Velocidad de copia</td> <td>JPEG, PDF</td> </tr> <tr> <td>Largo (cm)</td> <td>36.15</td> </tr> <tr> <td>Conexi&oacute;n inal&aacute;mbrica</td> <td>Wi-Fi, Bluetooth</td> </tr> <tr> <td>Capacidad de papel (hojas)</td> <td>100</td> </tr> <tr> <td>Copias m&uacute;ltiples</td> <td>S&iacute;</td> </tr> <tr> <td>Tipo de impresoras</td> <td>Multifuncional</td> </tr> <tr> <td>Impresi&oacute;n sin bordes</td> <td>S&iacute;</td> </tr> <tr> <td>Incluye cable USB</td> <td>No</td> </tr> <tr> <td>Incluye cartuchos</td> <td>S&iacute;</td> </tr> <tr> <td>Garant&iacute;a</td> <td>2 a&ntilde;os ( 1 a&ntilde;o + 1 a&ntilde;o si el cliente se registra en http://www.hp.com/go/extendmywarranty dentro de los 60 primeros d&iacute;as de compra).</td> </tr> <tr> <td>Cantidad de cartuchos de impresi&oacute;n</td> <td>5</td> </tr> <tr> <td>Resoluci&oacute;n de la fotocopiadora (dpi)</td> <td>Negro (texto y gr&aacute;ficos): hasta 1200 ppp, Color(texto y gr&aacute;ficos): Hasta 1200 x 1200 ppp.</td> </tr> <tr> <td>Resoluci&oacute;n de impresi&oacute;n a Color (dpi)</td> <td>Hasta 4800 x 1200 dpi.</td> </tr> <tr> <td>Resoluci&oacute;n de impresi&oacute;n en negro (dpi)</td> <td>Hasta 1200 x 1200 ppp.</td> </tr> <tr> <td>Velocidad de la fotocopiadora a Color (ipm)</td> <td>Hasta 1200 x 1200 ppp.</td> </tr> <tr> <td>Velocidad de la fotocopiadora en blanco y negro (ipm)</td> <td>Hasta 1200 ppp.</td> </tr> </tbody> </table>', '739.00', 30, '', '2023-06-17 00:56:43', 'impresora-hp-todo-en-uno-smart-tank-580-inalambrica', 1),
(23, 23, '1255545675', 'TECLADO REDRAGON DYAUS 2 ( K509RGB SP ) GAMING | RETROILUMINADO', '<p>DAYDREAM<br><br>FRESCOR ESTIVAL.<br>Menta, lila, blanco y amarillo se combinan en una est&eacute;tica rom&aacute;ntica con un punto de refrescante mojito. Disfruta con POP Keys en Daydream.<br><br>SENTIMIENTOS MUY A MANO<br><br>&iquest;Felicidad? &iquest;Enojo? &iquest;Amor? POP Keys ofrece ocho teclas de emojis intercambiables que puedes combinar como quieras seg&uacute;n tu estado de &aacute;nimo. Las puedes asignar a cualquier emoji existente, mediante software Logitech, o puedes presionar la tecla de men&uacute; de emojis para elegir uno mientras conversas con tus amigos.<br><br>OPTA POR LO MEC&Aacute;NICO<br><br>Disfruta de una escritura casi adictiva con teclas mec&aacute;nicas al estilo de las de las m&aacute;quinas de escribir. Siente tus dedos moverse por las teclas y oye el clic-clac de los interruptores mec&aacute;nicos con cada pulsaci&oacute;n. Gratamente tradicional.<br><br>CONEXI&Oacute;N SIMULT&Aacute;NEA DE TRES DISPOSITIVOS<br><br>Expr&eacute;sate en varios dispositivos a la vez, mediante las teclas Easy Switch de POP Keys, que te permiten alternar con una sola pulsaci&oacute;n entre 3 dispositivos emparejados simult&aacute;neamente. Conecta tu computadora, tablet o tel&eacute;fono De momento, los emojis y el software se admiten &uacute;nicamente en Windows y macOS.&nbsp;por tecnolog&iacute;a Bluetooth&nbsp;inal&aacute;mbrica o con el receptor USB Logi Bolt.<br><br>Funciona con Windows, macOS, Chrome OS, Android, iOS y iPadOS</p>', '230.00', 12, '', '2023-06-17 00:58:06', 'teclado-redragon-dyaus-2-(-k509rgb-sp-)-gaming-|-retroiluminado', 1),
(24, 10, '6784576657', 'AUDIFONOS TRUST GXT450 BLIZZ RGB 7.1', '<ul class=\"ficha-tecnica\"> <li>Marca:&nbsp;Trust</li> <li>Modelo:&nbsp;GXT450 BLIZZ</li> <li>Producto:&nbsp;Aud&iacute;fono</li> <li>Reproducci&oacute;n de sonido:&nbsp;Sonido envolvente</li> <li>Canales de audio:&nbsp;7.1</li> <li>Respuesta frecuente:&nbsp;20 Hz - 20 000 Hz</li> <li>Tama&ntilde;o del controlador:&nbsp;40mm</li> <li>Unidades de controlador:&nbsp;2</li> <li>Sensibilidad:&nbsp;120dB</li> <li>Nivel de presi&oacute;n de sonido:&nbsp;113dB</li> <li>Micr&oacute;fono:&nbsp;s&iacute;</li> </ul>', '148.00', 62, '', '2023-06-17 01:00:42', 'audifonos-trust-gxt450-blizz-rgb-71', 1),
(25, 10, '5798794546', 'TECLADO GAMER DELL ALIENWARE AW310K BLACK', '<p><strong>Dell</strong>&nbsp;te ofrece su exclusiva l&iacute;nea de accesorios para c&oacute;mputo fabricados con materiales premium para garantizar resistencia y durabilidad. Rinde al m&aacute;ximo en tus actividades y disfruta de los beneficios que esta exclusiva marca trae para ti.</p> <p>&nbsp;</p> <p>No esperes m&aacute;s, elige tu modelo favorito y empieza a disfrutar de una experiencia &uacute;nica.</p> <p>Las mejores marcas a un clic de tus manos.</p>', '229.99', 30, '', '2023-06-17 01:01:55', 'teclado-gamer-dell-alienware-aw310k-black', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

DROP TABLE IF EXISTS `reembolso`;
CREATE TABLE IF NOT EXISTS `reembolso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `idtransaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Gerente', 'Encargado de supervisar la pizzería ', 1),
(3, 'Cliente', 'Clientes de la tienda', 1),
(4, 'Chef de cocina', 'Encargado de preparar las pizzas', 1),
(5, 'Ayudante de cocina', 'Encargado de ayudar al chef principal', 1),
(6, 'Cajero/a', 'Encargado de cobrar las pizzas', 1),
(7, 'Mesero/a', 'Encargado de repartir las pizzas a las mesas y de mantenerlas limpias', 1),
(8, 'Repartidor', 'Encargado de repartir las pizzas para los clientes que compraron por llamada o a través de la pagina web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `estado` int NOT NULL,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `suscripciones`
--

INSERT INTO `suscripciones` (`idsuscripcion`, `nombre`, `email`, `datecreated`, `estado`) VALUES
(1, 'Gustavo Leandro Campos Rodriguez', 'gustao2015.gcr@gmail.com', '2023-06-09 16:01:52', 1),
(2, 'Gustavo Leandro Campos Rodriguez', 'gustavo2015.gcr@gmail.com', '2023-06-09 16:02:26', 1),
(3, 'Gustavo Leandro Campos Rodriguez', 'gusta2015.gcr@gmail.com', '2023-06-09 16:02:45', 1),
(4, 'Gustavo Leandro Campos Rodriguez', 'guso2015.gcr@gmail.com', '2023-06-09 16:04:33', 1),
(5, 'Gustavo Leandro Campos Rodriguez', 'tavo2015.gcr@gmail.com', '2023-06-09 16:05:46', 1),
(6, 'Gustavo Leandro Campos Rodriguez', 'vo2015.gcr@gmail.com', '2023-06-09 16:21:57', 1),
(7, 'Gustavo Leandro Campos Rodriguez', 'o2015.gcr@gmail.com', '2023-06-09 16:41:09', 1),
(8, 'Sam', 'sam@utp.com', '2023-06-11 14:21:26', 1),
(9, 'Luis Angel Rivera Gonzales', 'correo@gmail.com', '2023-06-11 14:39:47', 1),
(10, 'Arizaga Lara German', 'admision@utp.edu.pe', '2023-06-11 16:02:49', 1),
(11, 'Arizaga Carmen', 'admision3@utp.edu.pe', '2023-06-11 16:09:12', 1),
(12, 'Arizaga Ana', 'admision4@utp.edu.pe', '2023-06-11 16:46:12', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

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

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
