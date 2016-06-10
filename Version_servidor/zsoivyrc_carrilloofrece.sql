-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-06-2016 a las 02:43:33
-- Versión del servidor: 5.6.30
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `zsoivyrc_carrilloofrece`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `id_administrador` int(2) NOT NULL AUTO_INCREMENT,
  `admin_usuario` varchar(35) NOT NULL,
  `admin_contrasenia` varchar(20) NOT NULL,
  `admin_tipo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_administrador`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `admin_usuario`, `admin_contrasenia`, `admin_tipo`) VALUES
(1, 'Carlos', 'carlitos', 1),
(2, 'Valito', 'elmalito', 1),
(3, 'Eric', 'ericsito', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_negocio`
--

CREATE TABLE IF NOT EXISTS `calificacion_negocio` (
  `cal_puntaje` int(2) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  `id_negocio` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_servicio`
--

CREATE TABLE IF NOT EXISTS `calificacion_servicio` (
  `cal_puntaje` int(2) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  `id_servicio` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `calificacion_servicio`
--

INSERT INTO `calificacion_servicio` (`cal_puntaje`, `id_usuario`, `id_servicio`) VALUES
(4, 14, 10),
(5, 4, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_usuario`
--

CREATE TABLE IF NOT EXISTS `calificacion_usuario` (
  `cal_puntaje` int(2) NOT NULL,
  `id_persona` int(4) NOT NULL,
  `id_usuario` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_negocio`
--

CREATE TABLE IF NOT EXISTS `categoria_negocio` (
  `id_categoria_negocio` int(4) NOT NULL AUTO_INCREMENT,
  `cat_neg_nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`id_categoria_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `categoria_negocio`
--

INSERT INTO `categoria_negocio` (`id_categoria_negocio`, `cat_neg_nombre`) VALUES
(1, 'Agua'),
(2, 'Alimentos y bebidas'),
(3, 'Arrendamiento'),
(4, 'Computadoras y celulares'),
(5, 'Contables'),
(6, 'Créditos y finanzas'),
(7, 'Cyber café'),
(8, 'Domésticos'),
(9, 'Educación'),
(10, 'Electricidad'),
(11, 'Electrónica'),
(12, 'Entretenimiento'),
(13, 'Ferrotlapalería'),
(14, 'Internet'),
(15, 'Jurídicos'),
(16, 'Mecánico'),
(17, 'Música y audio'),
(18, 'Papelería'),
(19, 'Publicidad'),
(20, 'Salón de eventos'),
(21, 'Salubridad'),
(22, 'Salud y belleza'),
(23, 'Seguros'),
(24, 'Comercial'),
(25, 'Transporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_producto`
--

CREATE TABLE IF NOT EXISTS `categoria_producto` (
  `id_categoria_producto` int(4) NOT NULL AUTO_INCREMENT,
  `cat_pro_nombre` varchar(30) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_categoria_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `categoria_producto`
--

INSERT INTO `categoria_producto` (`id_categoria_producto`, `cat_pro_nombre`) VALUES
(1, 'Arte y antigüedades'),
(2, 'Computación y electrónica'),
(3, 'Deportes'),
(4, 'Electrodomésticos'),
(5, 'Entretenimiento'),
(6, 'Herramientas'),
(7, 'Inmuebles'),
(8, 'Mascotas'),
(9, 'Muebles'),
(10, 'Música y audio'),
(11, 'Refacciones'),
(12, 'Ropa y calzado'),
(13, 'Salud y belleza'),
(14, 'Vehículos'),
(15, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_servicio`
--

CREATE TABLE IF NOT EXISTS `categoria_servicio` (
  `id_categoria_servicio` int(4) NOT NULL AUTO_INCREMENT,
  `cat_ser_nombre` varchar(25) NOT NULL,
  PRIMARY KEY (`id_categoria_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `categoria_servicio`
--

INSERT INTO `categoria_servicio` (`id_categoria_servicio`, `cat_ser_nombre`) VALUES
(1, 'Agua'),
(2, 'Alimentos y bebidas'),
(3, 'Arrendamiento'),
(4, 'Computadoras y celulares'),
(5, 'Contables'),
(6, 'Créditos y finanzas'),
(7, 'Domésticos'),
(8, 'Educación'),
(9, 'Electricidad'),
(10, 'Electrónica'),
(11, 'Entretenimiento'),
(12, 'Internet'),
(13, 'Jurídicos'),
(14, 'Mecánico'),
(15, 'Música y audio'),
(16, 'Publicidad'),
(17, 'Salón de eventos'),
(18, 'Salubridad'),
(19, 'Salud y belleza'),
(20, 'Seguros'),
(21, 'Transporte');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonia_negocio`
--

CREATE TABLE IF NOT EXISTS `colonia_negocio` (
  `id_colonia_negocio` int(4) NOT NULL AUTO_INCREMENT,
  `direc_colonia` varchar(20) NOT NULL,
  `direc_codigo_postal` varchar(5) NOT NULL,
  PRIMARY KEY (`id_colonia_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `colonia_negocio`
--

INSERT INTO `colonia_negocio` (`id_colonia_negocio`, `direc_colonia`, `direc_codigo_postal`) VALUES
(1, 'Constituyentes', '77249'),
(2, 'Cecilio Chi', '77230'),
(3, 'Emiliano Zapata', '77229'),
(4, 'Francisco May', '77240'),
(5, 'Centro', '77200'),
(6, 'Juan Bautista Vega', '77250'),
(7, 'Javier Rojo Gómez', '77259'),
(8, 'Leona Vicario', '77210'),
(9, 'Lázaro Cárdenas', '77239'),
(10, 'Martínez Ross', '77220'),
(11, 'Plan de Ayala', '77214'),
(12, 'Plan de Ayutla', '77215'),
(13, 'Plan de la Noria', '77217'),
(14, 'Plan de Guadalupe', '77216'),
(15, 'Rafel E Melgar', '77238');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colonia_servicio`
--

CREATE TABLE IF NOT EXISTS `colonia_servicio` (
  `id_colonia_servicio` int(4) NOT NULL AUTO_INCREMENT,
  `direc_colonia` varchar(20) NOT NULL,
  `direc_codigo_postal` varchar(5) NOT NULL,
  PRIMARY KEY (`id_colonia_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `colonia_servicio`
--

INSERT INTO `colonia_servicio` (`id_colonia_servicio`, `direc_colonia`, `direc_codigo_postal`) VALUES
(1, 'Constituyentes', '77249'),
(2, 'Cecilio Chi', '77230'),
(3, 'Emiliano Zapata', '77229'),
(4, 'Francisco May', '77240'),
(5, 'Centro', '77200'),
(6, 'Juan Bautista Vega', '77250'),
(7, 'Javier Rojo Gómez', '77259'),
(8, 'Leona Vicario', '77210'),
(9, 'Lázaro Cárdenas', '77239'),
(10, 'Martínez Ross', '77220'),
(11, 'Plan de Ayala', '77214'),
(12, 'Plan de Ayutla', '77215'),
(13, 'Plan de la Noria', '77217'),
(14, 'Plan de Guadalupe', '77216'),
(15, 'Rafel E Melgar', '77238');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncia_negocio`
--

CREATE TABLE IF NOT EXISTS `denuncia_negocio` (
  `id_denuncia_negocio` int(4) NOT NULL AUTO_INCREMENT,
  `den_motivo` varchar(100) NOT NULL,
  `den_fecha` date NOT NULL,
  `id_negocio` int(4) NOT NULL,
  PRIMARY KEY (`id_denuncia_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `denuncia_negocio`
--

INSERT INTO `denuncia_negocio` (`id_denuncia_negocio`, `den_motivo`, `den_fecha`, `id_negocio`) VALUES
(1, 'Es muy lujoso para mi', '2016-05-28', 11),
(2, 'Tu negocio no debe de estar en línea porque yo tengo uno similar', '2016-05-28', 12),
(3, 'No debe de estar en línea tu producto', '2016-05-28', 12),
(4, 'Es un negocio que es de fraudes', '2016-05-28', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncia_producto`
--

CREATE TABLE IF NOT EXISTS `denuncia_producto` (
  `id_denuncia_producto` int(4) NOT NULL AUTO_INCREMENT,
  `den_motivo` varchar(100) NOT NULL,
  `den_fecha` date NOT NULL,
  `id_producto` int(4) NOT NULL,
  PRIMARY KEY (`id_denuncia_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `denuncia_producto`
--

INSERT INTO `denuncia_producto` (`id_denuncia_producto`, `den_motivo`, `den_fecha`, `id_producto`) VALUES
(1, 'Es un producto robado, que contiene información falsa', '2016-05-26', 2),
(2, 'Es un producto con información falsa', '2016-05-26', 5),
(3, 'Porque es de información falsa', '2016-05-26', 5),
(4, 'Tu información es falsa', '2016-05-26', 5),
(5, 'Porque es feo', '2016-05-26', 1),
(6, 'Porque es feisimo', '2016-05-26', 1),
(7, 'Es feo', '2016-05-26', 1),
(8, 'Esta feo', '2016-05-26', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncia_servicio`
--

CREATE TABLE IF NOT EXISTS `denuncia_servicio` (
  `id_denuncia_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `den_motivo` varchar(100) NOT NULL,
  `den_fecha` date NOT NULL,
  `id_servicio` int(4) NOT NULL,
  PRIMARY KEY (`id_denuncia_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `denuncia_servicio`
--

INSERT INTO `denuncia_servicio` (`id_denuncia_servicio`, `den_motivo`, `den_fecha`, `id_servicio`) VALUES
(1, 'Es una estafa, te roban', '2016-06-04', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE IF NOT EXISTS `fecha` (
  `fec_fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`fec_fecha`) VALUES
('2016-06-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_negocio`
--

CREATE TABLE IF NOT EXISTS `horario_negocio` (
  `id_negocio` int(4) NOT NULL,
  `hor_dia` varchar(9) NOT NULL,
  `hor_corte1_apertura` time NOT NULL,
  `hor_corte1_cierre` time NOT NULL,
  `hor_corte2_apertura` time DEFAULT NULL,
  `hor_corte2_cierre` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_negocio`
--

INSERT INTO `horario_negocio` (`id_negocio`, `hor_dia`, `hor_corte1_apertura`, `hor_corte1_cierre`, `hor_corte2_apertura`, `hor_corte2_cierre`) VALUES
(11, '1', '18:00:00', '18:30:00', '18:00:00', '20:00:00'),
(11, '2', '17:00:00', '17:30:00', '19:00:00', '19:00:00'),
(11, '7', '18:00:00', '18:00:00', '19:30:00', '20:30:00'),
(12, '1', '22:30:00', '23:30:00', '23:00:00', '22:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario_servicio`
--

CREATE TABLE IF NOT EXISTS `horario_servicio` (
  `id_servicio` int(4) NOT NULL,
  `hor_dia` varchar(9) NOT NULL,
  `hor_corte1_apertura` time NOT NULL,
  `hor_corte1_cierre` time NOT NULL,
  `hor_corte2_apertura` time DEFAULT NULL,
  `hor_corte2_cierre` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario_servicio`
--

INSERT INTO `horario_servicio` (`id_servicio`, `hor_dia`, `hor_corte1_apertura`, `hor_corte1_cierre`, `hor_corte2_apertura`, `hor_corte2_cierre`) VALUES
(11, '3', '22:30:00', '23:00:00', '23:00:00', '23:30:00'),
(11, '6', '21:00:00', '19:30:00', '22:30:00', '22:30:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `negocio`
--

CREATE TABLE IF NOT EXISTS `negocio` (
  `id_negocio` int(4) NOT NULL AUTO_INCREMENT,
  `neg_nombre` varchar(45) NOT NULL,
  `neg_coordenadas` varchar(25) NOT NULL,
  `neg_telefono` varchar(10) DEFAULT NULL,
  `neg_fecha_publicacion` date NOT NULL,
  `neg_descripcion_breve` varchar(150) NOT NULL,
  `neg_descripcion_general` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `neg_correo` varchar(50) DEFAULT NULL,
  `neg_calle` varchar(30) NOT NULL,
  `neg_cruzamiento` varchar(30) NOT NULL,
  `neg_referencia` varchar(100) NOT NULL,
  `neg_red_social` varchar(60) DEFAULT NULL,
  `neg_img_busqueda` int(1) NOT NULL,
  `id_categoria_negocio` int(4) NOT NULL,
  `id_persona` int(4) NOT NULL,
  `id_colonia_negocio` int(4) NOT NULL,
  PRIMARY KEY (`id_negocio`),
  KEY `fk_negocio_categorias_negocios1_idx` (`id_categoria_negocio`),
  KEY `fk_negocio_persona1_idx` (`id_persona`),
  KEY `fk_negocio_direccion1_idx` (`id_colonia_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `negocio`
--

INSERT INTO `negocio` (`id_negocio`, `neg_nombre`, `neg_coordenadas`, `neg_telefono`, `neg_fecha_publicacion`, `neg_descripcion_breve`, `neg_descripcion_general`, `neg_correo`, `neg_calle`, `neg_cruzamiento`, `neg_referencia`, `neg_red_social`, `neg_img_busqueda`, `id_categoria_negocio`, `id_persona`, `id_colonia_negocio`) VALUES
(1, 'Office Depot', '1316494-46464469', '9841228408', '2016-04-21', 'En Office Depot puedes encontrar todo lo neceites en tu oficina y escuela', 'ffice DEPOT® de México abre sus puertas un 23 de Marzo de 1995 gracias a la alianza estratégica formada por Office DEPOT Inc. (Delray Beach, Florida, EEUU) y Grupo Gigante (Ciudad de México), con la idea de establecer en México el concepto de bodega de artículos de oficina. Este concepto vino a revolucionar no solo la venta de artículos de oficina, sino que creó un nuevo concepto de venta para artículos escolares, muebles, computadoras y electrónicos, buscando trasladar los beneficios de la compra al mayoreo a los consumidores finales.', 'officedepot@gmail.com', 'Galaxia', 'Entre jupiter y neptuno', 'Enfrente de don wicho.', '', 1, 20, 4, 1),
(2, 'OfficeMax', '54616516-119496896', '9845552412', '2016-04-21', 'Venta de suministros para oficinas, con entrega en su oficina, empresa o negocio.', 'Somos una cadena comercial de artículos de oficina y papelería, líder en el ramo. Iniciamos operaciones en México en 1996, ofreciendo un amplio catálogo de productos de calidad y un servicio confiable que hoy por hoy nos ha colocado dentro de la preferencia de nuestros clientes, que van desde estudiantes y padres de familia; micro-negocios y PYMES; hasta corporativos, instituciones educativas y de gobierno.', '131k0031@itscarrillopuerto.edu.mx', 'Benito Juarez', 'Entre Pepe y Juan', 'Enfrente de la casa de Uex', '', 1, 20, 5, 2),
(3, 'Tony tiendas', '5164629-451484', '9835269752', '2016-04-22', 'Encuentra los horarios y teléfonos de las tiendas Tony Super Papelerías más cercanas a ti.', 'Tonu inicia operaciones en el año 1959, distinguiendose desde su inicio por ofrecer la más amplia variedad de articulos de los mejores fabricantes y siempre al más bajo precio. Es la fuerza de gente lo que ha hecho de Tony la empresa de super Papelerías más grande e importante del país.', 'tony@hotmail.com', 'Solaris', 'Entre Jose Francisco y Julion', 'A un lado de la baticueva', '', 1, 16, 1, 3),
(4, 'Sams club', '164697-4664946', '9838547159', '2016-04-23', 'SAMS CLUB es una marca registrada de Nueva Wal-Mart de México S. de R.L. de C.V. Todos los derechos reservados.', 'Contamos con respaldo Wal-MArt, lo que nos da un gran poder de negociación en beneficio de nuestros socio. Al vender nuestra Membresía obtenemos mayor capacidad económica para negociar con anticipacióin el mejor precio para nuestros Socios.', 'samsclub@gmail.com', 'Ruiseñor', 'Entre Rocku y Balboa', 'A un costado de Aurrera', '', 1, 20, 6, 4),
(5, 'Chedraui', '5416616-16546', '9838475215', '2016-04-24', 'Descubre las últimas ofertas de Chedraui en los catálogos y folletos online, y la información de sus tiendas', 'Al mes de Julio del 2015 contamos con 218 sucursales, de las cuales 152 son Tienda Chedraui, 51 Súper Chedraui, 15 tiendas en formato Selecto y contamos con 50 Tiendas El Super en Estados Unidos, a nivel compañía somos más de 35,000 colaboradores.', 'cheraui@hotmail.com', 'oropendula', 'Entre Bautista y Benito', 'Frente al Tec', '', 1, 20, 7, 5),
(6, 'Gropo Boxito', '1518975-32525245', '9842156325', '2016-05-08', 'Todo para construccion, no lo pienses más..!', '"Empresa líder con un modelo de negocio diferenciado, con presencia nacional e internacional, atractiva para el desarrollo de talento, capaz de duplicarse cada cinco años, siendo la solución integral para sus clientes logrando su recomendación a través de ahorita lo pides, ahorita lo tienes"', 'boxito@gmail.com', 'el negro', 'Entre 68 y 45', 'Frente al poder judicial', '', 1, 21, 6, 6),
(7, 'Coppel', '14481454-45648456', '9856322145', '2016-05-08', 'Endeuda tu vida', 'Todo lo que compres en coppel por credito, te endeuda con sus intereses, al contado esta chevre.', 'coppel@hotmaol.com', 'El boxo', 'Entre 85 y 86', 'A lado de los valitos', '', 1, 20, 4, 7),
(8, 'Niplito', '4155824-4121455', '9842548546', '2016-05-08', 'Conoce y aprovecha los multiples beneficios que te ofrecemos', 'Es un negocio dedicado a la construcción de una casa desde herramientas hasta piunturas, asi como también plomería y electrónica.', 'niplito@gmail.com', 'Chift', 'Entre 96 y 98', 'detrás del Oxxo', '', 1, 21, 1, 8),
(9, 'Banco Azteca', '15496-51364', '9865246245', '2016-05-09', 'Banco Azteca es un banco que te ofrece, créditos y finanzas con seguridad.', 'anco Azteca es un banco que nació en octubre del 2002, ante la oportunidad derivada del bajo nivel de bancarización en México. El Banco está orientado al sector de menores ingresos, que representa un 70% de la población no atendida por los bancos tradicionales. Una gran ventaja desde el inicio de operaciones, fue la experiencia de más de 60 años de Grupo Elektra en el otorgamiento de crédito a dicho sector.', 'banco_azteca@gmail.com', 'Quetzal', 'Entre 52 y 54', 'Con Bernachif', '', 1, 2, 5, 9),
(10, 'Banamex', '215545-5225452', '9852145268', '2016-05-09', 'Banamex ofrece los mejores productos y servicios financieros.', 'Tarjetas de Crédito, Créditos hipotecarios, Créditos personales, todo esto te ofrece banamex con toda la segurudad integrada, para administrar bien tu economía y finanzas.', 'banamex@hotmail.com', 'La serpiente', 'Entre 74 y 76', 'A lado del niño', '', 1, 2, 3, 10),
(11, 'Un nuevo negocio en la lista de negocios', '19.579583, -88.042101', '9531321654', '2016-05-28', 'Es un negocio que permite que compres agua purificada en la esquina de tu hogar', '<h4>Mi &uacute;nico negocio que es herencia familiar</h4>\r\n<p><strong>Compra lo que necesites</strong></p>\r\n<p style="text-align: justify;">Cuando lo desees podr&aacute;s encontrar lo que tu necesites siempre y cuando tengas dinero de sobra o lo necesario para&nbsp; que te podamos brindar nuestro servicio.</p>', 'carlos.cituc@gmail.com', '53', '48 y 64 A', 'Es una casa muy bonita', 'casdf', 0, 4, 4, 8),
(12, 'Reparación de computadoras', '19.579583, -88.042101', '5665646464', '2016-05-28', 'Reparo computadoras a todo aquel que tenga dinero', '<p><strong>Pasen a que les repare sus computadoras a todos los que tenga con que pagar</strong></p>', 'carlos.cituc@gmail.com', '58', '64 y 88', 'Es una casa de dos pisos', '', 0, 4, 14, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE IF NOT EXISTS `notificacion` (
  `id_notificacion` int(4) NOT NULL AUTO_INCREMENT,
  `not_nombre_persona` varchar(35) DEFAULT NULL,
  `not_correo` varchar(50) NOT NULL,
  `not_fecha` date NOT NULL,
  `id_producto` int(4) NOT NULL,
  PRIMARY KEY (`id_notificacion`),
  KEY `fk_notificacion_producto1_idx` (`id_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `notificacion`
--

INSERT INTO `notificacion` (`id_notificacion`, `not_nombre_persona`, `not_correo`, `not_fecha`, `id_producto`) VALUES
(1, 'Carlos Alberto Cituc Chab', 'carlos.cituc@gmail.com', '2016-05-25', 2),
(2, 'Carlos Alberto Cituc Chab', '131k0031@itscarrillopuerto.edu.mx', '2016-05-25', 2),
(3, 'Ernesto Valentín Caamal Peech', 'ernesto.valen.t@gmail.com', '2016-05-25', 2),
(4, 'Carlos Alberto Cituc Chab', '131k0031@itscarrillopuerto.edu.mx', '2016-05-25', 3),
(5, 'Carlos Alberto Cituc Chab', '131k0031@itscarrillopuerto.edu.mx', '2016-05-25', 2),
(6, 'Carlos Alberto Cituc Chab', '131k0031@itscarrillopuerto.edu.mx', '2016-05-26', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id_persona` int(4) NOT NULL AUTO_INCREMENT,
  `per_nombre` varchar(35) NOT NULL,
  `per_apellido` varchar(40) NOT NULL,
  `per_correo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `per_correo_visible` tinyint(1) NOT NULL,
  `per_telefono` varchar(10) DEFAULT NULL,
  `per_telefono_visible` tinyint(1) DEFAULT NULL,
  `per_red_social` varchar(60) DEFAULT NULL,
  `per_red_social_visible` tinyint(1) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  PRIMARY KEY (`id_persona`),
  KEY `fk_personal_usuario1_idx` (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `per_nombre`, `per_apellido`, `per_correo`, `per_correo_visible`, `per_telefono`, `per_telefono_visible`, `per_red_social`, `per_red_social_visible`, `id_usuario`) VALUES
(1, 'Eric Rodrigo', 'Espadas Ku', 'espadas950@gmail.com', 0, '9841228408', 0, '', 0, 1),
(2, 'Ernesto Valentin', 'Caamal Peech', 'ernestovalent@gmail.com', 0, '9842548841', 0, '', 0, 2),
(3, 'Marcos', 'Pech Cruz', 'marquitos.pech@gmail.com', 0, '9835412589', 0, '', 0, 3),
(4, 'Carlos Alberto', 'Cituc Chab', 'carlos.cituc@hotmail.com', 0, '9833694582', 0, '', 0, 4),
(5, 'Luis Felipe', 'Tun Poot', 'felipe.tun@yahoo.com', 0, '9832547895', 0, '', 0, 5),
(6, 'ELiu', 'Puc Puc', 'eliu_niño@gmail.com', 0, '9834597854', 0, '', 0, 6),
(7, 'Bernabe', 'Cituk Caamal', 'berna.gatita@hotmail.com', 0, '9834569875', 0, '', 0, 7),
(8, 'Victor', 'Uex Mis', 'uex69@gmail.com', 0, '9835698546', 0, '', 0, 8),
(9, 'Eliezer', 'Balam Santos', 'eliezer_balam@outlook.com', 0, '9834529872', 0, '', 0, 9),
(10, 'Raul Enrique', 'Dzids Ku', 'raul@gmail.com', 0, '9836984256', 0, '', 0, 10),
(11, 'Yesenia', 'Rivas', 'yesi@hotmail.com', 1, '9831524875', 1, NULL, 0, 11),
(12, 'carlos', 'carlos', 'carlos@gmail.com', 1, NULL, 0, NULL, 0, 12),
(13, 'carlos', 'carlos', 'carlos2@gmail.com', 1, NULL, 0, NULL, 0, 13),
(14, 'Ramiro', 'Velasquez', '131k0031@itscarrillopuerto.edu.mx', 1, NULL, 0, NULL, 0, 14),
(15, 'carlos', 'cituc', 'chab@gmail.com', 0, NULL, 0, NULL, 0, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` int(4) NOT NULL AUTO_INCREMENT,
  `pro_nombre` varchar(45) NOT NULL,
  `pro_descripcion_breve` varchar(150) NOT NULL,
  `pro_descripcion_general` varchar(1000) NOT NULL,
  `pro_precio` decimal(7,2) NOT NULL,
  `pro_fecha_publicacion` date NOT NULL,
  `pro_estatus` tinyint(1) NOT NULL,
  `id_categoria_producto` int(4) NOT NULL,
  `id_persona` int(4) NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_producto_categoria_idx` (`id_categoria_producto`),
  KEY `fk_producto_persona1_idx` (`id_persona`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `pro_nombre`, `pro_descripcion_breve`, `pro_descripcion_general`, `pro_precio`, `pro_fecha_publicacion`, `pro_estatus`, `id_categoria_producto`, `id_persona`) VALUES
(1, 'Memoria RAM', 'Memoria RAM Kingston', 'El consejo JEDEC dicta los estándares de ingeniería de los productos de semiconductores y es el ente de estandarización de productos de semiconductores de la Alianza de Industrias Electrónicas (EIA, por su sigla en inglés). Aproximadamente unas 300 compañías que representan a todos los segmentos de la industria participan activamente en el desarrollo de estándares con el fin de satisfacer las necesidades de la industria. Como miembro de hace muchos años de la Junta Directiva del JEDEC, Kingston Technology contribuye a establecer los estándares de tecnología que rigen la industria de los productos de memoria. Todos los productos de memoria de Kingston cumplen con las especificaciones del JEDEC, que se encuentra entre las más importantes de las utilizadas por los fabricantes de productos de semiconductores.', '2500.00', '2016-04-21', 1, 1, 3),
(2, 'USB ADATA', 'USB ADATA 16 GB, soporta reproduccion de video y audio 4K.', '\r\nEl UE710 se adapta a una amplia audiencia mediante la combinación de la conectividad Rayo y USB certificado por Apple. Es compatible con los dispositivos iPhone, iPad y iPod, que permite la transferencia de datos, así como Ultra HD 4K de vídeo - los usuarios de desagüe de ancho de banda limitado con el intercambio de contenidos y el disfrute directo. Para archivos de gran tamaño y el compromiso social, unidades flash USB de primera calidad como la UE710 siguen siendo superiores a mover el contenido a través de Internet.', '600.00', '2016-04-21', 1, 1, 5),
(3, 'Columpios (shackles)', 'Columpios (shackles) Para Cherokee Sport Xj + 2 Pulgadas.', 'Estos columpios aumentan la altura en la suspension trasera de tu Jeep Cherokee Sport XJ  dos pulgadas. Estan fabricadas en placa de 2" ancho y el espesor es de 1/4" son indestructibles.\r\nLa instalacion es sencilla y sin tener que efectuar adaptaciones, se colocan de manera directa.', '1080.00', '2016-04-22', 1, 9, 8),
(4, 'Anuncio Antiguo De Chiclets Adams', 'Ponemos a la venta este anuncio antiguo de chiclets adams hecho de lamina fecha de 1951.\r\nEl anuncio se encuentra en muy buenas condiciones, muestra a', 'Antes de realizar la compra, lea con atención los siguientes puntos:\r\nEstamos a sus órdenes para contestar cualquier duda que tenga. Favor de aclarar  cualquier inquietud que se le presente antes de realizar la compra.\r\nAl momento de realizar la compra, se  adquiere un compromiso con el vendedor de pagar la pieza y concretar la operación, USTED es quien esta decidiendo hacer la compra.\r\nEs muy importante que si ya decidió hacer la compra cuente con el dinero para pagar la pieza.\r\nToda compra en falso ocasionara que le ponga una calificación NEGATIVA, no se arriesgue a perjudicar su reputación.\r\nPuede tener la seguridad y la confianza que su compra es totalmente segura con nosotros, revise nuestra reputación 100% positiva, todos nuestros clientes han estado totalmente satisfechos.\r\nPuede realizar su pago por medio de cualquier tarjeta de crédito o debito directamente con nosotros y sin comisión.', '1100.00', '2016-04-22', 1, 13, 9),
(5, 'Par De Pesas Mancuernas', 'Par De Pesas Mancuernas 36 Libras, Profesional 100% Metal.', '2 mancuernas con discos intercambiables.\r\nincluye.\r\n2 barras metálicas con seguros estrella atornillables. 3 Kg. ( 6 libras)\r\n4 discos de 2 Kg (16 libras)\r\n4 discos de 1 Kg ( 8 libras)\r\n4 discos de .5 kg ( 4 libras)\r\ntotal. 17 kilos igual a 34 libras.\r\ntodo nuevo y 100% metal', '575.00', '2016-05-22', 1, 3, 4),
(6, 'Mouse Performance Inalámbrico', 'Performance Mouse\r\n4 botones programables Cuenta con la tecnologia Darkfield.', 'Performance Mouse\r\n4 botones programables Cuenta con la tecnologia Darkfield Navegacion precisa Diseño confortable Cuenta con cargador micro usb. Cuenta con la tecnologia Unyfying', '1444.00', '2016-05-08', 1, 1, 8),
(7, 'Mochila Para Laptop 17', 'Mochila para Laptop 17" Mobile Edge Alienware Vindicator Modelo AWVBP17', 'Máximo confort bajo cualquier carga: El panel reforzado, acolchado, moldeado y con ventilación posterior proporciona soporte mientras la costumbre acolchado y correas de los hombros y el pecho con aire de malla ajustable asegurar su comodidad mientras que la distribución del peso de su equipo. El Alienware Vindicador mochila tiene un diseño moderno y elegante que refleja el diseño industrial portátil Nueva Alienware. El exterior de nylon de alta densidad construida artículo protege su engranaje en estilo mientras que la cabeza Alienware icónica permite a todos saber que usted habla en serio.', '2350.00', '2016-05-08', 1, 1, 10),
(8, 'Pantalon Tactico Casual Idd', 'Estos pantalones se pueden acomodar típicos de 1,5 "y 1,75" correas (se venden por separado).', 'Estos pantalones se pueden acomodar típicos de 1,5 "y 1,75" correas (se venden por separado). Un total de 8 bolsillos! 60% algodón / 40% poliéster rip-stop tela Fundido de tela resistente Diamond Fuelle entrepierna Cintura Elastic Band Grandes bolsas de Carga One D-Ring Por Pocket Cargo Doble la rodilla Tela Aeropuerto friendly Hardware, Heavy Duty Asiento doble Dos bolsillos delanteros de hendidura Dual Front D Anillos Construido en el Strings blousing Slanted Flaps Carga de bolsillo para el acceso Seated Zipper mosca\r\n100 %ÔRIGINALES Y NUEVOS.\r\nGARANTIZADOS.\r\nENTREGADO EN TU PUERTA EN MENOS DE 5 DIAS HABILES.\r\nSE ACEPTAN PEDIDOS A MEDIO MAYOREO , DESCUENTO A REVENDEDORES\r\nTODA LA LINEA TACTICA,UNIFORMES Y ACCESORIOS.\r\nDISTRIBUIMOS A TODA LA REPUBLICA MEXICANA.\r\nBLACK KNIGHT SECURITY MEXICO', '890.00', '2016-05-08', 1, 4, 2),
(9, 'Playera Civil War', 'PLAYERA CIVIL WAR CAPITÁN AMÉRICA VS IRON MAN ARMADURA', 'Modelo: AMCW002M\r\nPeso: 106 g/m2\r\nTejido: Chifón 100% algodón. \r\n¡Producto para venta exclusiva en México!', '220.00', '2016-05-09', 1, 4, 5),
(10, 'Mica Cristal Templado ', 'Mica Cristal Templado Curvo 9h Samsung Galaxy S7 Edge', 'nfinite Wishes\r\nTiene para ti\r\nMica Protectora de Cristal Templado\r\nSamsumg Galaxy S7 edge\r\nGrado de dureza 9H\r\nTransparente, Plata, Dorada, Negra, Azul y Blanca.\r\nSeguridad total para tu pantalla protegiendo ambas curvas de tu S7 edge\r\n\r\n¡Atención a mayoristas con los mejores precios del mercado!\r\n\r\nEn Infinite Wishes estamos comprometidos con la satisfacción de nuestros clientes\r\nPor lo que siempre te hablamos claro', '345.00', '2016-05-09', 1, 1, 7),
(12, 'leoncillos', 'Leksk', '<p>Productodsks<strong><em>dkkddkdkdkdkdkdkdkd</em></strong></p>', '30.00', '2016-05-22', 1, 5, 4),
(13, 'Un nuevo y moderno producto', 'Sirve para embellezer el cutis', '<p>Es un producto altamente efectivo que hasta desvanece la edad de las personas que lo usan</p>', '56.00', '2016-05-28', 1, 13, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad_negocio`
--

CREATE TABLE IF NOT EXISTS `publicidad_negocio` (
  `id_publicidad_negocio` int(4) NOT NULL AUTO_INCREMENT,
  `pub_monto_pagado` decimal(6,2) NOT NULL,
  `pub_imagen` varchar(4) NOT NULL,
  `pub_meses` int(2) NOT NULL,
  `pub_fecha` date DEFAULT NULL,
  `id_negocio` int(4) NOT NULL,
  PRIMARY KEY (`id_publicidad_negocio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `publicidad_negocio`
--

INSERT INTO `publicidad_negocio` (`id_publicidad_negocio`, `pub_monto_pagado`, `pub_imagen`, `pub_meses`, `pub_fecha`, `id_negocio`) VALUES
(1, '100.00', '1', 2, '2016-05-09', 1),
(2, '0.00', '0', 0, NULL, 2),
(3, '60.00', '0', 2, '2016-05-15', 3),
(4, '0.00', '0', 0, NULL, 4),
(5, '120.00', '0', 4, '2016-04-09', 5),
(6, '0.00', '0', 0, NULL, 6),
(7, '30.00', '0', 1, '2016-03-20', 7),
(8, '350.00', '8', 7, '2016-04-09', 8),
(9, '0.00', '0', 0, NULL, 9),
(10, '200.00', '10', 4, '2016-06-30', 10),
(11, '0.00', '0', 0, NULL, 11),
(12, '0.00', '0', 0, NULL, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad_producto`
--

CREATE TABLE IF NOT EXISTS `publicidad_producto` (
  `id_publicidad_producto` int(4) NOT NULL AUTO_INCREMENT,
  `pub_monto_pagado` decimal(6,2) NOT NULL,
  `pub_imagen` varchar(4) NOT NULL,
  `pub_meses` int(2) NOT NULL,
  `pub_fecha` date DEFAULT NULL,
  `id_producto` int(4) NOT NULL,
  PRIMARY KEY (`id_publicidad_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcado de datos para la tabla `publicidad_producto`
--

INSERT INTO `publicidad_producto` (`id_publicidad_producto`, `pub_monto_pagado`, `pub_imagen`, `pub_meses`, `pub_fecha`, `id_producto`) VALUES
(1, '0.00', '0', 0, NULL, 1),
(2, '60.00', '0', 2, '2016-05-09', 2),
(3, '100.00', '3', 2, '2016-04-12', 3),
(4, '0.00', '0', 0, NULL, 4),
(5, '100.00', '5', 2, '2016-03-06', 5),
(6, '50.00', '6', 1, '2016-07-09', 6),
(7, '0.00', '0', 0, NULL, 7),
(8, '150.00', '8', 3, '2016-06-15', 8),
(9, '30.00', '0', 1, '2016-04-12', 9),
(10, '0.00', '0', 0, NULL, 10),
(12, '0.00', '0', 0, NULL, 12),
(13, '0.00', '0', 0, NULL, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicidad_servicio`
--

CREATE TABLE IF NOT EXISTS `publicidad_servicio` (
  `id_publicidad_servicio` int(4) NOT NULL AUTO_INCREMENT,
  `pub_monto_pagado` decimal(6,2) NOT NULL,
  `pub_imagen` varchar(4) NOT NULL,
  `pub_meses` int(2) NOT NULL,
  `pub_fecha` date DEFAULT NULL,
  `id_servicio` int(4) NOT NULL,
  PRIMARY KEY (`id_publicidad_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `publicidad_servicio`
--

INSERT INTO `publicidad_servicio` (`id_publicidad_servicio`, `pub_monto_pagado`, `pub_imagen`, `pub_meses`, `pub_fecha`, `id_servicio`) VALUES
(1, '50.00', '1', 1, '2016-05-09', 1),
(2, '0.00', '0', 0, NULL, 2),
(3, '60.00', '0', 2, '2016-04-09', 3),
(4, '0.00', '0', 0, NULL, 4),
(5, '250.00', '5', 5, '2016-06-08', 5),
(6, '0.00', '0', 0, NULL, 6),
(7, '90.00', '0', 3, '2016-05-18', 7),
(8, '150.00', '0', 5, '2016-05-30', 8),
(9, '0.00', '0', 0, NULL, 9),
(10, '100.00', '10', 2, '2016-05-31', 10),
(11, '0.00', '0', 0, NULL, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE IF NOT EXISTS `servicio` (
  `id_servicio` int(4) NOT NULL AUTO_INCREMENT,
  `ser_nombre` varchar(45) NOT NULL,
  `ser_coordenadas` varchar(25) NOT NULL,
  `ser_telefono` varchar(10) DEFAULT NULL,
  `ser_descripcion_breve` varchar(150) NOT NULL,
  `ser_descripcion_general` varchar(1000) NOT NULL,
  `ser_fecha_publicacion` date NOT NULL,
  `ser_calle` varchar(30) NOT NULL,
  `ser_cruzamiento` varchar(30) NOT NULL,
  `ser_referencia` varchar(100) NOT NULL,
  `ser_red_social` varchar(45) DEFAULT NULL,
  `id_categoria_servicio` int(4) NOT NULL,
  `id_persona` int(4) NOT NULL,
  `id_colonia_servicio` int(4) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `fk_servicios_categoria_servicios1_idx` (`id_categoria_servicio`),
  KEY `fk_servicios_persona1_idx` (`id_persona`),
  KEY `fk_servicios_direccion_servicio1_idx` (`id_colonia_servicio`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`id_servicio`, `ser_nombre`, `ser_coordenadas`, `ser_telefono`, `ser_descripcion_breve`, `ser_descripcion_general`, `ser_fecha_publicacion`, `ser_calle`, `ser_cruzamiento`, `ser_referencia`, `ser_red_social`, `id_categoria_servicio`, `id_persona`, `id_colonia_servicio`) VALUES
(1, 'Mantenimiento de computo', '', NULL, 'Mantenimiento de computadoras a domicilio.', 'Se manejan precios accesibles, puede preguntar por cualquier paquete que ustes quiera conusltar, para más información puede hacer una llamada.', '2016-04-21', 'De los animales', 'Entre hormiga y codorniz', 'Atrás del mercado', '', 4, 5, 1),
(2, 'Mecanico', '', NULL, 'Tenemos los mejores precios y servicios automotriz', 'Tenemos varios tipos de refacciones así como originales, se pueden hacer pedidos. Contamos con serrvicios de balanceo y contamos con nitrigeno.', '2016-04-21', 'Golondrina', 'Entre Javier antonio y Francis', 'A un costado de chedraui', '', 5, 8, 2),
(3, 'Plomería', '', NULL, 'Servicio de plomería a domicilio, el mejor servicio..!', 'Cuento con habilidades para reparar caños rotos, instalación de tuberías normales y complejas.', '2016-04-22', 'Liebre', 'Entre Flabio Y eugenio', 'A un lado del poder judicial', '', 17, 6, 3),
(4, 'Taller de Bicicletas', '', NULL, 'Reparacion de biciletas con precios accesibles', 'Se reparan bicicletas, se venden refacciones, se engrasan y tambien contamoscon sistema de pedido.', '2016-04-22', 'EL gallo', 'Entre paquita y Del barrio', 'A un costado del parque de las madres', '', 5, 9, 4),
(5, 'Electricista', '', NULL, 'Servicio a domicilio con los mejores precios', 'Ofresco el servicio a domicilio de electricista, cuento con habilidades para reparación e instalacion de cables electricos en su hogar tomando en cuenta la segurudad.', '2016-04-23', 'Hormiga', 'Entre Lazaro y Pedro', 'En frente del Conalep', '', 6, 1, 5),
(6, 'Alnañiles', '', NULL, 'Servicio de construccion de calidad', 'Ofrecemos un buen servicio de calidad, hacemos cotizaciones de cualquier construccion, y construimos arte maya.', '2016-05-08', 'Stax', 'Entre 25 y 28', 'Frente al parque de la croc', '', 20, 6, 6),
(7, 'Vanes foráneas', '', NULL, 'El mejor transporte de carrillo', 'Tenemos diferentes tarifas y rutas para que llegues a tu destino, con un precio totalmente económico', '2016-05-08', 'El tiburón', 'Entre 56 y 58', 'frente a Aristoss', '', 1, 6, 7),
(8, 'Renta de trajes', '', NULL, 'Los mejores trajes para tus fiestas', 'Es un servicio de rentas de trajes de novia, de novios o inclusive para grduaciones, con precios económicos, sino, que le pregumten a Valito.', '2016-05-08', 'El gallito', 'Entre 11 y 13', 'Frente al mercado', '', 18, 2, 8),
(9, 'ADO', '', NULL, 'El mejor servicio en viajes cómodos.', 'Te ofrecemos servicios de autobus con los mejores precios y calidad, con diferentes clases.', '2016-05-09', 'Don Wicho', 'Entre 69 y 70', 'A un costado de Nefta', '', 18, 4, 9),
(10, 'Renta de bicicletas', '', NULL, 'Las mejores bicicletas económicas', 'Un servicio de renta de bicicletas al mejor precio, y con las mejores marcas de bicicletas en el mercado', '2016-05-09', 'Chama', 'Entre 24 y 26', 'Por la taberna', '', 18, 1, 10),
(11, 'Servicio sobrenatural', '19.579583, -88.042101', '5546846948', 'Es un servicio que describe como realizarás todos tus actividades futuras', '<p>Es un servicio que jam&aacute;s nadie te ofrecer&aacute; pero, debes de tener cuidado con lo que pides saber, puede que haya alien&iacute;genas diciendo tonter&iacute;as o subiendo publicaciones a carrilloofrece</p>', '2016-06-04', '48', '26', 'Es una casa que está pintada de rojo', 'cosume.com', 20, 14, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(4) NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(50) NOT NULL,
  `usu_contrasenia` varchar(35) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `usu_nombre`, `usu_contrasenia`) VALUES
(1, 'espadas950@gmail.com', '1234'),
(2, 'ernestovalent@gmail.com', 'valito'),
(3, 'marquitos.pech@gmail.com', 'marcos'),
(4, 'carlos.cituc@hotmail.com', 'dc599a9972fde3045dab59dbd1ae170b'),
(5, 'felipe.tun@yahoo.com', 'felipito'),
(6, 'elu_niño@gmail.com', 'elniño'),
(7, 'berna.gatita@hotmail.com', 'barnabilitis'),
(8, 'uex69@gmail.com', 'feo'),
(9, 'eliezer_balam@outlook.com', 'santos'),
(10, 'raul@gmail.com', 'pit'),
(11, 'yesi@hotmail.com', '486c0fab3c41e24f913b02a2cfcd26b3'),
(12, 'carlos@gmail.com', 'dc599a9972fde3045dab59dbd1ae170b'),
(13, 'carlos2@gmail.com', 'dc599a9972fde3045dab59dbd1ae170b'),
(14, '131k0031@itscarrillopuerto.edu.mx', 'dc599a9972fde3045dab59dbd1ae170b'),
(15, 'chab@gmail.com', 'dc599a9972fde3045dab59dbd1ae170b');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `negocio`
--
ALTER TABLE `negocio`
  ADD CONSTRAINT `fk_negocio_categorias_negocios1` FOREIGN KEY (`id_categoria_negocio`) REFERENCES `categoria_negocio` (`id_categoria_negocio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_negocio_direccion1` FOREIGN KEY (`id_colonia_negocio`) REFERENCES `colonia_negocio` (`id_colonia_negocio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_negocio_persona1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `fk_notificacion_producto1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_personal_usuario1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `fk_producto_categoria` FOREIGN KEY (`id_categoria_producto`) REFERENCES `categoria_producto` (`id_categoria_producto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_producto_persona1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD CONSTRAINT `fk_servicios_categoria_servicios1` FOREIGN KEY (`id_categoria_servicio`) REFERENCES `categoria_servicio` (`id_categoria_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicios_direccion_servicio1` FOREIGN KEY (`id_colonia_servicio`) REFERENCES `colonia_servicio` (`id_colonia_servicio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicios_persona1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id_persona`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
