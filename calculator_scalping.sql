-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-12-2025 a las 22:23:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `armonix`
--
CREATE DATABASE IF NOT EXISTS `armonix` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `armonix`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos_cuotas`
--

CREATE TABLE `ciclos_cuotas` (
  `id_ciclo` int(11) NOT NULL,
  `ciclo` int(11) NOT NULL COMMENT 'Ciclo hace referencia al año en el que se implementarán estos aranceles',
  `curso` varchar(100) DEFAULT NULL COMMENT 'Identificador del curso/deporte (estruct.ej: Dep.-genero-categoria => futbol_femenino_2010, basquet_femenino_2017)',
  `cant_cuotas` tinyint(3) NOT NULL COMMENT 'Número de cuotas en el ciclo (9, 10, 11, o 12)',
  `cuota_mes_0` decimal(10,2) DEFAULT NULL COMMENT 'Cuota 0 hace referencia a cuota o valor de inscripción',
  `habilitar_mes_0` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_1` decimal(10,2) DEFAULT NULL COMMENT 'Valor cuota en mes 1',
  `habilitar_mes_1` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_2` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 2',
  `habilitar_mes_2` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_3` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 3',
  `habilitar_mes_3` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_4` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 4',
  `habilitar_mes_4` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_5` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 5',
  `habilitar_mes_5` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_6` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 6',
  `habilitar_mes_6` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_7` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 7',
  `habilitar_mes_7` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_8` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 8',
  `habilitar_mes_8` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_9` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 9',
  `habilitar_mes_9` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_10` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 10',
  `habilitar_mes_10` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_11` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 11',
  `habilitar_mes_11` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones',
  `cuota_mes_12` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'Valor cuota en mes 12',
  `habilitar_mes_12` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Si valor true, cuota se sumará al total de obligaciones'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciclos_cuotas`
--

INSERT INTO `ciclos_cuotas` (`id_ciclo`, `ciclo`, `curso`, `cant_cuotas`, `cuota_mes_0`, `habilitar_mes_0`, `cuota_mes_1`, `habilitar_mes_1`, `cuota_mes_2`, `habilitar_mes_2`, `cuota_mes_3`, `habilitar_mes_3`, `cuota_mes_4`, `habilitar_mes_4`, `cuota_mes_5`, `habilitar_mes_5`, `cuota_mes_6`, `habilitar_mes_6`, `cuota_mes_7`, `habilitar_mes_7`, `cuota_mes_8`, `habilitar_mes_8`, `cuota_mes_9`, `habilitar_mes_9`, `cuota_mes_10`, `habilitar_mes_10`, `cuota_mes_11`, `habilitar_mes_11`, `cuota_mes_12`, `habilitar_mes_12`) VALUES
(1, 2025, 'FUTBOLL_MASCULINO_2013', 9, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 0.00, 0, 0.00, 0, 0.00, 0),
(2, 2025, 'FUTBOLL_FEMENINO_2014', 9, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 3000.00, 1, 0.00, 0, 0.00, 0, 0.00, 0),
(3, 2025, 'PATINAJE-ART_FEMENINO_2019', 9, 3000.00, 1, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0),
(4, 2025, 'JOKEYPATIN_MASCULINO_2019', 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0, 0.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion_curso`
--

CREATE TABLE `inscripcion_curso` (
  `id_inscripcion` int(11) NOT NULL COMMENT 'ID único de la inscripción',
  `id_usuario` int(11) NOT NULL COMMENT 'ID del usuario/alumno inscripto',
  `id_ciclo` int(11) NOT NULL COMMENT 'ID del ciclo de cuotas al que se inscribe',
  `fecha_inscripcion` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha y hora de la inscripción',
  `estado` varchar(20) NOT NULL DEFAULT 'activo' COMMENT 'Estado de la inscripción: activo, suspendido, finalizado',
  `observaciones` text DEFAULT NULL COMMENT 'Observaciones adicionales sobre la inscripción',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación del registro',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de última actualización'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inscripcion_curso`
--

INSERT INTO `inscripcion_curso` (`id_inscripcion`, `id_usuario`, `id_ciclo`, `fecha_inscripcion`, `estado`, `observaciones`, `created_at`, `updated_at`) VALUES
(1, 8, 1, '2025-09-07 13:15:07', 'activo', NULL, '2025-09-07 13:52:32', '2025-09-07 13:52:52'),
(2, 7, 4, '2025-09-07 13:53:02', 'activo', 'Algo', '2025-09-07 13:52:55', '2025-09-07 13:53:05'),
(3, 5, 4, '2025-09-07 13:32:50', 'activo', 'algo 1', '2025-09-07 13:32:50', '2025-09-07 13:53:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1748569768),
('m130524_201442_init', 1748569776),
('m190124_110200_add_verification_token_column_to_user_table', 1748569776),
('m250110_224733_ciclos_cuotas', 1748569776),
('m250111_115643_pago_obligaciones', 1748569777),
('m250111_133602_inscripcion_curso', 1748569777);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago_obligaciones`
--

CREATE TABLE `pago_obligaciones` (
  `id_pago` int(11) NOT NULL COMMENT 'ID único del pago',
  `id_inscripcion` int(11) NOT NULL COMMENT 'ID de la inscripción del curso (referencia a inscripcion_curso)',
  `numero_cuota` tinyint(3) NOT NULL COMMENT 'Número de cuota pagada (0=inscripción, 1-12=cuotas mensuales)',
  `monto_pagado` decimal(10,2) NOT NULL COMMENT 'Monto efectivamente pagado',
  `monto_original` decimal(10,2) NOT NULL COMMENT 'Monto original de la cuota (para control de descuentos/recargos)',
  `fecha_pago` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha y hora del pago',
  `tipo_pago` varchar(50) NOT NULL COMMENT 'Tipo de pago: efectivo, transferencia, mercadopago, tarjeta',
  `estado_pago` varchar(20) NOT NULL DEFAULT 'pendiente' COMMENT 'Estado: pendiente, aprobado, rechazado, revertido',
  `observaciones` text DEFAULT NULL COMMENT 'Observaciones adicionales del pago',
  `mp_collection_id` bigint(20) DEFAULT NULL COMMENT 'ID del pago enviado por MercadoPago',
  `mp_payment_id` bigint(20) DEFAULT NULL COMMENT 'ID del pago de MercadoPago',
  `mp_external_reference` varchar(100) DEFAULT NULL COMMENT 'Referencia única definida en la preferencia de pago',
  `mp_status` varchar(50) DEFAULT NULL COMMENT 'Estado del pago en MercadoPago: approved, pending, rejected, etc.',
  `mp_status_detail` varchar(100) DEFAULT NULL COMMENT 'Detalle adicional del estado de MercadoPago',
  `mp_payment_type_id` varchar(50) DEFAULT NULL COMMENT 'Método de pago utilizado en MercadoPago',
  `mp_transaction_amount` decimal(10,2) DEFAULT NULL COMMENT 'Monto total del pago en MercadoPago',
  `mp_currency_id` varchar(10) DEFAULT NULL COMMENT 'Identificador de la moneda (ARS, USD, etc.)',
  `payer_email` varchar(100) DEFAULT NULL COMMENT 'Email del usuario que realizó el pago',
  `payer_first_name` varchar(100) DEFAULT NULL COMMENT 'Nombre del pagador',
  `payer_last_name` varchar(100) DEFAULT NULL COMMENT 'Apellido del pagador',
  `payer_identification_type` varchar(20) DEFAULT NULL COMMENT 'Tipo de documento del pagador',
  `payer_identification_number` varchar(20) DEFAULT NULL COMMENT 'Número de documento del pagador',
  `payer_phone_area` varchar(10) DEFAULT NULL COMMENT 'Código de área del teléfono',
  `payer_phone_number` varchar(20) DEFAULT NULL COMMENT 'Número de teléfono del pagador',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Fecha de creación del registro',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Fecha de última actualización'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pago_obligaciones`
--

INSERT INTO `pago_obligaciones` (`id_pago`, `id_inscripcion`, `numero_cuota`, `monto_pagado`, `monto_original`, `fecha_pago`, `tipo_pago`, `estado_pago`, `observaciones`, `mp_collection_id`, `mp_payment_id`, `mp_external_reference`, `mp_status`, `mp_status_detail`, `mp_payment_type_id`, `mp_transaction_amount`, `mp_currency_id`, `payer_email`, `payer_first_name`, `payer_last_name`, `payer_identification_type`, `payer_identification_number`, `payer_phone_area`, `payer_phone_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3000.00, 3000.00, '0000-00-00 00:00:00', 'transferencia', 'pendiente', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-12 03:21:38', '2025-09-12 03:21:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'Clave primaria de registro para la tabla',
  `username` varchar(255) NOT NULL COMMENT 'Nombre de usuario que se usa en el login',
  `activo` tinyint(1) DEFAULT 0 COMMENT 'valor 0 = alumno de baja, valor 1 = alumno activo',
  `fecha_nacimiento` date DEFAULT NULL COMMENT 'Almacenado en mysql con formato americano YYYY-MM-DD',
  `dni` bigint(20) DEFAULT NULL COMMENT 'Documento Nacional de Identidad sin puntos',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'Todos los nombres que figuran en dni',
  `apellido` varchar(100) DEFAULT NULL COMMENT 'Todos los apellidos que figuren en DNI',
  `sexo` varchar(1) DEFAULT NULL COMMENT 'Como figure en DNI',
  `dni_padre` bigint(20) DEFAULT NULL COMMENT 'Documento Nacional de Identidad, identificador relación usuario padre, si valor es null hace referencia a un padre',
  `dni_madre` bigint(20) DEFAULT NULL COMMENT 'Documento Nacional de Identidad, identificador relación directa madre, si valor es null hace referencia a una madre',
  `dni_tutor` bigint(20) DEFAULT NULL COMMENT 'Documento Nacional de Identidad, identificador relación directa madre, si valor es null hace referencia a una madre',
  `alergia` text DEFAULT NULL COMMENT 'Alergias (si tiene)',
  `grupo_sanguineo` varchar(3) DEFAULT NULL COMMENT 'Grupo sanguíneo',
  `orden_notificacion` varchar(150) DEFAULT NULL COMMENT 'Orden de notificación en caso de emergencia',
  `obra_social` varchar(255) DEFAULT NULL COMMENT 'Obra social (si tiene)',
  `rol` tinyint(1) DEFAULT NULL COMMENT '0 - alumno 1 - padre/madre/tutor 2 - ambos 3 - administrador',
  `federado` tinyint(1) DEFAULT 0 COMMENT 'Está federado: 0 - No, 1 - Sí',
  `pase_club` varchar(50) DEFAULT NULL COMMENT 'Si el alumno está a prestamo',
  `numero_carnet` varchar(100) DEFAULT NULL COMMENT 'Número de carnet de federado',
  `clase_division` varchar(4) DEFAULT NULL COMMENT 'Clase o categoría relacionada con el año de nacimiento del alumno',
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL COMMENT 'Teléfono de la madre',
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `activo`, `fecha_nacimiento`, `dni`, `nombre`, `apellido`, `sexo`, `dni_padre`, `dni_madre`, `dni_tutor`, `alergia`, `grupo_sanguineo`, `orden_notificacion`, `obra_social`, `rol`, `federado`, `pase_club`, `numero_carnet`, `clase_division`, `auth_key`, `password_hash`, `password_reset_token`, `telefono`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'marcevargas', 1, '2013-03-12', 37678919, 'Mario', 'Vargas', 'M', 25820756, NULL, NULL, 'NO', 'O+', '25820756', 'OSEP', 0, 0, NULL, NULL, '2013', 'TB7ZP5eupomwSA2I2IklTl5n2ynE1616', '$2y$13$dyYgkLoOWhPAYXO2jO5JHexU9dWYGVZ7EEbbMqqPHlwNbI0fIXo5m', NULL, '02615584638', 'marcevonku@gmail.com', 10, 1745675928, 1745675928, 'N4VWFAat-aYzRWc8AzZWfRnhCSqWRYr7_1745675928'),
(2, 'ana_perez', 1, '2010-05-15', 35123456, 'Ana', 'Pérez', 'F', NULL, 28987654, NULL, NULL, 'A+', '1', 'OSDE', 0, 1, NULL, 'FED001', '2010', 'abcdefg123', '$2y$13$hJ76lKj89iMnOpQrStUvZe/Y.y6543210987654321098765', NULL, '2611234567', 'ana.perez@example.com', 10, 1672531200, 1672531200, NULL),
(3, 'carlos_lopez', 1, '2009-11-20', 34567890, 'Carlos', 'López', 'M', 25432109, NULL, NULL, 'Polvo', 'B-', '2', 'Swiss Medical', 0, 0, NULL, NULL, '2009', 'hijklmn456', '$2y$13$zXwVbNcMa9876543210987654321098765432109876543', NULL, '2617654321', 'carlos.lopez@example.com', 10, 1675209600, 1675209600, NULL),
(4, 'laura_rodriguez', 1, '2011-03-01', 36901234, 'Laura', 'Rodríguez', 'F', NULL, 30123456, NULL, 'Maní', 'O+', '1', 'Galeno', 0, 1, 'Club A', 'FED002', '2011', 'opqrstu789', '$2y$13$qWeRtYuIo9876543210987654321098765432109876543', NULL, '2619876543', 'laura.rodriguez@example.com', 10, 1677792000, 1677792000, NULL),
(5, 'martin_gomez', 0, '2008-07-10', 33234567, 'Martín', 'Gómez', 'M', 22987654, NULL, NULL, NULL, 'AB+', '3', 'Medifé', 0, 0, NULL, NULL, '2008', 'vwxyzab012', '$2y$13$aSdFgHjKl09876543210987654321098765432109876543', NULL, '2613216547', 'martin.gomez@example.com', 10, 1680384000, 1680384000, NULL),
(6, 'sofia_diaz', 1, '2012-01-25', 37567890, 'Sofía', 'Díaz', 'F', NULL, 31456789, NULL, NULL, 'A-', '2', 'Sancor Salud', 0, 1, NULL, 'FED003', '2012', 'cdefghi345', '$2y$13$jKlMnOpQr123456789012345678901234567890123456789', NULL, '2616547890', 'sofia.diaz@example.com', 10, 1683062400, 1683062400, NULL),
(7, 'lucas_fernandez', 1, '2010-09-05', 35890133, 'Lucas', 'Fernández', 'M', 26789012, NULL, NULL, 'Lactosa', 'O-', '1', 'ACA Salud', 0, 0, 'Club B', NULL, '2010', 'jklmnop678', '$2y$13$uIvYwXtZr23456789012345678901234567890123456789', NULL, '2614789012', 'lucas.fernandez@example.com', 10, 1685654400, 1685654400, NULL),
(8, 'valentina_vargas', 1, '2009-04-12', 34234568, 'Valentina', 'Vargas', 'F', NULL, 29012345, NULL, NULL, 'B+', '3', 'Omint', 0, 1, NULL, 'FED004', '2009', 'qrstuvw901', '$2y$13$eFgHiJkLm3456789012345678901234567890123456789', NULL, '2618901234', 'valentina.vargas@example.com', 10, 1688246400, 1688246400, NULL),
(9, 'juan_sanchez', 0, '2011-12-01', 36567890, 'Juan', 'Sánchez', 'M', 24345678, NULL, NULL, NULL, 'AB-', '2', 'Prevención Salud', 0, 0, NULL, NULL, '2011', 'xyzabc1234', '$2y$13$bCdEfGhIj456789012345678901234567890123456789', NULL, '2612348765', 'juan.sanchez@example.com', 10, 1690838400, 1690838400, NULL),
(10, 'agustina_flores', 1, '2010-02-18', 35901234, 'Agustina', 'Flores', 'F', NULL, 30567890, NULL, 'Picaduras de abeja', 'O+', '1', 'Unión Personal', 0, 1, NULL, 'FED005', '2010', 'defghij567', '$2y$13$mNoPqRsTu56789012345678901234567890123456789', NULL, '2615679012', 'agustina.flores@example.com', 10, 1693516800, 1693516800, NULL),
(11, 'pedro_martinez', 1, '2009-08-25', 34678901, 'Pedro', 'Martínez', 'M', 23678901, NULL, NULL, NULL, 'A+', '3', 'HOSPITAL ITALIANO', 0, 0, 'Club C', NULL, '2009', 'klmnopq890', '$2y$13$rStUvWxYz6789012345678901234567890123456789', NULL, '2619012345', 'pedro.martinez@example.com', 10, 1696108800, 1696108800, NULL),
(12, 'camila_gonzalez', 1, '2012-05-03', 37012345, 'Camila', 'González', 'F', NULL, 32789012, NULL, NULL, 'B-', '2', 'SWISS MEDICAL', 0, 1, NULL, 'FED006', '2012', 'tuvwxyz123', '$2y$13$fGhIjKlMn789012345678901234567890123456789', NULL, '2613456789', 'camila.gonzalez@example.com', 10, 1698614400, 1698614400, NULL),
(13, 'diego_rojas', 0, '2010-10-10', 35345678, 'Diego', 'Rojas', 'M', 27890123, NULL, NULL, 'Huevo', 'O-', '1', 'GALENO', 0, 0, NULL, NULL, '2010', 'abcdefg456', '$2y$13$hJkLmNoPq89012345678901234567890123456789', NULL, '2616789012', 'diego.rojas@example.com', 10, 1701292800, 1701292800, NULL),
(14, 'florencia_sosa', 1, '2009-01-15', 34012345, 'Florencia', 'Sosa', 'F', NULL, 29345678, NULL, NULL, 'AB+', '3', 'MEDIFÉ', 0, 1, 'Club D', 'FED007', '2009', 'hijklmn789', '$2y$13$zXcVbNmLo9012345678901234567890123456789', NULL, '2619012378', 'florencia.sosa@example.com', 10, 1703884800, 1703884800, NULL),
(15, 'gabriel_perez', 1, '2011-06-22', 36456789, 'Gabriel', 'Pérez', 'M', 25678901, NULL, NULL, NULL, 'A-', '2', 'SANCOR SALUD', 0, 0, NULL, NULL, '2011', 'opqrstu012', '$2y$13$qWeRtYuIp012345678901234567890123456789', NULL, '2612345890', 'gabriel.perez@example.com', 10, 1706563200, 1706563200, NULL),
(16, 'isabella_diaz', 1, '2010-12-05', 35789012, 'Isabella', 'Díaz', 'F', NULL, 31012345, NULL, 'Frutos secos', 'O+', '1', 'ACA SALUD', 0, 1, NULL, 'FED008', '2010', 'vwxyzab345', '$2y$13$aSdFgHjKo12345678901234567890123456789', NULL, '2615678901', 'isabella.diaz@example.com', 10, 1709155200, 1709155200, NULL),
(17, 'matias_fernandez', 0, '2009-03-30', 34123456, 'Matías', 'Fernández', 'M', 22345678, NULL, NULL, NULL, 'B+', '3', 'OMINT', 0, 0, 'Club E', NULL, '2009', 'cdefghi678', '$2y$13$jKlMnOpQq2345678901234567890123456789', NULL, '2618901237', 'matias.fernandez@example.com', 10, 1711747200, 1711747200, NULL),
(18, 'juliana_vargas', 1, '2012-08-18', 37456789, 'Juliana', 'Vargas', 'F', NULL, 33456789, NULL, NULL, 'AB-', '2', 'PREVENCIÓN SALUD', 0, 1, NULL, 'FED009', '2012', 'jklmnop901', '$2y$13$uIvYwXtZs345678901234567890123456789', NULL, '2612347890', 'juliana.vargas@example.com', 10, 1714425600, 1714425600, NULL),
(19, 'luciano_sanchez', 1, '2010-01-02', 35890123, 'Luciano', 'Sánchez', 'M', 26567890, NULL, NULL, 'Pelo de gato', 'O-', '1', 'UNIÓN PERSONAL', 0, 0, NULL, NULL, '2010', 'qrstuvw234', '$2y$13$eFgHiJkLl45678901234567890123456789', NULL, '2615678903', 'luciano.sanchez@example.com', 10, 1717017600, 1717017600, NULL),
(20, 'valeria_flores', 1, '2009-05-10', 34234567, 'Valeria', 'Flores', 'F', NULL, 29678901, NULL, NULL, 'A+', '3', 'HOSPITAL ITALIANO', 0, 1, NULL, 'FED010', '2009', 'xyzabc567', '$2y$13$bCdEfGhIk5678901234567890123456789', NULL, '2618903456', 'valeria.flores@example.com', 10, 1719609600, 1719609600, NULL),
(21, 'rodrigo_martinez', 0, '2011-11-28', 36901235, 'Rodrigo', 'Martínez', 'M', 24789012, NULL, NULL, NULL, 'A+', '1', 'HOSPITAL ESPAÑOL', 0, 0, NULL, NULL, '2011', 'klmno123', '$2y$13$randomhash21', NULL, '2617890123', 'rodrigo.martinez@example.com', 10, 1722201600, 1722201600, NULL),
(22, 'sofia_gimenez', 1, '2010-07-05', 35234568, 'Sofía', 'Giménez', 'F', NULL, 30234567, NULL, NULL, 'B-', '2', 'CLÍNICA PRIVADA', 0, 1, NULL, 'FED011', '2010', 'pqrstu456', '$2y$13$randomhash22', NULL, '2612345690', 'sofia.gimenez@example.com', 10, 1724880000, 1724880000, NULL),
(23, 'manuel_torres', 1, '2009-09-12', 34567891, 'Manuel', 'Torres', 'M', 23890123, NULL, NULL, 'Ninguna', 'O+', '3', 'DASUTEN', 0, 0, 'Club F', NULL, '2009', 'vwxyz789', '$2y$13$randomhash23', NULL, '2619012348', 'manuel.torres@example.com', 10, 1727472000, 1727472000, NULL),
(24, 'lucia_vidal', 1, '2012-03-01', 37890124, 'Lucía', 'Vidal', 'F', NULL, 33567890, NULL, NULL, 'AB+', '1', 'OSPE', 0, 1, NULL, 'FED012', '2012', 'abcde012', '$2y$13$randomhash24', NULL, '2613456791', 'lucia.vidal@example.com', 10, 1730064000, 1730064000, NULL),
(25, 'gonzalo_ruiz', 0, '2010-05-20', 35123459, 'Gonzalo', 'Ruiz', 'M', 27012345, NULL, NULL, 'Asma', 'A-', '2', 'OSPAC', 0, 0, NULL, NULL, '2010', 'fghij345', '$2y$13$randomhash25', NULL, '2616789013', 'gonzalo.ruiz@example.com', 10, 1732656000, 1732656000, NULL),
(26, 'martina_castro', 1, '2009-11-10', 34456790, 'Martina', 'Castro', 'F', NULL, 29789012, NULL, NULL, 'O-', '3', 'UPCN', 0, 1, 'Club G', 'FED013', '2009', 'klmno678', '$2y$13$randomhash26', NULL, '2619012349', 'martina.castro@example.com', 10, 1735334400, 1735334400, NULL),
(27, 'federico_soto', 1, '2011-01-25', 36789013, 'Federico', 'Soto', 'M', 25123456, NULL, NULL, NULL, 'B+', '1', 'JERÁRQUICOS SALUD', 0, 0, NULL, NULL, '2011', 'pqrstu901', '$2y$13$randomhash27', NULL, '2612345692', 'federico.soto@example.com', 10, 1737926400, 1737926400, NULL),
(28, 'agustina_mendez', 1, '2010-08-02', 35012346, 'Agustina', 'Méndez', 'F', NULL, 30890123, NULL, 'Rinitis', 'AB-', '2', 'SUTE', 0, 1, NULL, 'FED014', '2010', 'vwxyz234', '$2y$13$randomhash28', NULL, '2615678904', 'agustina.mendez@example.com', 10, 1740518400, 1740518400, NULL),
(29, 'nicolas_vazquez', 0, '2009-04-15', 34345679, 'Nicolás', 'Vázquez', 'M', 22456789, NULL, NULL, NULL, 'O+', '3', 'OSECAC', 0, 0, 'Club H', NULL, '2009', 'abcde567', '$2y$13$randomhash29', NULL, '2618901250', 'nicolas.vazquez@example.com', 10, 1743196800, 1743196800, NULL),
(30, 'camila_pereyra', 1, '2012-09-20', 37678902, 'Camila', 'Pereyra', 'F', NULL, 32123456, NULL, NULL, 'A+', '1', 'BANCARIA', 0, 1, NULL, 'FED015', '2012', 'fghij890', '$2y$13$randomhash30', NULL, '2613456792', 'camila.pereyra@example.com', 10, 1745788800, 1745788800, NULL),
(31, 'lautaro_jimenez', 1, '2010-02-28', 35901237, 'Lautaro', 'Jiménez', 'M', 26234567, NULL, NULL, NULL, 'B-', '2', 'UOM', 0, 0, NULL, NULL, '2010', 'klmno235', '$2y$13$randomhash31', NULL, '2616789014', 'lautaro.jimenez@example.com', 10, 1748380800, 1748380800, NULL),
(32, 'antonella_paz', 1, '2009-06-05', 34234570, 'Antonella', 'Paz', 'F', NULL, 29345680, NULL, 'Polvo', 'O-', '3', 'SMATA', 0, 1, 'Club I', 'FED016', '2009', 'pqrstu568', '$2y$13$randomhash32', NULL, '2619012351', 'antonella.paz@example.com', 10, 1750972800, 1750972800, NULL),
(33, 'enzo_herrera', 0, '2011-12-15', 36567903, 'Enzo', 'Herrera', 'M', 24890124, NULL, NULL, NULL, 'AB+', '1', 'CONSTRUCCIÓN', 0, 0, NULL, NULL, '2011', 'vwxyz891', '$2y$13$randomhash33', NULL, '2612345693', 'enzo.herrera@example.com', 10, 1753564800, 1753564800, NULL),
(34, 'valentina_silva', 1, '2010-04-02', 35890126, 'Valentina', 'Silva', 'F', NULL, 30456790, NULL, NULL, 'A-', '2', 'COMERCIO', 0, 1, NULL, 'FED017', '2010', 'abcde124', '$2y$13$randomhash34', NULL, '2615678905', 'valentina.silva@example.com', 10, 1756156800, 1756156800, NULL),
(35, 'benjamin_robles', 1, '2009-08-20', 34123459, 'Benjamín', 'Robles', 'M', 23567891, NULL, NULL, 'Maní', 'O+', '3', 'GASTRONÓMICOS', 0, 0, NULL, NULL, '2009', 'fghij457', '$2y$13$randomhash35', NULL, '2618901252', 'benjamin.robles@example.com', 10, 1758748800, 1758748800, NULL),
(36, 'delfina_aguirre', 1, '2012-01-10', 37456792, 'Delfina', 'Aguirre', 'F', NULL, 33123457, NULL, NULL, 'B+', '1', 'TEXTIL', 0, 1, 'Club J', 'FED018', '2012', 'klmno780', '$2y$13$randomhash36', NULL, '2613456794', 'delfina.aguirre@example.com', 10, 1761427200, 1761427200, NULL),
(37, 'santiago_vega', 0, '2010-06-28', 35789015, 'Santiago', 'Vega', 'M', 27123457, NULL, NULL, NULL, 'AB-', '2', 'METALÚRGICOS', 0, 0, NULL, NULL, '2010', 'pqrstu013', '$2y$13$randomhash37', NULL, '2616789016', 'santiago.vega@example.com', 10, 1764019200, 1764019200, NULL),
(38, 'zoe_ledesma', 1, '2009-03-05', 34012348, 'Zoe', 'Ledesma', 'F', NULL, 29456791, NULL, NULL, 'A-', '3', 'MINEROS', 0, 1, NULL, 'FED019', '2009', 'vwxyz346', '$2y$13$randomhash38', NULL, '2619012353', 'zoe.ledesma@example.com', 10, 1766611200, 1766611200, NULL),
(39, 'thiago_ibañez', 1, '2011-10-22', 36456794, 'Thiago', 'Ibáñez', 'M', 25789013, NULL, NULL, 'Huevo', 'O-', '1', 'PETROLEROS', 0, 0, NULL, NULL, '2011', 'abcde679', '$2y$13$randomhash39', NULL, '2612345695', 'thiago.ibanez@example.com', 10, 1769203200, 1769203200, NULL),
(40, 'abril_mendoza', 1, '2010-12-30', 35345681, 'Abril', 'Mendoza', 'F', NULL, 31123458, NULL, NULL, 'B+', '2', 'QUÍMICOS', 0, 1, NULL, 'FED020', '2010', 'fghij902', '$2y$13$randomhash40', NULL, '2615678907', 'abril.mendoza@example.com', 10, 1771795200, 1771795200, NULL),
(41, 'mia_sanchez', 1, '2011-07-18', 36123460, 'Mía', 'Sánchez', 'F', NULL, 31234569, NULL, NULL, 'O+', '1', 'FATSA', 0, 1, NULL, 'FED021', '2011', 'ghijkl014', '$2y$13$randomhash41', NULL, '2615678908', 'mia.sanchez@example.com', 10, 1774387200, 1774387200, NULL),
(42, 'juan_perez', 1, '2010-03-25', 35456793, 'Juan', 'Pérez', 'M', 27234568, NULL, NULL, NULL, 'A-', '2', 'LUZ Y FUERZA', 0, 0, NULL, NULL, '2010', 'mnopqr347', '$2y$13$randomhash42', NULL, '2618901254', 'juan.perez@example.com', 10, 1776979200, 1776979200, NULL),
(43, 'emma_gonzalez', 1, '2009-09-01', 34789016, 'Emma', 'González', 'F', NULL, 29567902, NULL, 'Lactosa', 'B+', '3', 'OBRA SOCIAL YPF', 0, 1, 'Club K', 'FED022', '2009', 'stuvwx680', '$2y$13$randomhash43', NULL, '2612345696', 'emma.gonzalez@example.com', 10, 1779571200, 1779571200, NULL),
(44, 'mateo_rodriguez', 0, '2012-05-15', 37012349, 'Mateo', 'Rodríguez', 'M', 25345679, NULL, NULL, NULL, 'AB-', '1', 'PODER JUDICIAL', 0, 0, NULL, NULL, '2012', 'yzabcd015', '$2y$13$randomhash44', NULL, '2615678909', 'mateo.rodriguez@example.com', 10, 1782163200, 1782163200, NULL),
(45, 'sofia_lopez', 1, '2010-11-08', 35345682, 'Sofía', 'López', 'F', NULL, 30678903, NULL, NULL, 'O+', '2', 'MUNICIPAL', 0, 1, NULL, 'FED023', '2010', 'efghij348', '$2y$13$randomhash45', NULL, '2618901255', 'sofia.lopez@example.com', 10, 1784755200, 1784755200, NULL),
(46, 'benicio_gomez', 1, '2009-02-22', 34678917, 'Benicio', 'Gómez', 'M', 23678902, NULL, NULL, 'Picaduras', 'A+', '3', 'VETERANOS DE GUERRA', 0, 0, NULL, NULL, '2009', 'klmnop681', '$2y$13$randomhash46', NULL, '2612345697', 'benicio.gomez@example.com', 10, 1787347200, 1787347200, NULL),
(47, 'catalina_diaz', 1, '2011-08-05', 36901238, 'Catalina', 'Díaz', 'F', NULL, 32789013, NULL, NULL, 'B-', '1', 'OBREROS DE LA CONSTRUCCIÓN', 0, 1, 'Club L', 'FED024', '2011', 'qrstuv904', '$2y$13$randomhash47', NULL, '2615678910', 'catalina.diaz@example.com', 10, 1789939200, 1789939200, NULL),
(48, 'joaquin_fernandez', 0, '2010-04-10', 35234571, 'Joaquín', 'Fernández', 'M', 27890124, NULL, NULL, 'Huevo', 'O-', '2', 'PERSONAL DE LA SANIDAD', 0, 0, NULL, NULL, '2010', 'wxyzab236', '$2y$13$randomhash48', NULL, '2618901256', 'joaquin.fernandez@example.com', 10, 1792531200, 1792531200, NULL),
(49, 'isabella_vargas', 1, '2009-10-28', 34567904, 'Isabella', 'Vargas', 'F', NULL, 29012347, NULL, NULL, 'AB+', '3', 'CHOFERES DE COLECTIVO', 0, 1, NULL, 'FED025', '2009', 'cdefgh569', '$2y$13$randomhash49', NULL, '2612345698', 'isabella.vargas@example.com', 10, 1795123200, 1795123200, NULL),
(50, 'thiago_soto', 1, '2012-02-15', 37890127, 'Thiago', 'Soto', 'M', 25123458, NULL, NULL, NULL, 'A-', '1', 'EMPLEADOS DE COMERCIO', 0, 0, NULL, NULL, '2012', 'ijklmn892', '$2y$13$randomhash50', NULL, '2615678911', 'thiago.soto@example.com', 10, 1797715200, 1797715200, NULL),
(51, 'valeria_mendez', 1, '2010-07-01', 35123462, 'Valeria', 'Méndez', 'F', NULL, 30890125, NULL, 'Rinitis', 'O+', '2', 'TRABAJADORES RURALES', 0, 1, NULL, 'FED026', '2010', 'opqrstu237', '$2y$13$randomhash51', NULL, '2618901257', 'valeria.mendez@example.com', 10, 1800307200, 1800307200, NULL),
(52, 'lucas_vazquez', 0, '2009-11-20', 34456795, 'Lucas', 'Vázquez', 'M', 22456790, NULL, NULL, NULL, 'B+', '3', 'OBREROS DE TAXI', 0, 0, NULL, NULL, '2009', 'vwxyz570', '$2y$13$randomhash52', NULL, '2612345699', 'lucas.vazquez@example.com', 10, 1802899200, 1802899200, NULL),
(53, 'camila_ruiz', 1, '2012-03-10', 37678905, 'Camila', 'Ruiz', 'F', NULL, 32123458, NULL, NULL, 'AB-', '1', 'JUBILADOS Y PENSIONADOS', 0, 1, 'Club M', 'FED027', '2012', 'abcde016', '$2y$13$randomhash53', NULL, '2615678912', 'camila.ruiz@example.com', 10, 1805491200, 1805491200, NULL),
(54, 'matias_castro', 1, '2010-05-03', 35901239, 'Matías', 'Castro', 'M', 26234569, NULL, NULL, NULL, 'O-', '2', 'PERSONAL DE CASAS PARTICULARES', 0, 0, NULL, NULL, '2010', 'fghij349', '$2y$13$randomhash54', NULL, '2618901258', 'matias.castro@example.com', 10, 1808083200, 1808083200, NULL),
(55, 'agustina_soto', 1, '2009-07-20', 34234572, 'Agustina', 'Soto', 'F', NULL, 29345681, NULL, 'Pelo de perro', 'A+', '3', 'TRABAJADORES DE LA CARNE', 0, 1, NULL, 'FED028', '2009', 'klmnop682', '$2y$13$randomhash55', NULL, '2612345700', 'agustina.soto@example.com', 10, 1810675200, 1810675200, NULL),
(56, 'nicolas_mendez', 0, '2011-12-08', 36567906, 'Nicolás', 'Méndez', 'M', 24890125, NULL, NULL, NULL, 'B-', '1', 'TRABAJADORES DE LA MADERA', 0, 0, NULL, NULL, '2011', 'pqrstu905', '$2y$13$randomhash56', NULL, '2615678913', 'nicolas.mendez@example.com', 10, 1813267200, 1813267200, NULL),
(57, 'valentina_vidal', 1, '2010-01-15', 35890128, 'Valentina', 'Vidal', 'F', NULL, 30456792, NULL, NULL, 'O-', '2', 'OBREROS DEL CEMENTO', 0, 1, NULL, 'FED029', '2010', 'vwxyz238', '$2y$13$randomhash57', NULL, '2618901259', 'valentina.vidal@example.com', 10, 1815859200, 1815859200, NULL),
(58, 'benjamin_ruiz', 1, '2009-05-25', 34123461, 'Benjamín', 'Ruiz', 'M', 23567892, NULL, NULL, 'Polvo', 'AB+', '3', 'TRABAJADORES DEL CUERO', 0, 0, NULL, NULL, '2009', 'abcde571', '$2y$13$randomhash58', NULL, '2612345701', 'benjamin.ruiz@example.com', 10, 1818451200, 1818451200, NULL),
(59, 'delfina_castro', 1, '2012-09-02', 37456795, 'Delfina', 'Castro', 'F', NULL, 33123459, NULL, NULL, 'A-', '1', 'TRABAJADORES DE LA FRUTA', 0, 1, 'Club N', 'FED030', '2012', 'fghij893', '$2y$13$randomhash59', NULL, '2615678914', 'delfina.castro@example.com', 10, 1821043200, 1821043200, NULL),
(60, 'santiago_soto', 0, '2010-11-18', 35789018, 'Santiago', 'Soto', 'M', 27123459, NULL, NULL, NULL, 'B+', '2', 'TRABAJADORES DEL GAS', 0, 0, NULL, NULL, '2010', 'klmnop239', '$2y$13$randomhash60', NULL, '2618901260', 'santiago.soto@example.com', 10, 1823635200, 1823635200, NULL),
(61, 'padre_22345678', 1, NULL, 22345678, 'Juan', 'Pérez', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_22345678', '$2y$13$hash_22345678', NULL, '0261XXXXXXX', 'juan.perez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(62, 'padre_22987654', 1, NULL, 22987654, 'Carlos', 'López', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_22987654', '$2y$13$hash_22987654', NULL, '0261XXXXXXX', 'carlos.lopez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(63, 'padre_23678901', 1, NULL, 23678901, 'José', 'Martínez', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_23678901', '$2y$13$hash_23678901', NULL, '0261XXXXXXX', 'jose.martinez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(64, 'padre_23890123', 1, NULL, 23890123, 'Ricardo', 'González', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_23890123', '$2y$13$hash_23890123', NULL, '0261XXXXXXX', 'ricardo.gonzalez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(65, 'padre_24345678', 1, NULL, 24345678, 'Daniel', 'Rodríguez', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_24345678', '$2y$13$hash_24345678', NULL, '0261XXXXXXX', 'daniel.rodriguez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(66, 'padre_24789012', 1, NULL, 24789012, 'Pablo', 'Sánchez', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_24789012', '$2y$13$hash_24789012', NULL, '0261XXXXXXX', 'pablo.sanchez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(67, 'padre_25432109', 1, NULL, 25432109, 'Gustavo', 'Fernández', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_25432109', '$2y$13$hash_25432109', NULL, '0261XXXXXXX', 'gustavo.fernandez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(68, 'padre_25678901', 1, NULL, 25678901, 'Sergio', 'Díaz', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_25678901', '$2y$13$hash_25678901', NULL, '0261XXXXXXX', 'sergio.diaz.padre@example.com', 10, 1746659767, 1746659767, NULL),
(69, 'padre_25820769', 1, '1991-05-01', 25820756, 'Marcelo', 'Vargas', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_25820769', '$2y$13$dyYgkLoOWhPAYXO2jO5JHexU9dWYGVZ7EEbbMqqPHlwNbI0fIXo5m', NULL, '0261XXXXXXX', 'marcelo.vargas.padre@example.com', 10, 1746659767, 1746659767, NULL),
(70, 'padre_26567890', 1, NULL, 26567890, 'Héctor', 'Flores', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_26567890', '$2y$13$hash_26567890', NULL, '0261XXXXXXX', 'hector.flores.padre@example.com', 10, 1746659767, 1746659767, NULL),
(71, 'padre_26789012', 1, NULL, 26789012, 'Fernando', 'Martínez', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_26789012', '$2y$13$hash_26789012', NULL, '0261XXXXXXX', 'fernando.martinez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(72, 'padre_27012345', 1, NULL, 27012345, 'Raúl', 'González', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_27012345', '$2y$13$hash_27012345', NULL, '0261XXXXXXX', 'raul.gonzalez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(73, 'padre_27890123', 1, NULL, 27890123, 'Javier', 'Rodríguez', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_27890123', '$2y$13$hash_27890123', NULL, '0261XXXXXXX', 'javier.rodriguez.padre@example.com', 10, 1746659767, 1746659767, NULL),
(74, 'madre_28987654', 1, NULL, 28987654, 'Laura', 'Pérez', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_28987654', '$2y$13$hash_28987654', NULL, '0261YYYYYYY', 'laura.perez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(75, 'madre_30123456', 1, NULL, 30123456, 'Ana', 'López', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_30123456', '$2y$13$hash_30123456', NULL, '0261YYYYYYY', 'ana.lopez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(76, 'madre_31456789', 1, NULL, 31456789, 'María', 'Martínez', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_31456789', '$2y$13$hash_31456789', NULL, '0261YYYYYYY', 'maria.martinez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(77, 'madre_29012345', 1, NULL, 29012345, 'Sofía', 'González', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_29012345', '$2y$13$hash_29012345', NULL, '0261YYYYYYY', 'sofia.gonzalez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(78, 'madre_30567890', 1, NULL, 30567890, 'Elena', 'Rodríguez', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_30567890', '$2y$13$hash_30567890', NULL, '0261YYYYYYY', 'elena.rodriguez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(79, 'madre_32789012', 1, NULL, 32789012, 'Carla', 'Sánchez', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_32789012', '$2y$13$hash_32789012', NULL, '0261YYYYYYY', 'carla.sanchez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(80, 'madre_29345678', 1, NULL, 29345678, 'Patricia', 'Fernández', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_29345678', '$2y$13$hash_29345678', NULL, '0261YYYYYYY', 'patricia.fernandez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(81, 'madre_31012345', 1, NULL, 31012345, 'Silvia', 'Díaz', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_31012345', '$2y$13$hash_31012345', NULL, '0261YYYYYYY', 'silvia.diaz.madre@example.com', 10, 1746659785, 1746659785, NULL),
(82, 'madre_33456789', 1, NULL, 33456789, 'Mónica', 'Vargas', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_33456789', '$2y$13$hash_33456789', NULL, '0261YYYYYYY', 'monica.vargas.madre@example.com', 10, 1746659785, 1746659785, NULL),
(83, 'madre_29678901', 1, NULL, 29678901, 'Valeria', 'Flores', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_29678901', '$2y$13$hash_29678901', NULL, '0261YYYYYYY', 'valeria.flores.madre@example.com', 10, 1746659785, 1746659785, NULL),
(84, 'madre_30234567', 1, NULL, 30234567, 'Andrea', 'Martínez', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_30234567', '$2y$13$hash_30234567', NULL, '0261YYYYYYY', 'andrea.martinez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(85, 'madre_33567890', 1, NULL, 33567890, 'Romina', 'González', 'F', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, 'auth_33567890', '$2y$13$hash_33567890', NULL, '0261YYYYYYY', 'romina.gonzalez.madre@example.com', 10, 1746659785, 1746659785, NULL),
(86, 'marcevonku', 1, '1977-03-22', 25820769, 'Marcelo Milton', 'Vonkunoschy', 'M', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, NULL, NULL, NULL, 'auth_25820769', '$2y$13$dyYgkLoOWhPAYXO2jO5JHexU9dWYGVZ7EEbbMqqPHlwNbI0fIXo5m', NULL, NULL, '', 10, 0, 0, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciclos_cuotas`
--
ALTER TABLE `ciclos_cuotas`
  ADD PRIMARY KEY (`id_ciclo`),
  ADD UNIQUE KEY `idx-ciclos_cuotas-ciclo-curso-unique` (`ciclo`,`curso`),
  ADD KEY `idx-ciclos_cuotas-ciclo` (`ciclo`),
  ADD KEY `idx-ciclos_cuotas-curso` (`curso`);

--
-- Indices de la tabla `inscripcion_curso`
--
ALTER TABLE `inscripcion_curso`
  ADD PRIMARY KEY (`id_inscripcion`),
  ADD UNIQUE KEY `idx-inscripcion_curso-usuario-ciclo-unique` (`id_usuario`,`id_ciclo`),
  ADD KEY `idx-inscripcion_curso-id_usuario` (`id_usuario`),
  ADD KEY `idx-inscripcion_curso-id_ciclo` (`id_ciclo`),
  ADD KEY `idx-inscripcion_curso-estado` (`estado`),
  ADD KEY `idx-inscripcion_curso-fecha_inscripcion` (`fecha_inscripcion`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `pago_obligaciones`
--
ALTER TABLE `pago_obligaciones`
  ADD PRIMARY KEY (`id_pago`),
  ADD UNIQUE KEY `idx-pago_obligaciones-inscripcion-cuota-unique` (`id_inscripcion`,`numero_cuota`),
  ADD KEY `idx-pago_obligaciones-id_inscripcion` (`id_inscripcion`),
  ADD KEY `idx-pago_obligaciones-numero_cuota` (`numero_cuota`),
  ADD KEY `idx-pago_obligaciones-fecha_pago` (`fecha_pago`),
  ADD KEY `idx-pago_obligaciones-tipo_pago` (`tipo_pago`),
  ADD KEY `idx-pago_obligaciones-estado_pago` (`estado_pago`),
  ADD KEY `idx-pago_obligaciones-mp_payment_id` (`mp_payment_id`),
  ADD KEY `idx-pago_obligaciones-mp_collection_id` (`mp_collection_id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciclos_cuotas`
--
ALTER TABLE `ciclos_cuotas`
  MODIFY `id_ciclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `inscripcion_curso`
--
ALTER TABLE `inscripcion_curso`
  MODIFY `id_inscripcion` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único de la inscripción', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pago_obligaciones`
--
ALTER TABLE `pago_obligaciones`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID único del pago', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria de registro para la tabla', AUTO_INCREMENT=87;
--
-- Base de datos: `calculator_scalping`
--
CREATE DATABASE IF NOT EXISTS `calculator_scalping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `calculator_scalping`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brokers`
--

CREATE TABLE `brokers` (
  `id` int(11) NOT NULL,
  `nombreBroker` varchar(255) NOT NULL,
  `comisionCompra` decimal(10,4) DEFAULT 0.0000 COMMENT 'Porcentaje de comisión',
  `derechoMercado` decimal(10,4) DEFAULT 0.0000 COMMENT 'Porcentaje de derecho de mercado',
  `ivaImpuesto` decimal(10,4) DEFAULT 0.0000 COMMENT 'Porcentaje de IVA',
  `activo` tinyint(1) DEFAULT 1 COMMENT '1 = Activo, 0 = Inactivo',
  `fec_registro` datetime DEFAULT current_timestamp(),
  `fec_modificado` datetime DEFAULT NULL,
  `fec_baja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brokers`
--

INSERT INTO `brokers` (`id`, `nombreBroker`, `comisionCompra`, `derechoMercado`, `ivaImpuesto`, `activo`, `fec_registro`, `fec_modificado`, `fec_baja`) VALUES
(1, 'Bull Market', 0.5000, 0.1000, 0.2100, 1, '2025-12-06 23:40:15', '2025-12-10 19:00:50', NULL),
(2, 'InvertirOnline', 0.4500, 0.0800, 0.2100, 1, '2025-12-06 23:40:15', '2025-12-10 19:01:23', NULL),
(3, 'Balanz Capital', 0.0500, 0.0080, 0.2100, 1, '2025-12-10 18:22:42', '2025-12-10 19:01:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `id` int(11) NOT NULL,
  `tasa_banco` decimal(15,6) DEFAULT NULL,
  `tn_365` decimal(10,6) DEFAULT NULL,
  `tn_260` decimal(10,6) DEFAULT NULL,
  `broker_id` int(11) NOT NULL,
  `nombre_accion` varchar(50) NOT NULL,
  `cantidad_acciones` int(11) NOT NULL,
  `valor_neto_compra` decimal(15,6) NOT NULL,
  `valor_comision_compra` decimal(15,6) NOT NULL,
  `derecho_mercado_compra` decimal(15,6) NOT NULL,
  `iva_compra` decimal(15,6) NOT NULL,
  `valor_bruto_compra` decimal(15,6) NOT NULL,
  `ganancia_neta_por_accion` decimal(15,6) NOT NULL,
  `precio_neto_venta` decimal(15,6) NOT NULL,
  `valor_comision_venta` decimal(15,6) NOT NULL,
  `derecho_mercado_venta` decimal(15,6) NOT NULL,
  `iva_venta` decimal(15,6) NOT NULL,
  `precio_bruto_venta` decimal(15,6) NOT NULL,
  `ganancia_neta_total` decimal(15,6) NOT NULL,
  `fecha_operacion` timestamp NOT NULL DEFAULT current_timestamp(),
  `fecha_operacion_venta` date DEFAULT NULL,
  `vigente` tinyint(1) DEFAULT NULL,
  `fecha_modificacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `comision_porcentaje` decimal(10,5) DEFAULT 0.00000,
  `derecho_mercado_porcentaje` decimal(10,5) DEFAULT 0.00000,
  `iva_porcentaje` decimal(10,5) DEFAULT 0.00000,
  `ganancia_proyectada_porcentaje` decimal(10,5) DEFAULT 0.00000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`id`, `tasa_banco`, `tn_365`, `tn_260`, `broker_id`, `nombre_accion`, `cantidad_acciones`, `valor_neto_compra`, `valor_comision_compra`, `derecho_mercado_compra`, `iva_compra`, `valor_bruto_compra`, `ganancia_neta_por_accion`, `precio_neto_venta`, `valor_comision_venta`, `derecho_mercado_venta`, `iva_venta`, `precio_bruto_venta`, `ganancia_neta_total`, `fecha_operacion`, `fecha_operacion_venta`, `vigente`, `fecha_modificacion`, `comision_porcentaje`, `derecho_mercado_porcentaje`, `iva_porcentaje`, `ganancia_proyectada_porcentaje`) VALUES
(1, 0.000000, 0.000000, 0.000000, 3, 'aapl', 10, 100000.000000, 50.000000, 8.000000, 0.121800, 100058.121800, 29.016855, 100348.290353, 50.174145, 8.027863, 0.122224, 100406.614586, 2.901686, '2025-12-14 13:10:06', '2025-12-14', 1, '2025-12-14 13:10:06', 0.00000, 0.00000, 0.00000, 0.00000),
(2, 0.000000, 0.000000, 0.000000, 1, 'aapl', 10, 100000.000000, 500.000000, 100.000000, 1.260000, 100601.260000, 39.234491, 100993.604914, 504.968025, 100.993605, 1.272519, 101600.839063, 3.923449, '2025-12-14 13:10:47', '2025-12-14', 1, '2025-12-14 13:10:47', 0.00000, 0.00000, 0.00000, 0.00000),
(3, 0.000000, 0.000000, 0.000000, 1, 'aapl', 10, 100000.000000, 500.000000, 100.000000, 1.260000, 100601.260000, 39.234491, 100993.604914, 504.968025, 100.993605, 1.272519, 101600.839063, 3.923449, '2025-12-14 13:11:11', '2025-12-14', 1, '2025-12-14 13:11:11', 0.00000, 0.00000, 0.00000, 0.00000),
(4, 0.000000, 0.000000, 0.000000, 1, 'aapl', 10, 100000.000000, 500.000000, 100.000000, 1.260000, 100601.260000, 39.234491, 100993.604914, 504.968025, 100.993605, 1.272519, 101600.839063, 3.923449, '2025-12-14 13:11:11', '2025-12-14', 1, '2025-12-14 13:11:11', 0.00000, 0.00000, 0.00000, 0.00000),
(5, 45.000000, 0.123288, 0.173077, 3, 'aapl', 10, 100000.000000, 50.000000, 8.000000, 0.121800, 100058.121800, 36.020924, 100418.331038, 50.209166, 8.033466, 0.122310, 100476.695980, 3.602092, '2025-12-14 15:12:26', '2025-12-14', 1, '2025-12-14 15:12:26', 0.00000, 0.00000, 0.00000, 0.00000),
(6, 45.000000, 0.123288, 0.173077, 3, 'aapl', 10, 100000.000000, 50.000000, 8.000000, 0.121800, 100058.121800, 36.020924, 100418.331038, 50.209166, 8.033466, 0.122310, 100476.695980, 3.602092, '2025-12-14 15:12:56', '2025-12-14', 1, '2025-12-14 15:26:02', 0.00000, 0.00000, 0.00000, 0.00000),
(7, 33.000000, 0.090411, 0.126923, 2, 'hjki', 10, 100000.000000, 450.000000, 80.000000, 1.113000, 100531.113000, 45.239001, 100983.503009, 454.425764, 80.786802, 1.123946, 101519.839521, 4.523900, '2025-12-14 15:59:34', '2025-12-14', 1, '2025-12-14 15:59:34', 0.45000, 0.08000, 0.21000, 0.45000),
(8, 23.000000, 0.063014, 0.088462, 2, 'jkl', 10, 100000.000000, 450.000000, 80.000000, 1.113000, 100531.113000, 50.265557, 101033.768565, 454.651959, 80.827015, 1.124506, 101570.372044, 5.026556, '2025-12-14 16:08:06', '2025-12-14', 1, '2025-12-14 16:08:06', 0.45000, 0.08000, 0.21000, 0.50000),
(9, 23.000000, 0.063014, 0.088462, 2, 'jkl', 10, 100000.000000, 450.000000, 80.000000, 1.113000, 100531.113000, 50.265557, 101033.768565, 454.651959, 80.827015, 1.124506, 101570.372044, 5.026556, '2025-12-14 16:13:13', '2025-12-14', 1, '2025-12-14 16:13:13', 0.45000, 0.08000, 0.21000, 0.50000),
(10, 32.000000, 0.087671, 0.123077, 2, 'asd', 10, 100000.000000, 450.000000, 80.000000, 1.113000, 100531.113000, 50.265557, 101033.768565, 454.651959, 80.827015, 1.124506, 101570.372044, 5026.555650, '2025-12-14 16:14:19', '2025-12-14', 1, '2025-12-14 16:14:19', 0.45000, 0.08000, 0.21000, 0.50000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brokers`
--
ALTER TABLE `brokers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_operaciones_brokers` (`broker_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brokers`
--
ALTER TABLE `brokers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD CONSTRAINT `fk_operaciones_brokers` FOREIGN KEY (`broker_id`) REFERENCES `brokers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de datos: `ciclesclub`
--
CREATE DATABASE IF NOT EXISTS `ciclesclub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci;
USE `ciclesclub`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `idcaja` int(11) NOT NULL,
  `facturaid` varchar(255) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `ingreso` decimal(65,2) DEFAULT NULL,
  `egreso` decimal(65,2) DEFAULT NULL,
  `fecha` date NOT NULL,
  `debe` decimal(65,2) DEFAULT NULL,
  `haber` decimal(65,2) DEFAULT NULL,
  `ide` int(11) DEFAULT NULL,
  `reciboid` int(11) DEFAULT NULL,
  `saldo` decimal(65,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `idciclo` int(11) NOT NULL,
  `ide` int(11) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `detalle` char(90) DEFAULT NULL,
  `inscripcion` decimal(65,2) DEFAULT NULL,
  `cuota` decimal(65,2) DEFAULT NULL,
  `total` decimal(65,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compromisos`
--

CREATE TABLE `compromisos` (
  `idcompromiso` int(11) NOT NULL,
  `idpersona` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `obligaciones` decimal(65,2) DEFAULT NULL,
  `aportes` decimal(65,2) DEFAULT NULL,
  `notificacion` decimal(65,2) DEFAULT NULL,
  `tiposocio` varchar(255) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `ide` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deudores`
--

CREATE TABLE `deudores` (
  `idpersona1` int(11) DEFAULT NULL,
  `apellido1` varchar(255) DEFAULT NULL,
  `nombre1` varchar(255) DEFAULT NULL,
  `mail1` varchar(255) DEFAULT NULL,
  `idtiposocio1` varchar(255) DEFAULT NULL,
  `tiposocio1` varchar(255) DEFAULT NULL,
  `montoa1` decimal(65,2) DEFAULT NULL,
  `iddeudor1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deudoresxtiposocio`
--

CREATE TABLE `deudoresxtiposocio` (
  `id` int(11) NOT NULL,
  `idpersona` int(11) DEFAULT NULL,
  `idtiposocio` int(11) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tiposocio` varchar(255) DEFAULT NULL,
  `aportes` decimal(65,2) DEFAULT NULL,
  `deuda` decimal(65,2) DEFAULT NULL,
  `saldo` decimal(65,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscriptos`
--

CREATE TABLE `inscriptos` (
  `idinsc` int(11) NOT NULL,
  `personaid` int(11) NOT NULL,
  `tiposocioid` int(11) NOT NULL,
  `cicloid` int(11) NOT NULL,
  `ide` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Disparadores `inscriptos`
--
DELIMITER $$
CREATE TRIGGER `tr_recibocero` AFTER INSERT ON `inscriptos` FOR EACH ROW BEGIN
    -- Inserción de un recibo con monto 0 y detalles predeterminados
    INSERT INTO recibos(idrecibo, fecha, personaid, tiposocioid, monto, ide, pago, detalle)
    VALUES(DEFAULT, NEW.fecha, NEW.personaid, NEW.tiposocioid, 0, NEW.ide, NULL, 'Registro de Inscripción (Recibo Cero)');
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1726957550),
('m130524_201442_init', 1727209888),
('m140506_102106_rbac_init', 1726957560),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1726957560),
('m180523_151638_rbac_updates_indexes_without_prefix', 1726957560),
('m190124_110200_add_verification_token_column_to_user_table', 1727209888),
('m200409_110543_rbac_update_mssql_trigger', 1726957560);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `idpersona` int(11) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dni` varchar(255) NOT NULL,
  `fechanacido` date DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `idrol` int(11) DEFAULT NULL COMMENT 'Clave foránea; tabla rol; 1-alumno; 2-bedel; 3-auxiliar; 4-referente de cooperadora; 5-secretaria; 6-directivos; 7-miembro comisión; 8-miembro comisión y alumno; 9-obsequios; 10-rol usado para utilizar datos cargados en tabla persona para modificar y anular comprobantes erróneos. Este idrol no debe ser visible en tabla personas.',
  `clave` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `dni`, `fechanacido`, `telefono`, `mail`, `domicilio`, `localidad`, `idrol`, `clave`, `estado`) VALUES
(1, 'ANULADO', 'ANULADO', '1000', NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL),
(3, 'ALBERTTI', 'LUCiA BELeN  ', '43417883', '2001-03-11', '2613103769', 'ies9024_lavalle@yahoo.com.ar', '9 DE JULIO  BNO ', 'LAVALLE  LAVALLE', 1, '43417883', 1),
(5, 'ARANCIBIA', 'BRISA BEATRIZ  ', '44538600', '2002-06-05', '4941958', 'mariamorales@hotmail.com', 'BDORREGO SUR MG C4 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '44538600', 1),
(6, 'ARAYA', 'BRICIA LISANA  ', '42167699', '1999-09-30', '4941958', 'bricialisana1999@gmail.com', 'GARIBALDI  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42167699', 1),
(7, 'AVILA', 'FORNARI CAMILA ANTONELLA ', '43418787', '2001-05-28', '2604417133', 'ies9024_lavalle@yahoo.com.ar', 'ALSINA 66 ', 'CIUDAD  SAN RAFAEL', 1, '43418787', 1),
(8, 'BARRIOS', 'NOELIA CAROLINA  ', '33276095', '1988-02-01', '4941958', 'ies9024_lavalle@yahoo.com.ar', '  ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '33276095', 1),
(9, 'BLANCO', 'GISELA ESTEFANiA  ', '36582068', '1991-10-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '36582068', 1),
(10, 'CABAnioEZ', 'MAYORGA Melanie Ayelen ', '40972578', '1997-12-14', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '40972578', 1),
(11, 'CARDOZO', 'SOFIA MERCEDES  ', '43750703', '2002-01-08', '4941958', 'cardozasofia@escuelacatroppa.edu.ar', 'UDAONDO  ', 'SAN MARTiN  SAN MARTiN', 1, '43750703', 1),
(12, 'FRETTE', 'CALDENTEY MILAGROS ESTEFANIA ', '42914733', '2000-07-14', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'RUTA 34 KM 32 ', 'JOCOLI VIEJO  LAVALLE', 1, '42914733', 1),
(13, 'HERAS', 'CAMILA PAULA  ', '41418126', '1998-11-14', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41418126', 1),
(14, 'JUAREZ', 'ROXANA HERMINIA  ', '42266746', '1999-01-31', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'MORON SIN NUMERO  ', 'COSTA DE ARAUJO  LAVALLE', 1, '42266746', 1),
(15, 'JURADO', 'MICAELA JAQUELINE  ', '41113372', '1997-08-23', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41113372', 1),
(16, 'MAYORGA', 'DEBORA LUCIANA  ', '43829863', '2000-01-12', '4941958', 'Lucymayorga43@gmail.com', 'Felipe Penioa  ', 'LAVALLE  LAVALLE', 1, '43829863', 1),
(17, 'MONTENEGRO', 'MICAELA   ', '37001704', '1992-12-17', '4941958', 'mica25montenegro@gmail.com', 'LAS HERAS 36 ', '4941958', 1, '37001704', 1),
(18, 'MORA', 'DANIELA ELIZABETH  ', '43152892', '2001-01-18', '2615127578', 'ies9024_lavalle@yahoo.com.ar', 'MANZANA D CASA 9 BSAN VICENTE 3 ', 'GUAYMALLEN  GUAYMALLeN', 1, '43152892', 1),
(19, 'ABACA', 'JULIETA MICAELA  ', '44123542', '2002-03-16', '5492615584638', 'abacajulieta@escuelacatroppa.edu.ar', 'SAN PEDRO  B ', 'SAN MARTiN  SAN MARTiN', 1, '44123542', 1),
(20, 'MUnioOZ', 'Veronica Alejandra  ', '32116889', '1986-02-03', '4941958', 'mpas.munozveronica@gmail.com', 'Dardo Perez ', 'CHACRAS DE CORIA  LUJaN DE CUYO', 1, '32116889', 1),
(21, 'NAVARRETE', 'CRISTIAN ALAN  ', '42084111', '1999-09-17', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'LA ESCONDIDA  ', 'LA PEGA  LAVALLE', 1, '42084111', 1),
(22, 'NAVARRETE', 'NAHUEL JORGE  ', '44437964', '1998-12-13', '4941958', 'ies9024_lavalle@yahoo.com.ar', ' BODEGA VInioAS DE LA PEGA  ', 'LA PEGA  LAVALLE', 1, '44437964', 1),
(23, 'NIETO', 'ROCIO SOLEDAD  ', '39784752', '1996-08-10', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '39784752', 1),
(24, 'ORTIZ', 'SALAVAGION BRENDA NICOL ', '43942626', '2001-09-11', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BLOS JARILLEROS MF C2 ', 'JOCOLI VIEJO  LAVALLE', 1, '43942626', 1),
(25, 'PAILEMAN', 'BELEN LILIA  ', '36913375', '1993-12-08', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '36913375', 1),
(26, 'PEREIRA', 'ROMINA MARICEL  ', '37512854', '1994-07-06', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BARRIO FUERZA NUEVA MANZANA H CASA 19  ', 'COSTA DE ARAUJO  LAVALLE', 1, '37512854', 1),
(27, 'PEREZ', 'LUCILA ABIGAIL  ', '42422319', '1999-12-24', '4941958', 'ies9024_lavalle@yahoo.com.ar', '528 BTUPAC MG C8 ', 'LAVALLE  LAVALLE', 1, '42422319', 1),
(28, 'PEREZ', 'MIRTHA ALEJANDRA  ', '42507559', '1999-12-14', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'IRIGOYEN   ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42507559', 1),
(29, 'RENGIFO', 'TOLABA ERICA SOLEDAD FANY', '44443496', '1998-11-17', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '44443496', 1),
(30, 'REYNOSO', 'KEILA ELIZABETH LOURDES ', '42009436', '1998-10-11', '26115\n', 'keilalourdesreynoso@gmail.com', 'QUINTANA 8100 BSAN LORENZO EL ALGARROBAL ', 'EL ALGARROBAL  LAS HERAS', 1, '42009436', 1),
(31, 'RIVERO', 'NATALIA DAIANA  ', '41645296', '1999-01-07', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'MOYANO  ', 'LAVALLE  LAVALLE', 1, '41645296', 1),
(32, 'RODRIGUEZ', 'DULCE YEMINA YASMIN ', '41863207', '1999-03-31', '4941958', 'yeminayasmin@gmail.com', '4941958', '4941958', 1, '41863207', 1),
(33, 'SANTOS', 'MARINES ALEXANDRA  ', '41863229', '1998-10-20', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BEl Vergel MC C7 ', 'EL VERGEL  LAVALLE', 1, '41863229', 1),
(34, 'TEJADA', 'APARICIO MAYRA ALEJANDRA ', '41230942', '1998-06-01', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'CALLE VELLOTA SIN NUMERO  ', 'SAN MARTiN  SAN MARTiN', 1, '41230942', 1),
(35, 'TEVES', 'JOANA JANET  ', '35200504', '1989-10-09', '4941958', 'ies9024_lavalle@yahoo.com.ar', ' C 4 ', '4941958', 1, '35200504', 1),
(36, 'VARGAS', 'CINTIA   ', '33759699', '1989-04-10', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '33759699', 1),
(37, 'VILLEGAS', 'DAIANA   ', '41606247', '1997-12-29', '4941958', 'villegasdaiana543@gmail.com', '4941958', '4941958', 1, '41606247', 1),
(38, 'AGÜERO', 'AGUSTINA NOEMI  ', '41643856', '1998-04-26', '4941958', 'agussnoemi4@gmail.com', ' BCUYUM  MD C1 ', 'COSTA DE ARAUJO  LAVALLE', 1, '41643856', 1),
(39, 'BRIZUELA', 'MARCIA ALEJANDRA  ', '22783378', '1972-06-30', '4941958', 'marcialubian@hotmail.com', 'MD C4 ', '4941958', 1, '22783378', 1),
(40, 'CAMARGO', 'ABIGAIL LUANA DEL MILAGRO', '40559262', '1997-07-29', '2616690509', 'abigail18camargo@gmail.com', ' MANZANA B CASA 11  BRUFINO MOYANO ', 'COLONIA SEGOVIA  GUAYMALLeN', 1, '40559262', 1),
(41, 'CARBONE', 'EUGENIA TERESA  ', '43215119', '2001-03-23', '4941958', 'eugeniacarbone05@gmail.com', 'Calle Villanueva  ', 'LAVALLE  LAVALLE', 1, '43215119', 1),
(42, 'DOMINGUEZ', 'DEBORA ANTONELLA  ', '44905021', '2000-07-10', '4941958', 'kenchudominguez97@gmail.com', 'BDORREGO SUR MA C11 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '44905021', 1),
(43, 'FAUNDER', 'MICAELA AYELeN  ', '41191875', '1998-09-15', '4941958', 'faundermicaela@gmail.com', '4941958', '4941958', 1, '41191875', 1),
(44, 'FIGUEROA', 'ANA MACARENA  ', '41728207', '1999-01-28', '4941958', 'figueroamacarena71@yahoo.com', '4941958', '4941958', 1, '41728207', 1),
(45, 'GUInioE', 'VILLEGAS FLOR EUGENIA ', '42749737', '1997-08-28', '4941958', 'flor.eugenia97@gmail.com', 'BSanta Maria ME C5 ', 'COSTA DE ARAUJO  LAVALLE', 1, '42749737', 1),
(46, 'INGLADA', 'BRISA DALILA  ', '42010952', '1998-11-04', '4941958', 'bri.inglada98@gmail.com', 'LIBERTAD Y NUEVE DE JULIO SIN NUMERO  ', 'LAVALLE  LAVALLE', 1, '42010952', 1),
(47, 'SANJURJO', 'BRIAN SEBASTIAN  ', '39843412', '1996-09-24', '4941958', 'luzyoscuridad33@gmail.com', 'BCUYUM II M2 C2 ', 'COSTA DE ARAUJO  LAVALLE', 1, '39843412', 1),
(48, 'VERNA', 'MELINA ELIZABETH  ', '42670426', '2000-04-25', '4941958', 'vernamelina@escuelacatroppa.edu.ar', 'BELGRANO  BCUYuM MA C1 ', 'COSTA DE ARAUJO  LAVALLE', 1, '42670426', 1),
(49, 'CARDOZO', 'BRENDA MARIBEL  ', '40269240', '1996-08-21', '4941958', 'brendamarii876@gmail.com', 'SALAMANQUINO SIN NUMERO ', 'LAS VIOLETAS  LAVALLE', 1, '40269240', 1),
(50, 'COLQUE', 'CHAMBI HERNAN MARIO ', '41863238', '1999-06-15', '4941958', 'hernancolque012@gmail.com', 'HOLANDA SIN NUMERO ', 'EL PARAMILLO  LAVALLE', 1, '41863238', 1),
(51, 'DIAZ', 'MOTOS SOLEDAD BELEN ', '40217976', '1997-05-01', '4941958', 'soledaddiazmotos@gmail.com', 'MOLINARI  ', 'NUEVA CALIFORNIA  SAN MARTiN', 1, '40217976', 1),
(52, 'GALBANI', 'MARIA AGUSTINA  ', '43279529', '2001-02-02', '4941958', 'agustina.galbani@yahoo.com.ar', 'RUTA 36 y Administracion 148 ', 'LAVALLE  LAVALLE', 1, '43279529', 1),
(53, 'GIMENEZ', 'LUCAS GONZALO  ', '43169149', '2001-01-16', '4941958', 'gimenezlucas161@gmail.com', 'Nueve de Julio SIN NUMERO ', 'LA PALMERA  LAVALLE', 1, '43169149', 1),
(54, 'GUIRADO', 'VILLAFAnioE GONZALO DIEGO ', '43545561', '2001-05-18', '4941958', 'gonzalogui104@gmail.com', 'Palomares  ', 'EL VERGEL  LAVALLE', 1, '43545561', 1),
(55, 'MANSILLA', 'PLAZA CRISTINA LOURDES ', '45361018', '2001-01-31', '4941958', 'mansillacristina78@gmail.com', 'URQUIZA 408 ', 'COSTA DE ARAUJO  LAVALLE', 1, '45361018', 1),
(56, 'OLARTE', 'BRENDA EMILCE  ', '43075968', '2000-08-14', '4941958', 'brendaolarte0@gmail.com', 'EVA PERON  ', 'COSTA DE ARAUJO  LAVALLE', 1, '43075968', 1),
(57, 'PARLANTE', 'HORACIO AGUSTIN  ', '42478456', '2000-01-01', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'Quiroga  ', 'GUSTAVO ANDRE  LAVALLE', 1, '42478456', 1),
(58, 'VEDIA', 'MILAGROS GILDA  ', '42713311', '2000-06-03', '4941958', 'milagros.vedia26@gmail.com', 'LAVALLE 12131 ', 'EL ALGARROBAL  LAS HERAS', 1, '42713311', 1),
(59, 'AGÜERO', 'CASTRO MILAGROS ESTEFANiA ', '41992127', '1999-06-26', '4941958', 'mili26aguero@gmail.com', 'BSan Alberto ME C8 ', 'COLONIA SEGOVIA  GUAYMALLeN', 1, '41992127', 1),
(60, 'AGUIRRE', 'Maria Graciela  ', '37177754', '1994-05-08', '4941958', 'mariaaguirre581994@gmail.com', '4941958', '4941958', 1, '37177754', 1),
(61, 'ALDAY', 'DIEGO FERNANDO  ', '37779642', '1993-11-24', '2613646497', 'diegoalday10@gmail.com', 'MANZANA A CASA 11  BBARRIO NUEVO VERGEL  ', 'LAVALLE  LAVALLE', 1, '37779642', 1),
(62, 'ALVAREZ', 'CEBALLOS MAIRA DENISE ', '42669470', '1999-09-10', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'VILLEGAS  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42669470', 1),
(64, 'APARICIO', 'MORENO EVELYN MICAELA ', '38759269', '1995-08-07', '4941958', 'micaaparicio.20@hotmail.com', 'Dpto0 P0 Bconstitucion  Mb C16 ', 'EL SAUCE  GUAYMALLeN', 1, '38759269', 1),
(65, 'ARCIBIA', 'DANIEL   ', '42507583', '1999-11-10', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BARRIO COOPERATIVA LA PEGA M A C 5 ', 'LA PEGA  LAVALLE', 1, '42507583', 1),
(66, 'AZAGUATE', 'ERIKA LORENA  ', '39081165', '1995-06-01', '4941958', 'erikaazaguate@gmail.com', 'Urquiza   ', 'LAVALLE  LAVALLE', 1, '39081165', 1),
(67, 'BIGLIA', 'JACOB AZUL TRINIDAD ', '40057580', '1997-01-19', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '40057580', 1),
(68, 'COLQUE', 'VALLEJOS ANALIA BELEN ', '49402365', '1999-07-07', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ARENALES º ', 'LAVALLE  LAVALLE', 1, '49402365', 1),
(69, 'DIAZ', 'SOLIZ EDHY MARYSOL ', '94358418', '2000-07-17', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'CENTENARIO  ', 'LAVALLE  LAVALLE', 1, '94358418', 1),
(70, 'FERNANDEZ', 'FLORENCIA KAREN  ', '43151141', '1996-01-31', '4941958', 'ff3352024@gmail.com', 'cambiaggi ', 'COLONIA SEGOVIA  GUAYMALLeN', 1, '43151141', 1),
(71, 'FERNANDEZ', 'LUCIANA BELEN  ', '42914732', '2000-07-28', '2615413622', 'belufer08@gmail.com', ' BARRIO JARILLEROS B-3', 'JOCOLI VIEJO ', 1, '42914732', 1),
(72, 'FLORES', 'BRENDA ROCIO  ', '42169003', '1999-09-10', '4941958', 'brendflores1999@gmail.com', 'Francisco Chacon  BFinca Mayol ', 'EL PARAMILLO  LAVALLE', 1, '42169003', 1),
(73, 'FLORES', 'GONZALEZ GUSTAVO WALTER ', '43075992', '2001-02-08', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'LAMADRID  ', 'LAVALLE  LAVALLE', 1, '43075992', 1),
(74, 'GIANGIULIO', 'ALDANA VALENTINA  ', '43636243', '2001-06-30', '4941958', 'celevidela272@gmail.com', '4941958', '4941958', 1, '43636243', 1),
(75, 'GOMEZ', 'Matias Daniel  ', '38756872', '1994-11-17', '4941958', 'matidanigomez@gmail.com', '4941958', '4941958', 1, '38756872', 1),
(76, 'GONZALEZ', 'JAVIER NICOLAS  ', '41794276', '1998-12-10', '4941958', 'niiccoo100@gmail.com', 'San Martin esquina  Italia  º ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41794276', 1),
(77, 'LENCINAS', 'GABRIEL JESUS  ', '39081196', '1995-09-05', '4941958', 'jesu9556@gmail.com', 'BARRIO  LOS PUELCHES MANZANA F CASA 18 ', 'LAVALLE  LAVALLE', 1, '39081196', 1),
(78, 'LUCERO', 'SANDRA JANET  ', '38205918', '1994-02-10', '2616721772', 'sandralucero494@gmail.com', 'B PORTAL DEL SOL MD C2  ', 'LAVALLE  LAVALLE', 1, '38205918', 1),
(79, 'LUNA', 'JULIO GABRIEL  ', '41645295', '1999-01-28', '4941958', 'medinaluna99@gmail.com', 'MARIA ESTHER  SIN NUMERO ', 'LAVALLE  LAVALLE', 1, '41645295', 1),
(80, 'MANRIQUE', 'IVANA RUTH  ', '31130852', '1984-10-31', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'RUTA 40 KM 3347 ', '4941958', 1, '31130852', 1),
(81, 'MONTENEGRO', 'VERoN GIULIANA SOFIA ', '43544071', '2000-04-09', '2613830085', 'ies9024_lavalle@yahoo.com.ar', 'Espanioa 286 ', 'LAVALLE  LAVALLE', 1, '43544071', 1),
(82, 'NARAMBUENA', 'ARANCIBIA JULIA NATALi ', '29649963', '1982-12-21', '4941958', 'julianataliarancibia2018@gmail.com', '4941958', '4941958', 1, '29649963', 1),
(83, 'NARVAEZ', 'MARISA ALEJANDRA  ', '24634937', '1975-11-05', '4941958', 'marisaalenarvaez@gmail.com', 'BSan Martin ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '24634937', 1),
(86, 'NEBOT', 'ANDReS GABRIEL  ', '41863250', '1998-07-10', '261156715190', 'ies9024_lavalle@yahoo.com.ar', 'BARRIO LA PEGA MANZANA C CASA 1 MB C1 ', 'LAVALLE  LAVALLE', 1, '41863250', 1),
(87, 'OLMOS', 'Pedro Leandro  ', '39383241', '1996-03-17', '4941958', 'pedroolmos@gmail.com', '4941958', '4941958', 1, '39383241', 1),
(88, 'OROSCO', 'CRUZ ANTONELA BELEN ', '43355107', '2000-11-25', '4941958', 'oroscoantonelabelen@gmail.com', 'DORREGO  ', 'LAVALLE  LAVALLE', 1, '43355107', 1),
(89, 'ORTEGA', 'MARICEL GABRIELA  ', '39928105', '1997-01-28', '4941958', 'meryortega.322@gmail.com', '4941958', '4941958', 1, '39928105', 1),
(90, 'PALACIO', 'GABRIEL NICOLaS  ', '42914756', '2000-10-04', '2616737543', 'ies9024_lavalle@yahoo.com.ar', '  BAMYSO II MD C6 ', 'LAVALLE  LAVALLE', 1, '42914756', 1),
(91, 'PEREZ', 'ARIEL SEBASTIAN  ', '42505524', '1999-10-22', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'DORREGO  ', 'EL VERGEL  LAVALLE', 1, '42505524', 1),
(92, 'RAJOY', 'YAMILA ELIZABETH  ', '43152581', '2000-07-09', '2617050764', 'mtraslavia@yahoo.com.ar', '4941958', 'EL PARAMILLO  LAVALLE', 1, '43152581', 1),
(93, 'REGGIO', 'EMANUEL EMILIANO  ', '42357626', '1999-01-06', '4941958', 'emaxeneise@yahoo.com', 'DOCTOR MORENO  228 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42357626', 1),
(95, 'RUIZ', 'GIMENA MARISOL  ', '43681709', '2001-03-19', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'CALLEJON HERNANDEZ  ', 'LAVALLE  LAVALLE', 1, '43681709', 1),
(96, 'SALDAnioA', 'CHIRINOS CARLOS VLADIMIR ', '42030776', '1999-10-17', '4941958', 'saldanacarlosv@gmail.com', 'Ruta 24  ', 'EL CHILCAL  LAVALLE', 1, '42030776', 1),
(97, 'SIERRA', 'AGUSTIN EMANUEL  ', '42009058', '1999-07-05', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'CALLE NECOCHEA 43  ', 'LAVALLE  LAVALLE', 1, '42009058', 1),
(98, 'SIERRA', 'FIAMA AYELEN  ', '42669493', '2000-05-09', '5991815', 'ies9024_lavalle@yahoo.com.ar', 'RUTA 24   ', 'EL CHILCAL  LAVALLE', 1, '42669493', 1),
(99, 'TOLABA', 'CRISTIAN IVAN  ', '39889604', '1996-07-23', '4941958', 'garicbale@gmail.com', 'FINVA BEN VAN ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39889604', 1),
(100, 'VALDEVENITEZ', 'SOFIA CELESTE  ', '42509909', '2000-03-06', '4941958', 'valdevenitess@gmail.com', 'PEREZ  DPTO2 117 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42509909', 1),
(101, 'VELIS', 'LEONELA SAMANTA  ', '41752789', '1999-08-26', '5888116', 'Leonelavillegas26@gmail.com', 'MOYANO  Sur MB C11 BLA FLORESTA 3 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41752789', 1),
(102, 'VIDELA', 'CASTRO GONZALO MATiAS ', '41417113', '1998-09-24', '4941958', 'gonzavidela98@gmail.com', '4941958', '4941958', 1, '41417113', 1),
(103, 'ALBERTI', 'NATALIA MALVINA  ', '39383295', '1996-06-08', '4941958', 'albertimalvina2015@gmail.com', 'BAMISO I MA C3 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39383295', 1),
(104, 'BAIGORRIA', 'ARIADNA DANA  ', '41418160', '1998-12-29', '4941958', 'shoagroso@hotmail.com', 'RUTA 34 BLOS JARILLEROS MB C42 ', 'JOCOLI VIEJO  LAVALLE', 1, '41418160', 1),
(105, 'CASTAnioEDA', 'ANALiA ALEJANDRA  ', '41702455', '1999-01-26', '4941958', 'alejandrita26162016@gmail.com', 'URQUIZA Y COLONIA ', 'COSTA DE ARAUJO  LAVALLE', 1, '41702455', 1),
(106, 'CRUZ', 'MELINA JOHANA  ', '43355106', '2000-09-07', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'DORREGO   ', 'LAVALLE  LAVALLE', 1, '43355106', 1),
(107, 'GODOY', 'ELIZABETH MACARENA  ', '41251785', '1998-07-24', '4941958', 'macarenagodoy48@gmail.com', 'BSOLARES DEL NORTE  MD C10 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41251785', 1),
(108, 'GOMEZ', 'JUDITH ALEJANDRA  ', '40787495', '1997-09-13', '2617026289', 'dg44889939@gmail.com', '0 M C Casa  BRepublica de Bolivia ', 'LAS HERAS  LAS HERAS', 1, '40787495', 1),
(109, 'MERCADO', 'MAGALI EVELYN  ', '41369349', '1998-09-08', '4941958', 'magaamercado@gmail.com', 'RUTA 34 M F C 4 BLOS JARILLEROS MF C4 ', 'JOCOLI VIEJO  LAVALLE', 1, '41369349', 1),
(110, 'MONTAnioA', 'MILAGROS ROXANA  ', '41366867', '1998-08-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BARRIO UNION Y ESFUERZO  MD   C4  ', 'LAVALLE  LAVALLE', 1, '41366867', 1),
(111, 'MORALES', 'LOURDES DEL VALLE ', '41775178', '1999-02-13', '4941958', 'spissolourdes@gmail.com', 'RUTA 34 BEL PALMERAL MD C4 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41775178', 1),
(112, 'ORTIZ', 'LUISA ELIANA  ', '41967075', '1999-01-30', '4941958', 'ies9024_lavalle@yahoo.com.ar', '  BBARRIO CUYUM I ', 'COSTA DE ARAUJO  LAVALLE', 1, '41967075', 1),
(113, 'PeREZ', 'CLAUDIA MACARENA  ', '38580624', '1995-01-26', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BARRIO SOLARES DEL NORTE MA C3 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '38580624', 1),
(114, 'ALMUNA', 'MARTINIANO TOMaS  ', '44140845', '2002-04-20', '4941958', 'vaneAlmuna22@gmail.com', 'Antartida Argentina B11 BLOS PUELCHES ', 'LAVALLE  LAVALLE', 1, '44140845', 1),
(115, 'BAZZALI', 'JENNIFER DANA  ', '42167682', '1999-12-03', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ESTRELLA  ', 'LAVALLE  LAVALLE', 1, '42167682', 1),
(116, 'BUSTOS', 'JIMENA DEOLINDA  ', '42507573', '1999-11-01', '2616346749', 'ies9024_lavalle@yahoo.com.ar', '9 DE JULIO  Y DON BOSCO   ', 'LA PALMERA  LAVALLE', 1, '42507573', 1),
(117, 'CARDOZO', 'ROCIA MAILEN LOURDES ', '41083761', '1997-04-09', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41083761', 1),
(118, 'CARRIZO', 'MACIEL DIEGO JAIR ', '42714670', '2000-06-21', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BUENOS VECINOS 6991 ', 'COLONIA SEGOVIA  GUAYMALLeN', 1, '42714670', 1),
(119, 'CONDORi', 'FERNaNDEZ CATERINA ABIGAIL ', '38579569', '1994-12-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '38579569', 1),
(120, 'CORDOBA', 'RICARDO WILSON  ', '32283811', '1986-05-17', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '32283811', 1),
(121, 'CORTEZ', 'JANET NELIDA  ', '41191868', '1998-06-12', '4941958', 'janetcortez1998@gmail.com', 'Nº 5 ', 'NUEVA CALIFORNIA  SAN MARTiN', 1, '41191868', 1),
(122, 'DIAZ', 'MATiAS VALENTiN  ', '43942623', '2001-12-15', '2612450460', 'ies9024_lavalle@yahoo.com.ar', 'FORMOSA MEC10 BSTA CECILIA II ', 'LAVALLE  LAVALLE', 1, '43942623', 1),
(123, 'DIAZ', 'VICTOR JOSE  ', '29649937', '1982-12-16', '4941958', 'victorjosediaz1982@gmail.com', 'Bº El Palmeral MB C3 0 Dpto0 P0 BPALMERAL MB C3 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '29649937', 1),
(124, 'ESQUIBEL', 'FEDERICO ALEXANDER  ', '41863249', '1998-07-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', '  BBº MASOERO M A  C 2 ', 'LAVALLE  LAVALLE', 1, '41863249', 1),
(125, 'GONZALEZ', 'ANGEL FLORENTINO  ', '43749586', '2002-02-11', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'MOYANO FRENTE BARRIO  ', 'LAVALLE  LAVALLE', 1, '43749586', 1),
(126, 'HENRIQUEZ', 'Brian Nahuel  ', '44536587', '1999-04-20', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '44536587', 1),
(127, 'JOFRe', 'MARTiN ESTEBAN  ', '43544095', '2001-04-11', '4941958', 'ies9024_lavalle@yahoo.com.ar', '  BLos Puelches Mna B, Casa 10 ', 'LAVALLE  LAVALLE', 1, '43544095', 1),
(128, 'LUCERO', 'LUDMILA ADRIANA  ', '43279522', '2000-12-19', '2615437803', 'luceroludmila1922@gmail.com', 'B ° RUCA MALBEC M- D C- 3 ', 'TRES DE MAYO - LAVALLE', 1, '43279522', 1),
(129, 'MAUNA', 'ALEJANDRA DOLORES  ', '42912524', '2000-09-22', '2616264091\n', 'dolores2019@gmail.com', ' BLAGUNAS DE BARTOLUCCI MA C14 ', 'SAN FRANCISCO  LAVALLE', 1, '42912524', 1),
(131, 'MORALES', 'FABIANA SOLEDAD  ', '36692215', '1992-11-01', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '36692215', 1),
(132, 'MORALES', 'TALiA JENNIFER  ', '39843408', '1996-07-02', '4941958', 'montecinospamela83@gmail.com', 'PUEBLA ', 'EL PASTAL  LAS HERAS', 1, '39843408', 1),
(133, 'PAEZ', 'BRISA ROCiO  ', '44309229', '2002-04-07', '\n2612655426', 'ies9024_lavalle@yahoo.com.ar', 'BSOLARES DEL NORTE  MH C21 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '44309229', 1),
(134, 'PAEZ', 'MARTiN GUSTAVO  ', '40595301', '1997-05-23', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '40595301', 1),
(135, 'PALMA', 'SABRINA AYELEN  ', '43829838', '2001-08-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'URQUIZA  ', 'COSTA DE ARAUJO  LAVALLE', 1, '43829838', 1),
(136, 'POROYAN', 'NAHIR MADELEM  ', '40597777', '1997-09-19', '4941958', 'castillomariadelosangeles570@gmail.com', 'BPortal del Sol  MC C9 ', 'LAVALLE  LAVALLE', 1, '40597777', 1),
(137, 'ROBLE', 'CARLA AGUSTINA  ', '41605775', '1998-12-13', '4941958', 'ies9024_lavalle@yahoo.com.ar', ' BDORREGO SUR MB C3 ', 'LAVALLE  LAVALLE', 1, '41605775', 1),
(138, 'RODRIGUEZ', 'ERICK KEVIN  ', '95118469', '2000-09-30', '2616441638', 'ies9024_lavalle@yahoo.com.ar', 'FINCA BEN VAN BEL PARAMILLO ', 'LAVALLE  LAVALLE', 1, '95118469', 1),
(139, 'ROVIRA', 'VERONICA PRISCILA  ', '44011149', '2002-05-17', '4941958', 'roviraveronica@escuelacatroppa.edu.ar', 'MOLINARI  ', 'SAN MARTiN  SAN MARTiN', 1, '44011149', 1),
(140, 'SAGUA', 'BRENDA   ', '37779567', '2002-05-17', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '37779567', 1),
(141, 'SILVA', 'MELINA EMILCE  ', '43636254', '2001-06-11', '4941958', '2019emilce@gmail.com', 'BLAGUNAS DE BARTOLUCCI MA C15 ', 'SAN FRANCISCO  LAVALLE', 1, '43636254', 1),
(142, 'SOSA', 'ARIANA MELANIE  ', '44246959', '2001-08-24', '4941958', 'ies9024_lavalle@yahoo.com.ar', '  BSOLARES DEL NORTE C6 ', 'LAVALLE  LAVALLE', 1, '44246959', 1),
(143, 'SUARES', 'ROSANA BELeN  ', '39678464', '1996-08-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '39678464', 1),
(144, 'VARGAS', 'DAIANA ANTONELLA  ', '42403369', '2000-01-21', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ROSARIO DE LAS LAGUNAS  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42403369', 1),
(145, 'VEGA', 'MELANIE YAEL  ', '44310268', '2002-03-05', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'EL CARMEN  ', 'LAVALLE  LAVALLE', 1, '44310268', 1),
(146, 'VIDELA', 'BRENDA DAMARIS  ', '43637747', '2001-02-23', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'URQUIZA  ', 'LAVALLE  LAVALLE', 1, '43637747', 1),
(147, 'VIDELA', 'GUZMAN ALDANA EMILCE ', '42509106', '2000-01-12', '\n2615692319', 'ies9024_lavalle@yahoo.com.ar', 'LOTE SANTA CLARA 7 ', 'LAVALLE  LAVALLE', 1, '42509106', 1),
(148, 'AMAYA', 'GABRIEL MARTIN  ', '39532043', '1996-01-02', '4941958', 'gabrielmartinaaa@gmail.com', 'CALLEJoN SAN PEDRO  ', 'EL CHILCAL  LAVALLE', 1, '39532043', 1),
(149, 'CAMINO', 'VIVIANA   ', '41819763', '1999-04-13', '2616554524', 'vivicamino.41@gmail.com', 'LAMADRID  SIN NUMERO ', 'COSTA DE ARAUJO  LAVALLE', 1, '41819763', 1),
(150, 'CASTAÑEDA', 'BRENDA MICAELA  ', '41702457', '1999-01-08', '2616490754', 'micaelabrenda1234@gmail.com', 'Rodriguez  BLotes Alvarado ', 'LAVALLE  LAVALLE', 1, '41702457', 1),
(151, 'DIAZ', 'ROSANA MABEL  ', '43829817', '2001-01-05', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'GUARIENTO  BFCA. LINARES ', 'EL CHILCAL  LAVALLE', 1, '43829817', 1),
(152, 'FUERTES', 'SERGIO ABRAHAM  ', '45551701', '1995-04-15', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'QUIROGA   ', 'LAVALLE  LAVALLE', 1, '45551701', 1),
(153, 'GARAY', 'MARiA MILAGROS  ', '42469300', '1999-09-24', '4941958', 'mg35535@gmail.com', 'rivadavia  B ', 'COSTA DE ARAUJO  LAVALLE', 1, '42469300', 1),
(154, 'GATICA', 'MARCOS NAHUEL  ', '43279524', '2000-12-23', '4941958', 'marcosgatica017@gmail.com', 'BUNIoN Y ESFUERZO  MC C9 ', 'LAVALLE  LAVALLE', 1, '43279524', 1),
(155, 'GOMEZ', 'JESuS ABEL  ', '40070435', '1996-03-03', '4941958', 'jesusabelgomez@gmail.com', 'JESuS NASARENO BAMANECER ME C15 ', 'COLONIA SEGOVIA  GUAYMALLeN', 1, '40070435', 1),
(156, 'GOMEZ', 'VILLACORTA IGNACIO JAVIER ', '30536057', '1983-09-30', '4941958', 'ignaciojaviergomez2015@gmail.com', 'BCEMENTISTA II M12 C24 ', 'EL CHALLAO  LAS HERAS', 1, '30536057', 1),
(157, 'GUIRADO', 'Rocio angeles  ', '43076938', '1999-12-01', '4941958', 'rocio.guirado@yahoo.com.ar', 'NUEVES DE JULIO  ', 'LA PALMERA  LAVALLE', 1, '43076938', 1),
(158, 'JOFRE', 'Camila Gabriela Marisol ', '42751151', '1996-03-23', '4941958', 'cami23jofre@gmail.com', 'Ruta 35 a 500 Mts de la Calle San Martin ( Casa Celeste) ', 'TRES DE MAYO  LAVALLE', 1, '42751151', 1),
(159, 'LOPEZ', 'VANINA BELEN  ', '42509934', '1999-09-26', '4941958', 'lopez4250vani@gmail.com', 'LA SOLITA  ', 'EL VERGEL  LAVALLE', 1, '42509934', 1),
(160, 'MARTINEZ', 'LUCAS   ', '38474565', '1994-10-17', '4941958', 'lucasmartinez2016@hotmail.com', 'CARMEN   ', 'LAVALLE  LAVALLE', 1, '38474565', 1),
(161, 'PEDRAZA', 'GIANLUCA NAHUEL  ', '45587644', '1999-02-15', '4941958', 'gianlucas_pedraza@yahoo.com', 'RUTA 40   3338 ', 'TRES DE MAYO  LAVALLE', 1, '45587644', 1),
(162, 'ROLDAN', 'ROCIO DAIANA  ', '41366471', '1998-07-31', '4941958', 'rocioroldan089@gmail.com', 'LOS SANJUANINOS  ', 'COLONIA ITALIA  LAVALLE', 1, '41366471', 1),
(163, 'VICTORIO', 'ROCIO SOLEDAD  ', '42062551', '1999-06-25', '2617024041', 'rociovictorio4@gmail.com', 'SANTAMARINA  ', 'NUEVA CALIFORNIA  SAN MARTiN', 1, '42062551', 1),
(164, 'ARCE', 'CLARA JESICA  ', '42714022', '1999-10-31', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'RUTA 36  FINCA MARTINEZ  ', 'LAVALLE  LAVALLE', 1, '42714022', 1),
(165, 'ARCE', 'DANIEL ESTEBAN  ', '43279531', '2000-04-15', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'M B C19 MBC19 BEL PORVENIR ', 'LAVALLE  LAVALLE', 1, '43279531', 1),
(167, 'DIAZ', 'FERNANDO GABRIEL  ', '39383277', '1996-05-04', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'EMILIO CIVIT 83 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39383277', 1),
(168, 'DIAZ', 'MICAELA NOEMI  ', '35560224', '1999-06-14', '4941958', 'susyestrela@gmail.com', '4941958', '4941958', 1, '35560224', 1),
(169, 'DIAZ', 'BRICEnioO MIREYA DE JESUS', '18687374', '1960-10-03', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ROSARIO DE LAS LAGUNAS 261 ', '4941958', 1, '18687374', 1),
(170, 'DIAZ', 'DIAZ ROCIO CELINA ', '42669467', '2000-04-15', '4941958', 'rociocelinadiazdiaz@gmail.com', 'ROSARIO DE LAS LAGUNAS 261 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42669467', 1),
(171, 'DIAZ', 'MATURANA CLAUDIA INES ', '93786907', '1983-04-05', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '93786907', 1),
(172, 'MONTAnioO', 'Tamara Jacqueline  ', '41366480', '1997-09-26', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41366480', 1),
(173, 'MONTUORI', 'ALEJO SEBASTIaN  ', '42793590', '2000-02-03', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BTUPAC AMARU II MF C2 ', 'LAVALLE  LAVALLE', 1, '42793590', 1),
(174, 'MORAN', 'EXEQUIEL ALBERTO  ', '42714013', '2000-02-13', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'LOS SANJUANINOS  00 B00 ', 'LAVALLE  LAVALLE', 1, '42714013', 1),
(175, 'MURILLO', 'MAC RENO  ', '41479714', '1997-05-20', '4941958', 'mac97murillo@gmail.com', ' BNUEVO VERGEL B4 ', 'EL VERGEL  LAVALLE', 1, '41479714', 1),
(176, 'VILLEGAS', 'MAGALI RAQUEL  ', '40561222', '1997-04-09', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '40561222', 1),
(177, 'ACOSTA', 'MELINA BELeN  ', '43942621', '2001-12-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, '43942621', 1),
(179, 'AGUILERA', 'aNGELES AYELeN  ', '42403364', '2000-01-03', '2616233208', 'angiiaguilera23@gmail.com', 'DORREGO BNUEVO VERGEL MC C10 ', 'EL VERGEL  LAVALLE', 1, '42403364', 1),
(180, 'ALVORNOZ', 'DEBORA STHEFANIA  ', '41885036', '1998-10-20', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'La Juanita s(n ', 'GUSTAVO ANDRE  LAVALLE', 1, '41885036', 1),
(181, 'AMARILLO', 'CAPERON RUBEN AGUSTIN ', '43418776', '2001-05-12', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ALMIRANTE BROWN 7585 ', 'GUAYMALLEN  GUAYMALLeN', 1, '43418776', 1),
(182, 'AVENDAnioO', 'LLANOS PAOLA  ', '94912184', '2000-01-26', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'CALLE DORREGO   Finca Ruggeri  ', 'EL VERGEL  LAVALLE', 1, '94912184', 1),
(183, 'BARRA', 'DE PAULA ANTONELLA GISEL', '43075994', '2001-02-01', '4941958', 'antonellabarradepaula@gmail.com', 'FINCA CARTELLONE  ', 'FRAY LUIS BELTRaN  MAIPu', 1, '43075994', 1),
(184, 'BARRERA', 'ROMERO JOANA GISEL ', '41606219', '1998-11-01', '4941958', 'bjoana127@gmail.com', 'MILAGRO Y RUTA 24  00 B00 ', 'GUAYMALLEN  GUAYMALLeN', 1, '41606219', 1),
(185, 'CASTAnioEDA', 'ALEJANDRO ADRIaN  ', '43829864', '2002-01-26', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'URQUIZA Y COLONIA  ', 'EL CARMEN  LAVALLE', 1, '43829864', 1),
(186, 'CASTRO', 'GABRIELA NORMA  ', '44756981', '2001-03-23', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'Ruta 40 KM3338 ', 'LAVALLE  LAVALLE', 1, '44756981', 1),
(187, 'FABIAN', 'MELANI EMILIANA  ', '41369728', '1998-12-03', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41369728', 1),
(188, 'FABIAN', 'ZOE MARIANELA  ', '42554135', '2000-11-04', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ALEM  ', 'COSTA DE ARAUJO  LAVALLE', 1, '42554135', 1),
(189, 'FERNaNDEZ', 'ANDREA ROCiO  ', '43213569', '2000-12-11', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'Remedios Escalada  ', 'LAVALLE  LAVALLE', 1, '43213569', 1),
(191, 'FERREYRA', 'CAMILA VALERIA  ', '39081141', '1994-12-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BARRIO BELGRANO  MANZANA B CASA 7  ', 'LAVALLE  LAVALLE', 1, '39081141', 1),
(192, 'FRETES', 'NATALIA YAMINA  ', '41752785', '2000-01-30', '4941958', 'ies9024_lavalle@yahoo.com.ar', ' A/N ', 'LAVALLE  LAVALLE', 1, '41752785', 1),
(194, 'GIL', 'YAEL EMILCE MAILeN ', '43749621', '2000-12-02', '2615936101', 'marielacortez78@hotmail.com', 'GARIBALDI   ', 'LAVALLE  LAVALLE', 1, '43749621', 1),
(195, 'GONZALEZ', 'ANA GABRIEL  ', '93898748', '1997-11-20', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'Moyano  ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '93898748', 1),
(196, 'HERRERA', 'Franco Nicolas  ', '39381925', '1996-04-21', '4941958', 'enanobj00@gmail.com', 'Rodriguez  ', 'COSTA DE ARAUJO  LAVALLE', 1, '39381925', 1),
(197, 'JOFRE', 'PAMELA YANEL  ', '41365291', '1998-05-22', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41365291', 1),
(198, 'MASSARI', 'AGUSTINA ANDREA DEL CARMEN', '40371952', '1998-05-22', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '40371952', 1),
(199, 'MORAL', 'PATRICIA ANGELES  ', '41770456', '1998-05-22', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41770456', 1),
(200, 'MORALES', 'MARTINA NERINA  ', '42318446', '1999-11-07', '4941958', 'gustavomorales7896@gmail.com', 'SAN MARTIN  ', 'LAVALLE  LAVALLE', 1, '42318446', 1),
(201, 'NIEVAS', 'CAMILA ANAHi  ', '43681907', '2001-04-19', '2613662362', 'ies9024_lavalle@yahoo.com.ar', '  BSanta Cecilia II Mna L casa 20 ', 'LAVALLE  LAVALLE', 1, '43681907', 1),
(202, 'OLIVERI', 'MELENDEZ LIZ ORIANA ', '43355118', '2000-11-15', '4941958', 'ies9024_lavalle@yahoo.com.ar', '  BTUPAC AMARU MD C20 ', 'LAVALLE  LAVALLE', 1, '43355118', 1),
(203, 'PEINADO', 'DELFINA JANET  ', '41367926', '1998-10-19', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41367926', 1),
(204, 'QUINTERO', 'ROCIO AZUCENA  ', '43151568', '2000-09-06', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'Ruta 40 KM3341 ', 'LAVALLE  LAVALLE', 1, '43151568', 1),
(205, 'RIVERA', 'CARAZO ROCiO YAZMiN ', '42751200', '2000-08-05', '4941958', 'ies9024_lavalle@yahoo.com.ar', ' MA, C3 BUNIoN Y ESFUERZO MA  C ', 'TRES DE MAYO  LAVALLE', 1, '42751200', 1),
(206, 'RODRIGUEZ', 'DULCE ZAHIRA SOFIA ', '41863206', '1999-03-31', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '41863206', 1),
(207, 'VIDELA', 'DANTE JAVIER  ', '43681883', '2001-05-16', '2613824742', 'ies9024_lavalle@yahoo.com.ar', 'MCC8 BEl Porvenir MC C8 ', 'LAVALLE  LAVALLE', 1, '43681883', 1),
(208, 'VIDELA', 'PAULA MELANIE  ', '43486442', '2000-06-26', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'RUTA 40 KILOMETRO 42   BCoop. Jocoli ', 'LAVALLE  LAVALLE', 1, '43486442', 1),
(209, 'VILLALBA', 'GABRIELA TANIA  ', '45966651', '1998-08-16', '26134465266', 'abyy4596@gmail.com', 'El Pastal  ', 'EL PASTAL  LAS HERAS', 1, '45966651', 1),
(210, 'VILLEGAS', 'CANDELA MELISA  ', '42166748', '1999-04-14', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '42166748', 1),
(211, 'VILLEGAS', 'MAYRA ELIZABETH  ', '41367921', '1998-09-03', '4941958', 'villegasmayra73@gmail.com', 'PEREDA ', 'NUEVA CALIFORNIA  SAN MARTiN', 1, '41367921', 1),
(212, 'ABACA', 'RAuL EMILIANO  ', '43075710', '2001-11-07', '4941958', 'abacaraul@escuelacatroppa.edu.ar', 'SAN PEDRO  B ', 'SAN MARTiN  SAN MARTiN', 1, '43075710', 1),
(213, 'ABALOS', 'VICTOR GABRIEL  ', '41775041', '1999-02-04', '154161810', 'victor_abalos@hotmail.com', 'NO NO BAMIGORENA  ', 'LAS HERAS  LAS HERAS', 1, '41775041', 1),
(214, 'ALGAnioARAZ', 'AREZO MARIANO ANDRES ', '28411200', '1980-10-16', '4941958', 'marianoalganaraz@gmail.com', 'Vicente Morales 282 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '28411200', 1),
(216, 'BRITO', 'ANGEL OSVALDO GONZALO ', '42863230', '2000-08-10', '4941958', 'gonzalobrito709@gmail.com', 'CARRIL A LAVALLE  8999 ', 'COLONIA SEGOVIA  GUAYMALLeN', 1, '42863230', 1),
(217, 'COLQUE', 'FERNANDO NAHUEL  ', '44011411', '2001-03-23', '4941958', 'fercolque4401@gmail.com', 'Finca Moyano  San Ramon  ', 'EL BORBOLLoN  LAS HERAS', 1, '44011411', 1),
(218, 'DIAZ', 'MACACARO LUCA MIGUEL ', '41418139', '1998-11-28', '4941958', 'NOSSGT@GMAIL.COM', ' Dorrego M  B Solares del Norte MG C21 ', 'LAVALLE  LAVALLE', 1, '41418139', 1),
(219, 'FERNANDEZ', 'JUAN PABLO  ', '42750925', '2000-05-31', '4941958', 'juampifer@hotmail.com', 'B COSTA DE ARAUJO  ', 'LAVALLE  LAVALLE', 1, '42750925', 1),
(220, 'GARAY', 'CARRIZO MATiAS EZEQUIEL ', '43417656', '2001-04-11', '2612190140', 'matymgcgaray@gmail.com', 'MF C 2 BAMTAGA ', 'GUAYMALLEN  GUAYMALLeN', 1, '43417656', 1),
(221, 'GONZALEZ', 'MACARENA YAEL  ', '42974258', '2000-10-13', '2615890353', 'macarenayael2013@gmail.com', 'M D C 12  BLOS JARILLEROS ', 'LAVALLE  LAVALLE', 1, '42974258', 1),
(222, 'JOFRE', 'COLQUE PATRICIA DAIANA ', '41967012', '1999-05-23', '4941958', 'daiana23jofre@gmail.com', 'RUTA 24SIN N+MERO  B BARRIO COOPERATIVA  ', 'LAVALLE  LAVALLE', 1, '41967012', 1),
(223, 'LoPEZ', 'GoMEZ CAROLINA SOLEDAD ', '39383211', '1996-03-11', '4941958', 'kaarooloopeez17@gmail.com', 'San Esteban  ', 'EL PASTAL  LAS HERAS', 1, '39383211', 1),
(224, 'MAESTU', 'ISAIAS EMIR  ', '43484387', '2000-12-24', '4941958', 'maestu49@gmail.com', '  BJARDIN  M D C6 ', 'SAN JOSe  GUAYMALLeN', 1, '43484387', 1),
(225, 'MAYORGA', 'FACUNDO   ', '24460919', '1975-05-21', '4941958', 'facumayorga@outlook.com', 'PASO DE LOS ANDES 580 ', 'CIUDAD  CAPITAL', 1, '24460919', 1),
(226, 'MENDOZA', 'MARIA ROBERTA  ', '25057397', '1976-01-01', '4941958', 'mariarobertamendoza22@gmail.com', 'Moyano  ', 'GUSTAVO ANDRE  LAVALLE', 1, '25057397', 1),
(227, 'NIEVAS', 'DARiO RUBEN  ', '41606211', '1998-10-02', '4941958', 'darionievasbarcelona@gmail.com', '4941958', '4941958', 1, '41606211', 1),
(228, 'PAILEMAN', 'OSVALDO OMAR  ', '41795613', '1998-08-13', '4941958', 'cens3439dge@gmail.com', 'MORON (SEXTA CASA ANTE CALLE OLIVA)  ', 'COSTA DE ARAUJO  LAVALLE', 1, '41795613', 1),
(229, 'ROLDANVIANI', 'DANIELA PAOLA  ', '24946172', '1975-11-03', '4941958', 'dproldan75@gmail.com', 'Ruta 24  ', 'LA PEGA  LAVALLE', 1, '24946172', 1),
(230, 'ROMERO', 'TUPA ISMAEL FRANCISCO ', '95614651', '1999-09-18', '4941958', 'ismaeltromero1999@gmail.com', 'SEGURA  BJOCOLI VIEJO ', 'JOCOLI VIEJO  LAVALLE', 1, '95614651', 1),
(231, 'WEISZ', 'MATiAS SIMoN  ', '39315781', '1996-03-23', '4941958', 'matiasweisz1@gmail.com', '4941958', '4941958', 1, '39315781', 1),
(232, 'AMAYA', 'IVANA GISEL  ', '39087389', '1995-04-09', '4941958', 'ivigissel95@gmail.com', 'BNueva Alborada ME C22 ', 'BERMEJO  GUAYMALLeN', 1, '39087389', 1),
(233, 'BARRERA', 'JIMENA ALEJANDRA  ', '39088856', '1996-01-16', '4941958', 'barrerajimena38@gmail.com', '4941958', '4941958', 1, '39088856', 1),
(234, 'BOGGIO', 'MELINA AYELeN  ', '42510435', '1997-01-20', '4941958', 'melina.boggio@yahoo.com', '4941958', '4941958', 1, '42510435', 1),
(235, 'CASTRO', 'YUPANQUI FARY MIRELLA ', '94355848', '1992-03-08', '4941958', 'notiene@gmail.com', '4941958', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '94355848', 1),
(236, 'Correa', 'Estefania Alejandra  ', '36965598', '1992-09-28', '4941958', 'estefania28correa@gmail.com', 'san alberto  ME C6 100 ', 'BERMEJO  GUAYMALLeN', 1, '36965598', 1),
(237, 'FERNANDEZ', 'JOFRe MARIELA BELeN ', '41659750', '1998-12-19', '4941958', 'mbelenfernandezjofre@gmail.com', 'EL CARMEN ', 'EL CARMEN  LAVALLE', 1, '41659750', 1),
(238, 'GADEA', 'Veronica Noemi  ', '33631403', '1987-07-16', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '33631403', 1),
(239, 'LLUGANY', 'LOPEZ HEIDI MELANIE ', '37412626', '1997-05-17', '4941958', 'lluganymelanie@hotmail.com.ar', '4941958', '4941958', 1, '37412626', 1),
(240, 'LUCERO', 'GABRIELA BEATRIZ  ', '31919922', '1985-11-08', '4941958', 'gabrielalucero811@gmail.com', 'CALLEJON IGLESIAS  ', 'EL VERGEL  LAVALLE', 1, '31919922', 1),
(241, 'MARTINEZ', 'MELINA FLORENCIA  ', '42713326', '2000-03-16', '4941958', 'meelmartinez900@gmail.com', 'LAMADRID   BLA BAJADA ', 'COSTA DE ARAUJO  LAVALLE', 1, '42713326', 1),
(242, 'MORALES', 'Sabrina Amparo  ', '43278307', '1999-06-16', '4941958', 'ampimorales2018@gmail.com', '4941958', '4941958', 1, '43278307', 1),
(258, 'GALLEGOS', 'NATACHA FERNANDA  ', '27093247', '1979-04-25', '4941958', 'nachy_2010@hotmail.com', 'Bº COSTA DE ARAUJO M G C 16    ', 'ARROYITO  LAVALLE', 1, '27093247', 1),
(259, 'GARAY', 'ESTER ELIZABETH  ', '31737637', '1985-09-30', '4941958', 'egaray008@gmail.com', 'CORTADERA  ', 'COSTA DE ARAUJO  LAVALLE', 1, '31737637', 1),
(261, 'MAYORGA', 'SOLEDAD   ', '28238910', '1980-11-08', '4941958', 'solemayorga2015@gmail.com', 'BCuyúm M4 C2 ', 'COSTA DE ARAUJO  LAVALLE', 1, '28238910', 1),
(262, 'MERCADO', 'GONZALEZ Luciana Yamila ', '39182154', '1995-10-14', '4941958', 'yamiluzl18@hotmail.com', '4941958', 'COSTA DE ARAUJO  LAVALLE', 1, '39182154', 1),
(263, 'OLIVA', 'FERNANDEZ DANIELA EMILCE ', '42509932', '1997-01-16', '4941958', 'chunioliva@gmail.com', 'BBELGRANO MC C3 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42509932', 1),
(264, 'REVECO', 'Cristina Laura  ', '29622443', '1983-02-28', '4941958', 'lalyreveco2883@gmail.com', 'BVirgen de Andacollo MI C13 ', 'TRES DE MAYO  LAVALLE', 1, '29622443', 1),
(265, 'VILLEGAS', 'SAMIRA ALDANA  ', '41252241', '1998-04-10', '4941958', 'samiravillegas48@gmail.com', ' CORINDOU   ', 'GUSTAVO ANDRE  LAVALLE', 1, '41252241', 1),
(266, 'CASELLES', 'ERICA LOURDES  ', '29745892', '1982-10-17', '4941958', 'erica_caselles@yahoo.com.ar', 'BBº EPIEQUEN MA C1 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '29745892', 1),
(267, 'CASTILLO', 'NOELIA SANDRA  ', '37001567', '1992-08-26', '4941958', 'nonbes_45@live.com', 'Huarpes  77 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37001567', 1),
(268, 'GENAULAZ', 'CECILIA MARGARITA  ', '29944627', '1983-02-27', '4941958', 'ceciliagenaulaz@gmail.com', 'Huarpes 48 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '29944627', 1),
(269, 'PUEBLA', 'ORLANDO EZEQUIEL  ', '42793564', '1999-07-31', '4941958', 'orlandipueba@gmail.com', ' ', 'SAN FRANCISCO  LAVALLE', 1, '42793564', 1),
(270, 'TUPA', 'MAMANI JOSE ARMANDO ', '41177550', '1997-05-31', '4941958', 'josetupa1997@gmail.com', 'SEGURA   ', 'JOCOLI VIEJO  LAVALLE', 1, '41177550', 1),
(271, 'CALERO', 'ROJAS ERMINDA LISANDRA ', '40560142', '1997-06-15', '4941958', 'emicalero15@hotmail.com', 'RUTA 36 637 ', 'TRES DE MAYO  LAVALLE', 1, '40560142', 1),
(272, 'CAÑIZARE', 'NOELIA VIVIANA  ', '39085750', '1995-11-08', '2612536696', 'canizarenoelia@gmail.com', 'RUTA 40 KM 3339 ', 'TRES DE MAYO  LAVALLE', 1, '39085750', 1),
(273, 'DEL CORSO TONETTI ', 'SODRE RANGEL', '95335926', '1995-05-30', '4941958', 'tatyanaraangel@gmail.com', 'VILLEGAS ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '95335926', 1),
(275, 'JOFRE', 'PATRICIO RAFAEL  ', '36581991', '1992-12-16', '4941958', 'patriciojofre92@gmail.com', 'CORTADERA  ', 'GUSTAVO ANDRE  LAVALLE', 1, '36581991', 1),
(276, 'LUCERO', 'BARRERA ROCIO IVANA ', '36581960', '1992-12-22', '4941958', 'ro_13lucero@outlook.com', 'URQUIZA BNUEVA FUERZA ME C9 ', 'COSTA DE ARAUJO  LAVALLE', 1, '36581960', 1),
(277, 'MARADONA', 'LOURDES CARMEN  ', '41643575', '1998-07-04', '4941958', 'lourdesmaradona2015@gmail.com', 'RUTA 40 Km 3337 ', 'JOCOLI VIEJO  LAVALLE', 1, '41643575', 1),
(278, 'OLMOS', 'JOSE DIEGO  ', '35850416', '1991-04-01', '4941958', 'motog3diego@gmail.com', 'SANCHEZ BPICCIONE ', 'MAIPÚ  MAIPÚ', 1, '35850416', 1),
(279, 'OLMOS', 'Ludmila Joel  ', '32285678', '1986-08-17', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '32285678', 1),
(280, 'PAREDES', 'CECILIA GISEL  ', '35546013', '1990-12-21', '4941958', 'giselparedes2009@hotmail.com', 'BFUERZA NUEVA MH C4 ', 'COSTA DE ARAUJO  LAVALLE', 1, '35546013', 1),
(281, 'PESCETTI', 'GEORGINA ERICA  ', '37612740', '1993-05-21', '4941958', 'georginapescetti@gmail.com', 'MATHUS HOYOS  2791 ', 'BERMEJO  GUAYMALLÉN', 1, '37612740', 1),
(282, 'PONCE', 'ARIEL ENRIQUE  ', '37512899', '1994-11-13', '2616091297', 'poche163@gmail.com', 'BCUYUM III M4 C4 ', 'COSTA DE ARAUJO  LAVALLE', 1, '37512899', 1),
(283, 'GALIANO', 'SABRINA ESTEFANIA  ', '41177633', '1998-05-25', '4941958', 'sabrinagaliano25@gmail.com', 'el pantano  0 ', 'LAVALLE  LAVALLE', 1, '41177633', 1),
(284, 'GIMENEZ', 'ROMINA GISELLA  ', '40217922', '1997-04-12', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'Ruta 36 y Rama 4 MA C17 BParaiso de  ', 'LAVALLE  LAVALLE', 1, '40217922', 1),
(285, 'GODOY', 'ROCIO ABRIL  ', '46062501', '1999-03-25', '4941958', 'rocigodoy66@gmail.com', 'M G C 11 BEL PORVENIR ', 'JOCOLI VIEJO  LAVALLE', 1, '46062501', 1),
(286, 'GUIRADO', 'LEONARDO RAFAEL  ', '40889339', '1998-01-02', '2614726664', 'leoguirado98@gmail.com', 'DORREGO   ', 'LAVALLE  LAVALLE', 1, '40889339', 1),
(287, 'JURADO', 'JESSICA ANDREA  ', '40873033', '1992-11-05', '156778906', 'jessicaabigail0529@gmail.com', 'Balto del olvido  Me C14 ', 'LAVALLE  LAVALLE', 1, '40873033', 1),
(288, 'LEDESMA', 'MARCELO ALEJANDRO  ', '37512913', '1995-01-24', '4941958', 'marceloledesma@gmail.com', 'BNuestra Sra del CArmen  Md C4 ', 'LAVALLE  LAVALLE', 1, '37512913', 1),
(289, 'MARTÍN', 'FERRO MATÍAS DANIEL ', '32019691', '1985-12-12', '4941958', 'matiasdmartinf@hotmail.com', 'MARTINEZ DE ROSAS  2949 ', 'CIUDAD  CAPITAL', 1, '32019691', 1),
(290, 'OCHOA', 'Cristian Emmanuel  ', '36581877', '1992-08-21', '4941958', 'ceo08@hotmail.com', 'Thomas Godoy Cruz y 9 de Julio  00 Dpto P B M C0 ', 'COSTA DE ARAUJO  LAVALLE', 1, '36581877', 1),
(291, 'PICON', 'BECERRA ALEXIS LUCAS MATIAS', '27325380', '1979-07-27', '4941958', 'alexislucaspicon@gmail.com', 'JAIME NICOLAO 190 ', 'LAS HERAS  LAS HERAS', 1, '27325380', 1),
(292, 'SUAREZ', 'ANA MAGDALENA  ', '36913380', '1993-09-20', '4941958', 'ana343suarez@gmail.com', 'Pereda  0 ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '36913380', 1),
(293, 'TORRES', 'EZEQUIEL JONÁS  ', '34324197', '1989-07-08', '4941958', 'ezestorres@gmail.com', '4941958', '4941958', 1, '34324197', 1),
(294, 'BUENANUEVA', 'EMILCE MICAELA  ', '42063375', '1999-08-03', '4941958', 'emicaelabuenanueva14@gmail.com', 'SAN RAMON  ', 'EL BORBOLLÓN  LAS HERAS', 1, '42063375', 1),
(295, 'CABEZAS', 'ANDREA ESTEFANIA  ', '37622938', '1993-05-25', '4941958', 'estefaniac.25@hotmail.com', 'ARANCIBIA  45 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37622938', 1),
(296, 'GREGORIO', 'FLAVIA CAROLINA  ', '42084417', '1999-08-24', '4941958', 'flaviagregorio262@gmail.com', 'La Holanda  ', 'EL PARAMILLO  LAVALLE', 1, '42084417', 1),
(297, 'GUZMAN', 'FRIAS BRIAN MARCELO ', '41004268', '1998-02-23', '4941958', 'brianfto11@gmail.com', 'Pujadas 68 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41004268', 1),
(298, 'MARIN', 'LISA EVELYN  ', '40907403', '1997-05-15', '4941958', 'lisaevemarin17@gmail.com', 'BCOOPERATIVA EL CHILCAL MA C7 ', 'EL CHILCAL  LAVALLE', 1, '40907403', 1),
(299, 'MAYSEN', 'ALEJANDRO FABIAN JEREMÍA ', '40957427', '1998-02-08', '4941958', 'fabianmaysen@gmail.com', 'BBelgrano  MF C19 ', 'LAVALLE  LAVALLE', 1, '40957427', 1),
(300, 'VILCHES', 'CRISTIAN RAÚL  ', '40070995', '1997-07-02', '4941958', 'vilches464@gmail.com', 'La Polvosa y Rua 40 Km 3325 ', 'JOCOLI VIEJO  LAVALLE', 1, '40070995', 1),
(301, 'ABAN', 'YESICA MALENA  ', '42714058', '1999-12-20', '2616888664', 'yesiaban2000@gmail.com', 'B Barrio Tupac Amaru Mh C2 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42714058', 1),
(302, 'ALGAÑARAZ', 'Jesús Sebastian  ', '36348914', '1992-06-05', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '36348914', 1),
(303, 'AMENGUAL', 'BRIAN DANIEL  ', '43075973', '1998-12-06', '4941958', 'amengualbriandaniel1998@hotmail.com', 'Bbarrio Sute  Mb C8 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '43075973', 1),
(304, 'ARROYO', 'NARVAEZ PAULA DANIELA ', '43119168', '2000-05-29', '2615138160', 'paulayezequiel.PA@gmail.com', 'FERREIRA 1821 BSan Expedito   Ma C5 ', 'TRES DE MAYO  LAVALLE', 1, '43119168', 1),
(305, 'CARMONA', 'MARIA BELEN  ', '42422259', '1999-05-21', '4941958', 'belencarmona215@gmail.com', 'FINCA BENVAN  ', 'LAVALLE  LAVALLE', 1, '42422259', 1),
(306, 'CASTILLO', 'Sebastián Dario  ', '31319719', '1985-08-08', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '31319719', 1),
(307, 'CUMAUDO', 'DANIELA PAOLA  ', '31902505', '1986-05-12', '4941958', 'danyela_.86_@hotmail.com', 'mathus Hoyos  5842 ', 'EL SAUCE  GUAYMALLÉN', 1, '31902505', 1),
(308, 'DAMONTE', 'BEATRIZ ALEJANDRA  ', '16618340', '1964-03-22', '4941958', 'alex.damonte@hotmail.com', 'BSanta Teresita   MA C12 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '16618340', 1),
(309, 'FERNANDEZ', 'LEONARDO JAVIER  ', '29649982', '1983-02-10', '4941958', 'leonardo.fernandez83@gmail.com', 'Dpto P BSanta Cecilia II Me C4 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '29649982', 1),
(310, 'FLORES', 'MARTINEZ BELINDA  ', '40926068', '1997-12-02', '4941958', 'belindaflores772@gmail.com', 'el Carmen  ', 'EL PLUMERO  LAVALLE', 1, '40926068', 1),
(311, 'GONZALVES', 'FARFAN MELINA MARIEL DALILA', '39019222', '1995-05-05', '4941958', 'melinagonzalves@gmail.com', 'San Martín  0 ', 'ALTO DEL OLVIDO  LAVALLE', 1, '39019222', 1),
(312, 'LORENTE', 'MICAELA ABIGAIL  ', '42469355', '1999-11-24', '156529906', 'lorenteabi@gmail.com', 'MOYANO  BLA FLORESTA I M A C 3 ', 'GUSTAVO ANDRE  LAVALLE', 1, '42469355', 1),
(313, 'MERINO', 'EVER URIEL  ', '42082002', '1999-06-25', '4941958', 'urielmerino812@yahoo.com.es', 'Dpto0 P0 BPortal del Sol  Mc C13 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42082002', 1),
(314, 'MORENO', 'MICAELA ABIGAIL  ', '41659544', '1998-11-04', '2615441788', 'elizabemoreno81@gmail.com', 'BARRIO NUEVA ESPERANZA  ME C3 ', 'SAN MARTÍN  SAN MARTÍN', 1, '41659544', 1),
(315, 'ORIBE', 'FABIO SEBASTIAN  ', '35560152', '1991-03-30', '4941958', 'sebastian.oribe@hotmail.com', '  BJARDIN DEL ROSARIO B 7 ', 'LAVALLE  LAVALLE', 1, '35560152', 1),
(316, 'ORO', 'FLORENCIA BELÉN  ', '40370957', '1997-06-04', '4941958', 'flororo14@gmail.com', 'Dpto0 P0 BSanta Cecilia I Mb C27 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '40370957', 1),
(317, 'PACHECO', 'GIANGIULIO GABRIELA ESTHER ', '41444390', '1998-09-22', '2617057040\n', 'pachecogabriela692@gmail.com', 'BFuerza NuevaM A2 C 13 ', 'COSTA DE ARAUJO  LAVALLE', 1, '41444390', 1),
(318, 'PEDOT', 'YBARRA MARÍA FERNANDA ', '32192826', '1986-04-22', '4941958', 'fernandadot22@gmail.com', '4941958', 'TRES DE MAYO  LAVALLE', 1, '32192826', 1),
(319, 'ROMERO', 'ABEL AGUSTIN  ', '42507582', '2000-02-17', '4941958', 'abel14agus.romero@gmail.com', 'MANZANA F CASA 8 BREPÚBLICA DEL PERÚ ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42507582', 1),
(320, 'SARMIENTO', 'ALEXA NICOL  ', '43279584', '2000-05-12', '2612652348', 'alexanicolsarmiento@gmail.com', 'BSANTA CECILIA MF C15 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '43279584', 1),
(321, 'TERRERO', 'ROBERTO EMANUEL  ', '40661121', '1997-09-13', '2616144449', 'emanulrt1998@gmail.com', 'LA JUANITA S/N', 'GUSTAVO ANDRE  - LAVALLE', 1, '40661121', 1),
(322, 'VIDELA', 'Verónica Cecilia  ', '32818925', '1987-03-20', '4941958', 'videla.30.2017@gmail.com', 'Villa Nueva  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '32818925', 1),
(323, 'JOFRE', 'LUCIANO EMMANUEL  ', '40766083', '1995-10-11', '2612053467', 'cens3439dge@gmail.com', 'RIVADAVIA  337 ', 'COSTA DE ARAUJO  LAVALLE', 1, '40766083', 1),
(324, 'LUJAN', 'EUGENIA STHEFANI  ', '38580527', '1994-03-08', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '38580527', 1),
(325, 'ROMERO', 'CAROLINA BEATRIZ  ', '39381981', '1996-07-11', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '39381981', 1),
(326, 'Salem', 'Camila   ', '39677849', '1996-07-28', '4941958', 'castillomariadelosangeles570@gmail.com', '4941958', '4941958', 1, '39677849', 1),
(327, 'AGUILAR', 'CLAUDIA ALEJANDRA  ', '38205970', '1994-03-25', '4941958', 'clauditaaguilar3@gmail.com', 'FINCA ELENITA ', 'EL PARAMILLO  LAVALLE', 1, '38205970', 1),
(328, 'ARAMAYO', 'KAREN MICHELLE  ', '41338984', '1998-06-20', '4941958', 'aramayokaren00@gmail.com', 'BARRIO JARILLERO MANZANA A CASA 23 M A C 23 BLOS JARILLEROS MA C23 ', 'JOCOLI VIEJO  LAVALLE', 1, '41338984', 1),
(329, 'GARRO', 'FUNES AYMARÁ DENISE ', '42357631', '1999-05-26', '4941958', '99aimaragarro@gmail.com', 'HUANACACHE º BAMALIA ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '42357631', 1);
INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `dni`, `fechanacido`, `telefono`, `mail`, `domicilio`, `localidad`, `idrol`, `clave`, `estado`) VALUES
(330, 'GONZALEZ', 'EDGARDO ADRIAN  ', '36581977', '1993-01-31', '4941958', 'adriangonza3101@gmail.com', 'BAVENA ', 'COSTA DE ARAUJO  LAVALLE', 1, '36581977', 1),
(331, 'GONZALEZ', 'MAIRA JOSEFA  ', '39383249', '1996-03-11', '4941958', 'gonzalezmaira317@gmail.com', 'CALLEJON BALCARCE  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39383249', 1),
(332, 'GONZALEZ', 'VIDELA MAYRA VALERIA ', '40889777', '1997-10-25', '4941958', 'mayrabj43@gmail.com', 'BSANTA CECILIA II  MH C2 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '40889777', 1),
(333, 'MANZANO', 'CALDENTEY BRICIA GABRIELA ', '41863232', '1999-03-20', '4941958', 'brisamanzano99@gmail.com', 'BTUPAC AMARU MA C9 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41863232', 1),
(334, 'MERCADO', 'NATALIA DANIELA  ', '31845452', '1984-12-25', '4941958', 'notiene@gmail.com', 'SAN MARTÍN  BALTO DEL OLVIDO MD  C7 ', 'ALTO DEL OLVIDO  LAVALLE', 1, '31845452', 1),
(335, 'PUEBLA', 'GABRIELA TOMASA  ', '37622975', '1993-08-03', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'FCA.LOS MILITARESSAN JUAN   ', 'LAVALLE  LAVALLE', 1, '37622975', 1),
(336, 'SANJURJO', 'MARIA DE LOS ANGELES', '32477709', '1986-01-26', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'BELGRANO  ', 'LAVALLE  LAVALLE', 1, '32447709', 1),
(337, 'ZANETTI', 'ESTRELLA MARIANELA  ', '38474595', '1995-06-15', '4941958', 'estrellazanetti6@gmail.com', 'ESTRELLA  ', 'COSTA DE ARAUJO  LAVALLE', 1, '38474595', 1),
(338, 'ZINGARIELLO', 'SILVIA DEL VALLE ', '41152345', '1998-03-11', '4941958', 'silvia.delvalle.zing@gmail.com', 'MORENO 236 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41152345', 1),
(339, 'ALBERTTI', 'MARÍA VICTORIA  ', '33578917', '1988-01-10', '4941958', 'mariavictoriaalbertti@gmail.com', 'Ruta 24  ', 'EL CHILCAL  LAVALLE', 1, '33578917', 1),
(340, 'BONARRICO', 'PAMELA FERNANDA  ', '39843480', '1996-02-23', '4941958', 'fernandabonarrico@gmail.com', 'Santa Marina  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '39843480', 1),
(341, 'CASTILLO', 'ROSANA BEATRIZ  ', '23713914', '1974-06-02', '4941958', 'ro.rosanacast@gmail.com', 'Guaymarè 6143 ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '23713914', 1),
(342, 'DERRIGO', 'ANDRÉA VERÓNICA  ', '26000716', '1977-06-13', '4941958', 'andrea.derrigo@gmail.com', 'RUTA 36 638 ', 'TRES DE MAYO  LAVALLE', 1, '26000716', 1),
(343, 'GARRO', 'LORENA ANALÍA  ', '30988623', '1984-05-14', '4941958', 'garrolorena84@gmail.com', 'BCuyúm II M3 C7 ', 'COSTA DE ARAUJO  LAVALLE', 1, '30988623', 1),
(344, 'GOMEZ', 'VANESA ROXANA  ', '26344838', '1978-02-11', '4941958', 'gomezvanezaroxana@yahoo.com.ar', 'BPortal del Sol MC C14 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '26344838', 1),
(345, 'MACHACA', 'LOANA GUADALUPE  ', '40976798', '1998-04-07', '4941958', 'guadanestor@gmail.com', 'URQUIZA  ', 'EL CARMEN  LAVALLE', 1, '40976798', 1),
(346, 'MERCADO', 'ANDREA SOLEDAD  ', '34463195', '1989-08-16', '4941958', 'andreamercado07@gmail.com', 'IRIGOYEN DPTO. 2 ', 'LAVALLE  LAVALLE', 1, '34463195', 1),
(347, 'ORTIZ', 'ROSARIO ERICA NOEMÍ ', '34854351', '1990-06-22', '4941958', 'kase90.eo@gmail.com', 'BBuena Esperanza MD C10 ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '34854351', 1),
(348, 'OYOLA', 'ROCIO PAMELA  ', '41364035', '1998-08-17', '4941958', 'rociooyola43@gmail.com', 'RAMA 8  y Ruta 36 º ', 'TRES DE MAYO  LAVALLE', 1, '41364035', 1),
(349, 'PALACIO', 'ADRIANA GRACIELA  ', '26051550', '1977-08-21', '4941958', 'gracielaadrianapalacio@gmail.com', 'CORTADERAS  Dpto P BTRES OLIVOS  MA C6 ', 'GUSTAVO ANDRE  LAVALLE', 1, '26051550', 1),
(350, 'VERNA', 'BARBARA JULIETA  ', '40561281', '1997-09-02', '4941958', 'babiverna98@gmail.com', 'BCUYÚM I M1 C1 ', 'COSTA DE ARAUJO  LAVALLE', 1, '40561281', 1),
(351, 'VILLEGAS', 'AILIN   ', '37001755', '1993-01-04', '4941958', 'ailinvillegas40@gmail.com', 'BEpi Equén C4 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37001755', 1),
(352, 'ALLENDE', 'NORMA MAYRA  ', '42167653', '1999-01-19', '2615178656', 'mayra.allende.7568@gmail.com', 'MOYANO  ', 'GUSTAVO ANDRE  LAVALLE', 1, '42167653', 1),
(353, 'CASTAÑEDA', 'MARIANA MICAELA  ', '42010959', '1999-02-27', '4941958', 'castanedamariana92@gmail.com', 'FERNANDO VELLOTA  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '42010959', 1),
(354, 'FERNANDEZ', 'DAIANA DESIREE  ', '35908664', '1991-05-15', '4941958', 'fernandezdaii@hotmail.com', 'Publica 8106 ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '35908664', 1),
(355, 'GODA', 'ROCÍO BELÉN  ', '42010958', '1999-04-28', '2634369416', 'rochigoda@gmail.com', 'PEREDA Y SANGUINETTI  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '42010958', 1),
(356, 'GONZÁLEZ', 'MACARENA ANTONELLA  ', '36964611', '1991-08-06', '4941958', 'macaanto.1991@gmail.com', ' BCUYUM II C9 ', 'COSTA DE ARAUJO  LAVALLE', 1, '36964611', 1),
(357, 'GUARDIA', 'ROMINA LILIANA  ', '38758932', '1994-11-01', '4941958', 'rominaliguardia@gmail.com', 'VILLEGAS 122 ', 'LAVALLE  LAVALLE', 1, '38758932', 1),
(358, 'NAVARRO', 'BEATRIZ LILIANA  ', '24947841', '1976-02-04', '4941958', 'elizabhet2015aldana@gmail.com', 'A40 BNEBOT ', 'GUAYMALLEN  GUAYMALLÉN', 1, '24947841', 1),
(359, 'ROMERO', 'TUPA JOSE LUIS ', '95162509', '1993-09-23', '4941958', 'jlrt.tkm@gmail.com', 'Arenales Segura  ', 'JOCOLI VIEJO  LAVALLE', 1, '95162509', 1),
(360, 'SEGURA', 'RIGO GASTON ALEJANDRO ', '40371918', '1996-10-07', '4941958', 'gastonrigo0708@gmail.com', 'BREPUBLICA DEL PERU MF C12 ', 'LAVALLE  LAVALLE', 1, '40371918', 1),
(361, 'VALLECILLO', 'DANIELA BELEN  ', '36582077', '1991-11-07', '155990376', 'dani.vallecillo7@gmail.com', 'YRIGOYEN   ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36582077', 1),
(362, 'AGÜERO', 'ELENA ELIZABETH  ', '34427517', '1989-09-16', '4941958', 'aguero2017elena@gmail.com', 'PUBLICA   ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '34427517', 1),
(363, 'ARENAS', 'CLAUDIA ALEJANDRA  ', '33233990', '1988-01-31', '4941958', 'alearenas0000@gmail.com', 'CARRILSAN PEDRO  ', 'LAVALLE  LAVALLE', 1, '33233990', 1),
(364, 'ARENAS', 'MARIANA BELÉN  ', '31139217', '1984-12-01', '4941958', 'belenarenas213@gmail.com', 'CORREA RUTA NACIONAL 40 KM 3335  ', 'LAVALLE  LAVALLE', 1, '31139217', 1),
(365, 'CANO', 'LILIANA ANDREA  ', '21375882', '1970-01-29', '4941958', 'canoliliana33@gmail.com', '  ', 'LA POLVOSA  LAVALLE', 1, '21375882', 1),
(367, 'CONTI', 'GISELA PAMELA  ', '32283827', '1986-05-22', '4941958', 'giselitaconti@gmail.com', '  ', 'LAVALLE  LAVALLE', 1, '32283827', 1),
(368, 'ESCUDERO', 'ARROYO SOLEDAD DEOLINDA ', '41177634', '1998-01-24', '4941958', 'soledeolindaescudero@gmail.com', 'RUTA 40 KM 3330  ', 'JOCOLI VIEJO  LAVALLE', 1, '41177634', 1),
(369, 'ESPINOZA', 'JESSICA IVANA  ', '36679532', '1992-02-23', '4941958', 'jessicaivana23@gmail.com', 'RUTA 40 KM 3335  ', 'LAVALLE  LAVALLE', 1, '36679532', 1),
(370, 'GARRO', 'DIEGO JESUS  ', '36581976', '1992-12-25', '4941958', 'g.a.r.r.o@hotmail.com', 'BARRIO CUYUM II MANZANA 3 CASA 7  BBARRIO CUYUM II ', 'COSTA DE ARAUJO  LAVALLE', 1, '36581976', 1),
(371, 'JOFRE', 'GARCÍA FLAVIA ALEJANDRA ', '23168279', '1973-10-06', '4941958', 'tavita7310@gmail.com', '  ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '23168279', 1),
(372, 'JOSE', 'MARIA EMILIA  ', '31080803', '1985-02-02', '4941958', 'mariaemiliajose85@hotmail.com', '4941958', '4941958', 1, '31080803', 1),
(373, 'LLANOS', 'JURADO NÉLIDA  ', '92769626', '1980-10-01', '4941958', 'nelillanos@yahoo.com.ar', '4941958', 'GUSTAVO ANDRE  LAVALLE', 1, '92769626', 1),
(374, 'MEDINA', 'ARGENTINO OSVALDO  ', '25090992', '1977-12-12', '4941958', 'mendezcar12678@gmail.com', '  BUNION VECINAL MB C3 ', 'COLONIA ITALIA  LAVALLE', 1, '25090992', 1),
(375, 'MENDOZA', 'CARLOS ALBERTO  ', '25811354', '1977-03-08', '4941958', 'mendezcar12678@gmail.com', 'Bº BELGRANO Dpto5 PB ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '25811354', 1),
(376, 'MONTAÑA', 'MARCELA EDITH  ', '21362117', '1970-04-26', '4941958', 'marcemontana@hotmail.com.ar', '  ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '21362117', 1),
(377, 'NIEVAS', 'ELSA CRISTINA  ', '21687010', '1971-02-03', '4941958', 'cristinanievas71@gmail.com', 'PUESTO SAN LORENZO  Dpto P ', 'LAGUNA DEL ROSARIO  LAVALLE', 1, '21687010', 1),
(378, 'NIEVAS', 'MARISA DAYANA  ', '37924437', '1993-11-20', '4941958', 'millo.nievas.20@gmail.com', '  ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '37924437', 1),
(379, 'OLARTE', 'ANTONELA BELEN  ', '33392161', '1988-08-13', '4941958', 'olarteantonela@yahoo.com', 'MOYANO  ', 'GUSTAVO ANDRE  LAVALLE', 1, '33392161', 1),
(380, 'OSES', 'EDUARDO   ', '35313454', '1991-09-13', '4941958', 'oseseduardo13@gmail.com', 'SECCIÓN CHACRAS EL CHOLAR NEUQUÉN  ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '35313454', 1),
(381, 'QUIROGA', 'SAA JAVIER CRISTIAN ', '33743187', '1989-08-24', '4941958', 'javierquirogatrece@gmail.com', 'DR. AUGUSTO ECHEGARAY  2165 (O) ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '33743187', 1),
(382, 'RIGO', 'CAROLINA ALEJANDRA  ', '21735935', '1970-07-14', '4941958', 'alejandrarigo90@gmail.com', '  BREPÚBLICA DEL PERÚ MF C12 ', 'NO CORRESPONDE  NO CORRESPONDE', 1, '21735935', 1),
(383, 'YUGRA', 'ÁNGEL GABRIEL  ', '33426113', '1987-09-04', '4941958', 'angelyugra24@gmail.com', '4941958', '4941958', 1, '33426113', 1),
(384, 'MANZANO', 'FACUNDO JAVIER  ', '37001765', '1993-02-06', '4941958', 'fakundomanzano@gmail.com', 'Bbarrio Cipre  Mb C1 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37001765', 1),
(385, 'CARRIZO', 'VALERIA ESTEFANIA  ', '36418572', '1992-08-05', '2613094956', 'valeriacarrizo90@gmail.com', 'BARRIO DORREGO SUR SIN NUMERO ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36418572', 1),
(386, 'CHACÓN', 'JÉSICA DEOLINDA  ', '27984574', '1980-08-08', '4941958', 'jechacon57@gmail.com', 'BVIERGEN DE ANDACOLLO ', 'TRES DE MAYO  LAVALLE', 1, '27984574', 1),
(387, 'DOMINGUEZ', 'MARCELA LUCIA  ', '40371967', '1992-07-28', '4941958', 'marcelalucia684@gmail.com', 'BARRIO DORREGO SUR MANZANA A CASA 11 ', '4941958', 1, '40371967', 1),
(388, 'JOFRE', 'FLORENCIA ALDANA  ', '39383256', '1996-05-04', '4941958', 'florjofre26@gmail.com', 'MANZANA B  CASA 23 º BALTO DEL OLVIDO ', 'ALTO DEL OLVIDO  LAVALLE', 1, '39383256', 1),
(389, 'MONTENEGRO', 'SAMUEL IGNACIO  ', '33704450', '1988-05-31', '4941958', 'montenegro_51@hotmail.com', 'BARRIO LA BAJADA MANZANA A CASA 6 ', 'COSTA DE ARAUJO  LAVALLE', 1, '33704450', 1),
(390, 'ORTEGA', 'MARIA SOL  ', '39085800', '1995-08-25', '154705978\n', 'ortegasol2014@hotmail.com', 'BARRIO UNION Y ESFUERZO MANZANA B CASA1 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39085800', 1),
(391, 'VALDENEGRO', 'MORALES PAMELA ELIANA ', '34675120', '1990-04-26', '4941958', 'pamelavaldenegro@yahoo.com', 'BLA ESPERANZA MC C16 ', 'GUSTAVO ANDRE  LAVALLE', 1, '34675120', 1),
(392, 'CABRERA', 'DANIELA FERNANDA  ', '37001594', '1992-09-24', '4941958', 'ferchuu_landia@hotmail.com', 'REMEDIOS ESCALADA  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37001594', 1),
(393, 'CHAVEZ', 'DANIEL EMMANUEL  ', '34565761', '1989-07-12', '4941958', 'emmanuchavez@gmail.com', 'poloni montenegro  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '34565761', 1),
(394, 'CORTEZ', 'DANISA PRISCILA MARISAL ', '40561202', '1997-03-19', '4941958', 'maricortez_97@hotmail.com', '  BFuerza Nueva C12 ', 'LAVALLE  LAVALLE', 1, '40561202', 1),
(395, 'CUELLO', 'FERNANDO ABEL  ', '34279323', '1989-06-28', '155718943', 'n_andito28@hotmail.com', 'BNUEVO VERGEL M C  C 1  ', 'EL VERGEL  LAVALLE', 1, '34279323', 1),
(396, 'GUZMAN', 'YENNIFER   ', '36582281', '1992-05-07', '4941958', 'jennieli_92@hotmail.com', 'DR MORENO ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36582281', 1),
(397, 'MENDIETA', 'MARINA JANET  ', '34677484', '1990-08-26', '4941958', 'mannitajanet90@hotmail.com', 'BARRIO AMISO III MANZANA A CASA 5 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '34677484', 1),
(398, 'SILVA', 'EMILIO DAVID  ', '37002260', '1993-02-10', '4941958', 'emilio.silva93@gmail.com', 'BARRIO AMYSO II MANZANA C CASA 7 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37002260', 1),
(399, 'VIDELA', 'FERNANDO JESUS  ', '35200686', '1990-10-30', '4941958', 'jorciman2@hotmail.com', 'ESPAÑA  278 ', 'LAVALLE  LAVALLE', 1, '35200686', 1),
(400, 'ARIAS', 'GISELA ELIANA  ', '32882747', '1987-08-20', '4941958', 'gisearias07@outlook.com', 'MANZANA A  CASA 7 BLA FLORESTA  ', 'GUSTAVO ANDRE  LAVALLE', 1, '32882747', 1),
(401, 'CORIA', 'DIEGO DAMIAN  ', '35546585', '1991-09-22', '4941958', 'die_cori@hotmail.com', 'SANTA MARINA  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '35546585', 1),
(402, 'CRUZ', 'AGUSTINA ADRIANA  ', '36450731', '1991-07-26', '4941958', 'cruzagus6@gmail.com', 'DORREGO SIN NUMERO FINCA SANTA MARIA ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36450731', 1),
(403, 'DIAZ', 'VERONICA PAOLA DEL VALLE', '30933924', '1984-05-29', '2616988341', 'verodiaz.tati@gmail.com', 'Belgrano  425 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '30933924', 1),
(404, 'GUTIERREZ', 'MARCOS EMANUEL  ', '38785720', '1996-02-07', '4941958', 'emanuelgz@outlook.com', 'BELTRAN  347 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '38785720', 1),
(405, 'JIMENEZ', 'TOMÁS EMANUEL  ', '40873043', '1995-07-20', '\n2613834044', 'tommasjiimenez@hotmail.com', 'MF C 3 BREPUBLICA DE BOLIVIA MF C3 ', 'LAS HERAS  LAS HERAS', 1, '40873043', 1),
(406, 'LUCANIA', 'ANTONELLA MARIEL  ', '40595901', '1996-12-17', '4941958', 'antoluca375@gmail.com', 'MONTENEGRO  ', 'LAVALLE  LAVALLE', 1, '40595901', 1),
(407, 'LUCERO', 'ELBA NATALÍ  ', '31714949', '1985-09-20', '4941958', 'natilucero128@gmail.com', 'GENERAL ACHA  ', 'SAN FRANCISCO  LAVALLE', 1, '31714949', 1),
(408, 'PALMA', 'ANTONIA NOEMI  ', '26386525', '1978-01-07', '4941958', 'antonianoemipalma@gmaill.com', 'BB Solares del Norte M D C8 MD C8 ', 'LAVALLE  LAVALLE', 1, '26386525', 1),
(409, 'VIDELA', 'MARIANELA JACQUELINA  ', '35399118', '1990-02-19', '4941958', 'male351@hotmail.com', 'BARRIO DORREGO SUR MANZANA A CASA 16 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '35399118', 1),
(410, 'AIELLO', 'AGUSTINA AYELEN  ', '35936061', '1991-03-04', '4941958', 'agusay_25@gmail.com', 'MARTINEZ DE ROSAS  5570 BPECORA ', 'GUAYMALLEN  GUAYMALLÉN', 1, '35936061', 1),
(411, 'ALDALLA', 'ALVAREZ SAMIR ABEL ', '38580659', '1995-05-28', '4941958', 'samiraldallafacu@hotmail.com', 'JOSE  HERNANDEZ  70 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '38580659', 1),
(412, 'ARCIBIA', 'BAEZ FEBE  ', '39842711', '1996-06-01', '4941958', 'febeeloney1@gmail.com', 'BARRIO COOPERATIVA LA PEGA   M C C 5 ', 'LA PEGA  LAVALLE', 1, '39842711', 1),
(413, 'ARCOS', 'EUGENIA LORENA  ', '40272072', '1997-09-23', '4941958', 'eugeearcoss@gmail.com', 'RUTA PROVINCIAL 24 S / N ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '40272072', 1),
(414, 'BERGAS', 'MAURICIO ESTEBAN  ', '35908638', '1991-04-14', '4941958', 'meb140491@gmail.com', 'CARRIL A LAVALLE 6701 ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '35908638', 1),
(415, 'BIANCHI', 'AGUSTINA ARIADNA  ', '40373213', '1997-07-03', '4941958', 'agusariadnabianchi@gmail.com', 'CALLE TABANERA  7702 ', 'GUAYMALLEN  GUAYMALLÉN', 1, '40373213', 1),
(416, 'DIAZ', 'IVONNE STEFANIA  ', '40832981', '1997-12-15', '4941958', 'tefiidiaz1997@gmail.com', 'CARLOS MASOERO  ', 'LAVALLE  LAVALLE', 1, '40832981', 1),
(417, 'FERNANDEZ', 'VANESA VERONICA  ', '33462930', '1988-02-18', '4941958', 'patry_19881@hotmail.com', 'BARRIO COLONIA MANZANA B CASA 11 ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '33462930', 1),
(418, 'FERNANDEZ', 'YEMINA   ', '32624766', '1987-01-21', '4941958', 'yemi_mza@hotmail.com', 'Bcolonia segovia  Mb C11 ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '32624766', 1),
(419, 'FERNANDEZ', 'CABRERA CLAUDIA FLORENCIA ', '40907420', '1997-07-17', '4941958', 'florfernandez.afa185@gmail.com', 'REMEDIOS ESCALADA  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '40907420', 1),
(421, 'FORNARI', 'ROMINA MARISA  ', '30082120', '1983-02-09', '4941958', 'romyfornari@gmail.com', 'ORTEGA 10436 ', 'GUAYMALLEN  GUAYMALLÉN', 1, '30082120', 1),
(422, 'FUNES', 'ABALOS Camila Andrea ', '94351705', '1997-12-06', '4941958', 'ies9024_lavalle@yahoo.com.ar', '4941958', '4941958', 1, '94351705', 1),
(423, 'GARAY', 'RAUL MARIANO  ', '25237064', '1976-07-05', '4941958', 'mariano.garay@hotmail.com', 'BAmtaga  Mf C2 ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '25237064', 1),
(424, 'GARCIA', 'SERGIO RAUL  ', '37515206', '1993-08-14', '2616657022', 'sergio.14081993@gmail.com', 'BUENOS VECINOS  5400 BNO ', 'GUAYMALLEN  GUAYMALLÉN', 1, '37515206', 1),
(425, 'GRANADO', 'WANDA BELEN  ', '41884600', '1999-05-15', '4941958', 'wandagranado@gmail.com', 'la Ripiera  ', '4941958', 1, '41884600', 1),
(426, 'GUAQUINCHAY', 'MARCOS FEDERICO  ', '41365990', '1998-08-08', '4941958', 'fede.guaqui.98@outlook.com', 'REPUBLICA DEL PERU MANZANA C CASA 20 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41365990', 1),
(427, 'MACHACA', 'PUQUE JENNIFER CAREN ', '42510351', '1999-05-15', '2613537651', 'jhennifermachaca99@gmail.com', 'LOS ALGARROBOS  ', 'LAS HERAS  LAS HERAS', 1, '42510351', 1),
(428, 'PALLAVICINI', 'VERENA AILEN  ', '39677838', '1996-06-25', '4941958', 'gboobearleeyum96@gmail.com', 'BARRIO TULUMAYA  MANZANA D CASA 10 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39677838', 1),
(429, 'PONT', 'CAROLINA BEATRIZ  ', '40690668', '1997-10-12', '4941958', 'b.pont.2017@gmail.com', 'RUTA 36 KM 2 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '40690668', 1),
(430, 'RIOS', 'MARA ALDANA  ', '41177573', '1998-04-23', '2613825064\n', 'diazmara830@gmail.com', 'CHACÓN ', 'EL CHILCAL  LAVALLE', 1, '41177573', 1),
(431, 'RUIZ', 'JESICA DAIANA  ', '42478471', '1999-06-01', '4941958', 'rjesica385@gmail.com', ' BEL SACRIFICIO ', 'COSTA DE ARAUJO  LAVALLE', 1, '42478471', 1),
(432, 'SANJURJO', 'YÉSICA VALERIA  ', '41366504', '1998-05-17', '4941958', 'yesi_usanjurjo@hotmail.com', 'BELGRANO  º ', 'COSTA DE ARAUJO  LAVALLE', 1, '41366504', 1),
(433, 'SUAREZ', 'FERNANDEZ ROCIO ESTHER ', '40889394', '1997-12-07', '4941958', 'roosuarezz07@gmail.com', 'Pereda  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '40889394', 1),
(434, 'TILA', 'CASTRO CAROLINA LUCRECIA ', '41338536', '1993-01-01', '4941958', 'carolinadbz@gmail.com', 'QUINTANA 00000 BHORNO VARGAS ', 'LAS HERAS  LAS HERAS', 1, '41338536', 1),
(435, 'VARAS', 'MAXIMILIANO VICTOR  ', '41863247', '1991-05-06', '4941958', 'varascarlos23@yahoo.com', 'RUTA 40KM 25 SIN NUMERO ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41863247', 1),
(436, 'VILLENA', 'ALDANA   ', '40371972', '1994-11-28', '4941958', 'ramirezaylen1209@gmail.com', 'FINCA LAS VIUDAS  RUTA 8 BTRES DE MAYO ', 'LAVALLE  LAVALLE', 1, '40371972', 1),
(437, 'ZELARAYAN', 'MAILEN IRINA  ', '41701696', '1999-03-05', '4941958', 'mailen199mza@hotmail.com', 'RUTA PROVINCIAL 24 S / N ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '41701696', 1),
(438, 'AGUADO', 'ANALIA BELEN  ', '39678433', '1997-04-03', '4941958', 'anitaguado97@gmail.com', 'UDAONDO  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '39678433', 1),
(439, 'AGUIRRE', 'ANDREA YAMILA  ', '41004760', '1998-03-25', '4941958', 'andreayamila13@gmail.com', 'MOYANO  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41004760', 1),
(440, 'AMAYA', 'GABRIELA ROMINA  ', '30510796', '1983-11-02', '4941958', 'amayagabriela36@yahoo.com.ar', 'BLos Puelches MA C17 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '30510796', 1),
(441, 'ANDRADA', 'RICARDO DANIEL  ', '32571385', '1986-08-30', '4941958', 'rich.andrada2017@gmail.com', 'Leandro N. Alem  ', 'COSTA DE ARAUJO  LAVALLE', 1, '32571385', 1),
(442, 'BUSTOS', 'FLORENCIA BELEN  ', '38474654', '1996-01-20', '4941958', 'florencia.bustos@outlook.com', 'SANGUINETTI  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '38474654', 1),
(443, 'CARMONA', 'LAURA LOURDES  ', '28797433', '1982-05-02', '4941958', 'lauracarmona851@gmail.com', 'RUTA 34 BLOTEO EL PORVENIR MM C13 ', 'JOCOLI VIEJO  LAVALLE', 1, '28797433', 1),
(444, 'FIOCHETTA', 'FLORENCIA AGUSTINA  ', '41659541', '1998-09-20', '4941958', 'fiochettaflor@gmail.com', 'FERNANDO VELLOTA  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '41659541', 1),
(445, 'GALVAN', 'NATALIA DEOLINDA  ', '30773518', '1984-03-29', '4941958', 'natigalvan1984@gmail.com', 'Bº Jarilleros I Dpto0 P0 MD C8 ', 'JOCOLI VIEJO  LAVALLE', 1, '30773518', 1),
(446, 'GIMENEZ', 'ORIANA YASMIN  ', '42266789', '1999-06-12', '4941958', 'oriana.gimenez12.06@gmail.com.ar', 'MILAGRO Y CAMBIAGGI ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '42266789', 1),
(447, 'GOMEZ', 'ALBA NATALIA  ', '38473094', '1994-10-22', '4941958', 'anatyg9422@gmail.com', 'DORREGO  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '38473094', 1),
(448, 'GUERRERO', 'HORACIO ALBERTO  ', '34417333', '1989-07-19', '4941958', 'vitaminastone@gmail.com', 'COLON ', 'COSTA DE ARAUJO  LAVALLE', 1, '34417333', 1),
(449, 'LLANOS', 'NADYA ABIGAIL  ', '39844112', '1996-07-26', '2613014536\n', 'naanillanos2@gmail.com', 'Morón 27 ', 'COSTA DE ARAUJO  LAVALLE', 1, '39844112', 1),
(450, 'MAN', 'CINTIA DENIS  ', '36582025', '1991-09-04', '4941958', 'cintia_man@hotmail.com', 'BPortal del Sol MA C4 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36582025', 1),
(451, 'MATTIOLI', 'VEDIA ANTONELLA ELIZABETH ', '39239209', '1995-12-08', '4941958', 'antonella081295@gmail.com', 'MATHUS HOYOS  5460 ', 'EL SAUCE  GUAYMALLÉN', 1, '39239209', 1),
(452, 'MORALES', 'CARLA DENIS  ', '36581993', '1992-12-26', '26136581993', 'moralescarla1992@gmail.com', '4941958', 'COSTA DE ARAUJO  LAVALLE', 1, '36581993', 1),
(453, 'MUÑOZ', 'VARAS MARÍA EUGENIA ', '28226809', '1980-11-06', '4941958', 'meugemunoz1980@gmail.com', 'J. Manuel de la Reta 150 ', 'LA PEGA  LAVALLE', 1, '28226809', 1),
(454, 'NIEVAS', 'ERICA ELIZABETH  ', '32171613', '1987-01-07', '4941958', 'ericaenievas@gmail.com', 'Colón 1809 ', 'SAN JOSÉ  GUAYMALLÉN', 1, '32171613', 1),
(455, 'NIEVAS', 'LORENA SOLEDAD  ', '37512875', '1994-09-19', '4941958', 'lorenasoledaevas@gmail.com', 'Urquiza  B FUERZA NUEVA ME C1 ', 'COSTA DE ARAUJO  LAVALLE', 1, '37512875', 1),
(456, 'SALEM', 'SAMIRA RITA  ', '36582161', '1991-12-01', '4941958', 'samys_salem@hotmail.com.ar', 'FRAY LUIS BELTRAN  340 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36582161', 1),
(457, 'RODRIGUEZ', 'ÁBALO INALÉN  ', '35936186', '1991-03-27', '2613459721\n', 'mendoza1900@hotmail.com', 'LA SURGENTE  8260 BELOY TELLO ', 'GUAYMALLEN  GUAYMALLÉN', 1, '35936186', 1),
(458, 'ALÍAS', 'FRANCISCO JAVIER  ', '27144876', '1979-02-22', '4941958', 'franciscojavieralias1@hotmail.com.ar', 'MOISES LEBENSHON 1898 ', 'CIUDAD  CAPITAL', 1, '27144876', 1),
(459, 'DIAZ', 'JUAN GUILLERMO  ', '33965696', '1989-03-05', '4941958', 'guillermitu@hotmail.com', 'GENERAL ACHA    BPUESTO DIAZ ', 'LAVALLE  LAVALLE', 1, '33965696', 1),
(460, 'OYOLA', 'JIMENA NATALIA  ', '37517644', '1993-07-14', '4941958', 'jime_oyola@hotmail.com.ar', 'RAMA 8 ', 'TRES DE MAYO  LAVALLE', 1, '37517644', 1),
(461, 'ROSALES', 'SILVANA NOEMI  ', '29918198', '1983-06-22', '4941958', 'rosales83@hotmail.com.ar', 'URQUIZA.  Dpto15 PG BFUERZA NUEVA MG C15 ', 'COSTA DE ARAUJO  LAVALLE', 1, '29918198', 1),
(462, 'SABINA', 'EDUARDO NICOLAS  ', '38473647', '1994-08-18', '4941958', 'nikosabina@hotmail.com', 'SAN ESTEBAN   ', 'EL PASTAL  LAS HERAS', 1, '38473647', 1),
(463, 'CASTILLO', 'MILENA STHEFANI  ', '38580604', '1995-02-27', '4941958', 'milecas95@hotmail.com', 'BBARRIO SOLARES DEL NORTE C16 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '38580604', 1),
(464, 'GUARDIA', 'DIEGO MARCELO  ', '29073549', '1981-12-18', '4941958', 'diegoguardia31@gmail.com', 'BCUTUM II M3 C13 ', 'COSTA DE ARAUJO  LAVALLE', 1, '29073549', 1),
(465, 'HUMBERT', 'BELEN CRISTINA ALDANA ', '37512956', '1995-04-03', '4941958', 'bubu0309@hotmail.com', 'BCUYUM I M3 C14 ', 'COSTA DE ARAUJO  LAVALLE', 1, '37512956', 1),
(466, 'OLGUIN', 'VALERIA ANGELIA  ', '35196304', '1990-04-25', '4941958', 'florvale15@hotmail.com', 'CAMBIAGGI  9176 ', 'GUAYMALLEN  GUAYMALLÉN', 1, '35196304', 1),
(467, 'SALDAÑA', 'CHIRINOS ELIZABETH  ', '94195137', '1996-01-20', '4941958', 'elisaldana01@gmail.com', '4941958', 'EL CHILCAL  LAVALLE', 1, '94195137', 1),
(468, 'FELIPPE', 'NADIA ESTEFANIA  ', '37512718', '1993-12-11', '2616008327', 'nadiafelippe93@gmail.com', 'BLA FLORESTA MB C9 ', 'GUSTAVO ANDRE  LAVALLE', 1, '37512718', 1),
(469, 'FRIAS', 'LUISA ALEJANDRA  ', '36711348', '1992-03-19', '4941958', 'lui19392@gmail.com', 'RUTA 40 BLOTES CAVERO ', 'LAVALLE  LAVALLE', 1, '36711348', 1),
(470, 'LUCERO', 'FOSCO BEATRIZ DEL VALLE', '39081136', '1995-07-27', '4941958', 'lucerobeatriz1.bl@gmail.com', 'FRAY LUIS  BELTRAN BPORTAL DEL SOL  MD C2 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39081136', 1),
(471, 'MANQUEZ', 'LEILA MICAELA  ', '34786166', '1990-02-08', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'ROSARIO DE LAS LAGUNAS  ', '4941958', 1, '34786166', 1),
(472, 'OVIEDO', 'RODRIGO JESUS  ', '35545950', '1990-12-24', '4941958', 'rodrigojoviedo@gmail.com', 'RIVADAVIA ', 'COSTA DE ARAUJO  LAVALLE', 1, '35545950', 1),
(473, 'ROJAS', 'MARCELA NOELIA  ', '39088879', '1995-04-08', '4941958', 'marcecerojas@hotmail.com', 'GARIBALDI ', 'COSTA DE ARAUJO  LAVALLE', 1, '39088879', 1),
(474, 'SANCHEZ', 'ANDREA BETSABE  ', '37512791', '1993-08-19', '4941958', 'andreabetsabe95@gmail.com', 'MORENO BABENA C348 ', 'COSTA DE ARAUJO  LAVALLE', 1, '37512791', 1),
(475, 'VAZQUEZ', 'MIRANDA ALFREDO NAHUEL ', '39237388', '1996-01-16', '4941958', 'nahuelvasq@gmail.com', 'PASO DE LOS LIBRES  2123 ', 'EL PLUMERILLO  LAS HERAS', 1, '39237388', 1),
(476, 'HERAS', 'FABRIZIO VICTOR  ', '37512772', '1994-04-24', '4941958', 'fabrizz123@gmail.com', 'BELGRANO SIN NUMERO ', 'COSTA DE ARAUJO  LAVALLE', 1, '37512772', 1),
(477, 'LEDDA', 'CASTRO DANIELA ELIANA ', '37269225', '1993-01-07', '4941958', 'notiene@gmail.com', 'CALLE MENDOZA SIN NUMERO  ', 'EL CENTRAL  SAN MARTÍN', 1, '37269225', 1),
(478, 'FERRERO', 'FRANCO RUBEN  ', '37001698', '1993-01-18', '4941958', 'toopo09@hotmail.com', 'VICENTE MORALES  65 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37001698', 1),
(479, 'PONCE', 'SABRINA ANABELA  ', '39381954', '1967-07-03', '4941958', 'sabryponce17@yahoo.com', 'el carmen   ', 'COSTA DE ARAUJO  LAVALLE', 1, '39381954', 1),
(480, 'TARIFA', 'JUAN ELIAS  ', '40217869', '1991-09-09', '4941958', 'juantarifa_22@outlook.com', 'Mauricio Grenon  8520 ', 'PUENTE DE HIERRO  GUAYMALLÉN', 1, '40217869', 1),
(481, 'LUPPO', 'FACUNDO MARTIN  ', '39383225', '1996-03-05', '4941333\n', 'martinluppo@hotmail.com', 'ABRAHAN  TOWM  27 ', 'LAVALLE  LAVALLE', 1, '39383225', 1),
(482, 'ORTEGA', 'CARLOS ENRIQUE  ', '39021615', '1995-03-03', '4941958', 'ortegacarlosenrique96@gmail.com', '9 de julio 0 ', 'LAVALLE  LAVALLE', 1, '39021615', 1),
(483, 'PRADAL', 'ALVARO JOSE  ', '38306717', '1994-04-01', '4941958', 'alvaro_pradal@hotmail.com', 'SARMIENTO  54 ', 'LAVALLE  LAVALLE', 1, '38306717', 1),
(484, 'SECOTARO', 'ANDRES FRANCISCO  ', '41004278', '1998-02-16', '4941958', 'andressecotaro@gmail.com', 'DORREGO   ', 'EL VERGEL  LAVALLE', 1, '41004278', 1),
(485, 'GARAY', 'ANGEL DAVID  ', '38580982', '1994-06-12', '4941958', 'angelgaray59@gmail.com', 'BEl Futuro MC C19 ', 'EL CHILCAL  LAVALLE', 1, '38580982', 1),
(486, 'GOMEZ', 'SOSA GONZALO DANIEL ', '36712022', '1992-08-05', '4941958', 'gonzalomas_92@hotmail.com', 'Ruta 50 Km 934 ', 'VILLA NUEVA DE LA PAZ  LA PAZ', 1, '36712022', 1),
(487, 'MORALES', 'LUCAS ALBERTO  ', '37779677', '1994-02-07', '2614177366\n', 'moraleslucas94@gmail.com', 'BPortal del Sol MB C5 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37779677', 1),
(488, 'OLMEDO', 'FRANCO GABRIEL  ', '37779613', '1993-12-09', '4941958', 'folmedo1993@gmail.com', 'ABRAHAN  TOWN  79 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37779613', 1),
(489, 'VASQUEZ', 'RIVERA ROGER GIOVANI ', '39843387', '1995-11-19', '4941958', 'gvasquezrivera1995@gmail.com', 'Ruta 34 y San Juan  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39843387', 1),
(490, 'VONKUNOSCHY', 'MARCELO MILTON  ', '25820769', '1977-03-22', '4941958', 'marcevonku@gmail.com', 'Emilio Civit  27 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 3, '25820769', 1),
(491, 'CAMARGO', 'TOMÁS EZEQUIEL  ', '42509171', '1999-06-14', '4941958', 'tommytdfw@gmail.com', 'Ruta 24   ', 'COLONIA SEGOVIA  GUAYMALLÉN', 1, '42509171', 1),
(492, 'MARTINEZ', 'ALDO GABRIEL  ', '39081181', '1995-09-26', '4941958', 'twbgamez@gmail.com', 'MAIPU 185 BAmalia ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '39081181', 1),
(493, 'BARROSO', 'ANDREA CAROLINA  ', '41191873', '1998-08-28', '4941958', 'caro_barroso1998@hotmail.com', 'BRACERAS   ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '41191873', 1),
(494, 'DIAZ', 'DAVID RODRIGO  ', '33053267', '1987-07-16', '4941958', 'neon_genesis_1607@hotmail.com', 'BAmyso I ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '33053267', 1),
(495, 'DIAZ', 'DEBORAH M.  ', '36279719', '1991-11-01', '4941958', 'magalidiazdelgado@gmail.com', 'BPortal del sol MA C12 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '36279719', 1),
(496, 'FUENTES', 'YAMILA ADRIANA  ', '38474669', '1996-10-31', '4941958', 'yami.fuentes15@hotmail.com', 'Belgrano 700 ', 'COSTA DE ARAUJO  LAVALLE', 1, '38474669', 1),
(497, 'GUIRADO', 'SANTIAGO ADRIAN  ', '41418145', '1998-12-04', '4941958', 'theboudica98@gmail.com', 'DORREGO   ', 'EL VERGEL  LAVALLE', 1, '41418145', 1),
(498, 'OLMOS', 'LAUTARO GASTON  ', '41155173', '1998-05-10', '4941958', 'lauta555@hotmail.com', 'BPortal delSol ME C9 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41155173', 1),
(499, 'VAZQUEZ', 'CARDOZO DEXTMAN EDGARDO ', '93495801', '1991-07-25', '4941958', 'dxetmanvazquez@gmail.com', 'Roque Montenegro  ', 'JOCOLI VIEJO  LAVALLE', 1, '93495801', 1),
(500, 'ALBARRACIN', 'KEILA DE JESUS ', '36711855', '1992-03-26', '4941958', 'keiladejesus1@hotmail.com', 'Quiroga  ', 'LAVALLE  LAVALLE', 1, '36711855', 1),
(501, 'BECERRA', 'TAMARA MACARENA B. ', '39603182', '1996-08-19', '4941958', 'belenbecerra606@gmail.com', 'Bº LA FLORESTA MA C15 ', 'GUSTAVO ANDRE  LAVALLE', 1, '39603182', 1),
(502, 'BOSCHI', 'ANA CECILIA  ', '27411239', '1979-05-30', '4941958', 'ceciliaboschi54@gmail.com', 'Italia 45 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '27411239', 1),
(503, 'DIAZ', 'MARIQUENA CELESTE  ', '40270146', '1996-06-02', '4941958', 'sandro.celeste.11@gmail.com', 'DORREGO BSOLARES DEL NORTE MB C4 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '40270146', 1),
(504, 'FERNANDEZ', 'JÉSICA BELÉN  ', '39086791', '1995-06-08', '4941958', 'jesicafernandez108@gmail.com', 'Paso Hondo  5855 ', 'EL BORBOLLÓN  LAS HERAS', 1, '39086791', 1),
(505, 'FLORES', 'GABRIELA MAGDALENA  ', '35560299', '1991-03-21', '2616209718', 'floresgaby_91@hotmail.com', 'San Esteban  ', 'EL PASTAL  LAS HERAS', 1, '35560299', 1),
(506, 'MAYORGA', 'ANDREA ROMINA  ', '34677452', '1990-03-10', '4941958', 'andyromimayorga90@gmail.com', 'Irigoyen  ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '34677452', 1),
(507, 'ORTIZ', 'ESTEFANIA MARIANA  ', '43076943', '1997-03-12', '4941958', 'ortinz201@houtlook.com', 'Bº TULUMAYA MD C7 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '43076943', 1),
(508, 'PICCO', 'LELIA ROMINA GISELA ', '36279245', '1991-03-07', '4941958', 'rominapicco11@yahoo.com.ar', 'CALLE GENERAL ACHA  SIN NUMERO ', 'COLONIA ITALIA  LAVALLE', 1, '36279245', 1),
(509, 'RAMOS', 'ALEJANDRA JENIFER  ', '39383220', '1995-09-13', '4941958', 'jenniramos15@hotmail.com', 'RUTA 34 BSANTA CECILIA MF C15 ', 'LAVALLE  LAVALLE', 1, '39383220', 1),
(510, 'FERNANDEZ', 'PATRICIA RAQUEL  ', '22322032', '1971-04-20', '4941958', 'patrifernandez04@gmail.com', 'CARRIL CHIMBAS  KM. 33 ', 'EL CENTRAL  SAN MARTÍN', 1, '22322032', 1),
(511, 'GOMEZ', 'Silvia Graciela  ', '20111611', '1968-11-30', '4941958', 'gracielagomez35@yahoo.com.ar', 'Genioli  Dpto0 P0 ', 'LAS VIOLETAS  LAVALLE', 1, '20111611', 1),
(512, 'HERRERA', 'ANAHI ESTEFANIA INÉS ', '33965689', '1989-02-13', '4941958', 'anahietefania@gmail.com', 'BELGRANO 372 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '33965689', 1),
(513, 'VERA', 'ANSALDO PRISCILA RAQUEL ', '37781630', '1993-09-05', '4941958', 'verapriscilaraquel@gmail.com', 'Villegas 400 BEl Mirador ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37781630', 1),
(514, 'ACOSTA', 'GISEL ESTEFANIA  ', '33704442', '1988-04-18', '4941958', 'gisestefiacosta@gmail.com', 'Huarpes 119 Dpto0 P0 BVILLA TULUMAYA ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '33704442', 1),
(515, 'AGÜERO', 'LILIANA INES  ', '21947975', '1970-12-11', '4941958', 'lilinaines@gmail.com', 'BSanta Cecilia II MI C12 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '21947975', 1),
(516, 'BUSTOS', 'DAIANA MARIEL  ', '37001938', '1993-09-28', '4941958', 'dayana_dayana603@hotmail.com', 'SANGUINETTI  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '37001938', 1),
(517, 'FERRER', 'MAYRA AILEN  ', '37001509', '1992-06-09', '4941958', 'Ailenferrer9692@gmail.com', 'Ruta Provincial 24 895 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '37001509', 1),
(518, 'NARVAEZ', 'LAURA DANIELA  ', '28797355', '1982-01-23', '4941958', 'laudanar@gmail.com', 'HUARPE  113 ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '28797355', 1),
(519, 'OLIVERA', 'MARIA DEL CARMEN ', '33836137', '1988-07-12', '4941958', 'mariaoliveradd88@gmail.com', 'Ruta 24  ', 'EL CHILCAL  LAVALLE', 1, '33836137', 1),
(520, 'ROJAS', 'BIANCA ANTONELLA  ', '39601979', '1996-05-03', '4941958', 'rojasbianca870@gmail.com', 'CALLE NUÑEZ   ', 'COSTA DE ARAUJO  LAVALLE', 1, '39601979', 1),
(521, 'VILLEGAS', 'JANET MARIBEL  ', '34854391', '1990-09-24', '4941958', 'madeleyvillegas@gmail.com', 'ORTIZ BASUALDO   ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '34854391', 1),
(522, 'BARRIENTOS', 'SOLIZ FRANCO JAVIER ', '38912016', '1995-03-24', '4941958', 'franco9562@gmail.com', 'CALLE CENTENARIO   ', 'LAVALLE  LAVALLE', 1, '38912016', 1),
(523, 'CORTEZ', 'CECILIA VICTORIA  ', '38474603', '1995-10-30', '4941958', 'cortezcecilia67@gmail.com', 'ORTIZ BASUALDO  ', 'NUEVA CALIFORNIA  SAN MARTÍN', 1, '38474603', 1),
(524, 'DOMINGUEZ', 'LEONARDO RAUL  ', '36582263', '1992-05-20', '4941958', 'leo_rdominguez@yahoo.com.ar', 'BLOS PUELCHES ME C10 ', 'LAVALLE  LAVALLE', 1, '36582263', 1),
(525, 'JIMENEZ', 'JANET MARIANELA  ', '39381940', '1995-08-13', '4941958', 'jannijimenez13@gmail.com', 'QUIROGA   ', 'GUSTAVO ANDRE  LAVALLE', 1, '39381940', 1),
(526, 'LOPEZ', 'GUZMAN VICTOR ALEJANDRO ', '39379939', '1995-06-17', '4941958', 'guzmanvictor719@gmail.com', 'SAN ESTEBAN  ', 'EL PASTAL  LAS HERAS', 1, '39379939', 1),
(527, 'MONTENEGRO', 'GLORIA ALEJANDRA  ', '22469506', '1972-04-14', '4941958', 'montenegroga14@gmail.com', 'BSANTA MARIA MC C14 ', 'COSTA DE ARAUJO  LAVALLE', 1, '22469506', 1),
(528, 'OCHOA', 'DAIANA DAMARIS  ', '37270472', '1993-07-03', '4941958', 'daianaochoa28@gmail.com', 'UNO BVEINTIDOS  DE ABRIL C14 ', 'COSTA DE ARAUJO  LAVALLE', 1, '37270472', 1),
(529, 'PELLEGRINI', 'LUCAS GABRIEL  ', '40823058', '1997-11-28', '4941958', 'lukspell28@hotmail.com', '', '', 1, '40823058', 1),
(530, 'VERA', 'ANSALDO NAHIR TATIANA ', '41699475', '1998-03-28', '4941958', 'tatianaansaldo@gmail.com', 'Segundo Callejón  BEl mirador ', 'VILLA TULUMAYA CIUDAD  LAVALLE', 1, '41699475', 1),
(539, 'CARRIZO', 'ADRIANA', '18083265', NULL, NULL, 'laritaniscola@gmail.com', NULL, NULL, 2, '18083265', 0),
(540, 'CASTILLO', 'SEBASTIAN', '34001234', NULL, NULL, 'sebacastillofdi@gmail.com', NULL, NULL, 3, '31319719', 1),
(541, 'JIMENEZ', 'JANET', '30920613', NULL, NULL, 'jannijimenez13@gmail.com', NULL, NULL, 3, 'Janni940', 1),
(545, 'RAMOS', 'DIEGO', '28600466', '1981-08-07', '2615693013', 'diegoramos1944@gmail.com', 'Dr. Moreno 158 depto 9', 'LAVALLE', 4, '66400682', 1),
(547, 'ZAGAGLIA ', 'DEBORAH', '32510730', NULL, NULL, 'deborahbzagaglia@gmail.com', NULL, NULL, 3, '32510730', 1),
(548, 'ALONSO', 'GABRIELA', '29333981', NULL, NULL, 'gabialonso82@yahoo.com.ar', NULL, NULL, 6, '29333981', 0),
(552, 'MARTINEZ MANZO', 'Mariano', '55000000', '2000-01-01', '4941958', 'ies9024@gmail.com', 'calle 1', 'Aqui nomas', 1, NULL, NULL),
(553, 'REGGIO ', 'Polaco', '55000001', '1956-01-01', '123', 'polaco@reggio.com', 'Ahí', 'Sito', 1, NULL, NULL),
(555, 'OLAIZ', 'MARCELO', '28340029', NULL, NULL, 'marcelo_olaiz@yahoo.com.ar', NULL, NULL, 4, '28340029', 0),
(556, 'FERNANDEZ', 'LEANDRO', '36753316', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(558, 'NAVARRA PREZIOSA', 'MARÍA GUADALUPE', '42793563', NULL, NULL, 'maria.preziosa2020@gmail.com', NULL, NULL, 3, '42793563', 1),
(559, 'MEDINA', 'ANTONELLA AYELEEN', '44133566', '2002-04-23', '2615860553', 'anto17medina@gmail.com', 'ARENALES S/N B°:NO ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(560, 'ABALLAY', 'JULIA ELIZABETH', '44538594', '1996-08-02', '2615631816', 'teresarosaaballay40@gmail.com', 'SAN JUAN S/N¦  ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(561, 'CALLAMULLO MAMANI', 'Daniela Karen', '93992614', '1995-12-16', '2614614742', 'danycallamullo@gmail.com', '1 13 B°:22 de Abril ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(562, 'CAÑAS', 'MARILINA MARIANELA', '30859090', '1985-02-16', '2614614742', 'marilinamarianela@gmail.com', 'MZNA I C 10   ', '', 1, NULL, NULL),
(563, 'CHIRINO', 'JULIETA MARIANELA', '43943114', '2002-01-11', '2614614742', 'chirinojulietamarianela@gmail.com', 'SAN MARTIN S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(564, 'FARRUGIA', 'LORENA BEATRIZ', '32510808', '1986-12-12', '2614614742', 'farruggialorena@gmail.com', 'EDU.ESPECIAL', '', 1, NULL, NULL),
(565, 'FERNANDEZ BUSTO', 'MAIRA DANIELA', '36279032', '1991-07-12', '2614614742', 'fernandezbustom@gmail.com', 'EDU.ESPECIAL', '', 1, NULL, NULL),
(566, 'FERNANDEZ BUSTO', 'YAMILA MAGALI', '39237788', '1993-09-23', '2614614742', 'yamilafernandez1035@gmail.com', 'Canarios S/n B°:PARAGUAY M:J C:11 ', 'GUAYMALLEN - GUAYMALLÉN', 1, NULL, NULL),
(567, 'FRETES', 'CELINDA ELIZABETH', '44908709', '2003-03-06', '2614614742', '4254celindafretes@gmail.com', 'Puesto Los Ralos S/N B°:000000 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(568, 'HERRERA GONZALEZ', 'ALEJADRA HAYDEE', '26298091', '1978-02-09', '2614614742', 'alehhp@gmail.com', 'B°:Agua y Energía XV M:C C:10 ', 'LUZURIAGA - MAIPÚ', 1, NULL, NULL),
(569, 'MARIN', 'MILAGROS EUGENIA', '45361419', '2003-06-27', '2614614742', 'miliemarin03@gmail.com', 'VILLANUEVA S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(570, 'MARTINEZ', 'MAGALI MARIA', '45360351', '2003-11-28', '2613660766', 'magamartinez2003@gmail.com', 'FERRARI 11385 ', 'LOS CORRALITOS - GUAYMALLÉN', 1, NULL, NULL),
(571, 'NAVARRA PREZIOSA', 'MAXIMO JOAQUIN', '44124297', '2002-05-20', '261156721868', 'laurapreziosa@gmail.com', 'B°:EPIEQUEN  M:C C:3 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(572, 'PEREZ GROSSO', 'NICOLE ANTONELLA', '42084485', '2000-10-20', '2614614742', 'grosoveronica5@gmail.com', 'IRIGOYEN  289 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(573, 'QUIROGA', 'ANA LAURA', '44746181', '2002-10-25', '2614614742', 'analauraquiroga388@gmail.com', 'Ruta 24  S/N', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(574, 'RIVAS', 'MARIA CLAUDIA', '21370397', '1970-10-13', '2614614742', 'claudiarivas890@gmail.com', 'Francisco de la Reta 1172 Dpto:0 P:0 ', 'SAN JOSÉ - GUAYMALLÉN', 1, NULL, NULL),
(575, 'SARMIENTO', 'YAMILA SHEILA', '40660895', '1997-04-17', '2614614742', 'ibarbourou04.certif@gmail.com', 'MANZANA F  CASA 15 B°:SANTA CECILIA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(576, 'SOSA', 'NATALIA EVELIN SOLEDAD', '37512715', '1993-12-03', '2614614742', 'evelynsosa7777@gmail.com', '', '', 1, NULL, NULL),
(577, 'ALVARADO', 'LOURDES JANET', '43829842', '2001-09-29', '2614614742', 'andreaveronicaalvarado30@gmail.com', 'Felipe Peña S/N ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(578, 'CORNEJO', 'MELANIE DENISE', '45139611', '2003-09-13', '2616490562', 'melaniedenisecornejo@gmail.com', 'EUGENIO MONTENEGRO S/Nª B°:FINCA DON JOAQUIN ', 'LAS VIOLETAS - LAVALLE', 1, NULL, NULL),
(579, 'DE LA CALLE MUIRRAGUI', 'ERIKA MARYLINE', '96090132', '2001-06-08', '2614614742', 'erikadelacalle@gmail.com', 'BUENOS AIRES 5680 ', 'GUAYMALLEN - GUAYMALLÉN', 1, NULL, NULL),
(582, 'GUARDIA', 'MARIANELA AIMÉ', '43543231', '2001-05-26', '2614614742', 'aimeguardia961@gmail.com', 'Ruta 36 1047 ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(583, 'HERRERA RODRIGUEZ ', 'GISEL ISABEL', '39239272', '1996-01-04', '2614614742', 'herreragisel177@gmail.com', 'Vicente Morales  278 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(584, 'MOLINA', 'LUDMILA ANALÍA', '42714456', '2001-10-09', '2614614742', 'ludmimolina@gmail.com', 'PUESTO ALTO DE LA JULIANA ', 'SAN JOSÉ - LAVALLE', 1, NULL, NULL),
(585, 'REYNOSO', 'EVELYN MILAGROS', '44904026', '2003-08-08', '2616705260', 'humbertoalfredoreynoso@gmail.com', 'B°:FUERZA NUEVA M:C C:34 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(589, 'TORANZO', 'LUCILA YAMILA', '45360919', '2000-03-06', '2612657935', 'luciitoranzo@gmail.com', 'BELGRANO S/N B°:CUYÚM  M:C C:13 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(590, 'VERA', 'ADRIANA ANGELA', '28797253', '1981-08-06', '2614614742', 'adrianavera278@gmail.com', 'DR. MORENO  465 ', '', 1, NULL, NULL),
(591, 'VIDELA', 'MAYRA MALENA', '44123558', '2002-01-25', '2614614742', 'orosmayra558@gmail.com', 'SANTAMARINA Y TALAVERA S/N', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(592, 'VILLEGAS', 'CARLA FLORENCIA', '42167698', '1999-12-12', '2614614742', 'karlacjs12@gmail.com', 'COSTA DE ARAUJO - LAVALLE', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(593, 'VILLEGAS', 'DEOLINDA ORIANA', '44904042', '2003-09-19', '2616164105', 'villegasanaclara22@gmail.com', 'B°:FUERZA NUEVA M:C C:7 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(594, 'ALMONACÍ', 'JESÚS REINALDO', '25934979', '1997-07-21', '2614614742', 'jra010.ja@gmail.com', 'Roca  4650 ', 'VILLA NUEVA - GUAYMALLÉN', 1, NULL, NULL),
(595, 'BIVEROS', 'LOURDES RAQUEL', '45023422', '2003-05-22', '2616476323', 'lourdesbiveros422@gmail.com', '9 DE JULIO S/N B°:LA PALMERA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(596, 'CAMARGO', 'Joaquín Gastón', '35196488', '1991-01-08', '2614614742', 'joakocamargo91@gmail.com', '', '', 1, NULL, NULL),
(598, 'CERECEDA GODOY', 'EMILIO CRISTOPHER', '45529728', '2004-03-06', '2616969444', 'emiliocereceda478@gmail.com', 'SAN MARTÍN 4617', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(602, 'CUEVAS', 'BÁRBARA NADYA', '39085745', '1995-08-06', '2614614742', 'BARBY4131@GMAIL.COM', 'B°:LOTEO CAVERO ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(604, 'CEBALLOS', 'Adrian Antonio', '22469447', '1971-09-21', '2614614742', 'aac.bobinados@gmail.com', 'B°:JARILLEROS II M:A C:4 ', 'JOCOLI VIEJO - LAVALLE', 1, NULL, NULL),
(608, 'FERNANDEZ', 'BRENDA NADIN', '44904057', '2003-09-22', '2616129181', 'paredesmariela73@gmail.com', 'MOYANO ESTE S/N B°:SAN CAYETANO M:A C:1 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(609, 'GIANGIULIO BENOL', 'SABRINA ABIGAIL', '45360985', '2004-03-01', '2612455241', 'mirthazanni@hotmail.com', 'B°:COSTA DE ARAUJO M:C C:7 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(610, 'GOMEZ', 'Fabian Exequiel', '41191877', '1998-11-05', '2614614742', 'gomezexe@gmail.com', '', '', 1, NULL, NULL),
(611, 'Gonzales', 'GONZALEZ VERONICA', '35547421', '1991-01-28', '2614614742', 'verito2616994961@gmail.com', '', '', 1, NULL, NULL),
(612, 'GONZALEZ', 'ALDANA DANIELA', '44905013', '2003-02-08', '2612422507', 'galdana092@gmail.com', 'DORREGO S/N B°:FINCA IHPOLINO ', 'LAS VIOLETAS - LAVALLE', 1, NULL, NULL),
(613, 'LISANTTI', 'MARCOS GONZALO', '45876431', '2004-04-03', '2616022020', 'gonzalolisantti@gmail.com', 'REMEDIOS DE ESCALADA 2549 ', 'EL PLUMERILLO - LAS HERAS', 1, NULL, NULL),
(614, 'MONTENEGRO', 'CELINA SUSANA', '45361401', '2003-03-13', '2614614742', 'alexander.montenegro.12327@gmail.com', 'FINCA NOVER 00 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(615, 'MOYANO', 'DEBORA ANGELICA', '28838201', '1981-02-01', '2614614742', 'angelicamoyano35@gmail.com', 'M: 12 - C: 8 0 ', '', 1, NULL, NULL),
(616, 'PAREDES', 'JIMENA AGUSTINA', '43829832', '2001-01-18', '2614614742', 'claudiaparedes551@gmail.com', 'LA MERCED s/n ', 'EL PLUMERO - LAVALLE', 1, NULL, NULL),
(617, 'QUIROGA', 'SOL LEILA', '45448263', '2004-01-27', '2617058935', 'jofresol840@gmail.com', 'MA - C13 B°:NEBOT ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(618, 'RAMIREZ', 'Ayelén Cecilia', '41177618', '1998-03-31', '2614614742', 'ayeramirez.31@gmail.com', '', '', 1, NULL, NULL),
(619, 'RIOS', 'MAGALI YOLANDA', '43943106', '2001-11-25', '2617177047', 'magalirios980@gmail.com', 'CALLEJÓN COMUNERO  ALTO DEL OLVIDO  S/N ', 'ALTO DEL OLVIDO - LAVALLE', 1, NULL, NULL),
(620, 'SEGUEL', 'SARENA', '50666527', '2002-03-22', '2614614742', 'sarenaseguel@gmail.com', '', '', 1, NULL, NULL),
(621, 'SIERRA', 'CLAUDIA DAIANA', '38306705', '1994-06-02', '2616940450', 'daysierra575@gmail.com', 'ITALIA S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(622, 'TRASLAVIÑA', 'LAUREANA GUADALUPE', '45529775', '2004-05-12', '2617009836', 'laureanatraslavina@gmail.com', 'B°:TUPAC AMARU M:F C:14 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(623, 'VILLEGAS', 'LUCÍA MILAGROS', '43749608', '2001-11-13', '2613632099', 'sguakinchay@gmail.com', 'B°:Fuerza Nueva M:H C:8 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(624, 'Avila Fernandez', 'Karen Estefanía', '40561142', '1997-07-08', '2614614742', 'karen_avila_08@hotmail.com', 'callejon Bersolini lote 28 B°:El Chical ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(625, 'BUSSO', 'RENZO VALENTÍN', '45023429', '2003-10-28', '2616751867', 'ramon130173@hotmail.com', 'B°:SOLARES DEL NORTE  M:F C:10 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(626, 'CABRERA', 'MAURICIO ALAN', '39677900', '1996-02-02', '2614614742', 'cabremaury90@gmail.com', '', '', 1, NULL, NULL),
(627, 'CAÑETA', 'KAREN ANTONELA', '44747306', '2003-01-21', '2614614742', 'dorisquiroga@gmail.com', 'SIN NOMBRE SIN NUMERO Dpto:0 P:0 B°:Bº COLONIA SEGOVIA I M:C C:25 ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(628, 'CAVERO', 'ANGELES DANISA YASMÍN', '46397712', '2001-09-28', '2614614742', 'vargasangeles161@gmail.com', 'Ruta 40 KM 27  ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(629, 'CHACON', 'FRANCISCO GABRIEL', '44405371', '2002-05-10', '2614614742', 'gustavochacon820@yahoo.com.ar', 'RUTA 36 64 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(630, 'D´AMBROSIO', 'ALEXANDRA ANABEL', '42009064', '1998-07-28', '2614614742', 'anabel064@outlbook.com', 'BARRIO BELGRANO SIN NUMERO ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(631, 'FERNANDEZ', 'BRIAN RAÚL', '43417672', '2000-12-19', '2614614742', 'briaianf7777@gmail.com', ' MA C3 B°:NEBOT ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(633, 'FUENTES', 'MICAELA NOELIA', '42084475', '1998-12-27', '2614614742', 'mfuentes2017.ni@gmail.com', '', '', 1, NULL, NULL),
(634, 'FUNES', 'IRINA BIANCA', '45531918', '2003-09-26', '2615328350', 'irinafunes@jbalberdi4026.edu.ar', '', 'CARRODILLA - LUJÁN DE CUYO', 1, NULL, NULL),
(635, 'GIANNONE', 'Micaela Ayelen ', '40558494', '1997-07-01', '2614614742', 'micaelaayelengiannone@gmail.com', '', '', 1, NULL, NULL),
(636, 'GIL GODOY', 'MARÍA JOSÉ', '42187819', '1999-08-30', '-5077422', 'majo4139@gmail.com', '', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(637, 'GONZALEZ', 'CAROLINA DANIELA', '41252234', '1998-06-25', '2614614742', 'karogonzalez803@gmail.com', '', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(638, 'GUZMAN', 'DAVID', '48049524', '2001-11-22', '2614614742', 'davidguzman2001.19@gmail.com', '  B°:B° NUEVO VERGEL MD-C2 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(639, 'JAIME GUIÑAZÚ', 'Gonzalo Jeremias ', '44124275', '2001-12-14', '2614614742', 'jjeremias26@gmail.com', '', '', 1, NULL, NULL),
(640, 'LACOUME LEMBEYE', 'VICTOR LUIS', '29771942', '1983-01-18', '2614614742', 'victorlacoume@gmail.com', 'SAN MARTIN S/Nº ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(641, 'LISANTTI', 'MARCELO TOMÁS', '41368500', '1998-10-18', '2616022020', 'marcelo.lisantti18@gmail.com', 'FRAY LUIS BELTRÁN 2948  ', 'LAS HERAS - LAS HERAS', 1, NULL, NULL),
(642, 'LLANOS', 'ROMINA ANTONELA', '44309203', '2001-12-20', '2634320718', 'rominallanosz.com.ar@gmail.com', 'CHACON S/N ', 'EL CHILCAL - LAVALLE', 1, NULL, NULL),
(643, 'MARTINEZ ', 'Emanuel ', '39678485', '1997-04-29', '2614614742', 'emanuelmartinezramo97@outlook.com', '', '', 1, NULL, NULL),
(644, 'MARTINEZ', 'SABRINA ABRIL', '45587608', '2004-01-19', '2615777128', 'abrilsabrina19@gmail.com', 'B°:TUPAC AMARU M:M: C C:6 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(645, 'MAUNA', 'KAREN VANINA', '44905092', '2003-06-04', '2615588859', 'karemauna500@gmail.com', 'SAN JUAN  S/N ', 'SAN FRANCISCO - LAVALLE', 1, NULL, NULL),
(646, 'MAYORGA', 'MARTÍN LEONEL', '45360923', '2004-01-19', '2615784613', 'ceferinogustavommayorga73@gmail.com', 'B°:FUERZA NUEVA M:F C:13 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(647, 'MERCADO', 'GIMENA MELANIE BELAN', '39085776', '1995-12-25', '2614614742', 'melanimercado76@gmail.com', '', '', 1, NULL, NULL),
(648, 'MORAN', 'SOFIA BELÉN', '45587626', '2004-01-09', '2613623175', 'carazo223@gmail.com', 'B°:OSCAR MENDOZA M:A C:5 ', 'SAN FRANCISCO - LAVALLE', 1, NULL, NULL),
(649, 'MUÑOZ', 'CAMILA', '40371988', '1997-02-19', '261156718976', 'milimunoz.pe@gmail.com', 'NAVARRETE S / N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(650, 'PALMA', 'LISA MARÍA ALEJANDRA', '45360986', '2004-03-09', '261155128331', 'arielpalma144@gmail.com', 'RUTA PROVINCIAL  24 S/N ', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(651, 'PEDRAZA', 'MALAQUIAS ABRAHAM', '44058880', '2001-10-23', '2612731875', 'malaquiaspedraza@gmail.com', 'Ruta 40 Km 3338 B°:EL PORVENIR ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(652, 'REGGIO', 'GIULIANA ESTEFANÍA', '44438809', '2002-06-25', '2615396042', 'estelapaileman@gmail.com', 'BELGRANO  676 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(653, 'REYNOSO', 'LEONARDO EZEQUIEL', '42063637', '1999-07-01', '2614614742', 'leo99reynoso@gmail.com', '  B°:EL PARAISO M A C 21 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(654, 'RIOS', 'ROSAURA EVANGELINA', '30270918', '1982-12-04', '2614614742', 'sg6706495@gmail.com', 'B°:B° ALTO DEL OLVIDO M:C C:8 ', 'ALTO DEL OLVIDO - LAVALLE', 1, NULL, NULL),
(655, 'ROCHE', 'RAUL', '33517461', '1987-08-20', '2614614742', 'raulricardoroche@gmail.com', 'GODOY CRUZ  281 ', 'LAS VIOLETAS - LAVALLE', 1, NULL, NULL),
(656, 'ROMERO', 'IGNACIO GABRIEL', '45529727', '2004-02-16', '2612428410', 'mechaamaya04@gmail.com', 'MA C6 B°:TUPAC AMARU ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(657, 'ROMERO MAMANI', 'MALENA', '44309340', '2002-08-23', '2614614742', 'romeromalena460@gmail.com', '', 'FRAY LUIS BELTRÁN - MAIPÚ', 1, NULL, NULL),
(658, 'SANDOVARES', 'ALDANA MARÍA', '45587584', '2004-03-18', '2634393807', 'veronicanovoav331@gmail.com', 'Nanclares s/n ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(659, 'SAYAS', 'KEILA QUIMEY', '45361031', '2004-04-19', '2613256095', 'mariana.ch1983@gmail.com', 'B°:CUYUM I M:C C:5 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(660, 'TILA HUALLPA', 'MAXIMO AXEL', '43750076', '2001-09-17', '2614703751', 'axeltila17@gmail.com', 'CALLEJÓN BAUDRÓN ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(663, 'VARAS', 'CARLOS RAFAEL', '44905023', '2003-05-23', '2614614742', 'varascarlos720@gmail.com', 'Ruta 40  KM 3322 s/n ', 'EL PASTAL - LAS HERAS', 1, NULL, NULL);
INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `dni`, `fechanacido`, `telefono`, `mail`, `domicilio`, `localidad`, `idrol`, `clave`, `estado`) VALUES
(664, 'VIDELA ', 'Florencia Macarena ', '40595383', '1995-03-28', '2614614742', 'florenciavidela885@gmail.com', '', '', 1, NULL, NULL),
(665, 'VILURON', 'Wanda Sthefani', '38580598', '1995-03-03', '2614614742', 'viluronwendy@gmail.com', '', '', 1, NULL, NULL),
(666, 'YACANTO GUZMAN', 'BRAIAN MARTÍN', '43489779', '2001-05-30', '2613891075', 'emiliaguzman@hotmail.com', 'B°:BELGRANO M:E C:19 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(667, 'ZABALA DONOSO', 'TERESA DAIANA', '38414374', '1994-08-05', '2614614742', 'daizabala09@gmail.com', 'garibaldi s/n ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(668, 'AGÜERO', 'ROSARIO BELÉN', '44746399', '2002-09-28', '2616557241', 'belenaguero201@gmail.com', 'GRAL.ACHA S/N B°:BARRIO COLONIA ITALIA M:A C:2 ', 'COLONIA ITALIA - LAVALLE', 1, NULL, NULL),
(669, 'BAIGORRIA', 'MILENA ALEJANDRA', '45142258', '2003-08-18', '2615775989', 'milenabaigorria21@gmail.com', '9 DE JULIO  S/N B°:LA PALMERA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(670, 'BURGOS', 'SABRINA CHIARA', '41364792', '1998-04-27', '2615547217', 'sabrinachiara.ok@gmail.com', 'LAMADRID 2176 B°:COVIPA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(671, 'CONTRERAS', 'SILVANA CECILIA', '41366972', '1998-08-07', '2617021168', 'silvanacontreras260@gmail.com', 'B°:Bº Belgrano  M:E C:11 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(672, 'GUARDIA', 'CINTIA PAOLA', '44538578', '2002-11-11', '2616050121', 'cintiaguardia37@gmail.com', ' ARENALES  S/N ', 'LA PALMERA - LAVALLE', 1, NULL, NULL),
(673, 'GUZMÁN', 'LUCAS FACUNDO', '42084451', '1999-10-07', '152160627', 'karenguzmanmza@gmail.com', 'MANZANA D  CASA 21 B°:SOLARES DEL NORTE ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(674, 'HODAR ORTUBIA', 'ORIANA NAHIR', '44820628', '2003-02-07', '2615618416', 'hodaroriana@escuelacatroppa.edu.ar', 'ORTIZ BASUALDO S/N ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(675, 'MORALES ABALO', 'FABRICIO DAMIAN', '36137480', '1991-03-21', '2614614742', 'fabricio.13@hotmail.com', '', '', 1, NULL, NULL),
(677, 'VERON', 'EVELYN SOFIA BETSABE', '38205938', '1993-09-13', '2614614742', 'almendraleon2327@gmail.com', '', '', 1, NULL, NULL),
(678, 'VILLAFAÑE', 'MARIA VALERIA', '39086074', '1995-07-29', '2614614742', 'villafanevale13@gmail.com', '', '', 1, NULL, NULL),
(679, 'VILLEGAS', 'ROCIO EVANGELINA', '42167681', '1999-06-10', '2614614742', 'rocioevangelina65@gmail.com', 'calle moyano S/N B°:barrio la floresta  M:b C:3 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(680, 'YACANTE', 'NICOLAS EDUARDO', '40561207', '1997-06-23', '2614614742', 'nicolasyacante97@gmail.com', 'B°:BARRIO CUYUM III  M:4 C:1 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(681, 'AGUIRRE', 'MARÍA LOURDES', '44746176', '2003-02-04', '2615778144', 'jessicaaballay1204@gmail.com', 'El Carmen s/n ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(682, 'ALDAY', 'IVANA AÍDA', '44746152', '2003-01-24', '2612379782', 'ivaaidaalday14@gmail.com', 'B°:Bª NUEVO VERGEL M:A C:11 ', 'EL VERGEL - LAVALLE', 1, NULL, NULL),
(683, 'ALESSI', 'MARTINA NAZARENA', '43417871', '2001-04-06', '2613449085', 'martialessi6@gmail.com', 'CARLOS MASOERO B°:AMYSO I M:A C:6 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(684, 'ANDRADA', 'CRISTIAN EMANUEL', '43750720', '2001-10-19', '2614614742', 'andradacristian@escuelacatroppa.edu.ar', 'Fernando de Vellota S/N ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(685, 'ASEVEDO', 'ELIZABETH VERONICA', '43683164', '2001-09-24', '2614614742', 'eliasevedo15@gmail.com', 'BELGRANO 745 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(686, 'BARAHONA TEJADA', 'PAULINA', '45256202', '2003-09-09', '2615669559', 'pauliinab01@gmail.com', 'B°:Nuevo Vergel  M:B C:12 ', 'EL VERGEL - LAVALLE', 1, NULL, NULL),
(687, 'BARROS', 'Juliana Micaela', '37270413', '1993-04-18', '2614614742', 'yuuuubarrios24@gmail.com', '', '', 1, NULL, NULL),
(688, 'BAUCHÉ BRIZUELA', 'JERÓNIMO TOMÁS', '45876158', '2004-02-03', '2615925355', 'jeronimobauche@gmail.com', 'LAS HERAS 68 B°:AMALIA ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(689, 'BORDÓN', 'LEANDRO NICOLÁS', '43636240', '2001-01-20', '2614614742', 'mendoza900@hotmail.com', 'MANZANA C CASA 8 B°:ALTO DEL OLVIDO ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(690, 'BRIZUELA', 'SOFÍA', '45529756', '2004-03-23', '2615172367', 'sofiabrizuela42@gmail.com', 'CORREA S/N B°:CROCCO ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(691, 'CABAÑEZ', 'LUISIANA CAMILA', '44019748', '2002-02-11', '2616744252', 'pcabanez75@gmail.com', 'LAMADRID S/N ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(692, 'CAMPOS', 'MARÍA DE LOS ÁNGELES', '48751205', '2004-05-04', '2614614742', 'angeles161021@gmail.com', 'LAVALLE  10800 ', 'EL ALGARROBAL - LAS HERAS', 1, NULL, NULL),
(693, 'CATALDO', 'BRIAN ISAAC', '42478460', '2000-05-03', '2616698308', 'briansitocataldo@gmail.com', 'C \" 3\" B°:Tres Olivos M:C C:3 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(694, 'CORTEZ', 'ANA LUNA', '44437974', '2002-10-04', '2614614742', 'lunna44437974@gmail.com', 'GODOY CRUZ S/N ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(695, 'CORZO', 'ROCÍO BELÉN', '40972981', '1998-02-09', '2614614742', 'rociobcorzo@gmail.com', 'QUIROGA  S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(696, 'DIAZ', 'PAMELA NATALI', '41084074', '1998-05-18', '2617059471', 'diazpamela897@gmail.com', 'B°:FUERZA NUEVA M:B C:17 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(697, 'DIAZ GONZALEZ', 'MELINA ISABEL', '43119729', '2000-12-07', '2615255522', 'danieladiaz_91@gmail.com', 'PUESTO DIAZ ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(698, 'DIAZ PALACIO', 'MARÍA BRUNELA', '45448268', '2004-01-05', '2614614742', 'bruneladiaz045@gmail.com', 'B12 B°:CONSTITUCIÓN M-A ', 'EL SAUCE - GUAYMALLÉN', 1, NULL, NULL),
(699, 'ECHENIQUE', 'BRENDA MARIELA', '44246973', '2002-03-07', '2614185430', 'soriab784@gmail.com', 'GENERAL ACHA Y ARENALES ', 'COLONIA ITALIA - LAVALLE', 1, NULL, NULL),
(700, 'FAILLACE', 'Abril', '44001978', '2003-02-12', '2614614742', 'abrilfaillace@gmail.com', 'Villegas y Calle Pública ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(701, 'FERNANDEZ GODOY', 'MICAELA NICOL', '40560582', '1997-07-20', '2614614742', 'fernandez.n.micaela20@gmail.com', '', '', 1, NULL, NULL),
(702, 'GATICA', 'VALENTINA LUZ', '42793598', '2000-08-31', '2615176848', 'valengatica598@gmail.com', 'Gustavo André s/n Dpto:6 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(703, 'GUARDIA', 'MANUEL ALEJANDRO', '43486444', '2001-05-21', '2612658151', 'manuel90guardia@gmail.com', 'VILLALOBO  S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(704, 'GUEVARA', 'ISMAEL JESÚS', '44057832', '2002-02-25', '2613661533', 'jesuguevara5@gmail.com', 'RUTA 40 KM.3315 B°:VIRGEN DEL ROSARIO ', 'EL PASTAL - LAS HERAS', 1, NULL, NULL),
(705, 'LIMA ZAMORA', 'CAMILA BEATRIZ', '45721775', '2004-06-17', '2614614742', 'camilalimazamorabeatriz@gmail.com', 'CAMBIAGGI 842 B°:COLONIA SEGOVIA I ', 'GUAYMALLEN - GUAYMALLÉN', 1, NULL, NULL),
(706, 'LIRA', 'INGRID SORAYA', '42863434', '2000-09-01', '2616045404', 'Moni27claudiaLira@gmail.com', 'RIVADAVIA S/N ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(707, 'AMAYA', 'OLGA GRACIELA', '46233630', '2002-09-22', '12345666', 'ies9024_lavalle@yahoo.com.ar', 'fleming 25', 'Tulumaya City', 1, NULL, NULL),
(708, 'VILLEGAS AMAYA', 'MILAGROS DANIELA', '45530538', '2004-01-03', '2615876881', 'mendoza1900@hotmail.com', 'B°:LOS PUELCHES M:M: A C:17 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(709, 'AGUERO ZANGRANDI', 'LOURDES GUADALUPE', '43354428', '2001-03-20', '261761951', 'guadalupeaguero203@gmail.com', 'CORTADERA (BARRIO)  B°:GVO ANDRE M C C 18 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(710, 'ANCO', 'LUCAS DELFIN', '42478442', '2000-04-17', '261761951', 'lucas.anco00@gmail.com', 'La Madrid B°:B° Norte Argentino M:1 C:2 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(711, 'BALMACEDA', 'ROCIO ANAHÍ', '43831264', '2001-01-07', '261761951', 'rociobalmaceda.16@gmail.com', 'IRIGOYEN Y BELGRANO S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(712, 'BARROS', 'ALDANA MAGALÍ', '44139899', '2002-09-13', '261761951', 'magalibarros765@gmail.com', 'Don Bosco s/n ', 'LA ASUNCION - LAVALLE', 1, NULL, NULL),
(713, 'BARROSO', 'FERNANDA NATALIA', '35547326', '1991-01-01', '261761951', 'barrosofer6@gmail.com', 'SIN NUMERO B°:LOTEO EL PORVENIR ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(714, 'CORNEJO CABIUDO', 'Alejo Damián', '44746226', '2002-05-04', '261671951', 'alejoenano929@gmail.com', '', '', 1, NULL, NULL),
(715, 'DIAZ - GUALLAMA', 'LESLIE ELIZABETH', '44904089', '2003-10-16', '2613849894', 'leticiaguallama@gmail.com', 'URQUIZA 820 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(716, 'GALBANI URBANSKI', 'CANDELA AGUSTINA', '45450022', '2003-11-29', '261671951', 'silvia.urbanski@gmail.com', 'SAN MARTIN 57 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(717, 'GATICA', 'ABRIL ALDANA', '44905015', '2003-05-09', '2615176848', 'abrilgatica44@gmail.com', 'Calle Gustavo André  sin número ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(718, 'GONZALEZ', 'DANIELA YASMÍN', '43749033', '2001-10-15', '2613030879', 'danielagonzalez.2001.15@gmail.com', 'RUTA 24 S/N ', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(719, 'GONZALEZ', 'ROCIO', '43151576', '2000-04-04', '261671591', 'rg462643@gmail.com', 'RUTA 40 S/N B°:EL PORVENIR ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(720, 'LAMIA DE BIAZI', 'Carol Virginia ', '36766864', '1992-04-08', '2614614742', 'carol.lamia92@hotmail.com', '', '', 1, NULL, NULL),
(721, 'MARTINEZ', 'CARLA ANTONELLA', '35200575', '1990-06-24', '2614614742', 'krlu_90@hotmail.com', '', '', 1, NULL, NULL),
(722, 'MENDOZA', 'CLARISA MACARENA', '41645289', '1999-01-28', '2613256561', 'juliamdz24@hotmail.com', 'BELGRANO S/N° ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(723, 'MIGUEZ', 'ANTONELLA VICTORIA', '45361001', '2004-06-17', '2615891790', 'ericaescudero75@gmail.com', 'ROCA  S/N ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(724, 'NIETO', 'SERGIO SAMUEL', '43941702', '2000-12-11', '153644772', 'samuelnieto869@gmail.com', ' MB C14 B°:Rufino Moyano  ', 'GUAYMALLEN - GUAYMALLÉN', 1, NULL, NULL),
(725, 'ORO', 'MARIA DE LOS ANGELES', '41004775', '1998-02-11', '2613871560', 'oromaria93@gmail.com', 'RUTA 36 ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(726, 'PEREZ', 'BRIAN EMANUEL', '44746168', '2003-01-05', '2616989581', 'bep49300@gmail.com', 'VILLEGAS  113 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(727, 'QUIAVETTA MORALES', 'SOFIA MORENA', '45588123', '2004-03-24', '2612075157', 'marialaurapuertas4@gmail.com', 'Dorrego y Godoy Cruz S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(728, 'RODRIGUEZ', 'MELANIE MAGALI', '44905633', '2003-03-31', '2634560166', 'maquirodri@gmail.com', 'PEREZ 65 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(729, 'ROJAS', 'CIBELS ARIANA', '44438805', '2002-09-30', '2614614742', 'rojascibels3009@gmail.com', 'B°:FUERZA NUEVA  M:A C:11 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(730, 'ROMERO', 'LUZ MARÍA', '42751183', '2000-05-17', '2612329761', 'laluzromero1217@gmail.com', 'Loteo Luconi SN ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(731, 'SILVA RIVERA', 'NICOLE SHIRLEY', '44437985', '2002-10-26', '2616212728', 'silvanicol48@gmail.com', 'S/N B°:EL PALMERAL MB C8 M:B C:8 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(732, 'TAPIA', 'MARIA EUGENIA', '39088570', '1995-06-08', '2614614742', 'eugeniatapia2018@gmail.com', '', '', 1, NULL, NULL),
(733, 'VIDELA', 'MARÍA BELÉN', '44625602', '2002-12-22', '2614614742', 'belenvidela201@gmail.com', 'CORTADERA S/N B°:GUSTAVO ANDRE  M:A C:22 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(734, 'YANZON GONZALEZ', 'JULIETA AGOSTINA', '44309206', '2002-06-16', '2614614742', 'yanzonjulieta804@gmail.com', ' M B C2 B°:SANTA CLARA ', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(735, 'TEJERO', 'MAURICIO ALBERTO', '28627415', '1981-04-07', '2614614742', 'mtejerocereda@yahoo.com.ar', 'MARIE CURIE S/N B°:COSTA DE ARAUJO M:F C:7 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(736, 'VERON', 'LOURDES MARIANA', '28225561', '1980-10-13', '2614614742', 'louma317@yahoo.com', 'CORTADERA  00 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(737, 'ALVARADO', 'KEVIN EDUARDO', '45360937', '2004-02-11', '2616221186', 'nelillanos@yahoo.com.ar', 'B°:CUYUM 2 M:4 C:1 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(738, 'ARAGÓN', 'ALAN EXEQUIEL', '44438802', '2002-09-22', '2616768763', 'alaaragon@jbalberdi4026.edu.ar', 'GARIBALDI S/N B°:22 DE ABRIL, LOTE 27 1RA CALLE ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(739, 'ARGAÑARAZ', 'CRISTIAN LEONARDO', '33579538', '1988-01-15', '2614614742', 'cristian.underwebs@hotmail.com', 'Ruta 34 Km. 3.5 ', 'JOCOLI VIEJO - LAVALLE', 1, NULL, NULL),
(740, 'CABRERA DI BATTISTA', 'LAUTARO', '44905062', '2003-04-01', '2614614742', 'lautarocabrera81@gmail.com', 'B SANTA CECILIA 2 MCC23 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(741, 'CAÑA', 'Alejandra Elizabeth', '38580589', '1995-04-14', '2614614742', 'elycania21@gmail.com', 'Centenario  s/n ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(742, 'CANSELMO', 'CARLA LUANA', '45023436', '2003-11-19', '2612413979', 'danielcanselmo@yahoo.com.ar', 'M C; C6 B°:BARRIO COOPERATIVA LA PEGA 4 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(743, 'CARBONI', 'EXEQUIEL EDUARDO', '44058315', '2002-05-04', '2615254614', 'yakygallardo@gmail.com', 'CARMEN Y DON BOSCO ', 'EL PLUMERO - LAVALLE', 1, NULL, NULL),
(744, 'CASERES', 'ALDANA SOFIA', '39767907', '1996-09-13', '2634309508', 'aldiicaseres@gmail.com', 'MONTECASEROS SIN NUMERO ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(745, 'CASTILLO', 'MATIAS JOEL', '45529703', '2004-01-29', '2615464867', 'teresasalazar420@gmail.com', 'Dr. Moreno 89 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(746, 'CASTRO SANTANA', 'NATASHA MILAGROS', '44746936', '2003-04-23', '2616715508', 'natashacastrosm@gmail.com', 'B°:SANTA MARIA II M:B C:6 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(747, 'CONTRERA', 'DALMA ROCÍO', '40788037', '1997-11-12', '2614614742', 'rdalma63@gmail.com', 'Ruta 24  s/n ', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(748, 'CORDOBA', 'MILAGROS MARIA AGUSTINA', '45144819', '2002-10-18', '2634654744', 'cordobaagustina@escuelacatroppa.edu.ar', 'M:C C:6 B°:NUEVA ESPERANZA ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(749, 'CORTEZ', 'ENZO OMAR GABRIEL', '43213572', '2000-12-18', '2614614742', 'enzocortez2000@gmail.com', 'B°:AMISO II M:D C:4 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(750, 'CORTEZ ', 'SAMUEL ESTEBAN', '38205913', '1994-02-08', '2614614742', 'samescor.1994@gmail.com', 'B°:barrio amiso 2 M:D C:4 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(751, 'DHUIN MENESE', 'KAREN MICAELA', '43941707', '2001-11-07', '2613046874', 'micaela.dhuin07@gmail.com', 'CARRIL LAVALLE 8812 ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(752, 'DIAZ', 'VALENTINA BELÉN', '45587586', '2004-02-14', '2614614742', 'belendiaz051@gmail.com', 'MENDOZA S/N B°:-- ', 'EL CENTRAL - SAN MARTÍN', 1, NULL, NULL),
(753, 'FLORES', 'FARID', '44124271', '2001-11-11', '2614614742', 'faridflores1264@gmail.com', 'MAIPU 167 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(754, 'FUENTES', 'Diego Alejandro', '37001647', '1992-10-03', '2614614742', 'alefuentes31992@gmail.com', '', '', 1, NULL, NULL),
(755, 'GARCIA', 'GUSTAVO DANIEL', '44403746', '2002-04-28', '261153042420', 'izucumidoriya.007@gmail.com', 'B°:B° Carlos Masoero  M:C C:5 ', 'EL VERGEL - LAVALLE', 1, NULL, NULL),
(756, 'GIMENEZ', 'STEVEN JESUS', '48012683', '2003-02-26', '2616920790', 'martinandrea50@yahoo.com', 'JOSÉ NESTOR LENCINAS 121 ', 'EL ZAPALLAR - LAS HERAS', 1, NULL, NULL),
(757, 'GAUNA', 'JEMINA BEATRIZ', '45643327', '2004-02-24', '2613863342', 'jeminagna12@gmail.com', 'BUENOS VECINOS Y BUENOS AIRES 5893 B°:- ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(758, 'GIMENEZ VILLEGAS', 'FERNANDO JOSÉ', '43681417', '2001-03-07', '2614614742', 'fernandogimenez707@gmail.com', 'SANTA MARINA S/N ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(759, 'GONZALEZ', 'MATIAS FACUNDO', '41418162', '1998-12-11', '2614614742', 'matifacundo77@gmail.com', 'HUARPES Y HUANACACHE  S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(760, 'GONZALEZ CARBAJAL', 'JOSE ROBERTO', '44058066', '2001-11-03', '2616998510', 'escuela4183@yahoo.com.ar', 'SAN RAMON  8523 ', 'EL BORBOLLÓN - LAS HERAS', 1, NULL, NULL),
(761, 'GUAQUINCHAY VALLECILLO', 'MICHAEL JAVIER', '45023443', '2003-11-17', '2616699222', 'maicolguaquinchay1@gmail.com', 'B°:DORREGO SUR  M:E C:1 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(762, 'IYARRA BARROSO', 'ABIGAIL ANTONELA', '45531256', '2003-11-07', '2614614742', 'abigail0711iyarra@gmail.com', 'MOLINARI Y BRASSERA ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(763, 'JOFRE', 'MATIAS EDUARDO', '41366494', '1998-04-08', '2615123553', 'matiasjofre077@gmail.com', 'RUTA 24  S/N ', 'EL CHILCAL - LAVALLE', 1, NULL, NULL),
(764, 'JURADO LOPEZ', 'RENZO CATRIEL', '43544284', '2001-10-04', '2615727334', 'brunodaver@gmail.com', 'B°:FUERZA NUEVA M:B C:6 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(765, 'LOZANO', 'NAHUEL MATEO', '43486243', '2001-06-15', '2612588177', 'lozano.nahuel88@gmail.com', 'B°:FUERZA NUEVA M B C 27 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(766, 'MAYORGA', 'RAMONA EVANGELINA', '31452160', '1985-02-22', '2614614742', 'mayorgaevangelina9@gmail.com', 'Nueva Tomera  79 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(767, 'MORALES', 'MAURO GABRIEL', '44746937', '2003-05-03', '2615688085', 'matildearce68@gmail.com', 'URQUIZA Y MORON S/N ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(768, 'MOTOS ROMERA', 'NAHUEL AXEL', '44820627', '2003-05-09', '2614614742', 'nahuelmotos507@gmail.com', 'MOLINARI  S/N ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(769, 'MOYANO', 'YAMILA SOLEDAD', '38759276', '1995-09-01', '2614614742', 'yaniimoyano08@gmail.com', '', '', 1, NULL, NULL),
(770, 'NACIF GAYÁ', 'LUCAS ESTEBAN', '44905090', '2003-08-28', '2616402497', 'gracielagaya80@gmail.com', 'B°:Bº Solares del Norte 2  M:H C:19  ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(771, 'NAVARRO', 'MANUEL TOMAS', '44538576', '2002-11-15', '2613093802', 'evalara2011@gmail.com', 'B°:LA BAJADA  M:B C:7 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(772, 'OJEDA', 'AILÉN NAIR', '40963400', '1998-02-08', '2614614742', 'ailu.ojeda21@gmail.com', '', '', 1, NULL, NULL),
(773, 'OYOLA', 'EDGARDO JOSE', '44405391', '2002-01-06', '2614614742', 'joseoyola600@gmail.com', 'RAMA  8 ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(774, 'PARLANTE', 'AGUSTÍN NICOLÁS', '44246575', '2002-08-14', '2612452471', 'erickparlante@gmail.com', 'B°:EL PARAISO M:B C:14 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(775, 'QUIROGA', 'MAURICIO ALEJANDRO', '40823068', '1997-12-21', '2614614742', 'mauriquiroga97@gmail.com', '', '', 1, NULL, NULL),
(776, 'ROJAS GOMEZ', 'MARIA ELENA', '94222013', '2004-01-14', '2613109275', 'marielene975jkm@gmail.com', 'CENTENARIO - FINCA SUPERIORA S/N ', 'JOCOLI VIEJO - LAVALLE', 1, NULL, NULL),
(777, 'RUIZ', 'SOFÍA MERCEDES', '45023530', '2003-09-24', '2612156632', 'sofiruiz4502@gmail.com', 'CALLE HERNANDEZ S/N B°:FINCA CURIN ', 'EL CHILCAL - LAVALLE', 1, NULL, NULL),
(778, 'SANTONI', 'MIRCO ARIEL', '45720316', '2004-06-25', '2616065754', 'andrealara86@gmail.com', 'Dr. Moreno 318 B°:Sta Teresita ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(779, 'SUAREZ', 'BRISA ANDREA', '45529716', '2003-07-17', '2612402222', 'brisuar7@gmail.com', 'Lama s/n B°:AMYSO IV M:F C:5 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(780, 'SUAREZ', 'DANIEL AGUSTÍN', '44878514', '2003-02-01', '2614728180', 'gustavodanielsuarez@gmail.com', 'B°:SANTA MARIA M:C C:10 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(781, 'TAYURA', 'PRISCILA RAYEN', '42712762', '2000-04-14', '2614614742', 'priscilatayura_2000@hotmail.com', '  B°:REPUBLICA DEL PERU M:C C:1 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(782, 'TORRENGO VILLEGAS', 'CAMILA EVELYN', '42507561', '1999-11-29', '2615177045', 'camitorrengo@gmail.com', 'B°:SANTA CECILIA 1  M:A C:20 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(783, 'URRA', 'DIEGO IVAN', '42912590', '2000-11-08', '2614614742', 'ivan_urra08@hotmail.com', 'Cortadera  s/n ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(784, 'VALERO', 'MARIANO', '43215125', '2001-04-26', '2616221145', 'marianovalero.mv@gmail.com', 'SGTO. RIVAS 68 B°:AVENA ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(785, 'VERA ANSALDO', 'PRISCILA RAQUEL', '37721630', '1993-09-05', '2616147638', 'gonzavera@hotmail.com', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(786, 'VICTORIO', 'EMILIANO ALEXIS', '44746926', '2003-02-28', '2616728793', 'lilianagallardo522@gmail.com', 'B°:LOS SOLARES II M:G C:5 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(787, 'VILLCA LIMACHI', 'LILIANA ROMINA', '45587642', '2004-03-31', '2616215052', 'lilianavillca8@gmail.com', 'QUIROGA  S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(788, 'ZALAZAR', 'CAREN BELEN', '41364006', '1998-07-28', '2614614742', 'carenz934@gmail.com', 'CORREA - FINCA CROCCO SIN NUMERO ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(789, 'AGUILERA', 'GONZALO FEDERICO', '43215109', '2006-03-11', '2614614742', 'GONZALOAGUILERA01@GMAIL.COM', 'MOYANO S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(790, 'CABAÑA ', 'SOFIA JULIETA', '45258421', '2003-11-07', '2612488874', 'hugo_loquillo@hotmail.com', '17 DE OCTUBRE  671 Dpto:A ', 'LAS HERAS - LAS HERAS', 1, NULL, NULL),
(791, 'CABRERA', 'CAROLINA AYELEN', '42357891', '1999-11-23', '2615693437', 'cabreracaro409@gmail.com', 'CORREA S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(792, 'GODOY', 'Florencia', '41967200', '1999-08-03', '2614614742', 'flor_g3899@hotmail.com', '', '', 1, NULL, NULL),
(793, 'GUZMÁN', 'KAREN NICOLE', '45023497', '2002-04-04', '2613898303', 'karennicoleguzman04@gmail.com', 'Ruta 36 B°:Los Paraisos de Ana Curi M:A C:12 ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(794, 'IRRUTIA', 'GABRIELA JAQUELINA', '30116097', '1983-09-03', '2614614742', 'irrutiajaquelina@gmail.com', 'Matienzo S/N ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(795, 'MANQUEZ', 'GIANELLA PAULA LUCIANA', '44908323', '2003-02-14', '2617009853', 'manqueznadia@gmail.com', 'EMILIO CIVIT 18 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(796, 'MIRANDA ALMAZAN', 'Elsa Marilin', '40560170', '1996-05-11', '2614614742', 'elsamrd10@gmail.com', '', '', 1, NULL, NULL),
(797, 'NAVARRETE', 'EMANUEL ALEXIS', '42509911', '1999-05-26', '2614614742', 'alexisnavarrete806@gmail.com', 'NAVARRETE Y LA ESCONDIDA S / N ', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(798, 'QUEVEDO', 'ROCÍO AYELÉN', '44438758', '2002-11-16', '2612767418', 'dge4224@mendoza.edu.ar', 'B°:B° JARILLEROS II M:A C:2 ', 'JOCOLI VIEJO - LAVALLE', 1, NULL, NULL),
(799, 'RIOS CANO', 'KARINA SOLEDAD', '44878518', '2003-03-27', '2617177047', 'canok7812@gmail.com', 'Callejón Comunero Gral Acha S/N B°:FINCA FORUNGA ', 'ALTO DEL OLVIDO - LAVALLE', 1, NULL, NULL),
(800, 'SANTONI', 'GIANELLA MELINA', '45529796', '2004-03-22', '2615165969', 'dge4224@mendoza.edu.ar', 'Dorrego 85 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(801, 'VILLEGAS', 'GABRIEL ALEJANDRO', '44009961', '2002-01-27', '2615876881', 'ale123@gmail.com', 'B°:LOS PUELCHES M:A C:17 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(802, 'BARRIONEUVO', 'Cecilia Vanesa', '26114379', '1977-09-03', '2614614742', 'cecy_vb@hotmail.com.ar', 'Bolivar  262 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(803, 'CATALDO', 'DAIANA ABIGAIL', '42713312', '1999-10-16', '2616694663', 'cataldodaiana0@gmail.com', 'CORTADERA S/N B°:La Floresta  M:A C:5 ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(804, 'JORGENSEN', 'SERENA DE LOS ANGELES', '43829785', '2000-10-02', '2614941814', 'lauritalavallina@gmail.com', 'RUTA 36 Y CALLE 5 ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(805, 'MANZANO', 'MILAGROS NOEMÍ', '44405477', '2002-08-29', '2613879623', 'milimanzano2@gmail.com', 'CALLEJON BRIZUELA S/N ', 'SAN FRANCISCO - LAVALLE', 1, NULL, NULL),
(806, 'MOTOS ROMERA', 'CAMILA ARIADNA', '43117538', '2001-03-20', '2614614742', 'camiamotos@hotmail.com', 'Molinari sin numero ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(807, 'PEREZ', 'MILAGROS CELESTE', '44747314', '2003-01-10', '2615094710', 'pceleste361@gmail.com', 'BUENOS AIRES  1200 ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(809, 'CAMAÑO', 'CAREN ELIANA', '31790775', '1985-03-25', '2614614742', 'carencamano@gmail.com', 'SAN MARTIN 1100 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(810, 'QUINTANA', 'CELESTE ESTEFANIA', '37001666', '1992-12-09', '2614614742', 'quintanaestefania1992@gmail.com', 'ARENALES   SIN NUMERO B°:B° COLONIA ITALIA  M:B C:9 ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(811, 'CARDOZO', 'JULIAN ROSENDO JESÚS', '43684198', '2001-08-30', '2614614742', 'julianbleachjesus@gmail.com', 'B°:TUPAC AMARU M:F C:10 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(812, 'GUAKINCHAY', 'BARBARA INGRID', '43075958', '2000-12-05', '2614614742', 'ingridguakinchay@gmail.com', 'MB C6 B°:Virgen del Rosario ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(813, 'MORALES', 'CLAUDIO', '94325876', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(816, 'NAVARRA', 'MARIANA', '26711284', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(817, 'BOGADO', 'CARINA LEIZA', '43750704', '2002-02-21', '2617161656', 'caribogado29@gmail.com', 'FERNANDO DE VELLOTA S/N ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(818, 'GONZALEZ', 'LORENA BEATRIZ', '44058304', '2002-04-07', '2615265341', 'lorenagonzalez99114@gmail.com', 'PIOVERA s/n ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(819, 'ROMERO', 'BELEN ALDANA ', '40561252', '1997-04-15', '2614614742', 'belenromero11@hotmail.es', '', '', 1, NULL, NULL),
(820, 'ANDRADA', 'SILVANA CARINA', '21933991', '1971-02-01', '2614614742', 'silcaron@yahoo.com.ar', 'B°:B° Integración ME C19 M:E C:9 ', 'PANQUEHUA - LAS HERAS', 1, NULL, NULL),
(821, 'BARBERIS', 'MELANIE NICOL LOURDES', '41418166', '1998-11-18', '2614614742', 'nicolbarberis12@gmail.com', 'Dorrego e Irigoyen ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(822, 'BRIZUELA', 'ROCIO CARLA', '42009049', '1998-10-01', '2614614742', 'rbrizuelani2019@gmail.com', 'B°:ALTO DEL OLVIDO M:D C:5 ', 'ALTO DEL OLVIDO - LAVALLE', 1, NULL, NULL),
(823, 'GIMENEZ', 'Florencia Tamara', '39021960', '1995-04-21', '2614614742', 'gimeneztammy@gmail.com', 'Paso del Portillo  2254 B°:B° Independecia -  ', 'EL PLUMERILLO - LAS HERAS', 1, NULL, NULL),
(826, 'SAYA', 'JENNIFER DAIANA', '36913462', '1994-04-19', '2614614742', 'jennifersaya9@gmail.com', 'Calle Sargento Ríos B°:B° Avena -  ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(827, 'TOSCANO', 'VALENTINA MARIELA', '42507569', '1999-08-28', '2614614742', 'vtoscanoni2019@gmail.com', 'S/Nº B°:ALTO DEL OLVIDO M:b C:9 ', 'ALTO DEL OLVIDO - LAVALLE', 1, NULL, NULL),
(828, 'CACERES', 'DANIEL FRANCISCO', '43943717', '2001-12-23', '2614614742', 'franciscocaceres2311@gmail.com', 'SAN JUAN S/N B°:NO ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(829, 'CANDIDO ALVAREZ', 'FACUNDO AGUSTÍN', '43943121', '2002-01-04', '2617104861', 'facundocandido81@gmail.com', 'LAVALLE 120 ', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(830, 'CORTEZ', 'OCTAVIO ANDRÉS', '43213252', '2001-01-24', '2614614742', 'oc31549@gmail.com', 'El Banco 8230 ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(831, 'DIAZ', 'FRANCO DAMIÁN', '44905002', '2003-04-10', '2614614742', 'francodamiandiaz2003@gmail.com', 'CARLOS MASOERO S/N ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(832, 'FERNANDEZ', 'JEREMIAS LEANDRO', '42009051', '1999-06-01', '2616959343', 'jere.fer1999@gmail.com', 'cerro colorado 684 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(833, 'GREGORIO', 'JOSE GABRIEL', '39677821', '1995-07-20', '2614614742', 'gabriel95@gmail.com', 'Ruta 34  s/n ', 'EL PARAMILLO - LAVALLE', 1, NULL, NULL),
(834, 'LUGO', 'FRANCISCO', '46253381', '1999-07-02', '2613863342', 'franciscolugo613@gmail.com', 'Buenos Vecinos y Buenos Aires 5893 B°:0 ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(835, 'AGUILERA MORALES', 'RUBEN ANTONIO', '42912554', '2000-07-25', '2616817209', 'noconsignacorreo@gmail.com', 'MORENO (TALET) S/N ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(836, 'DIAZ CORREA', 'JAQUELINE MAILEN', '40561206', '1997-07-29', '2613147457', 'maii.diaz.39@gmail.com', 'ESTRELLA S/N ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(837, 'FLORES', 'MILAGROS LIDIA', '45023539', '2002-12-21', '2614614742', 'miilyflorezz221@gmail.com', '9 DE JULIO - FINCA LOPEZ AMILCAR S/N B°:LA PALMERA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(838, 'GALVAN', 'Celeste Abigail', '43943115', '2001-07-23', '2616654450', 'natygalvan1984@gmail.com', 'RUTA 24  766 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(840, 'MENDEZ GODOY', 'ALEXIS ROBERTO AGUSTÍN', '43279284', '2000-03-20', '2613101043', 'mendezalexis@escuelacatroppa.edu.ar', 'ORTIZ BASUALDO BOSSI ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(841, 'MENDEZ GODOY', 'MAIRA ANDREA CELESTE', '41644007', '1998-08-28', '2614614742', 'mendezgodoyandrea@gmail.com', 'ORTIZ BASUALDO Y BOSSI ', 'NUEVA CALIFORNIA - SAN MARTÍN', 1, NULL, NULL),
(842, 'SIVILA', 'BRENDA GISELA', '45597348', '2000-10-05', '2614614742', 'yamisivila6@gmail.com', 'B°:EL PALMERAL M:D C:8 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(843, 'SIVILA', 'YAMILA VALERIA', '45597349', '2003-02-06', '2614614742', 'yamisivila6@gmail.com', 'El Carmen s/n ', 'EL PLUMERO - LAVALLE', 1, NULL, NULL),
(844, 'PINTOS', 'DELMA NEREA', '36633709', '1992-06-01', '2614614742', 'pintosd@outlook.es', 'B°:B° COOPERATIVA M:6 C:11 ', 'JOCOLI VIEJO - LAVALLE', 1, NULL, NULL),
(845, 'AGUILERA', 'ANA MILAGROS', '42403365', '2000-01-03', '2612166804', 'miliaguilera792@gmail.com', 'B°:EL NUEVO VERGEL M:C C:10 ', 'EL VERGEL - LAVALLE', 1, NULL, NULL),
(846, 'CABRERA', 'GIMENA ANDREA', '42714025', '2000-03-26', '2614614742', 'andreacabrerha@gmail.com', 'EL TAMBO  Y ADMINISTRACION S/N ', 'TRES DE MAYO - LAVALLE', 1, NULL, NULL),
(847, 'QUIROGA', 'JUAN JOSE', '33053244', '1987-06-24', '2614614742', 'sistemas.quiroga@gmail.com', 'Dpto:0 P:0 B°:REPÚBLICA DEL PERÚ M:B C:7 ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(848, 'AGUIRRE', 'JOANA ALEJANDRA', '34463187', '1989-10-06', '2614614742', 'yoaaguirre_89@hotmail.com.ar', 'Ruta Nacional Nº 40  3389 ', 'JOCOLI VIEJO - LAVALLE', 1, NULL, NULL),
(849, 'GUARDIA', 'JOHANNA NOEMI', '35547498', '1992-01-01', '2614614742', 'johanna_guardia@hotmail.com', 'Beltrán 457 Dpto:2  ', 'VILLA TULUMAYA (CIUDAD) - LAVALLE', 1, NULL, NULL),
(850, 'MENDOZA', 'AYARACHI JANNETTEH', '93097426', '1983-10-12', '2614614742', 'janetmdz@gmail.com', 'B°: Norte Argentino M:C C:6 ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(851, 'OJEDA RIVA', 'FERNANDO DANIEL', '30820060', '1984-08-05', '2614614742', 'ferojeda1984@yahoo.com.ar', 'URQUIZA s/n ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(852, 'VILLEGAS', 'DARDO RAFAEL', '29918171', '1983-02-04', '2614614742', 'rafael0762@hotmail.com', 'Moyano S/N ', 'GUSTAVO ANDRE - LAVALLE', 1, NULL, NULL),
(853, 'AMADOR TARIFA', 'LUZMILA', '94601072', '1999-10-08', '2614614742', 'luzmilaamador99@gmail.com', 'LOS PASTALITOS S/N B°:FINCA RIVERA ', 'LAVALLE - LAVALLE ', 1, NULL, NULL),
(854, 'FERNANDEZ', 'FIAMA ANABEL', '43748110', '2001-10-21', '2614614742', 'fiamafernandez_01@hotmail.com', 'PERU 3439 ', 'LAS HERAS - LAS HERAS', 1, NULL, NULL),
(855, 'GOMEZ ALTAMIRANO', 'KAREN ANTONELLA', '44904071', '2002-12-05', '2614614742', 'gomezkaren@escuelacatroppa.edu.ar', 'MANZANA D CASA 4 B°:COSTA DE ARAUJO ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(856, 'SARMIENTO', 'MAIRA DAIANA', '43544296', '2001-11-26', '2614614742', 'sarmientomaira@escuelacatroppa.edu.ar', 'ORTIZ BASUALDO S/N ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(857, 'ESCUDERO', 'ROMINA MILAGROS', '41363979', '1998-09-19', '2614614742', 'ROMINAESCUDERO1996@GMAIL.COM', 'BUENOS AIRES 8356 ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(858, 'MAYORGA', 'DANIEL EXEQUIEL', '43270183', '2001-01-24', '26151113142', 'exemay777@gmail.com', 'BARRIO BUENA ESPERANZA MANZANA C CASA 9 ', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(859, 'SANJURJO', 'MARIA DE LOS ANGELES', '32447709', '1986-01-26', '2614614742', 'angiesanjurjo@gmail.com', 'BELGRANO S/N ', 'COSTA DE ARAUJO - LAVALLE', 1, NULL, NULL),
(860, 'MARQUEZ', 'MARISA ELISANDRA', '35196452', '1990-02-06', '2614614742', 'demivane@hotmail.com', 'BARRIO NEBOT MANZANA C CASA 5 B°:NEBOT ', 'COLONIA SEGOVIA - GUAYMALLÉN', 1, NULL, NULL),
(861, 'MOLINA', 'GABRIELA ELIZABETH', '27763811', '1980-03-04', '4941958', 'ies9024_lavalle@yahoo.com.ar', 'm', 'n', 1, NULL, NULL),
(862, 'VAZQUEZ', 'ALEXANDRA GISELLE', '37001651', '1992-10-13', '123', 'ies9024_lavalle@yahoo.com.ar', 'fleming 25', 'Tulumaya City', 1, NULL, NULL),
(863, 'MORALES', 'SANDRA ESTEFANÍA', '39239296', '1995-09-17', '123', 'ies9024_lavalle@yahoo.com.ar', 'fleming 25', 'Tulumaya City', 1, NULL, NULL),
(866, 'NAVARRA', 'MARIANA ANALÍA', '27983068', NULL, NULL, 'naninavarra@yahoo.com.ar', NULL, NULL, 5, '27983068', 1),
(869, 'MALDONADO', 'GIMENA LUCÍA', '44905047', '2002-11-21', '2614614742', 'gimemaldonado2002@gmail.com', 'B SANTA CECILIA', 'LAVALLE - VILLA TULUMAYA', 1, NULL, NULL),
(870, 'ORELLANO', 'MAGALÍ ROXANA', '44757940', '2002-11-01', '2614614742', 'orellanomagali395@gmail.com', '', '', 1, NULL, NULL),
(871, 'PRICE-GONZALEZ', 'ALEXIA JAEL', '45586319', '2013-02-26', '2614614742', 'pricealexia402@gmail.com', 'LOS TONOLES', 'GUAYMAYEN - COLONIA SEGOVIA', 1, NULL, NULL),
(872, 'RIOS', 'FABIO JULIAN', '45889936', '2004-05-17', '2614614742', 'acosta.daniel@inta.gor.ar', 'EL PALMERAL', 'LAVALLE - VILLA TULUMAYA', 1, NULL, NULL),
(873, 'RIVAROLA', 'Fátima Dámaris', '39383854', '1996-02-21', '2614614742', 'fatimarivarola006@gmail.com', '9 de julio', 'LAVALLE - ALTO DEL OLVIDO', 1, NULL, NULL),
(874, 'ROSALES', 'JULIA NAOMI', '45720362', '2004-04-23', '2614614742', 'juliarosales708@gmail.com', '', 'LAVALLE - LA PEGA', 1, NULL, NULL),
(875, 'VARGAS GIMENEZ', 'NICOL ANTONELLA', '46063121', '2003-11-18', '2614614742', 'antonellanicolvargas123@gmail.com', 'TIERRA NUESTRA', 'GUAYMAYEN - BERMEJO', 1, NULL, NULL),
(876, 'BLANCHARD', 'ANABELLA ROCÍO', '32882772', '1987-10-29', '2614614742', 'anita_blanchard@hotmail.com', '', 'LAVALLE - EL PARAMILLO', 1, NULL, NULL),
(877, 'CALLAPA', 'Rosalía Elizabeth', '39677890', '1995-09-29', '2614614742', 'yasmincallapa@gmail.com', '', 'LAVALLE - EL PARAMILLO', 1, NULL, NULL),
(878, 'CRIVELLI MARTIN ', 'JORGE ANTONIO', '33651939', '1988-06-21', '2614614742', 'jorgecrivelli@hotmail.com', '', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(879, 'FLORES', 'JESUS EDUARDO', '35924933', '1992-05-25', '2614614742', 'jesus_flores992@yahoo.com.ar', '', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(880, 'GIUFFRIDA', 'Gonzalo Exequiel', '35623502', '1991-04-19', '2614614742', 'gonzalo_giuffnida@hotmail.com', '', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(881, 'LOMBARDO', 'EVANGELINA GABRIELA', '31427874', '1986-12-26', '2614614742', 'banghy@gmail.com', '', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(882, 'MARTINEZ MANRESA', 'Mariano Javier', '37518215', '1993-07-10', '2614614742', 'marianomanresa59@hotmail.com', '', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(883, 'MONTENEGRO', 'LAURA ELIZABETH', '37517680', '1993-12-09', '2614614742', 'laurahotmaill@ovi.com', '', '', 1, NULL, NULL),
(884, 'QUIROGA', 'AGUEDA CAROLINA', '34641816', '1989-07-02', '2614614742', 'aguequiroga89@yahoo.com', '', '', 1, NULL, NULL),
(885, 'FLAQUER', 'Rodrigo Jorge Mateo', '3011685', '1983-08-24', '2614614742', 'familia-flaquer@yahoo.com.ar', '', '', 1, NULL, NULL),
(886, 'GARRIDO', 'ALEJANDRA MARIEL', '34322889', '1989-04-16', '2614614742', 'meryg1912@gmail.com', '', '', 1, NULL, NULL),
(887, 'LLAMAS', 'MATIAS EMMANUEL', '37512706', '1994-02-15', '2614614742', 'matillamas14@gmail.com', '', '', 1, NULL, NULL),
(891, 'MORAGA', 'ARNALDO', '32232232', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(896, 'FORNARI', 'NOEMÍ ELISABETH', '31636337', NULL, NULL, 'fornarinoemi@gmail.com', NULL, NULL, 3, '31636337', 1),
(897, 'SORIA ', 'PAMELA', '34194876', '2022-11-25', '4941958', 'pamelasoria2010@hotmail.com', '', '', 1, NULL, NULL),
(898, 'RECIO', 'Katherina Denise', '39843453', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(899, 'CORTEZ', 'CARINA ROSA', '26738432', '1978-09-24', '4941958', 'rosacrosa_78@yahoo.com.ar', '', '', 1, NULL, NULL),
(900, 'POBLETE', 'BERTA', '13711854', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(901, 'GARAY', 'ANA LAURA', '34405309', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(902, 'MOLINA ', 'SILVANA', '31184553', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(903, 'CHUMASCOLO', 'SERGIO', '29272907', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(904, 'LOPEZ', 'MIGUEL ANGEL', '29281688', '1982-02-24', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(905, 'GILLIO', 'JOSÉ MARIANO', '27612078', '1980-06-06', '2616536768', 'gillio09@hotmail.com', '', '', 1, NULL, NULL),
(906, 'MARDINI', 'ROBERTO ANGEL', '21371398', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(907, 'ABALOS ', 'ESTEBAN ALEJANDRO', '46398850', '2022-11-25', '4941958', 'estebanabalos8@gmail.com', '', '', 1, NULL, NULL),
(909, 'AGÜERO SKAMLEC', 'ABRIL AGUSTINA', '45876027', '2022-11-25', '4941958', 'abrilaguero242@gmail.com', '', '', 1, NULL, NULL),
(910, 'CARMONA', 'CLARA AGUSTINA', '48543347', '2022-11-25', '2612304934', 'claracarmona756@gmail.com', '', '', 1, NULL, NULL),
(911, 'MITRE JAIME', 'LUCAS', '45967012', '2005-10-01', '2612051139', 'lucasmitre96@gmail.com', '', '', 1, NULL, NULL),
(912, 'CHACÓN ', 'CANDELA AGUSTINA', '46062560', '2022-11-25', '2615004073', 'chaconcandela17@gmail.com', '', '', 1, NULL, NULL),
(913, 'CHACÓN', 'NICOLÁS HERNÁN', '45967042', '2022-11-25', '2615129733', 'nicolaschacon104@gmail.com', '', '', 1, NULL, NULL),
(914, 'PASTRÁN', 'VALENTINA', '45965054', '2005-10-01', '2616298861', 'valepastra30@gmail.com', '', '', 1, NULL, NULL),
(915, 'PEREZ BAIGORRIA', 'SOFIA NAZARENA PAZ', '46621697', '2005-10-01', '2615196368', 'sofiape165@gmail.com', '', '', 1, NULL, NULL),
(916, 'DIAZ GODOY', 'LAUTARO NAHUEL', '45967077', '2022-11-25', '2612566750', 'lautarodiazgodoy@gmail.com', '', '', 1, NULL, NULL),
(917, 'QUIROGA ZERA', 'CELINA', '46235518', '2005-10-01', '2617494504', 'celinaquirogazera@gmail.com', '', '', 1, NULL, NULL),
(918, 'RUEDA', 'SHEILA DAIANA', '45965294', '2005-10-01', '2612164198', 'sheiladaianarueda@gmail.com', '', '', 1, NULL, NULL),
(919, 'D´AMBROSIO BUSSOLANO ', 'DANIA AGUSTINA', '46474721', '2022-11-25', '2615759529', 'daniaagustinadb@gmail.com', '', '', 1, NULL, NULL),
(920, 'SOSA CANO', 'ENZO TOMÁS', '45888165', '2005-10-01', '2614729693', 'encebios@gmail.com', '', '', 1, NULL, NULL),
(921, 'GIANGIULIO VIDELA,', 'XIMENA JOSEFINA', '46474740', '2022-11-25', '2612754640', 'x.giangiulio@gmail.com', '', '', 1, NULL, NULL),
(922, 'TARANTINO', 'FABIANA LUCIA', '51704947', '2005-10-01', '2612095938', 'fabianaluciatarantino@gmail.com', '', '', 1, NULL, NULL),
(924, 'VILLEGAS', 'PRISCILA NATALI', '45874373', '2005-10-01', '2616803167', 'priscilavllgs@gmail.com', '', '', 1, NULL, NULL),
(925, 'YUSTE', 'AGUSTINA MARIELA', '45720377', '2005-10-01', '2614716497', 'yusteagustina@gmail.com', '', '', 1, NULL, NULL),
(926, 'JUARES VEGA, ', 'ANDRÉS ELÌAS', '46062591', '2022-11-25', '2616825523', 'aevegajuares@gmail.com', '', '', 1, NULL, NULL),
(927, 'MATURANO CEPEDA, ', 'ANA LAURA CATALINA', '45877431', '2022-11-25', '2613373244', 'anamaturano120@gmail.com', '', '', 1, NULL, NULL),
(928, 'QUIROGA ', 'MARTINA ', '44309239', '2002-08-09', '2615725092', 'martinaquiroga3@gmail.com', '', '', 1, NULL, NULL),
(929, 'RAVIDA ', 'RAVIDA LUCIA', '26463278', '1978-05-18', '2616753833', 'ELRAVIDA@YAHOO.COM.AR', 'ORURO 2829', 'GUAYMALLEN', 1, NULL, NULL),
(930, 'GARCÍA', 'MICAELA ABIGAIL', '46062558', '2022-11-25', '2615879977', 'mg2615879977@gmail.com', '', '', 1, NULL, NULL),
(931, 'CURIONI', 'FRANCISCO', '26339811', '1978-02-06', '2615169309', 'franciscocurioni@gmail.com', '', '', 1, NULL, NULL),
(932, 'CONSUMIDOR ', 'FINAL', '0', '2022-11-25', '4941958', 'ies9024_lavalle@yahoo.com.ar', '', '', 9, NULL, NULL),
(933, 'JURADO', 'ALEX FERNANDO RAFAEL', '45360981', '2004-01-06', '2612066678', 'alex45360981@gmail.com', 'Barrio Fuerza Nueva M-B Casa 6', 'Costa de Araujo', 1, NULL, NULL),
(934, 'MORALES', 'BENJAMIN NICOLAS', '45023511', '2003-08-31', '2617583019', 'bm059054@gmail.com', 'Barrio Amyso II M-C Casa 5', 'Tulumaya', 1, NULL, NULL),
(935, 'SOSA', 'ROCIO LUNA', '40221354', '1996-12-31', '2612476019', 'rochiiluna96@gmail.com', 'BARRIO COLONIA II M-A CASA 20', 'COLONIA SEGOVIA', 1, NULL, NULL),
(936, 'MORENO', 'ROCIO GISEL', '41363017', '1998-06-21', '2616391983', 'roo.gisel98.rm@gmail.com', 'BUENOS AIRES 8271', 'COLONIA SEGOVIA', 1, NULL, NULL),
(937, 'YACANTE ABREGO ', 'MARCO ANTONIO', '46061640', '2004-09-29', '2612381308', 'eugeniaalvarez2393@gamil.com', 'chacon 649 el borbollon ', 'Las Heras', 1, NULL, NULL),
(938, 'RIVEROS', 'TAMARA VICTORIA', '46474702', '2005-04-23', '2613044902', 'tamiriveros235@gmail.com', 'Barrio Alto del Olvido Mc Casa 4', 'Alto del Olvido', 1, NULL, NULL),
(939, 'SOKO', 'BRIAN NICOLÁS', '47968963', '2005-04-14', '2613066004', 'briansoko343@gmail.com', '', '', 1, NULL, NULL),
(941, 'MAYORGA', 'CARLA ROCÍO', '44746187', '2002-09-19', '2616941518', 'carlarocio2119@gmail.com', '', '', 1, NULL, NULL),
(942, 'MACHUCA', 'ABRIL AYELÉN', '45258127', '2003-12-26', '2616299976', 'abymachu156@gmail.com', 'Barrio Jarrillero 2 M e Casa 7', 'Lavalle', 1, NULL, NULL),
(943, 'VILLEGAS', 'YAMILA JENNIFER ', '36581887', '1992-06-03', '2616342813', 'jeniyami092@gmail.com', '', '', 1, NULL, NULL),
(944, 'BENENATI', 'ANALIA VERONICA', '23709896', '1974-03-29', '2615915141', 'analia.benenati@gmail.com', 'B° Avena Sargento M. M. Rivas7', 'COSTA DE ARAUJO', 1, NULL, NULL),
(945, 'OLARTE', 'CARINA MIRTA', '24423438', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(946, 'OLARTE', 'ROMINA', '32510725', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(947, 'NAVARRA', 'EVA BEATRIZ', '25101191', '2000-01-01', '11111111', 'navarrabeatriz@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(948, 'MARCHUK', 'ANA', '28979126', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(949, 'ACOSTA ', 'SILVIA ANDREA', '25092146', '1976-02-05', '2616274677', 'silviacostalara@gmail.com', 'CALLE SALTA 2646 CIUDAD', 'CAPITAL ', 1, NULL, NULL),
(950, 'SANCHEZ', 'CRISTIAN DAVID', '23712089', '1974-01-12', '2615790565', 'cristiands@yahoo.com', '', '', 1, NULL, NULL),
(951, 'AGUIRRE', 'ANABELLA OLGA', '39677794', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(952, 'ANCONETANI', 'GRACIELA', '24085319', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(953, 'RIVERO', 'AMPARO VALENTINA', '45965316', '2005-05-29', '2617157187', 'Kimampa123@gmail.com', 'COSTA DE ARAUJO BARRIO FUERZA NUEVA M C C33', 'LAVALLE ', 1, NULL, NULL),
(954, 'NANCY FABIANA ', 'DENMANI', '26386511', '2022-12-06', '2616560066', 'licfabianadenmani@yahoo.com.ar', '', '', 1, NULL, NULL),
(955, 'ABDALA', 'Ana Laura', '29125438', '1982-02-24', '2616800569', 'abdala.analau@gmail.com', 'B° Trapiche - Calle Italia 2110', 'Godoy Cruz', 1, NULL, NULL),
(956, 'PÉREZ', 'MARIA ALEJANDRA', '30510613', '1983-06-22', '2616318521', 'alejandraperez2206@gmail.com', 'FELIPE PEÑA S/N-GUSTAVO ANDRÉ', 'LAVALLE', 1, NULL, NULL),
(957, 'MIGUEZ', 'LAURA', '25309049', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(958, 'figueredo', 'luciano Javier', '44756914', '2003-04-15', '2612697140', 'figueredoluciano012@gmail.com', 'Bº AMISO 2 M a C6', 'LAVALLE VILLA TULUMAYA ', 1, NULL, NULL),
(975, 'BARROSO', 'ROCIO MICAELA', '43117545', '2000-10-20', '2616416164', 'rbarroso.2019.p@gmail.com', 'calle Bracera  s/n Nueva California ', 'San Martin ', 1, NULL, NULL),
(976, 'ZOGBI', 'DARÍO', '25782724', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(990, 'REYES', 'DAIANA ALEXANDRA', '44756983', '2003-02-20', '2613902878', 'daianareyes3322@gmail.com', 'jocoli ', 'lavalle', 1, NULL, NULL),
(991, 'ALVARADO MORALES ', 'DEOLINDA CAROLINA', '41252223', '1997-11-09', '2616732025', 'carooalv18@gmail.com', 'calle moyano s/n Gustavo Andre ', 'lavalle ', 1, NULL, NULL),
(992, 'FARIAS', 'LUCAS AGUSTIN', '39381986', '1996-08-26', '2612737176', 'agustinlucas1996@gmail.com', 'Moyano s/n', 'Gustavo Andre', 1, NULL, NULL),
(993, 'ORTUBIA', 'FLORENCIA ANTONELA', '44757774', '2003-03-04', '2613663733', 'florenciaortubia6@gmail.com', 'gustavo Andres Calle Rodriguez', 'Lavalle', 1, NULL, NULL),
(994, 'ALMAZAN', 'ANABELA', '36475105', '2005-06-18', '2613426554', 'anabelacnco@gmail.com', 'calle general Acha s/n colonia Italia', 'Lavalle ', 1, NULL, NULL),
(995, 'ALMAZAN MARQUEZ', 'ANABELA ROSALI', '46475105', '2005-06-18', '2613426554', 'anabelacnco@gmail.com', 'calle general Acha s/n colonia Italia', 'Lavalle ', 1, NULL, NULL),
(1002, 'NIEVAS ', 'JULIETA VALENTINA ', '46233643', '2005-03-21', '2612789594', 'julietanievas05@gmail.com', 'Bº  AMTAGA Mf c10', 'COLONIA SEGOVIA GUAYMALLEN ', 1, NULL, NULL),
(1003, 'ARCIBIA', 'MICAELA ', '45529755', '2003-11-02', '2613726430', 'claumica03@gmail.com', 'barrio cooperativa la pega ', 'lavalle ', 1, NULL, NULL),
(1004, 'GELVEZ', 'Trinidad', '20113615', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1005, 'OLMEDO', 'AGUSTINA DANIELA', '40071592', '1997-01-21', '2612744437', 'gussolmedo246@gmail.com', 'Buenos Vecinos 6959', 'Guaymallen', 1, NULL, NULL),
(1006, 'LAMAS', 'EVELYN', '46235559', '2005-02-22', '2616063627', 'lamasevelyn4@gmail.com', 'Barrio El Palmeral portal 2 M-C casa 21', 'TULUMAYA', 1, NULL, NULL),
(1007, 'RUGGERI', 'SILVIA', '17619723', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1008, 'VILLEGAS', 'EVELYN FLORENCIA', '43941700', '2002-03-15', '2612631405', 'villegasflorencia2@gmail.com', 'Vicente Morales 96', 'TULUMAYA', 1, NULL, NULL),
(1009, 'NAVARRO TORRES', 'PRISCILA ABIGAIL', '44906128', '2003-11-18', '2613422398', 'navarropriscila1822@gmail.com', 'Calle San Esteban y Arnedo ', 'El Pastal - Las Heras', 1, NULL, NULL),
(1010, 'OZAN LUNA', 'CANDELA NICOL', '47154592', '2000-02-01', '2616016914', 'candelaozanluna00@gmail.com', 'Calle San Esteban s/n', 'El Pastal - Las Heras', 1, NULL, NULL),
(1011, 'ESTUDILLO', 'LAURA ', '31902512', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1012, 'ROLDÁN ', 'ALEJANDRO LIHUEL', '44010472', '2001-08-19', '2613725600', 'anleroldan156@gmail.com', 'Bº Solares del Nortes Mb C4', 'Tulumaya', 1, NULL, NULL),
(1013, 'MORENO', 'MARIANELA ALEXANDRA', '43941661', '2002-02-24', '2616266050', 'marianelaalexandramoreno@hotmail', 'Bº TUPAC AMARU A-20', 'TULUMAYA', 1, NULL, NULL),
(1014, 'SERAPIO', 'ANGEL MATIAS', '46062570', '2004-12-22', '2612730154', 'matiasserapio5@gmail.com', 'Barrio Tupac Amarú M-B casa 7', 'TULUMAYA', 1, NULL, NULL),
(1015, 'CARBONI ', 'LEONARDO JOAQUIN', '44746932', '2003-03-20', '2615014903', 'leonardocarboni2003@gmail.com', 'FINCA GAROFOLI ', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1016, 'OCHOA', 'ROSA CALIXTA', '38580587', '1995-03-27', '2934401072', 'ochoarosa43@gmail.com', 'ROQUE MONTENEGRO S/N', 'TULUMAYA', 1, NULL, NULL),
(1017, 'ROBLES', 'YANIL ALICIA', '45257567', '2003-04-17', '2616999190', 'yanilrobles392@gmail.com', 'Calle pública s/n', 'COLONIA SEGOVIA', 1, NULL, NULL),
(1018, 'QUIROGA DIAZ', 'ALICIA  ARIADNA', '43151574', '1999-12-09', '2617221033', 'QUIROGAABRIL83@GMAIL.COM', 'DANIEL GARCIA- ', 'Costa de Araujo LAVALLE ', 1, NULL, NULL),
(1019, 'LEITÒN', 'RICARDO IVÀN', '30543143', '1983-10-13', '2614726755', 'RICARDO.LEITON@GMAIL.COM', 'VILLEGAS 372', 'LAVALLE', 1, NULL, NULL),
(1020, 'NIETO', 'NAHUEL LUCIANO', '45720372', '2004-08-24', '2615157706', 'NAHUELNIETOJUAREZ@GMAIL.COM', 'JOSE HERNANDEZ 21', 'VILLLA TULUMAYA LAVALLE ', 1, NULL, NULL),
(1021, 'MARTINEZ', 'LORENZO JOSE', '45966985', '2005-06-17', '2612404446', 'lorenzojosemartinez@gmail.com', 'BARRIO BUENA ESPERANZA M- E CASA 8', 'NUEVA CALIFORNIA', 1, NULL, NULL),
(1022, 'CABRERA CASTRO', 'NICOLAS ', '36999884', '1992-09-15', '2616919924', 'cabreracastronicolas@gmail.com', 'BARRIO LOS PUELCHES M-I CASA 2', 'TULUMAYA', 1, NULL, NULL),
(1023, 'PIÑA', 'IRIS ALDANA', '39081280', '1996-01-10', '2613890372', 'irispina780@gmail.com', 'Bº Dorrego Sur ME C3', 'Tulumaya', 1, NULL, NULL),
(1024, 'CACERES', 'SANTIAGO LEON', '45360006', '2003-07-08', '2612089574', 'santiagoleoncaceres@gmail.com', 'BARRIO PARRIAL DEL SOEVA M-B CASA 6', 'BUENA NUEVA - GUAYMALLEN', 1, NULL, NULL),
(1025, 'ARAUJO CASTRO', 'FRANCO EXEQUIEL', '40217970', '1997-05-24', '2616736161', 'francoaraujo2497@gmail.com', 'BARRIO LOS OLMOS M-C CASA 7', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1026, 'ARANGUE', 'ROMINA ELIZABETH', '34191550', '1988-07-05', '2613902553', 'romina25arangue@gmail.com', 'CALLEJON LILLO 9184', 'LOS CORRALITOS', 1, NULL, NULL),
(1027, 'FERNANDEZ', 'FACUNDO JAVIER', '43418772', '2001-03-07', '2615617661', 'ff323788@gmail.com', 'HUARPES 156', 'TULUMAYA', 1, NULL, NULL),
(1028, 'NATALI', 'ALFREDO AGUSTIN', '45023463', '2003-10-02', '2613093874', 'nata2003alfredo@gmail.com', 'BARRIO LOS PUELCHES M-B CASA 9', 'TULUMAYA', 1, NULL, NULL),
(1029, 'TORRENT FERNANDEZ', 'TANIA ABRIL', '46164160', '2004-12-14', '2612633696', 'torrenttania97@gmail.com', 'calle Sulivan S/N', 'Nueva California - San Martín', 1, NULL, NULL),
(1030, 'ferreyra', 'celeste Micaela', '45967066', '2004-11-13', '2612475935', 'ferreyraceleste31@gmail.com', 'Barrio Tupac Amau maz a casa 23 ', 'Villa tulumaya Lavalle ', 1, NULL, NULL),
(1031, 'ARAUJO', 'Estefania Belen', '45965226', '2004-10-14', '2617194274', 'araujoestefania145@gmail.com', 'Calle Martin Fierro 191', 'Tulumaya', 1, NULL, NULL),
(1032, 'Aguero ', 'Milagros Gisel', '46162754', '2004-08-07', '2617217584', 'milagrosgiselaguero@gmail.com', 'callejon menendez', 'Las Heras', 1, NULL, NULL),
(1033, 'GONZALEZ', 'DANIELA NOEMI', '39086733', '1995-01-19', '2612464743', 'daniynacho550@gmail.com', 'BARRIO SOLARES DEL NORTE 2 M- I CASA 14', 'TULUMAYA', 1, NULL, NULL),
(1034, 'Guiñazu Bonarrico', 'Gastón Ariel ', '45360987', '2004-03-28', '2616396042', 'guinazugaston1@gmail.com', 'Barrio Unión Estrella Nueva ', 'Costa de Araujo LAVALLE ', 1, NULL, NULL);
INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `dni`, `fechanacido`, `telefono`, `mail`, `domicilio`, `localidad`, `idrol`, `clave`, `estado`) VALUES
(1035, 'GARCIA ', 'PRISCILA AGUSTINA', '46063218', '2004-11-29', '2612376314', 'garciapriscila46063218@gmial.com', 'RUTA 24 38', 'TULUMAYA', 1, NULL, NULL),
(1036, 'SACCONE ', 'NAHUEL HERNAN', '45965329', '2005-06-22', '2616237633', 'sacconenahuel562@gmail.com', 'bulevar Belgrano 628 Costa de Araujo', 'lavalle ', 1, NULL, NULL),
(1037, 'GONZALEZ', 'CAROLINA CARLA', '40926051', '1997-01-14', '2613602611', 'cgonzalez.2017.p@gmail.com', 'CALLE VILLANUEVA S/N', 'JOCOLI', 1, NULL, NULL),
(1038, 'GONZALEZ', 'MARIA ANTONELA ', '43749724', '2001-12-11', '2612715525', 'ANTONELAGONZALEZ159@GMAIL.COM', 'JOCOLI RUTA 40 KM 3338', 'LAVALLE ', 1, NULL, NULL),
(1039, 'ROJAS JOFRE', 'MARIANO IGNACIO JESUS', '44123337', '2002-02-15', '2615555555', 'marianorojas651@gmail.com', 'General Acha y San Martin ', 'LAVALLE', 1, NULL, NULL),
(1040, 'FALCON', 'LUCAS', '47079893', '2000-05-11', '2612177322', 'lucasfalcon823@gmail.com', 'BELGRANO 180', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1041, 'LUENGO DIAZ', 'MARÍA JOSÉ', '46161060', '2005-01-15', '2617075210', 'maridiaz.cabj12@mail.com', 'calle El Pastal', 'Las Heras', 1, NULL, NULL),
(1042, 'MENDOZA', 'NADIA MARISOL', '43213553', '2000-12-02', '2613899543', 'GARICBALE@GAMIL.COM', 'CALLE GROSSO , FINCA MIGUEL BANRREL', 'PARAMILLO LAVALLE MENDOZA', 1, NULL, NULL),
(1043, 'Genem', ' Alex Agustin', '45720363', '2004-08-15', '2615993877', 'genemagustin@gmail.com', 'Ruta 24 s/n', 'LAVALLE ', 1, NULL, NULL),
(1044, 'DAVILA NOGARA', 'JULIETA LEONOR', '39017265', '1995-03-16', '2614170867', 'julieta.davilanogara@gmail.com', 'BELGRANO 148', 'TULUMAYA', 1, NULL, NULL),
(1045, 'PARRA', 'HERNAN ', '44058314', '2002-04-26', '2615623310', 'parrahernan94@gmail.com', 'BARRIO SANTA MARIA M-C CASA 14', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1046, 'TORRES MARTINEZ', 'JOSÉ MANEL', '95149227', '2004-12-29', '2616662174', 'jmtm.29.12@gmail.com', 'Calle La Madrid ', 'Costa de Araujo', 1, NULL, NULL),
(1047, 'NAVARRA', 'MARIA CONCEPCION VIRGINIA', '17799813', '1966-04-19', '2616479604', 'mariavirginianavarra@yahoo.com.ar', 'Ruta 24', 'Ciudad Tulumaya', 1, NULL, NULL),
(1048, 'CARRIO ', 'RUTH', '20677936', '1969-07-08', '2613904729', 'prof.ruth.escuela@gmail.com', '', '', 1, NULL, NULL),
(1049, 'RIVAS NAVARRA', 'MATILDE', '45720315', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1050, 'LAUDECINA', 'JOSÉ CARLOS', '12931647', '1957-03-08', '2615359096', 'josecarloslaudecina@yahoo.com', '', '', 1, NULL, NULL),
(1051, 'ALESSANDRA', 'CARLA', '38759298', '1995-11-08', '2616306275', 'alessandracarla950@gmail.com', 'Rosario Puebla 6672', 'BERMEJO', 1, NULL, NULL),
(1052, 'PABLO', 'STELLA MARIS', '34068823', '1989-05-07', '2615167022', 'stellamarispablo@gmail.com', 'CHILE 2968', 'CIUDAD DE MENDOZA', 1, NULL, NULL),
(1053, 'FUSCO NONES', 'ALICIA DANIELA ', '24964778', '1976-02-20', '2613240015', 'dfusconones@gmail.com', 'VILLEGAS S/N', 'TULUMAYA', 1, NULL, NULL),
(1054, 'FUERTE', 'JOHANNA DANIELA', '35507201', '1953-01-01', '2616372611', 'johanna_fuerte@yahoo.com', 'B°Jardin el Sauce S/N', 'EL SAUCE', 1, NULL, NULL),
(1055, 'NOGALES', 'ESTELA DEL VALLE ', '44032914', '2002-07-01', '2616219913', 'NOGALESDANIEL51@GMAIL.COM', 'CALLE VILLA LOBO s/n', 'LAVALLE ', 1, NULL, NULL),
(1056, 'ARAYA ', 'XIMENA YASMIN LOURDES', '45447538', '2003-12-16', '2616557134', 'ARAYAXIMENA94@GMAIL.COM', 'BARRIO COLONIA 2 Mz A Casa 40 COLONIA SEGOVIA ', 'GUAYMALLEN ', 1, NULL, NULL),
(1058, 'VONKUNOSCHY', 'ENZO ADRIAN', '20112421', '1968-04-02', '2612443928', 'enzovonkunoschy@gmail.com', 'BARRIO EPY-EQUEN M-A CASA12', 'TULUMAYA', 1, NULL, NULL),
(1059, 'RODRIGUEZ ', 'ELBIO DANIEL ', '28469412', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1060, 'ALBORNOZ', 'JESICA YANINA', '42377255', '2000-07-02', '2615130862', 'jesicaalbornoz37@gmail.com', 'calle Alamo Solo ', 'EL PARAMILLO', 1, NULL, NULL),
(1061, 'RUEDA', 'FACUNDO MARTIN', '44904068', '2003-10-31', '2615151275', 'facurueda26@gmail.com', 'Bº Cuyum m5 c2', 'Costa de Araujo', 1, NULL, NULL),
(1062, 'FALCON', 'CARINA PATRICIA', '27473789', '1980-02-08', '2613361488', 'falconcarina2020@gmail.com', 'Pública s/n', 'TULUMAYA', 1, NULL, NULL),
(1063, 'Cirolin ', 'Laura Evangelina', '27969387', '1981-06-01', '2615123456', 'lauracirolin@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1064, 'LEDESMA', 'AXEL PEDRO', '44246572', '2002-06-21', '2615583390', 'axelledesma811@gmail.com', 'BARRIO FUERZA NUEVA M-A CASA - 4', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1066, 'BALDES', 'Cristina Beatriz', '22597067', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1069, 'RUIZ', 'ALUMINÉ', '30242387', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1070, 'GONZALEZ', 'MELINA LUCIANA', '45720306', '2003-12-27', '2617769605', 'melinakook@gmail.com', 'Barrio paramillo Mz B Casa 17', 'El paramillo Lavalle ', 1, NULL, NULL),
(1071, 'SILVA BERRIOS', 'IVAN TOMÁS', '42669466', '2000-03-21', '2612629617', 'ivansilvaok@gmail.com', 'Ruta 34 y calle San Juan ', 'Villa tulumaya Lavalle ', 1, NULL, NULL),
(1072, 'PESCETTI', 'JAVIER LAUTARO', '45531604', '2004-01-23', '2617481738', 'javierpescetti12@gmail.com', 'BARRIO COSTA DE ARAUJO H-12', 'COSTA DE ARAUJO ', 1, NULL, NULL),
(1073, 'ALONSO', 'ANDREA ALEJANDRA', '28340011', '1980-08-01', '2616575269', 'andreaalonso_a@yahoo.com.ar', 'ALBERDI 525', 'SAN MARTIN', 1, NULL, NULL),
(1074, 'MERCADO', 'NAHUEL AGUSTIN', '45720333', '2000-08-23', '2617516479', 'nahumercado2@gmail.com', 'Ruta 24 s/n ', 'LA PEGA', 1, NULL, NULL),
(1075, 'IRUSTA ', 'ADRIANA GABRIELA', '34675069', '1990-01-01', '2617610620', 'irustagabi90@gmail.com', 'Garibaldi 222', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1077, 'ANDRADA', 'Martín Miguel', '36581801', '1992-04-10', '2616813460', 'andrada.arq@gmail.com', 'Calle Margarita M de Torres 123', 'Costa de Araujo', 1, NULL, NULL),
(1078, 'PONT', 'Loena Yanina', '35200562', '1990-06-09', '2616670316', 'ies9024_lavalle@yahoo.com.ar', '', '', 1, NULL, NULL),
(1079, 'VIDELA', 'María Carla', '34786178', '1990-03-16', '2613448268', 'carla.1p.2013@gmail.com', 'Calle Puebla s/n', 'El Pastal', 1, NULL, NULL),
(1082, 'CARMONA', 'Abril Morena', '46235866', '2005-02-05', '2616939099', 'abrilmorenacarmona010@gmail.com', 'carril Montenegro s/n', 'Las Violetas', 1, NULL, NULL),
(1083, 'ARANCIBIA CAMARGO', 'Priscila Milena', '46233641', '2005-01-12', '2617002244', 'priscilaarancibia991@gmail.com', 'Bº Rufino Moyano M:B - C:11', 'Colonia Segovia Guaymallen', 1, NULL, NULL),
(1084, 'DIAZ', 'Loreto Stella Maris', '31937012', '1985-10-28', '2614711253', 'lolilsmdiaz@gmail.com', 'Bº Alto del Olvido M:C - C:09', 'Alto del Olvido Lavalle', 1, NULL, NULL),
(1085, 'JATIB', 'LEILA LORENA', '38306838', '1994-10-26', '2615029283', 'yurizone3000@gmail.com', 'Villegas 962', 'Tulumaya', 1, NULL, NULL),
(1086, 'ZAPATA', 'Brisa Jazmin', '44746170', '2003-03-29', '2615030735', 'brijazminzapata@gmail.com', 'Bº  Amiso I Mb C3', 'Tulumaya', 1, NULL, NULL),
(1088, 'RIVERA', 'Zulma Noemi', '41366508', '1988-11-27', '2615521194', 'noeriv27@gmail.com', 'Bº Tupac M:G - C:28', 'Tulumaya, Lavalle', 1, NULL, NULL),
(1089, 'OYOLA', 'Rocio Micaela', '40940173', '1998-02-02', '2612064711', 'rocio8674@gmail.com', 'Vicente Morales 43', 'Tulumaya', 1, NULL, NULL),
(1091, 'CORDOBA GONZALEZ', 'MARLENE SOFÍA', '44986927', '2004-08-31', '2644030120', 'sofycordoba553@gmail.com', '', '', 1, NULL, NULL),
(1092, 'BARROSO DIAZ', 'Brenda Agostina', '45716972', '2005-03-05', '2617579984', 'barroso.bren47@gmail.com', 'Calle Camargo 250', 'Jocoli Viejo Lavalle', 1, NULL, NULL),
(1093, 'LUCERO', 'TERESITA RUTH', '14025374', '1960-06-30', '2616901890', 'teresitaruthlucero@gmail.com', 'Barrio Los Puelches M-f casa 13', 'TULUMAYA', 1, NULL, NULL),
(1094, 'MASCHKE', 'ELIDA', '4408104', '1942-05-22', '-9490909', 'elidamasket@gmail.com', '', '', 1, NULL, NULL),
(1095, 'RUIZ', 'ANDREA BASILIA', '10592451', '1952-06-14', '2617101381', 'andreabasi14@gmail.com', '', '', 1, NULL, NULL),
(1096, 'PEREZ', 'Tania Mishelle', '46163492', '2004-11-28', '2613864897', 'taniamishelle118@gmail.com', '', '', 1, NULL, NULL),
(1097, 'QUEVEDO SERAPIO', 'Marcos Facundo Valentín', '46062550', '2004-10-25', '2617155804', 'quevedomarcos04@gmail.com', '', '', 1, NULL, NULL),
(1098, 'LOZA', 'ALDANA LUISIANA', '44405479', '2002-07-26', '2614614742', 'aldanaloza15@gmail.com', 'TULUMAYA', 'LAVALLE', 1, NULL, NULL),
(1099, 'RODRIGUEZ', 'LEANDRO LEONEL', '45587606', '2004-03-21', '2615934831', 'leandrouchiha298@gmail.com', 'RUTA 40 KM 3335', 'JOCOLI', 1, NULL, NULL),
(1100, 'MUÑOZ', 'Alma Ludmila', '45720397', '2004-09-16', '2617051852', 'almaludmila666@gmail.com', 'Polonio Montenegro 180', 'Tulumaya Lavalle', 1, NULL, NULL),
(1102, 'RODRIGUEZ', 'Laura Elizabeth', '32377041', '1986-04-25', '2612506396', 'malu250326@gmail.com', 'Calle Villalobos S/N', 'Jocolí Viejo Lavalle', 1, NULL, NULL),
(1103, 'GARCÍA ', 'Luciana Evelyn', '38205960', '1994-05-09', '2612062766', 'lugarcia493@gmail.com', '', '', 1, NULL, NULL),
(1104, 'MOLINA', 'Laura Yanina', '37622978', '1993-07-07', '2615671132', 'yanimoli07@gmail.com', '', '', 1, NULL, NULL),
(1105, 'HORMAZABAL', 'Alejandra', '28367012', '1981-01-01', '2614614742', 'alejandrahormazabal29@gmail.com', '', '', 1, NULL, NULL),
(1106, 'CUENCA', 'Andrea Lourdes', '39236835', '1995-12-09', '2616088873', 'cuencajulieta14@gmail.com', '', '', 1, NULL, NULL),
(1107, 'CUENCA', 'Sabrina Daniela', '45966668', '2004-10-23', '2612495294', 'danielacuencaa20@gmail.com', '', '', 1, NULL, NULL),
(1108, 'CANO', 'LUJAN AGUSTINA', '44697437', '2002-11-29', '3878446683', 'lujancanoagustina@gmail.com', 'Barrio Los Parrales m-d casa 5', 'Jocoli viejo', 1, NULL, NULL),
(1109, 'AGUERO', 'SOFIA SELENE', '45965291', '2005-04-13', '2634787009', 'sofiaaguero176@gmail.com', 'Santa Marina s/n', 'NUEVA CALIFORNIA', 1, NULL, NULL),
(1110, 'ARAYA', 'Walter Luca', '39085739', '1995-09-15', '2612321920', 'lucaaraya70@gmail.com', 'Bº Virgen de Lourdes M:B - C:9', 'Tres de Mayo Lavalle', 1, NULL, NULL),
(1111, 'YACANTE ABREGO', 'MARCO ANTONIO', '46661640', '2004-09-29', '2612381308', 'ies9024_lavalle@yahoo.com.ar', 'CHACON 649', 'EL BORBOLLON - LAS HERAS', 1, NULL, NULL),
(1114, 'MONTAÑA', 'MARIA GUADALUPE ', '45023522', '2003-09-04', '2612716536', 'guadazmontana09@gmail.com', 'Las heras y Rosario de las Lagunas', 'TULUMAYA', 1, NULL, NULL),
(1115, 'Vega Noguera', 'Sabrina Leonela', '46235649', '2004-12-25', '2615602083', 'vegasabri9@gmail.com', 'B°Solares del Norte 2, M-h C-4 ', 'TULUMAYA', 1, NULL, NULL),
(1116, 'ALVARADO', 'MAILEN ILEANA', '48668348', '2005-01-25', '2612696393', 'alvaradomailen494@gmail.com', 'BARRIO COOPERATIVA LA PEGA M-A CASA 9', 'LA PEGA - LAVALLE', 1, NULL, NULL),
(1117, 'GONZAGA', 'PRISCILA MAGALI', '44057410', '2001-12-03', '2617053391', 'priscilagonzaga656@gmail.com', 'Bº Dorrego Sur Mza B Casa 11', 'Villa tulumaya Lavalle ', 1, NULL, NULL),
(1118, 'REYNOSO ORIBE', 'MARIANELA', '44246954', '2002-05-08', '2616233315', 'marianela.oribe@gmail.com', 'BARRIO JARDIN DEL ROSARIO M-C CASA 5', 'TULUMAYA', 1, NULL, NULL),
(1119, 'VILLEGAS', 'MOISES DANIEL', '44820630', '2002-12-16', '2616691317', 'moisesvillegas452@gmail.com', 'BASUALDO S/N', 'SAN MARTÍN ', 1, NULL, NULL),
(1120, 'DUPERUT', 'AGUSTINA NEREA', '39843183', '1996-12-16', '2613068435', 'agustina.duperut@gmail.com', '', '', 1, NULL, NULL),
(1121, 'VILLEGAS', 'BRICIA AILÉN', '42063256', '1999-08-02', '2617695625', 'ailenbricia42@gmail.com', 'Bº Manantiales Mza C Casa 23 Villa Tulumaya', 'LAVALLE', 1, NULL, NULL),
(1122, 'BUSTOS', 'Andrea', '40371910', '1996-07-02', '2613398963', 'bustosandrea73@gmail.com', 'La Escondida S/N', 'La Pega Lavalle', 1, NULL, NULL),
(1123, 'CORTEZ', 'ALEXIS ', '41191096', '1998-01-15', '2614941064', 'aletattoo@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1126, 'ABARCA', 'JULIETA LUISINA', '44310267', '2002-07-29', '2613663482', 'abarcajuli888@gmail.com', 'GARIBALDI', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1127, 'ARANEGA', 'MELANIE ESTEFANIA', '45258269', '2003-05-08', '261154687314', 'mauricioaran34@gmail.com', 'ADMINISTRACIÓN', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1128, 'MEDINA', 'Fabiana Romina', '34786040', '1989-11-18', '2614708046', 'medinafabiana457@gmail.com', 'Bº Alto del Olvido M:a C:6 ', 'Salvatierra Lavalle', 1, NULL, NULL),
(1129, 'FERRER', 'Elina', '45967033', '2004-10-25', '2615935023', 'elinaferrer13@mail.com', '', '', 1, NULL, NULL),
(1130, 'SILIPRANDI', 'Andrea Daniela', '24964762', '1976-01-18', '2614679173', 'andreasiliprandi09@gmail.com', '', '', 1, NULL, NULL),
(1131, 'SOSA', 'Carina Agustina', '44756813', '2003-05-07', '2616432317', 'agustinasosa911@gmail.com', '', '', 1, NULL, NULL),
(1132, 'JANCO', 'Arnaldo Matias', '43543473', '2001-06-08', '2617114173', 'matiasjanco805@gmail.com', '', '', 1, NULL, NULL),
(1133, 'ORTIZ', 'Guadalupe', '45529753', '2004-01-26', '2612528593', 'guadaortiz0495@gmail.com', 'Ruta 24 S/N', 'El Chilcal Lavalle', 1, NULL, NULL),
(1134, 'SERAPIO', 'Cecilia', '32283838', '1986-06-26', '2613745871', 'apscecilia@gmail.com', 'los parrales C3', '', 1, NULL, NULL),
(1135, 'AGUERO', 'LAURA  LILIANA', '30091337', '1983-12-22', '2612793751', 'lauaguero83@hotmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1136, 'AVALOS', 'SAMANTA PRISCILA', '37001517', '1992-07-14', '261154709575', 'samanta.2012.5pt@gmail.com', 'Los Jarilleros', 'LAVALLE JOCOLÍ VIEJO', 1, NULL, NULL),
(1137, 'BORDON', 'TOMAS DAVID', '45967026', '2004-08-16', '2613831383', 'romi.reynoso68@gmail.com', 'ALTO DEL OLVIDO', 'LAVALLE - ALTO DEL OLVIDO', 1, NULL, NULL),
(1138, 'CABRERA', 'ROCIO DEBORA', '43749704', '2001-09-24', '2612082513', 'cabrerarooh204@gmail.com', 'CORREA FINCA COCCO', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1139, 'CORIA', 'LUCIA MILAGROS', '45967038', '2004-10-23', '2616639529', 'andreacasas@hotmail.com', 'REPÚBLICA DEL PERÚ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1140, 'IBAZETA  FLORES', 'MARÍA BELÉN JAZMÍN', '46618948', '2005-05-08', '2616165987', 'belenibazeta9@gmail.com', 'LAVALLE  JOCOLÍ VIEJO', 'LAVALLE', 1, NULL, NULL),
(1141, 'LOPEZ', 'YOSELIE MELANIE', '46474771', '2005-08-16', '2613102834', 'yoselielopez2@gmail.com', 'RUTA 40', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1142, 'MALDONADO', 'PATRICIA FLORENCIA', '41029748', '1998-02-09', '2614614742', 'patriciamaldonado468@gmail.com', 'B° Virgen de Andacollo ,F C23', 'LAVALLE - TRES DE MAYO ', 1, NULL, NULL),
(1143, 'MANRIQUEZ', 'BRISA PAMELA', '44905045', '2003-03-20', '156340275', 'dge4224@mendoza.edu.ar', 'SOLARES DEL NORTE ', 'LAVALLE - VILLA TULUMAYA (CIUDAD) ', 1, NULL, NULL),
(1144, 'OVIEDO', 'ORIANA NAHIR', '45720354', '2004-06-13', '261152099092', 'oviedooriana260@gmail.com', 'GENERAL ACHA ', 'LAVALLE - ALTO DEL OLVIDO', 1, NULL, NULL),
(1145, 'PALMA', 'JULIETA ABRIL', '46399543', '2005-06-21', '2614941279', 'cardozoviviana97@gmail.com', 'JOSÉ HERNANDEZ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1146, 'SOSA', 'ABRIL ALDANA', '46473273', '2005-04-24', '2617223016', 'abrilaldasosa@gmail.com', 'SAN JUAN', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1147, 'TOLEDO ZENTENO', 'MARIA LUJAN', '46235540', '2005-02-18', '2612086389', 'toledoluji@gmail.com', 'Calle Belgrano', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1149, 'CATALDO', 'VALERIA EDUVIGES', '43941684', '2001-12-13', '2616002184', 'valecataldo.59@gmail.com', 'EL CARMEN', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1150, 'CORDOBA AVILA', 'María Antonella', '41251769', '1998-03-02', '2614614742', 'cordobamarianila@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1151, 'FERNANDEZ', 'GABRIEL JOSUÉ', '46163223', '2004-12-02', '2617155113', 'wallacewillaim2@gmail.com', 'RIVADAVIA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1152, 'GONZALEZ', 'MELISA LOURDES', '45720361', '2004-02-29', '2617001939', 'melisagonzalez2904@gmail.com', 'Martin Fierro', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1153, 'GUTIERREZ PAEZ', 'CLAUDIA ANTONELLA', '47373189', '2002-01-11', '261155183334', 'antonellagutierrez880@gmail.com', 'Ortega', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1154, 'MATAMORO', 'MORENA CAMILA', '46663386', '2005-06-15', '2617050887', 'camilamatamoro4618@gmail.com', 'PEREZ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1155, 'MONTENEGRO', 'KEILA CARINA', '43416682', '2001-05-06', '261156668644', 'keilamontenegro76@gmail.com', 'RAMA 4 Y TAMBO', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1156, 'NAVARRO CASTRO', 'GERARDO FABIÁN', '44057394', '2001-04-05', '2614614742', 'fc288448@gmail.com', 'El Banco', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1157, 'OLIVA', 'JULIETA VALENTINA', '45361032', '2004-10-10', '2616996002', 'gabrielaleveque8@gmail.com', 'GUARDIA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1158, 'PERALTA  PAREDES', 'MARILIN  ELIZABETH', '39956304', '1996-11-14', '2644628945', 'peraltamarilin83@gmail.com', 'RUTA 40  KILOMETRO 3339', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1159, 'RODRIGUEZ', 'JÉSICA MILAGROS', '45529713', '2004-02-04', '261156478108', 'milagrosrodriguez2530@gmail.com', 'RUTA 40 KM 3316', 'LAS HERAS - EL PASTAL', 1, NULL, NULL),
(1160, 'SOSA AVENDAÑO', 'MILAGROS DAFNE', '43418790', '2000-10-06', '2614912211', 'sosamilagros911@gmail.com', 'Buenos Vecinos ', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1161, 'ALVAREZ', 'LEÓN JESÚS', '46474757', '2005-06-06', '2616089524', 'alvaresjesus621@gmail.com', 'ROQUE MONTENEGRO', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1162, 'AVILA GIMENEZ', 'CANDELA MAGALI', '44747427', '2003-01-08', '2614614742', 'CANDELA.AVILA@GMAIL.COM', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1163, 'CABRERA', 'GASTON EMMANUEL', '46235600', '2005-04-03', '2615434622', 'CGASTONCABRERA2021@gmail.com', 'Los Puelches', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1164, 'CALAPIÑA', 'IVAN RICHAR', '47605297', '2003-10-16', '2616481523', 'calapinaivan79@gmail.com', 'DORREGO ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1165, 'ESTELA', 'DANIELA SOLEDAD', '43075959', '2000-11-02', '2615762612', 'DESTELA481@GMAIL.COM', 'La Merced', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1166, 'FIORE', 'ERICA GIANINA', '39531207', '1996-03-28', '2614614742', 'ERICAMZA@HOTMAIL.COM.AR', 'Rosario de las Lagunas ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1167, 'FUNES', 'LOURDES MICAELA', '43354756', '2000-11-20', '2617050570', 'micafunes43@gmail.com', 'FRENTE IRIGOYEN', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1168, 'GENEM CABAÑEZ', 'MELANIE ANTONELLA', '44746928', '2003-04-05', '2613615283', 'antonellagenem@gmail.com', 'SANTA MARIA ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1169, 'GONZALEZ', 'ZAMIRA LILIAN', '45965259', '2005-01-28', '2615675007', 'gzamira469@gmail.com', 'SANTA MARIA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1170, 'GONZALEZ MOLINA', 'IVANA ANABEL', '44986924', '2004-05-06', '2614614742', 'molinaivana762@gmail.com', '25 de mayo Punta de Agua San Juan', 'SAN JUAN', 1, NULL, NULL),
(1171, 'LOPEZ', 'FRANCO TOBÍAS', '44247230', '2002-05-07', '4941609', 'francool1252@gmaial.com', 'COOP. JOCOLÍ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1175, 'MARTINEZ', 'Julián Omar', '42072882', '1999-10-25', '2614614742', 'pitymartinez513@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1176, 'MOLINA', 'LUCIANA NAZARENA', '46063126', '2004-11-06', '2613075800', 'lucianamolinanaza04@gmail.com', 'PALOMARES  ', 'LAVALLE - EL VERGEL', 1, NULL, NULL),
(1177, 'MORA', 'AGUSTIN ANCELMO', '44437979', '2002-07-22', '2614614742', 'agustinmora959@gmail.com', 'DORREGO SUR ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1178, 'PAREDES ', 'LUCIANA MELINA', '46062576', '2005-02-06', '2612729102', 'paredesluciana10@gmail.com', 'LAVALLE - JOCOLÍ VIEJO', 'LOS JARILLEROS II', 1, NULL, NULL),
(1179, 'RUIZ', 'FRANCO EMANUEL', '46234276', '2005-02-07', '2612533812', 'gabrielruiz840@gmail.com', 'CALLEJÓN HERNÁNDEZ', 'LAVALLE - EL CHILCAL', 1, NULL, NULL),
(1180, 'SUVIA HINOJOSA', 'NATALI HAYDEE', '46474718', '2004-12-09', '261156723613', 'natalisuvia@gmail.com', 'DORREGO ', 'LAVALLE - EL VERGEL', 1, NULL, NULL),
(1181, 'GONZALEZ', 'RAÚL GABRIEL', '24456942', '1974-07-15', '26155768', 'akordatetambien@gmail.com', 'Cabo San Pío 2202', 'Godoy Cruz', 1, NULL, NULL),
(1182, 'MAZA', 'IVANNA', '35908771', '1991-07-29', '2612386119', 'ivannamaza24@gmail.com', 'B LOTES CAVERO CALLE RAMON VAZQUEZ Y POLONIO GONZALEZ', 'JOCOLI VIEJO', 1, NULL, NULL),
(1183, 'PONCE', 'Edgar Darciel', '41004762', '1998-03-22', '2615696629', 'edgaarpoonce268@gmail.com', 'Calle Villegas Casa 152', 'Tulumaya Lavalle', 1, NULL, NULL),
(1184, 'AGUIRRE ', 'MARÍA GRACIELA ', '37517754', '1994-08-05', '2615185690', 'gianinaesme2018@gmail.com', 'ruta 40 km 3337', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1185, 'ARRIAGADA', 'LAUTARO NICOLÁS', '44309213', '2002-05-02', '2617066647', 'claudio.arriagada@live.com.ar', 'LOS PUELCHES MI C10', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1186, 'BAEZ', 'YANINA ANTONELA', '39081185', '1995-09-30', '2615605517', 'baezyanina58@gmail.com', 'PASAJE COMUNERO PEREZ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1187, 'BAIGORRIA', 'MAGALÍ ABIGAIL', '45965314', '2004-12-25', '2614614742', 'baigorriaabigail4@gmail.com', 'El Carmen', 'LAVALLE - EL PLUMERO', 1, NULL, NULL),
(1188, 'CARVAJAL GONZALEZ', 'MARÍA DE LOS ANGELES', '46331638', '2004-12-23', '2614614742', 'dge4258@mendoza.edu.ar', 'Pto. Las Liebres-Puesto Los Algarrobos', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1189, 'CASTRO', 'EDUARDO FACUNDO', '44905082', '2003-08-23', '261153366258', 'facuucastro709@gmail.com', 'Ruta 24 esq. Yrigoyen', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1190, 'CHACON', 'KAREN FATIMA', '43681901', '2001-04-08', '2614614742', 'chaconkaren997@gmail.com', 'GENERAL ACHA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1191, 'COLQUE VALLEJOS', 'DÁMARIS MICAELA', '46397114', '2005-03-08', '2612327582', 'colquedamaris930@gmail.com', 'Calle Arenales', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1192, 'GALLARDO', 'JULIAN EZEQUIEL', '42749706', '1999-10-12', '261156222110', 'julianggallardo42@gmail.com', 'MOYANO', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1193, 'GUZMÁN', 'BERNABE EMANUEL', '44757268', '2002-10-25', '2614941609', 'antuguzman30@gmail.com', 'QUIROGA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1194, 'LUCANIA', 'ESTEBAN DOMINGO', '43353852', '2000-12-15', '2614614742', 'estebanmlucania112233@gmail.com', 'RUTA 24 KM 25 CALLEJON GAYA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1196, 'MENDIETA', 'ALEXANDER LUCIANO', '44746169', '2002-11-25', '261155667252', 'videlaalejandra257@gmail.com', 'MANANTIALES', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1197, 'MERCADO', 'NAHUEL AGUSTIN', '45720334', '2000-08-23', '2615079833', 'nahumercado2@gmail.com', 'RUTA PROVINCIAL 24', 'LAVALLE - LA PEGA', 1, NULL, NULL),
(1198, 'MONASSA RECCHIA', 'ROCÍO DEL VALLE', '46396788', '2005-01-24', '2617165643', 'rociorecchia179@gmail.com', 'SANTA CECILIA II', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1199, 'PALMA PAZ ', 'Claribel Luján ', '44825113', '2003-05-29', '2614614742', 'clariipalma@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1200, 'PEREZ', 'MARTINA AGUSTINA', '45967030', '2004-07-01', '2617104361', 'perezmartina509@gmail.com', 'JOSÉ HERNÁNDEZ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1201, 'RIOS', 'JOEL DAVID', '44092255', '2002-04-15', '2614614742', 'acosta.daniel@inta.gob.ar', 'El Palmeral', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1202, 'RIVERA', 'ROCÍO ABRIL', '46235539', '2005-01-04', '2615521194', 'noemiaco9@yahoo.com.ar', 'Tupac Amaru', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1203, 'RODRIGUEZ', 'PRISCILA  NATALÍ', '45876812', '2004-09-03', '2613637641', 'silvialucero038@gmail.com', 'ORTEGA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1204, 'SOSA', 'SELENA AYELÉN', '43683154', '2001-04-17', '2612392327', 'selenaayelensosa@gmail.com', 'TALET', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1205, 'VALERO', 'DÉBORA AGOSTINA', '45967025', '2004-10-27', '2613043540', 'deboravalero@gmail.com', 'GODOY CRUZ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1206, 'VIDELA', 'AGUSTÍN ROMÁN', '45023427', '2003-10-14', '2616403496', 'romanvidela17@gmail.com', 'DORREGO', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1207, 'ZARATE PISARRO', 'LOURDES ANABELLA', '45360913', '2003-03-30', '2616714192', 'zaratepisarro@escuelacatroppa.edu.ar', 'Sullivan', 'SAN MARTÍN - NUEVA CALIFORNIA', 1, NULL, NULL),
(1208, 'ASEVEDO', 'BRISA ALEJANDRA', '44904078', '2003-07-12', '2616502087', 'pao.vero.videla@gmail.com', 'AVENA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1209, 'BATALLA', 'ORNELLA', '38908688', '1995-04-22', '2616680513', 'ornellajara95@gmail.com', 'Milagros ', 'GUAYMALLÉN - COLONIA MOLINA', 1, NULL, NULL),
(1210, 'CASTRO', 'HERNÁN LUCIANO EMANUEL', '45255164', '2003-09-01', '2616012794', 'Hernancastro126@gmail.com', 'LA FLORESTA III ', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1211, 'CAYO', 'NOEMI SABRINA', '42169189', '1999-07-10', '2614614742', 'sabrinacayo62@gmail.com', 'MONTENEGRO ', 'LAVALLE - LAS VIOLETAS', 1, NULL, NULL),
(1212, 'DIAZ', 'MARIANELA SOLEDAD', '44905048', '2003-04-13', '2613361630', 'dsole2422@gmail.com', 'DORREGO S/N A 300MTS CALLE YRIGOLLEN', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1213, 'GONZALEZ', 'FACUNDO NAHUEL', '40371939', '1997-06-10', '2614614742', 'cooperadora9024@gmail.com', 'Tupac', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1214, 'Kowalczuk', 'Cynthia', '32770383', '1987-01-09', '155780625', 'cooperadora9024@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1215, 'LÓPEZ', 'MARIANELA JOSEFINA', '45144825', '2003-03-05', '2614614742', 'cooperadora9024@gmail.com', 'DORREGO SUR ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1216, 'MERCAU', 'MILAGROS MICHELLE', '45529774', '2004-03-21', '2634950646', 'dge4224@mendoza.edu.ar', 'DORREGO SUR ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1217, 'NADAL', 'JONATHAN JOEL', '36697908', '1990-04-10', '2614614742', 'jonacaripiedra@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1218, 'OVIEDO', 'LAURA AYELÉN', '42669490', '2000-04-16', '2613043413', 'laurabibianarosales76@gmail.com', 'ALTO DEL OLVIDO', 'LAVALLE - ALTO DEL OLVIDO', 1, NULL, NULL),
(1219, 'RODRIGUEZ ZELAYA', 'JANET ANAHI', '43486943', '2001-01-08', '2614614742', 'rodriguezjanet028@gmail.com', 'JARILLEROS 2', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1220, 'villena ortega', 'zoe abigail', '43277018', '2001-04-05', '26123849', 'zoe.villena395@gmail.com', 'El Palmeral', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1221, 'FERREYRA', 'CARLA JULIETA', '37001683', '1992-06-02', '2616707293', 'carlajulietaferreyra@gmail.com', '', '', 1, NULL, NULL),
(1222, 'LARA', 'ANA LAURA', '47610084', '2002-07-05', '2612651496', 'anylara1010@gmail.com', '', '', 1, NULL, NULL),
(1223, 'ALDALLA', 'NATASHA ALDANA', '39088869', '1995-12-12', '2613048699', 'analdalla1212@gmail.com', 'LOS OLMOS', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1224, 'BALVOA', 'CARLA AGOSTINA', '42403389', '1999-05-10', '2614614742', 'balvoacarla@gmail.com', 'Roque Montenegro', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1225, 'BAZAN CAPPONETTO', 'MELINA ANTONELLA', '46474741', '2005-06-23', '2614614742', 'Karicap801@gmail.com', 'SANTA TERESITA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1226, 'CHACON', 'DIEGO NAHUEL', '42751193', '2000-04-27', '152420224', 'nahuuucha00@gmail.com', 'RUTA 40- KM 3338', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1227, 'CHACON', 'JESUS LEANDRO', '43151597', '2000-09-27', '152073934', 'Jesuucha1234@gmail.com', 'EL PORVENIR', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1228, 'CORDOBA LUCERO', 'ALEXIS JOSHUA', '44538973', '2002-11-11', '2614913685', 'RicardoPCordoba@gmail.com', 'Calle Pública', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1229, 'CUELLO REYNOSO', 'MELINA ABRIL', '44905012', '2003-01-18', '2644757664', 'cuellom628@gmail.com', 'SANTA LUISA ', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1230, 'GODOY', 'ANTONELLA BEATRIZ', '39677829', '1996-07-06', '2614614742', 'godoya471@gmail.com', 'BARRIO SOLARES DEL NORTE', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1231, 'GONZALEZ', 'PAULA CAMILA', '42357634', '2000-01-06', '2617107572', 'P.GONZALEZ.2019.P@GMAIL.COM', 'Tupac', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1232, 'HUNKALO', 'BRENDA ALDANA', '42750185', '1999-09-27', '2613096605', 'brendahunkaloo@gmail.com', 'BARRIO CUYUN I MANZANA C CASA 13', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1233, 'JOFRE', 'AYMARA GERALDINE', '46619193', '2005-05-10', '2614614742', 'carloselmaestro09@hotmail.com', 'Puesto El Algarrobito, paraje El Retamo', 'LAVALLE - SAN MIGUEL', 1, NULL, NULL),
(1234, 'LARA', 'MARÍA LUZ', '43636523', '2000-11-28', '261155868180', 'lourdesvivianavargas4@gmail.com', 'CELESTINO ARGUMEDO', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1235, 'MAYORGA', 'CLARA BEATRIZ FELIPA', '44756819', '2003-10-01', '261155745199', 'azcurramirii@gmail.com', '9 DE JULIO', 'LAVALLE - LA PALMERA', 1, NULL, NULL),
(1236, 'MORAGA', 'JAVIER FERNANDO', '40371997', '1997-08-15', '2612767329', 'javi.15.moraga@gmail.com', 'Bº Los Puelches M:A - C:20', 'Tulumaya Lavalle', 1, NULL, NULL),
(1237, 'MAYORGA', 'LAUTARO IVAN ISIDRO', '46235528', '2004-04-18', '2614614742', 'mayorgalautaro5@gmail.com', 'San Juan s/n frente a CIC San Francisco', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1238, 'OLIVA', 'GISEL ABIGAIL', '45361037', '2004-09-30', '2616445506', 'giselolivajbalberdi4026@gmail.com', 'Virgen del rosario ', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1239, 'ORO', 'LUCAS ALEXIS', '44124272', '2001-11-11', '2614941609', 'orolucas80@gmail.com', 'Santa Cecilia I Mna C casa 19', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1240, 'ORO', 'MAURICIO ARIEL', '45720320', '2004-12-13', '2616348277', 'oromauricio4@gmail.com', 'Santa Cecilia I', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1241, 'OYOLA', 'SOFÍA MILAGROS', '44908334', '2003-05-19', '2614614742', 'oyolasofia52@gmail.com', 'calle 8', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1242, 'PAILEMAN', 'JOAQUIN NAHUEL', '44820888', '2003-03-27', '2616208153', 'pailemanjoaquin@escuelacatroppa.edu.ar', 'MOLINARI', 'SAN MARTÍN - NUEVA CALIFORNIA', 1, NULL, NULL),
(1243, 'PEÑA', 'MACARENA IDALIA', '43942738', '2001-03-23', '261411909', 'alumnosgaleano@gmail.com', 'EL SACRIFICIO', 'LAVALLE - COSTA DE ARAUJO', 1, '43942738', 1),
(1244, 'SALAS', 'JAIRO SAHID DANILO', '45715693', '2005-04-17', '2614913894', 'jairosalas552@gmail.com', 'Pública 8482', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1245, 'ZANETTI', 'MARÍA ESTER', '45023423', '2003-10-17', '2616077884', 'zanettimaria6@gmail.com', ' COLONIA ITALIA', 'LAVALLE - COLONIA ITALIA', 1, NULL, NULL),
(1246, 'ANGULO', 'GONZALO DANIEL', '46235537', '2005-02-14', '2612123667', 'gonzel133@mendoza.edu.ar', 'Bº El Palmeral', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1247, 'ANGULO', 'JESÚS', '45023466', '2003-12-20', '2616818473', 'angulojesus1975@gmail.com', 'TUPAC AMARU ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1248, 'ARANCIBIA', 'Celeste María José', '40926053', '1997-12-03', '2614614742', 'majo_marochi@hotmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1249, 'ARAUJO', 'RENZO MANUEL', '43486253', '2001-07-16', '2614614742', 'renzoaraujo01@gmail.com', 'B COSTA DE ARAUJO', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1250, 'ARGUELLO', 'LAUTARO ISMAEL', '45023219', '2004-04-20', '153045345', 'lautaroarguello481@gmail.com', ' Barrio el porvenir', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1251, 'BARBOZA', 'GABRIEL ALFREDO', '46328689', '2005-04-21', '2614511617', 'gbarboza21040512@gmail.com', 'PARAGUAY', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1252, 'BLANCO', 'ALAM URIEL', '46235502', '2005-02-18', '2612575959', 'alamblanco434@gmail.com', 'Santa Cecilia II', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1253, 'CASTRO', 'FACUNDO JULIÁN EZEQUIEL', '40270112', '1997-03-09', '2614614742', 'FACUCASTROLP123@GMAIL.COM', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1254, 'DOMIZI', 'GISELLA AYELEN', '43943105', '2001-12-02', '2614614742', 'GISELLADOMISI72@Gmail.com', 'BELGRANO', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1255, 'DONOSO SIGOT', 'EMANUEL EDUARDO', '43279810', '2001-02-10', '2616716484', 'Emanueldonoso16@gmail.com', 'MOLINA', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1256, 'MORALES', 'ALBERTO MATÍAS', '35546049', '1991-01-20', '2615012658', 'albertoppmorales@gmail.com', 'FUERZA NUEVA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1257, 'OBREDOR', 'TIAGO ADRIÁN', '45715675', '2004-05-09', '2615180049', 'tiagoobredor2020@gmail.com', 'B NEBOT', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1258, 'OLIVARES VILLEGAS', 'LEANDRO TOMÁS', '44746161', '2003-04-06', '261152072650', 'broxter87jose@gmail.com', 'LA PALMERA', 'LAVALLE - LA PALMERA', 1, NULL, NULL),
(1259, 'PERALTA', 'OSCAR MIGUEL ANGEL', '45965343', '2005-06-01', '2614726896', 'lucaa23@gmail.com', 'FUERZA NUEVA ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1260, 'PEREZ', 'GIMENA ANDREA', '35546014', '1991-02-14', '2614169237', 'gimeperez1991@gmail.com', 'B° Virgen del Rosario', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1261, 'QUIROGA', 'HECTOR NEHEMÍAS', '45965215', '2004-11-23', '2616589946', 'quiroganehemias2@gmail.com', 'Grané', 'SAN MARTÍN - NUEVA CALIFORNIA', 1, NULL, NULL),
(1262, 'QUIROZ', 'MAYERLY ROSA', '46867835', '2005-05-31', '2615012887', 'yaerlyquirozmq123@gmail.com', ' RAMON VAZQUEZ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1263, 'REITTER', 'MICHAEL JESÚS', '45967079', '2004-12-15', '261156518130', 'reiterm882@gmail.com', 'NUEVO VERGEL', 'LAVALLE - EL VERGEL', 1, NULL, NULL),
(1264, 'RETAMOZO', 'KEVIN ALFREDO', '44819255', '2002-12-19', '261156450937', 'kevinretamozoalfredo19@gmail.com', 'PALOMARES ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1265, 'VIDELA', 'GASTÓN EZEQUIEL', '45023460', '2003-12-26', '261155382056', 'tongabeat15@gmail.com', 'Solares del Norte', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1266, 'ZABALETA', 'JÉSICA ANDREA', '45967061', '2004-10-07', '2614855043', 'guadalupeyjesica@gmail.com', 'FINCA DI MARÍA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1267, 'AGÜERO', 'ANGELES AILÉN', '44531243', '2002-12-02', '2616596817', 'angelesaguero@jbalerdi4026.edu.ar', 'Bº JARDIN EL SAUCE MC C17', 'GUAYMALLÉN - BERMEJO', 1, NULL, NULL),
(1268, 'ANTEQUERA', 'MARÍA JOSÉ', '44820885', '2003-01-30', '2615183762', 'JLAcalifornia@gmail.com', 'UDAONDO S/N', 'SAN MARTÍN - NUEVA CALIFORNIA', 1, NULL, NULL),
(1269, 'BALDERRAMA', 'AGUSTINA MAGALÍ', '44905025', '2002-07-14', '2614614742', 'magalibalderramaagustina@gmail.com', 'RUTA PROVINCIAL 24 ', 'LAVALLE - EL CHILCAL', 1, NULL, NULL),
(1270, 'CARABAJAL', 'JUAN CRUZ', '44438834', '2002-07-23', '2614614742', 'paulo.carabajal@hotmail.com', 'EL PARAISO MB C 12', 'LAVALLE - LAVALLE ', 1, NULL, NULL),
(1271, 'CASANOVA', 'JUAN ALBERTO', '42751172', '1999-08-04', '2617031079', 'casanovajuanalberto@gmail.com', 'SAN ESTEBAN', 'LAS HERAS - EL PASTAL', 1, NULL, NULL),
(1272, 'CASTRO RIVAS', 'YOSELIE MARLENE', '44904009', '2003-04-15', '2612452519', 'castromarlen029@gmail.com', 'SAN MARTIN ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1273, 'CIPOLLONE', 'LUCAS ALEJO', '45966642', '2004-10-15', '2615374096', 'lucascipollone2@gmail.com', 'RUTA 40', 'LAS HERAS - EL PASTAL', 1, NULL, NULL),
(1274, 'CUELLO', 'AXEL GUSTAVO', '44905044', '2003-04-13', '261155617867', 'cesarcuello55@gmail.com', 'SAN MARTIN ', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1275, 'GARAY', 'CRISTIAN EMANUEL', '41795938', '1999-05-13', '2614614742', 'ies9024_lavalle@yahoo.com.ar', 'BAYO Y MAZA', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(1276, 'GONZALEZ', 'JEREMÍAS ARIEL', '45142234', '2003-11-26', '2616845101', 'jerefedenoah@gmail.com', 'Don Bosco', 'LAVALLE - EL PLUMERO', 1, NULL, NULL),
(1277, 'GUTIERREZ', 'PAMELA SOLANGE', '45361440', '2001-11-16', '2616714625', 'gutierrezpame8@gmail.com', 'Pantano', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1278, 'HEREDIA', 'MELANIE SOFÍA', '44746186', '2003-04-02', '2614614742', 'melaniesofi759@gmail.com', 'Calle Genral Acha ', 'LAVALLE - ALTO DEL OLVIDO', 1, NULL, NULL),
(1279, 'JOFRE', 'JOSEFINA YASMIN', '46397708', '2005-03-31', '2614614742', 'josefinajofre65@gmail.com', 'LAGUNAS DE BARTOLUCCE 2', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1280, 'MARANO GONZALEZ', 'FERNANDO GABRIEL', '40919302', '1997-12-01', '2613627172', 'marano011121997@gmail.com', 'SAN LUIS ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1281, 'MARTINEZ', 'PATRICIA ANABEL', '46476515', '2005-06-20', '2614614742', 'anabelmartinez1721@gmail.com.ar', 'FINCA NOGUERA', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1282, 'MARTINEZ BETANCUR', 'MAGALI BELÉN', '45531462', '2003-11-23', '261156727238', 'ies9024_lavalle@yahoo.com.ar', 'LOTEO CAVERO - FINCA IBAÑEZ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1283, 'MEDINA', 'JAVIER OSVALDO', '44124277', '2002-03-09', '2614614742', 'ies9024_lavalle@yahoo.com.ar', 'Unión vecinal', 'LAVALLE - COLONIA ITALIA', 1, NULL, NULL),
(1284, 'ORTIZ', 'VICTORIA ROSARIO SOLANGE', '44405463', '2002-05-15', '4941609', 'ies9024_lavalle@yahoo.com.ar', 'Rep. del Perú Mna A casa 1', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1285, 'PUEBLA', 'LEONEL ANTULIO JESUS', '46474768', '2005-02-05', '261153028516', 'marcelopuebla730@gmail.com', 'San Juan s/n frente a CIC San Francisco', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1286, 'QUEZADA VILLEGAS', 'PRISCILA CARLA', '38306863', '1994-11-28', '2614614742', 'carla_44_villegas@hotmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1287, 'ROJAS', 'MILAGROS VICTORIA', '46397721', '2005-03-31', '2612193375', 'rojasmilagros651@gmail.com', 'Virgen del Rosario', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1288, 'JONATHAN ALEXIS ', 'VIDELA', '44405397', '2002-04-24', '2614614742', 'alexisvidela588@gmail.com', 'VILLANUEVA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1289, 'Giamporto', 'Maria Valeria', '32665511', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1291, 'MORALES', 'SOLEDAD AYELÉN', '46162511', '2005-05-03', '2614614742', 'dge4258@mendoza.edu.ar', 'Puesto San Antonio', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1292, 'AGUILERA', 'YESICA ELIZABETH', '32116916', '1986-03-25', '2615715614', 'aguilerayesica@gmail.com', 'Bº Solares del Norte M-C Casa 13', 'LAVALLE', 1, NULL, NULL),
(1293, 'CATALDO', 'TATIANA AILEN', '42749715', '2000-05-07', '261156697912', 'TATIANACATALDO777@gmail.com', 'EL CARMEN', 'LAVALLE - EL PLUMERO', 1, NULL, NULL),
(1294, 'GUARDIA', 'VALENTINA', '44904062', '2003-10-13', '2615040166', 'guardiavalentina16@gmail.com', 'Bª Cuyum II M:3 - C:13', 'Costa de araujo Lavalle', 1, NULL, NULL),
(1297, 'MOLINA ARANCIBIA', 'NAOMÍ ABRIL', '44878502', '2003-04-07', '2614614742', 'naomimolinaarancibia@gmail.com', 'PORTAL DEL SOL M:C C:5', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1298, 'ARAYA ', 'GABRIELA IVANA', '39239243', '1995-08-05', '2616944575', 'gabiaraya005@gmail.com', '', '', 1, NULL, NULL),
(1299, 'LENCINAS', 'LAURA ESTEFANÍA', '42912597', '2000-10-26', '2616742497', 'lauralencinas2016@gmail.com', '', '', 1, NULL, NULL),
(1300, 'LUCERO', 'BRISA ELIZABETH', '46162802', '2004-09-06', '2615592323', 'brisalucero.eli@gmail.com', 'CALLEJON LILLO 9434', 'COLONIA SEGOVIA', 1, NULL, NULL),
(1301, 'OBSEQUIO ', 'INSTITUCIONAL', '1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1302, 'ACIAR', 'SABRINA MALENA', '44308030', '2002-05-16', '261156432311', 'sabrinaaciar22@gmail.com', 'JARILLEROS II MANZANA A CASA 1', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1303, 'ALBA', ' ANGEL GABRIEL', '44405398', '2002-07-22', '2614614742', 'rosa2019hay@gmail.com', 'B CALLEJON MOCAYAR', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1309, 'ALVAREZ', 'EMILIANO GABRIEL', '46062567', '2005-01-02', '2615897603', 'angyrecio78@gmail.com', 'EL PALMERAL', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1310, 'ARCE', 'DAIANA ANABEL', '41252219', '1998-06-09', '2612575073', 'dayo.arce17@gmail.com', 'LOS OLMOS', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1311, 'ATAMPIZ', 'MORENA NATASHA', '44404608', '2002-07-15', '2604579168', 'natashamorena_02@hotmail.com', 'Belgrano ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1312, 'ATANACIO', 'LUIS ALBERTO', '45255357', '2003-10-30', '38846002118', 'ellucho3010@gmail.com', 'Belgrano', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1314, 'BRIZUELA OLMOS', 'VALENTINA ABRIL', '45720355', '2004-07-26', '2614614742', 'vanina.olmos@gmail.com', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 'Huarpes', 1, NULL, NULL),
(1315, 'CABEZAS RODRIGUEZ', 'ZOE ABI ALEXANDRA', '45023483', '2003-12-30', '2614614742', 'nicolcabezas23@gmail.com', 'Bº COOP. LA PEGA M:D C:11', 'LAVALLE - LA PEGA', 1, NULL, NULL),
(1317, 'CABRERA', 'CARINA MAGALI', '45874386', '2004-08-05', '2612776449', 'magalicabrera092@gmail.com', 'QUIROGA', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1318, 'CABRERA', 'CLAUDIA BELÉN', '45720304', '2004-01-08', '0156683448', 'dge4224@mendoza.edu.ar', 'B° Dorrego', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1319, 'CAVERO CRUZ', 'Yamila Desiree', '38475164', '1994-11-07', '2614614742', 'yamicavero@gmail.com', 'RUTA 40 KILÓMETRO ', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1320, 'DIAZ', 'IVANA ANALIA', '44904066', '2003-08-28', '2612327756', 'ivanadiaz058@gmail.com', 'FUERZA NUEVA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1322, 'ANTONELLA GISEL', 'FIGUEROA', '45023474', '2003-10-07', '156204650', 'dge4224@mendoza.edu.ar', 'SOLARES DEL NORTE ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1324, 'GIANGIULIO', 'MARÍA VICTORIA', '45965336', '2005-06-26', '2613611770', 'diego.giangiulio@gmail.com', 'BELGRANO', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1325, 'GOMEZ', 'JEMIMA ZOE', '44905091', '1999-11-03', '2615195260', 'arancibialiliana76@gmail.com', 'PORTAL DEL SOL', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1326, 'GONZALEZ', 'NICOLE ABRIL', '45361436', '2004-01-02', '2614614742', 'ng924055@gmail.com', 'Cooperativa Jocoli', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1327, 'GONZALEZ', 'PAULA GISEL', '36581876', '1992-06-18', '2613369976', 'paoo15gnzalez@gmail.com', 'GUSTAVO ANDRÉ', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1328, 'GUALLAMA', 'ALDANA GABRIELA', '45449602', '2003-12-29', '2612694906', 'aldanaguallama@gmail.com', 'LAMADRID', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1329, 'LOPEZ ARIAS', 'IARA VALENTINA', '46473699', '2005-02-13', '2614614742', 'mendoza1900@hotmail.com', 'GUAYMALLÉN - COLONIA SEGOVIA', 'MARTÍN FIERRO', 1, NULL, NULL),
(1330, 'MALDONADO', 'SOFIA NICOLE', '45967055', '2004-07-21', '2612380037', 'rosisuarez119@gmail.com', 'Callejon Fernandez', 'LAVALLE - EL PARAMILLO', 1, NULL, NULL),
(1331, 'MANZANO', 'LUCIANA ELIZABETH', '42403375', '1998-03-21', '2617113671', 'lucimanzano597@gmail.com', 'DORREGO SUR', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1332, 'MAYORGA', 'FLORENCIA DAMARIS', '40889554', '1997-12-06', '2616368987', 'cens3439dge@gmail.com', 'PARAISO DE LA COSTA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1335, 'VILLEGAS', 'CAREN MACARENA', '39236027', '1996-08-20', '2634715423', 'caren.villegas.29@gmail.com', '', '', 1, NULL, NULL),
(1336, 'NAVARRO', 'BRENDA ROCIO', '46062565', '2004-12-05', '2616317759', 'navarroguada43@gmail.com', 'LA COLMEMENA ', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1337, 'NIEVAS', 'PRISCILA MILAGROS ABRIL', '46235595', '2005-03-04', '2613865827', 'priscilanievas187@gmail.com', 'SANTA MARTA Y RUTA 24', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1338, 'PAEZ', 'DAIANA AILEN', '43941689', '2001-05-24', '261156494967', 'paezdaiana431@gmail.com', 'MOYANO', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1339, 'PASTRAN ZARATE', 'NAHUEL EZEQUIEL', '46399874', '2005-05-24', '2612523311', 'mendoza900@hotmail.com', 'CASA EN FRENTE DE LA BODEGA DONATTI', 'LAVALLE - EL VERGEL', 1, NULL, NULL),
(1340, 'RIOS', 'KEILA BELEN', '37624722', '1992-10-07', '2612766696', 'keilarios855@gmail.com', 'Chacon Las Colectivas', 'LAS HERAS - EL BORBOLLÓN', 1, NULL, NULL),
(1341, 'RIVERO', 'TOMAS NAHUEL', '45967089', '2004-12-21', '2614614742', 'riveromartin55@gmail.com', 'CUYUN III', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1342, 'SANJURJO', 'AGUSTINA SOLEDAD', '40561274', '1997-08-28', '2613254678', 'sanjurjosole98@gmail.com', 'EVA PERON Y FELIX ARAUJO', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1346, 'SOSA', 'ELIANA DANIELA FLORENCIA', '44438810', '2002-09-21', '2614614742', 'el5osa212@gmail.com', 'Pto. EL BAGUAL', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1347, 'TORRES', 'MAYRA ORIANA JANET', '45721020', '2004-07-29', '2613404164', 'mayrapamela86@gmail.com', ' Dorrego y Los Palomares', 'LAVALLE - EL VERGEL', 1, NULL, NULL),
(1348, 'YACANTO', 'NICOLE EMILCE', '45965212', '2004-07-16', '2613874043', 'nicolyacanto@gmail.com', 'CUYUM', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1349, 'ZAPATA', 'AGOSTINA MARIA', '44405746', '2002-09-03', '2614614742', 'agostinazpt@gmail.com', 'MATHUS HOYOS', 'GUAYMALLÉN - BERMEJO', 1, NULL, NULL),
(1355, 'FERNANDEZ', 'AYELÉN TAMARA ANABEL', '43075970', '2000-10-19', '2616348097', 'afernandez.2019.p@gmail.com', 'LAS PALMAS', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1356, 'FERNANDEZ', 'CARLOS GABRIEL', '41702452', '1998-10-10', '2616808358', 'gabrielfernandez.374@gmail.com', 'Belgrano', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1357, 'FERNANDEZ', 'IANARA EIMI NULIN', '43943649', '2001-03-09', '2614614742', 'fernandezianara3@gmail.com', 'MANZANA C - CASA 17', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1360, 'FIORIO', 'FRANCISCO', '44820621', '2003-04-25', '2614614742', 'franfiomotog6atr123@gmail.com', 'PEREDA ESQUINA BOZZI', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(1361, 'ROBERTO NAHUEL', 'GOMEZ', '43213559', '2000-09-16', '2614614742', 'nahuelgomez43213559@gmail.com', 'SANTA CECLIA I', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1362, 'ALDANA GISELA', 'GONZALEZ', '39677858', '1996-08-08', '2616556331', 'gonzalezgisela065@gmail.com', 'GUANACACHE ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1363, 'LOZANO', 'MAURICIO GABRIEL', '41252205', '1998-05-06', '621155024685', 'lozano.nahuel88@gmail.com', 'BARRIO FUERZA NUEVA MANZANA B CASA 27', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1364, 'MALITTO LARRAIN', 'SAMIR RODRIGO', '46163831', '2005-01-08', '2616324502', 'samirmalitto11@gmail.com', '12 DE OCTUBRE ', 'GUAYMALLÉN - PUENTE DE HIERRO', 1, NULL, NULL),
(1365, 'MANQUEZ', 'NADIA', '30773583', '1984-09-01', '2617009853', 'manqueznadia@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1366, 'MOLINA', 'LUIS IVÁN', '47876131', '2004-09-15', '2613867051', 'molinaivan687@gmail.com', 'GUSTAVO ANDRE', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1368, 'Gomez', 'Elina', '10973982', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1369, 'PINTOS', 'DELMA NEREA', '36633790', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(1374, 'ALVARES', 'GABRIELA FERNANDA', '43485633', '2001-05-09', '2612438464', 'gabrielaalvares@gmail.com', 'ROQUE MONTENEGRO S/N', 'TULUMAYA', 1, NULL, NULL),
(1378, 'MARGUERETTAZ', 'MARIA ELENA', '5460797', '1948-06-05', '2614941058', 'ies9024_lavalle@yahoo.com.ar', 'PUJADAS 64 ', 'TULUMAYA', 1, NULL, NULL),
(1386, 'RODRIGUEZ', 'GRISELDA CELESTE', '43637230', '2001-01-07', '2616947484', 'griserodriguez0701@gmail.com', 'RUTA 40 KM 3314', 'EL BORBOLLON - LAS HERAS', 1, NULL, NULL),
(1387, 'VILLEGAS', 'CLAUDIO RAFAEL', '33821696', '1988-11-05', '2617155414', 'claudiovillegas24@gmail.com', 'BARRIO LOS PUELCHES M-E CASA 7', 'TULUMAYA', 1, NULL, NULL),
(1388, 'SACCONE', 'MAURO DAMIAN', '31130097', '1985-03-13', '2616262717', 'maurodamiansaccone@gmail.com', 'urquiza', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1389, 'ALVAREZ', 'MARIA SOLEDAD', '31432246', '1985-05-29', '2616396309', 'soledadalvarez84@gmail.com', 'PEDRO MOLINA 3840', 'GUAYMALLÉN - SAN JOSÉ', 1, NULL, NULL),
(1390, 'CENTENO', 'MARIO OSVALDO', '17297493', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1391, 'FRIAS', 'GLORIA BEATRIZ', '17889132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1392, 'ACOSTA', 'SILVIA ANDREA', '27612097', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1393, 'ARGENTINI', 'VIVIANA ', '17889125', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1394, 'VERCESI', 'LORENA', '28406723', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1395, 'GARCIA', 'Florencia Milagros', '41794416', '1999-02-23', '2613673593', 'florgarciaa706@gmail.com', 'Ruta 36 Km874', 'Tres de Mayo Lavalle', 1, NULL, NULL),
(1396, 'GARCIA', 'Patricia Alejandra', '35547435', '1991-09-06', '2613673593', 'florgarciaa706@gmail.com', 'Ruta 36 Km 874', 'Tres de Mayo Lavalle', 1, NULL, NULL),
(1397, 'PAURA', 'ANDREA DEL CARMEN', '22941772', '0001-01-01', '', '', '', 'LAVALLE ', 1, NULL, NULL),
(1398, 'VILLEGAS', 'PATRICIA MARIELA', '24115115', '0001-01-01', '', 'patriciavillegas99@gmail.com', '', 'lavalle ', 1, NULL, NULL),
(1399, 'PEDERNERA', 'NANCY JESSICA', '33578979', '2000-01-01', '111111', 'profesorajessicapedernera@gmail.com', 'DR. MORENO Y FLEMING', 'LAVALLE', 1, NULL, NULL),
(1400, 'NAVARRA', 'DARIO ODILIO', '20115250', '1968-01-14', '2616721868', 'darionavarra@yahoo.com', 'BARRIO EPI EQUEN 3', 'LAVALLE', 1, NULL, NULL),
(1401, 'DIAZ', 'LAURA GRACIELA', '21897482', '2000-01-01', '111111', 'laugradiaz482@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1402, 'ZAMORA', 'LUIS HECTOR', '20668110', '2000-01-01', '1111111', 'mendocono1969@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1403, 'MONTENEGRO', 'MARIA ANTONIA', '24289776', '2000-12-10', '1111111', 'mendocono1969@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1404, 'FUNES', 'SANDRA ELIZABETH', '22569846', '2000-01-01', '111111', 'sanpety33@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1405, 'PAEZ', 'ELIZABETH ESTEFANIA', '34041029', '2000-01-01', '1111111', 'elymzaeep@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1406, 'RONDININI', 'PAULA ANALIA', '26557135', '2000-01-01', '111111', 'paulirondinini2003@yahoo.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1407, 'BARROSO', 'LUCIANA ESTEFANIA', '25934580', '2000-01-01', '1111111', 'lucianaebarroso@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1408, 'ORMEÑO', 'ANA BELEN', '30741205', '2000-01-01', '1111111', 'anybeyo@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1409, 'AGUERO DIAS', 'JANET ALEXANDRA', '30536080', '2000-01-01', '1111111', 'elcieloesellimite_33@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL);
INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `dni`, `fechanacido`, `telefono`, `mail`, `domicilio`, `localidad`, `idrol`, `clave`, `estado`) VALUES
(1410, 'BIORIZA', 'VIVIANA LOURDES', '20932380', '2000-01-01', '1111111', 'Biorizaviviana@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1411, 'QUINTEROS', 'FLAVIA ELIZABETH', '32882792', '2000-01-01', '1111111', 'flaviaquinteros13@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1414, 'MERINO', 'CELESTE LORENA', '23966229', '2000-01-01', '1111111', 'dge1298@mendoza.edu.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1415, 'OJEDA', 'SONIA MABEL', '25745160', '2000-01-01', '1111111', 'dge1046@mendoza.edu.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1416, 'RODRIGUEZ', 'CLAUDIA LILIANA', '26828626', '2000-01-01', '1111111', 'claudialrodriguez@mendoza.edu.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1417, 'BALVERDE', 'ELDA VALERIA', '21375818', '2000-01-01', '1111111', 'ebalverde@mendoza.edu.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1418, 'LUCERO', 'JESICA ANABEL', '25254005', '2000-01-01', '1111111', 'jesica.a.lucero@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1419, 'MANRESA', 'NOELIA EDITH', '26838657', '2000-01-01', '1111111', 'srtanoelmanresa@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1420, 'CACERES', 'JAQUELINA SOLEDAD', '28964470', '2000-01-01', '1111111', 'jaquelinascaceres074@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1421, 'QUIROGA', 'PATRICIA ISABEL', '25092890', '2000-01-01', '1111111', 'quirogapatricia75@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1422, 'DERIO', 'MARIA ANGELA', '20802831', '2000-01-01', '1111111', 'mariaangeladerio@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1423, 'LABRA', 'ALICIA ADRIANA', '18083869', '2000-01-01', '1111111', 'adrylab96@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1424, 'DANIELI', 'TAMARA AYELEN ROXANA', '33461592', '0001-01-01', '11111111', 'tamaradanieli@gmail.com', 'lavalle ', 'lavalle ', 1, NULL, NULL),
(1425, 'BITTLER', 'STELLA MARIS', '20897372', '2000-01-01', '1111111', 'sbittler69@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1426, 'QUINTERO', 'SILVIA LILIANA ', '21533159', '0001-01-01', '', 'dge1098@mendoza.edu.ar', '', 'LAVALLE', 1, NULL, NULL),
(1427, 'ABADIE', 'NICOLAS DANIEL', '26643517', '2000-01-01', '1111111', 'abadie_nd@yahoo.com.ar', 'LAS HERAS', 'LAS HERAS', 1, NULL, NULL),
(1428, 'VARO', 'LUZ JULIETA', '37517249', '0001-01-01', '', 'julieta.varo@gmail.com', '', 'lavalle', 1, NULL, NULL),
(1429, 'CUENCA', 'MARIANGELES YESICA', '36775985', '2000-01-01', '1111111', 'mariangelescuenca1@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1430, 'LUNA', 'ALEJANDRA MICAELA', '26960386', '0001-01-01', '', 'mikeilaluna@gmail.com', '', 'lavalle', 1, NULL, NULL),
(1431, 'MONTIVEROS', 'AIDA PATRICIA', '25934281', '0001-01-01', '', 'montiverospatricia@colegiouniversitariosantamaria.edu.ar', '', 'GUAYMALLEN', 1, NULL, NULL),
(1432, 'GIANGIULIO ', 'LORENA ELIZABETH', '30270916', '2000-01-01', '1111111', 'senoloregiangiulio@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1433, 'PALACIO ', 'SONIA BEATRIZ', '20578441', '2000-01-01', '1111111', 'soniabpalacio@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1434, 'Carmona Sabatini', ' Maria Carla', '37779515', '1993-08-03', '2614702050', 'carlita_carmona@hotmail.com.ar', '', 'LAVALLE ', 1, NULL, NULL),
(1435, 'SANCHEZ', 'MONICA FABIANA RITA', '20357687', '2000-01-01', '1111111', 'fabianalucassanchez@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1436, 'MAN', 'KAREN ESTEFANIA', '42669600', '2000-01-01', '1111111', 'prof.karenman@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1437, 'CONEJERO', 'CAMILA AYEL', '38910726', '2000-01-01', '1111111', 'profcamiconejero21@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1438, 'URZAGASTI', 'MARIA MERCEDES', '23713073', '2000-01-01', '1111111', 'mariamercedesurzagasti@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1439, 'MAUREYRA', 'ANDREA', '24918350', '2000-01-01', '1111111', 'andreamaureyra76@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1440, 'QUIROGA', 'MARIA ALEJANDRA', '22354795', '2000-01-01', '1111111', 'q.alejandra1925@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1441, 'TORRES', 'MARISOL LOURDES', '27754276', '2000-01-01', '1111111', 'marisolurdes016@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1442, 'SAEZ', 'NATALIA LORENA', '24289933', '2000-01-01', '1111111', 'lorenanataliasaez@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1443, 'ARANCIBIA', 'FERNANDA SOLEDAD', '31874205', '2000-01-01', '1111111', 'fsoledadarancibia@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1444, 'CACCIAGUERRA', 'PAOLA MARINA', '25443171', '2000-01-01', '1111111', 'pmcacciaguerra@ffyl.uncu.edu.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1445, 'GONZALEZ', 'DANIELA SOLANGE', '35560067', '2000-01-01', '1111111', 'dgonzalez.2016.i@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1446, 'FABRE KENNY', 'ANA BEATRIZ', '20256548', '2000-01-01', '1111111', 'anafabrekenny@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1447, 'ZANI', 'MARISA ALEJANDRA', '21949885', '2000-01-01', '1111111', 'marisazani5@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1448, 'PEREYRA', 'SELVA CARINA ELIZABETH', '22009672', '2000-01-01', '1111111', 'caripereyra236@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1449, 'AGÜERO', 'ERICA VANESA', '26270270', '0001-01-01', '', 'aguero_eric06@yahoo.com.ar', '', 'LAVALLE', 1, NULL, NULL),
(1450, 'BRACAMONTE', 'MELISA NOELIA', '28916564', '2000-01-01', '1111111', 'melisa.cmag@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1451, 'CASTILLO', 'MARICEL', '34966776', '0001-01-01', '', 'maguicastillo.mc@gmail.com', '', 'LAVALLE', 1, NULL, NULL),
(1452, 'PANIAGUA', 'ANABEL PAULA NOELIA', '28225926', '2000-01-01', '1111111', 'paulapaniagua2015@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1453, 'ALCARAZ', 'RAMONA', '26175172', '2000-01-01', '1111111', 'ramonaalcaraz77@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1454, 'DOMINGUEZ', 'ANA ', '23713817', '0001-01-01', '', 'anitaadmg@gmail.com', '', 'LAVALLE ', 1, NULL, NULL),
(1455, 'QUIPILDOR', 'MARIA ELENA', '29588584', '0001-01-01', '', 'melequipi@yahoo.com.ar', '', 'LAVALLE', 1, NULL, NULL),
(1456, 'MARQUEZ', 'MARIA CELIMA', '16990786', '1964-08-28', '', 'celimamarquez@gmail.com', '', 'LAS HERAS', 1, NULL, NULL),
(1457, 'RIOS', 'Fernando Ariel', '24317286', '0001-01-01', '2616663351', 'riosfernando@ymail.com', '0', 'San Carlos', 1, NULL, NULL),
(1458, 'TOLOZA', 'Aldana Florencia', '40370434', '0001-01-01', '000', 'tolozaaldana26@gmail.com', '1', '1', 1, NULL, NULL),
(1459, 'SOTELO', 'Cecilia Agustina', '43353503', '0001-01-01', '222222', 'soteloc793@gmail.com', '1', '1', 1, NULL, NULL),
(1460, 'ALBERT', 'Maria Antonia', '23350210', '0001-01-01', '1', 'mariaantoniaalbert@gmail.com', '1', '1', 1, NULL, NULL),
(1461, 'LOPEZ MALAVER', 'Rocío', '19074615', '0001-01-01', '2615748962', 'rociolopes@hotmail.com', '1', '1', 1, NULL, NULL),
(1462, 'FERRARA', 'Silvia Beatriz', '23180248', '0001-01-01', '1', 'silviabeatrizallaca@gmail.com', '1', '1', 1, NULL, NULL),
(1463, 'VICENZ', 'Maria Lujan', '26599116', '0001-01-01', '1', 'm.lujanvicenz@gmail.com', '1', '1', 1, NULL, NULL),
(1464, 'SARALE', 'Gustavo Nicolas', '24996398', '1976-02-11', '2616003826', 'saralegn@yahoo.com.ar', 'Mariano Moreno 1677', 'Pedro Molina, Guaymallen', 1, NULL, NULL),
(1465, 'FUNEZ', 'MARIELA VERONICA', '24607047', '2000-01-01', '1111111', 'veronicafunez75@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1466, 'GOMEZ', 'ANDREA SUSANA', '22536237', '2000-01-01', '1111111', 'andreagomezsan8@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1467, 'ALBORNOZ', 'CLAUDIA SUSANA', '22316072', '2000-01-01', '1111111', 'albornozclaudia71@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1468, 'ACEN', 'ISABEL ADRIANA', '21857329', '2000-01-01', '1111111', 'adrianaacen18@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1469, 'SILVA', 'IVANA MAGALI', '29425705', '2000-01-01', '1111111', 'ivanamagalisilva@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1470, 'MATHUS', 'MARIA SOLEDAD', '27766225', '2000-01-01', '1111111', 'soledadmathus92@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1471, 'RIOS', 'MICAELA NEREA JANINA', '37137412', '2000-01-01', '1111111', 'miicarios1@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1472, 'MIRANDA', 'MARIA CELESTE', '23210949', '2000-01-01', '1111111', 'celeste.20.20.miranda@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1473, 'AMORES', 'HILDA VERONICA', '24398488', '2000-01-01', '1111111', 'veroamores221@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1474, 'GOVAILLE', 'ERIKA ELIZABET', '18760989', '2000-01-01', '1111111', 'erygou@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1475, 'DE CARA', 'HELIANA LAURA', '23993467', '2000-01-01', '1111111', 'helidecara@live.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1476, 'LOZA', 'VACA HERMELINDA', '40689311', '2000-01-01', '1111111', 'lozahermelinda@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1478, 'SANCHEZ', 'GUSTAVO JAVIER', '21379140', '1970-02-19', '2616668908', 'gsanchez2412@yahoo.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1479, 'GOMEZ', 'VIVIANA MICAELA', '44538567', '2002-12-26', '1111111', 'gomezmicaela209@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1480, 'LUCERO', 'FRANCISCA LOURDES', '29918173', '2000-01-01', '1111111', 'lucer1104@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1481, 'ALCARAZ', 'LAURA ARACELI', '35546635', '2000-01-01', '1111111', 'lauraalcaraz819@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1482, 'SOSA', 'VANESA PAOLA', '28809073', '2000-01-01', '1111111', 'sosavane08@yahoo.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1484, 'ALONSO', 'MARIELA SUSANA', '26922880', '2000-01-01', '1111111', 'marielalonsoelregreso@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1485, 'SPONTON', 'DANIELA LORELEY', '41403304', '2000-01-01', '1111111', 'danielasponton1821@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1486, 'DRUNDAY', 'ETEL GABRIELA', '23942952', '2000-01-01', '2616814994', 'drundaygabriela@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1487, 'REINA', 'DANIELA BARBARA', '32652184', '2000-01-01', '2614163222', 'danielareina86@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1488, 'GUTIERREZ', 'CLAUDIA ROXANA', '23173642', '2000-01-01', '2613069940', 'soy.clauuu@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1489, 'TORANZO', 'DANIELA CECILIA', '27405007', '2000-01-01', '1111111', 'daniela_toranzo@yahoo.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1490, 'VARGAS', 'SILVIA MARINA', '35545931', '2000-01-01', '1111111', 'marina_vairo@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1491, 'TRASLAVIÑA', 'MARIELA ELIZABETH', '23339324', '1973-05-23', '2617050764', 'mtraslavia23@gmail.com', 'perez 117 de Villa Tulumalla Lavalle', 'Lavalle', 1, NULL, NULL),
(1492, 'ARANDA', 'MARIA BELEN', '28865952', '0001-01-01', '02634476797', 'baranda15.ba@gmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(1494, 'ARIAS SEPULVEDA', 'ROMINA DEL CARMEN', '33673930', '1988-09-08', '2615170211', 'romiariassicoli@gmail.com', 'remedio de escalada 146 dep 3', 'lavalle', 1, NULL, NULL),
(1495, 'CHOQUE', 'JOSÉ LUIS', '23316029', '0001-01-01', '0000', 'jchoquexxi@gmail.com', 'CAPITAL', 'SALTA', 1, NULL, NULL),
(1496, 'FERNANDEZ', 'IRIS', '31518622', '0001-01-01', '000', 'irisfernandez2701@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1497, 'RUBIO', 'CARINA SILVANA', '28049572', '0001-01-01', '000', 'carinasilvanarubio@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1498, 'VEGA', 'MYRIAM ISABEL', '14832929', '0001-01-01', '0000', 'mivega61@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1499, 'GARCIA', 'MARIANA SOLEDAD', '28110612', '0001-01-01', '0000', '8076sol@gmail.com', 'LAVALLE ', 'LAVALLE', 1, NULL, NULL),
(1500, 'CÁRDENAS', 'MARIA MAGDALENA', '20810980', '0001-01-01', '0000', 'dge1547@mendoza.edu.ar', 'LAVALLE ', 'LAVALLE', 1, NULL, NULL),
(1501, 'BRAGAGNOLO', 'MARIA ELENA', '31716041', '0001-01-01', '000', 'Marial992003@hotmail.com', 'LAVALLE', 'LAVALLE ', 1, NULL, NULL),
(1502, 'BARBOZA', 'DANIEL ', '26045797', '0001-01-01', '0', 'odbarboza@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1503, 'RECIO', 'KAREN', '37270332', '0001-01-01', '0', 'rkdenise09@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1504, 'GODOY', 'MONICA ALEJANDRA', '22186068', '0001-01-01', '000', 'monicagodoy522@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1505, 'DE CARA', 'MARIANA', '28341274', '0001-01-01', '00000', 'marianadecara@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1506, 'ARCOS', 'PATRICIA ROXANA', '39020578', '1995-04-30', '2613078848', 'arcossoledad46@gmail.com', 'ruta 24 10599', 'LAVALLE LA PEGA ', 1, NULL, NULL),
(1508, 'VILCHE', 'PATRICIA INES', '18080001', '2000-01-01', '1111111', '', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1511, 'ISOARDI', 'GABRIELA CAROLINA', '27369748', '2000-01-01', '1111111', 'isoardic@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1512, 'ROMERA', 'ANALIA', '30920621', '0001-10-01', '26100000', 'analiaromera.mza@gmail.com', 'LAVALLE', 'LAVALLE ', 1, NULL, NULL),
(1513, 'CASTRO', 'SANDRA BIBIANA', '23993315', '2000-01-01', '1111111', 'bibianacastrosandra@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1514, 'SPIGAROLO', 'LEANDRO GABRIEL', '33392199', '2000-01-01', '1111111', 'leandro.spigarolo@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1515, 'MAN', 'GISEL ALEJANDRA', '36633876', '2000-01-01', '1111111', 'mangisel36@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1516, 'CABEZA ', 'MARIA DE LOURDES', '25547513', '2000-01-01', '1111111', 'cabezamaria39@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1517, 'MAYORGA', 'MARIA AURELIA GIMENA', '37001541', '0001-01-01', '0000', 'gimefer1610@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1518, 'TILA', 'HUALLPA SANDRA', '39678180', '2000-01-01', '1111111', 'sandra.tila987@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1519, 'CALDERON ', 'NORA NATALI', '39237750', '2000-01-01', '1111111', 'naticalderon602@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1520, 'PAEZ NUÑEZ', 'MARIA SOLEDAD', '31479585', '0001-01-01', '0000', 'choleypn@gmail.com', 'VILLA MERCEDES ', 'SAN LUIS', 1, NULL, NULL),
(1521, 'FREDES', 'NATALIA LOURDES', '27405230', '2000-01-01', '1111111', 'fredesnatty@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1523, 'NAVEIRO', 'CELIA', '23302638', '0001-01-01', '00000', 'celiaaveiro27@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1524, 'NUÑEZ', 'SILVINA ROSARIO', '23388344', '2000-01-01', '1111111', 'silvinanunez73@gmail.com', 'La Dormida Santa Rosa', 'La Dormida Santa Rosa', 1, NULL, NULL),
(1525, 'RODRIGUEZ', 'MARIA ESTEFANIA', '35560143', '0001-01-01', '000', 'tefiemi.rodriguez@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1526, 'BALDERRAMA', 'CELESTE ALEJANDRA', '37232017', '0001-01-01', '0000', 'celestebalderrama06@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1527, 'GONZALEZ', 'LISI MARINA', '35545917', '0001-01-01', '0000', 'luisemily260518@gmail.com', 'LAVALLE', 'LAVALLE ', 1, NULL, NULL),
(1528, 'ARAYA', 'MELISA JOHANA', '30542687', '0001-01-01', '0000', 'melisa.araya2301@gmail.com', 'LAVALLE', 'LAVALLE ', 1, NULL, NULL),
(1529, 'ARCE', 'ELENA LORENA', '25547600', '1977-03-16', '2616200984', 'LORENAC219@GMAIL.COM', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1530, 'VICENCIO', 'ROXANA ELIZABETH', '27187993', '2000-01-01', '1111111', 'roxivicen79@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1534, 'MIRANDA', 'NATALIA PAOLA', '24707395', '0001-01-01', '11111', 'nm104885@gmail.com', '0', '0', 1, NULL, NULL),
(1535, 'Barroso', 'Deolinda Lorena ', '24757544', '1975-09-11', '2612506330', 'lorenabarroso1109@gmail.com', 'GUAYMALLÉN - VILLA NUEVA', 'GUAYMALLÉN - VILLA NUEVA', 1, NULL, NULL),
(1536, 'Sarabia', 'Susana Adriana ', '23173051', '1973-04-02', '2616813110', 'asarabia389@gmail.com', 'Agustin Alvares 1836', 'Godoy cruz ', 1, NULL, NULL),
(1537, 'Alcaraz', 'Yesica', '34854384', '0001-11-11', '0', 'yesicaalcaraz555@gmail.com', 'mendoza', 'mendoza', 1, NULL, NULL),
(1538, 'Torres', 'Leonela', '33793576', '0001-11-11', '0', 'leonelantorres@gmail.com', 'mendoza', 'mendoza', 1, NULL, NULL),
(1541, 'Ten', 'Melina Soledad', '38306787', '0001-11-11', '0', 'meliten.94@gmail.com', 'mendoza ', 'mendoza', 1, NULL, NULL),
(1542, 'Rosales ', 'Flavia Veronica', '30510143', '1983-09-09', '2613901595', 'molinaj0306@gmail.com.ar', 'TULUMAYA', 'TULUMAYA', 1, NULL, NULL),
(1545, 'GOMEZ VERGARA', 'MARIA GRACIA', '25291175', '0001-11-11', '0', 'mgraciagomezv@gmail.com', 'mendoza', 'mendoza', 1, NULL, NULL),
(1546, 'RODRIGUEZ', 'JIMENA ', '25158762', '0011-11-11', '0', 'jimemeli6811@gmail.com', 'mendoza', 'mendoza', 1, NULL, NULL),
(1547, 'Storani', 'Antonella', '38580539', '0001-11-11', '0', 'antonelastorani95@gmail.com', 'mendoza', 'mendoza', 1, NULL, NULL),
(1548, 'Salvatico ', 'Daniela Vanina ', '26361111', '0001-11-11', '0', 'vsalvatico@colegiosanluisgonzaga.edu.ar', 'mendoza', 'mendoza', 1, NULL, NULL),
(1549, 'PINTO YOHANN', 'LUIS ENRIQUE', '18810186', '1965-06-19', '2616225712', 'lucho3demayo@gmail.com', '', 'Tres de Mayo Lavalle', 1, NULL, NULL),
(1550, 'Natalia Catalina', 'Pérez Tempestti', '35515708', '0011-11-11', '0', 'nataliacatalinapereztempestti@gmail.com', 'mendoza', 'mendoza', 1, NULL, NULL),
(1551, 'PONS', 'GRACIELA ANDREA', '21705671', '0001-01-01', '0', 'ponsandreag@gmail.com', '0', '0', 1, NULL, NULL),
(1552, 'SANCHEZ', 'ROCIO LUZ', '40925719', '0001-01-01', '1', 'rocioluzsanchez97@gmail.com', '1', '1', 1, NULL, NULL),
(1553, 'PEREZ VASQUEZ', 'GABRIELA', '34447102', '0001-01-01', '1', 'didacc_calidaddevidamza@outlook.es', '0', '0', 1, NULL, NULL),
(1554, 'SORIA', 'MALENA KATHERINA', '40889764', '0001-01-01', '1', 'msoria.2016.p@gmail.com', '1', '1', 1, NULL, NULL),
(1555, 'MARTINEZ', 'SILVIA ELENA', '22412813', '0001-01-01', '1', 'silviamartinezbud@gmail.com', '1', '1', 1, NULL, NULL),
(1556, 'MOYANO', 'MARIA BELEN', '35546185', '0001-01-01', '1', 'belenmoyano16@gmail.com', '1', '1', 1, NULL, NULL),
(1557, 'CASTRO', 'ROSA', '33274951', '0001-01-01', '1', 'ashleyrosarodriguez@gmail.com', '1', '1', 1, NULL, NULL),
(1558, 'Cantos', 'Jimena Gisel', '31855248', '0001-11-11', '0', 'pedagogaterapeutajimenacantos@gmail.com', 'mendoza ', 'mendoza', 1, NULL, NULL),
(1562, 'Adaro', 'Yolanda', '22941700', '0001-11-11', '0', 'yadaro84@gmail.com', 'mendoza ', 'mendoza', 1, NULL, NULL),
(1565, 'LEDDA', 'ANTONELLA', '35924894', '0001-01-01', '2634619587', 'leddaantonella2@gmail.com', 'SAN MARTIN', 'SAN MARTIN', 1, NULL, NULL),
(1566, 'BANNO', 'RUBEN ANTONIO', '34063091', '1988-10-19', '0000', 'banex_22@hotmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(1567, 'GUAYMAS', 'SANDRA CRISTINA', '23247219', '1973-03-07', '2634698408', 'cristinaguaymas3@gmail.com', 'BARRIO SANTA MARIA B-14-COSTA DE ARAUJO', 'LAVALLE', 1, NULL, NULL),
(1568, 'PALACIOS', 'ROMINA NATACHA', '32667033', '1986-11-28', '2615978272', 'romicudeiro@gmail.com', 'ocoyunta 7660', 'Colonia Segovia Guaymallen', 1, NULL, NULL),
(1569, 'MOLINA', 'ROMINA ELIANA', '36582018', '1991-09-11', '2613748945', 'rominamolina234@gmail.com', 'BARRIO SANTA CECILIA I C-4 TULUMAYA', 'LAVALLE', 1, NULL, NULL),
(1570, 'MUÑOZ', 'Nilda Ivana', '40938082', '0001-01-01', '1', 'ivanamunoz465@gmail.com', '1', '1', 1, NULL, NULL),
(1571, 'ALFONSO CACERES', 'MARIA INES', '22817969', '0001-01-01', '1', 'mariainesalfonsocaceres@gmail.com', '1', '1', 1, NULL, NULL),
(1572, 'REZ MASUD', 'MARIANA', '31029016', '0001-01-01', '01', 'marianarezmasud@gmail.com', '0', '0', 1, NULL, NULL),
(1573, 'DEVOTO MARTINEZ', 'LAURA CECILIA', '21370889', '0001-01-01', '0000', 'lauracecidevoto@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1574, 'GONZALEZ', 'PABLO MARTIN', '27096496', '1979-05-10', '1', 'pablovet_79@yahoo.com.ar', '1', '1', 1, NULL, NULL),
(1575, 'SALVO', 'MARIA DE LOURDES', '24342520', '0001-01-01', '1', 'anisalvo17@gmail.com', '1', '1', 1, NULL, NULL),
(1576, 'AVACA', 'ADRIANA RAQUEL', '23271802', '0001-01-01', '1', 'adrianaavaca02@gmail.com', '1', '1', 1, NULL, NULL),
(1577, 'ANCONETANI', 'CARINA', '22402724', '0001-01-01', '00000', 'carinaanconetani71@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1578, 'ZANI PALET', 'VANESA ELIZABETH', '33053275', '0001-01-01', '1', 'vanezani59@gmail.com', '1', '1', 1, NULL, NULL),
(1579, 'TISSERA', 'ADRIANA ELISA', '28025571', '0001-01-01', '1', 'adri.canbru@gmail.com', '1', '1', 1, NULL, NULL),
(1580, 'BARROS', 'ITATI VALENTINA', '36581817', '0001-01-01', '1', 'valentinayemanuel2012@gmail.com', '1', '1', 1, NULL, NULL),
(1581, 'JOFRE', 'MARIA ANGELA', '26055323', '0001-01-01', '1', 'jmarangela05@gmail.com', '1', '1', 1, NULL, NULL),
(1582, 'CAVAGNOLA', 'ANGELINA ADELAIDA', '38306882', '0001-01-01', '00000', 'cavagnola.angelina94@gmail.com', 'LAVALLE ', 'LAVALLE', 1, NULL, NULL),
(1583, 'RUMBO', 'MARIA GIMENA', '34786087', '0001-01-01', '1', 'mariagimenarumbo@gmail.com', '1', '1', 1, NULL, NULL),
(1584, 'TRASLAVIÑA', 'AYELEN', '40963387', '0001-01-01', '00000', 'ayelentrasla1234456@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1585, 'ZAVALA', 'PAMELA', '33542732', '0001-01-01', '2613390192', 'cabezamaria39@gmail.com', '1', '1', 1, NULL, NULL),
(1586, 'MATRERO', 'ANA CARINA', '20931166', '0001-01-01', '0000', 'carinamatrero@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1587, 'SABATINI', 'KAREN', '34675078', '0001-01-01', '2616992998', 'karensabatini2019@gmail.com', '1', '1', 1, NULL, NULL),
(1588, 'PARDO', 'MONICA', '16564189', '0001-01-01', '1', 'monipardo528@gmail.com', '1', '1', 1, NULL, NULL),
(1589, 'MAGGIORI', 'MARIANA', '34405294', '0001-01-01', '0000', 'marianamaggiori70@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1590, 'MORILLO', 'ÁNGELICA', '18012443', '0001-01-01', '0000', 'prof.angiemorillo@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1591, 'FERNANDEZ ', 'HORACIO', '17022072', '0001-01-01', '0000001', 'papafernando@uch.edu.ar', 'FUNDACIÓN SANTA MARIA', 'GODOY CRUZ', 1, NULL, NULL),
(1592, 'SANTANDER', 'CLAUDIA', '20444758', '0001-01-01', '00000002', 'papafernando@uch.edu.ar', 'FUNDACIÓN SANTA MARIA', 'GODOY CRUZ', 1, NULL, NULL),
(1593, 'VAZQUEZ', 'FABIANA', '20562388', '0002-01-01', '00000005', 'papafernando@uch.edu.ar', 'FUNDACIÓN SANTA MARIA', 'GODOY CRUZ', 1, NULL, NULL),
(1594, 'CARENA', 'SILVIA', '18061665', '0002-01-01', '0000003', 'papafernando@uch.edu.ar', 'FUNDACIÓN SANTA MARIA', 'GODOY CRUZ', 1, NULL, NULL),
(1595, 'HERRERA', 'SILVIA ROSA', '29564768', '0001-01-01', '1', 'silvia.herrera.elu@gmail.com', '1', '1', 1, NULL, NULL),
(1596, 'DEL PICOLO', 'ESTEFANIA', '29787927', '0003-01-01', '00000005', 'papafernando@uch.edu.ar', 'FUNDACIÓN SANTA MARIA', 'GODOY CRUZ', 1, NULL, NULL),
(1597, 'VAZQUEZ', 'LORENA', '25585728', '0001-01-01', '0000006', 'papafernando@uch.edu.ar', 'FUNDACIÓN SANTA MARIA', 'GODOY CRUZ', 1, NULL, NULL),
(1598, 'PAREDES', 'JOHANA CINTIA', '37517773', '0001-01-01', '01', 'cooperadora9024@gmail.com', '0', '0', 1, NULL, NULL),
(1599, 'PELEGRINA', 'MARIELA ALEJANDRA', '24845662', '1975-08-15', '2645656467', 'pelegrinamariela75@gmail.com', '1', '1', 1, NULL, NULL),
(1600, 'MORALES', 'ALEJANDRA', '23579343', '0001-01-01', '2616215288', 'mariela1112morales@gmail.com', '1', '1', 1, NULL, NULL),
(1602, 'FARIAS', 'CARLA NEREA', '36927116', '0001-01-01', '000', 'anabelcoste@gmail.com', 'EUGENIO BUSTOS', 'ALVEAR', 1, NULL, NULL),
(1603, 'COSTELLA', 'ANABEL', '26527824', '2000-01-01', '0000005', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1604, 'BARROZO', 'MARTIN SEBASTIAN', '32486450', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1605, 'VILLARREAL', 'MERCEDES', '29189836', '2000-01-01', '000000002', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1606, 'ARROYO', 'CARLA NOEMI', '37614825', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1607, 'ALBORNOZ', 'SOLEDAD', '31639231', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1608, 'MOLINA', 'JIMENA', '26987569', '1111-11-11', '111111111', 'anabelcoste@gmail.com', 'IES 9010', 'GEN', 1, NULL, NULL),
(1609, 'PIÑA', 'CARLA', '42863802', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1610, 'LACOSTE DE GIUSEPPE', 'ERIKA SOLEDAD', '37961681', '0000-00-00', '222222222', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1611, 'CALDERÓN ', 'RAUL JACINTO', '37623560', '0001-01-01', '0000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1612, 'VILLALBA', 'MÓNICA', '25845564', '0001-01-01', '01', 'villalbamonica63@yahoo.com.ar', '0', '0', 1, NULL, NULL),
(1613, 'ORTUBIA', 'IRINA EUGENIA', '41369261', '0001-01-01', '0000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1614, 'LUCERO', 'SOFIA', '43485579', '0002-01-01', '55555555', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1615, 'ALDERETE', 'CELESTE AYELÉN', '44908127', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1616, 'VIDELA', 'SOLANGE', '38474375', '0000-00-00', '2222222', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1617, 'FERREIRA', 'GUILLERMO ELIAS', '42169158', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1618, 'ACEVEDO', 'MIRTA FERMINA FERNANDA', '29127090', '0222-02-22', '2222222', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1619, 'QUERO', 'JANET', '34143345', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GENERAL ALVEAR', 1, NULL, NULL),
(1620, 'RIVERO', 'ANA LUZ', '23973295', '0001-01-01', '00000', 'anabelcoste@gmail.com', 'GENERAL ALVEAR', 'GERNERAL ALVEAR', 1, NULL, NULL),
(1621, 'MONTIEL BARROSO', 'LUCIANA EVELYN', '44746103', '0333-03-31', '3333333', 'anabelcoste@gmail.com', 'IES 9010', 'GENERAL ALVEAR', 1, NULL, NULL),
(1623, 'GARRO', 'LUZ MARINA', '40217903', '0001-01-01', '01', 'luzmarinagarro123@gmail.com', '0', '0', 1, NULL, NULL),
(1624, 'MOTTA', 'MARIA ISABEL', '17022065', '2000-01-01', '1111111', 'marisitamotta@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1625, 'COSIO', 'CLAUDIA ALEJANDRA', '23731498', '0001-01-01', '2616841453', 'ccosio@colegiosanluisgonzaga.edu.ar', '1', '1', 1, NULL, NULL),
(1626, 'TELLO', 'SELVA', '21374001', '0001-01-01', '2617007133', 'ailinvillegas40@gmail.com', '1', '1', 1, NULL, NULL),
(1627, 'VERNA', 'ESTER', '26731263', '0001-01-01', '2615760210', 'ailinvillegas40@gmail.com', '1', '1', 1, NULL, NULL),
(1628, 'LADRON DE GUEVARA', 'MAXIMILIANO ALBERTO', '37003252', '0001-01-01', '1', 'maximilianoguevara830@gmail.com', '1', '1', 1, NULL, NULL),
(1629, 'VILLEGAS', 'CINTIA MABEL', '31813141', '0001-01-01', '1', 'maximilianoguevara830@gmail.com', '1', '1', 1, NULL, NULL),
(1630, 'MIRAS', 'SILVIA LILA', '20810887', '0001-01-01', '1', 'silvia.miras20@gmail.com', '1', '1', 1, NULL, NULL),
(1631, 'CORVALAN', 'LUCIA', '24263820', '0001-01-01', '2616821607', 'corvalanlucia0@gmail.com', '1', '1', 1, NULL, NULL),
(1634, 'GONZALEZ', 'SOLEDAD BETTIANA', '33430930', '0001-01-01', '1', 'gonzalezsolee18@gmail.com', '1', '1', 1, NULL, NULL),
(1635, 'PERALTA ', 'FERNANDO', '25222105', '0001-01-01', '2616308035', 'fernandomaestro1976@gmail.com', '1', '1', 1, NULL, NULL),
(1636, 'CACCIAMANI', 'CLAUDIA BEATRIZ', '22047101', '0001-01-01', '1', 'claudiacacciamani@hotmail.com', '1', '1', 1, NULL, NULL),
(1637, 'ASCKA', 'MARIELA', '26476787', '0001-01-01', '1', 'maruascka@gmail.com', '1', '1', 1, NULL, NULL),
(1638, 'VILLEGAS', 'LAURA LILIANA', '23611139', '0001-01-01', '1', 'laura.c.villegas.mendoza@gmail.com', '1', '1', 1, NULL, NULL),
(1639, 'VILLEGAS ALONSO', 'KAREN AILEN', '42082018', '2000-01-01', '1111111', 'villegaskaren35@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1640, 'SARMIENTO', 'MICAELA ESTEFANIA', '39383262', '2000-01-01', '2617088131', 'mica.sarmiento7@gmail.com', 'BARRIO LOS PUELCHES M-G CASA 4', 'TULUMAYA', 1, NULL, NULL),
(1641, 'ZOLORZA', 'ELIANA', '28466655', '0111-11-11', '22222222', 'elianazolorza383@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1642, 'VILLEGAS', 'LORENA SOFIA', '28225117', '2000-01-01', '2616382140', 'lorevillegas833@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1643, 'CONTRERA', 'YANINA', '34952882', '2000-01-01', '2613015639', 'yaninacontrera3@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1644, 'CASTILLO', 'ROLANDO DARIO', '22407079', '2000-01-01', '1111111', 'castillorolando@yahoo.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1645, 'CARMONA', 'MARIA BEATRIZ', '27984702', '1981-04-04', '2617038386', 'carmonakuky.11@gmail.com', 'RUTA 40 Bº EL PORVENIR MF-C10', 'JOCOLI LAVALLE', 1, NULL, NULL),
(1646, 'CACERES', 'ANGELA', '23043655', '1973-01-20', '2614181743', 'caceresacevedo750@gmail.com', 'Bº LOS OLMOS MA-C14', 'COSTA DE ARAUJO', 1, NULL, NULL),
(1647, 'MARTELLI', 'CLAUDIA ALEJANDRA', '22939678', '1972-11-12', '2615965927', 'claudiaamartelli3@gmail.com', '1', '1', 1, NULL, NULL),
(1648, 'FERRE', 'LAURA', '29083137', '0001-01-01', '2613731637', 'FERE@GMAIL', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1649, 'MARTINEZ', 'MARCELA VALERIA', '26425452', '2023-03-31', '2634688181', 'marcelavamartinez@gmail.com', 'FELI BOGADO 471 Bº JARDÍN ', 'SAN MARTÍN', 1, NULL, NULL),
(1651, 'BATYTISTELLI', 'LUIS ADOLFO', '143113121', '1990-08-02', '000', 'luisadolfo@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1652, 'MENDOZA AYARACHI', 'MARIA ESTER', '33967781', '0001-01-01', '0', 'maryamdz88@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1653, 'PONTIS', 'FERNANDO OSCAR', '33094997', '1987-10-06', '2617169583', 'fpontis@mendoza.edu.ar', 'Belgrano 799 Costa de Araujo', 'Lavalle', 1, NULL, NULL),
(1654, 'MOLINA', 'SILVIO SAUL', '21371426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1655, 'APPUGLIESE', 'JOSEFINA DEL ROSARIO', '27505729', '2000-01-01', '1111111', 'josefinappugliese@gmail.com', 'DR. MORENO ', 'LAVALLE', 1, NULL, NULL),
(1656, 'JORGENSEN', 'ALEJANDRO', '16169339', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1657, 'VIÑOLO PISTONE ', 'DANIELA GISEL', '38186900', '2000-01-01', '1111111', 'giselvinolo09@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1658, 'TOLABA', 'MONICA', '31855184', '1986-03-17', '1111111', 'monicatolaba17@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1660, 'ESCUDERO', 'GLADYS', '24382540', '2000-12-10', '1111111', 'romnaescudero199@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1661, 'ORTIZ', 'RENZO', '40371970', '0001-01-01', '000', 'renzoortizlbk@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1662, 'VILLEGAS ', 'LEONARDO', '43075974', '0001-01-01', '00000', 'leovillegas784@gmail.com', 'LAVALLE ', 'LAVALLE', 1, NULL, NULL),
(1663, 'LUCERO', 'GERMAN', '23624399', '0001-01-01', '00000', 'ghlm09@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1666, 'MOLINA', 'JULIANA', '40002119', '0001-01-01', '111', 'LHJLKJHLHJLHJ@GDAG', ',,,', ',,,,', 1, NULL, NULL),
(1667, 'RIVEROS', 'CRISTINA DEL VALLE', '21926160', '1970-10-23', '2615034351', 'crisvalleriveros@gmail.com', 'VVV', 'VVV', 1, NULL, NULL),
(1668, 'ARIAS', 'CELIA VIVIANA', '20563047', '1969-06-20', '2616507783', 'viviana15arias@yahoo.com.ar', '1', '1', 1, NULL, NULL),
(1669, 'GARCÍA', 'LUCIA ABIGAIL', '47445105', '2006-06-29', '2612087159', 'luciaabigailgarcia21@gmail.com', 'xx', 'xx', 1, NULL, NULL),
(1670, 'PONCE', 'DAMIAN', '47270883', '2005-07-21', '2617146579', 'damianponce45@gmail.com', 'x', 'x', 1, NULL, NULL),
(1671, 'MARENGO', 'SANTIAGO', '46662561', '2005-07-29', '2617223436', '', 'X', 'X', 1, NULL, NULL),
(1672, 'VARGAS', 'ANA PAULA', '47193149', '2006-02-02', '2614607723', 'anavargasmerau@gmail.com', 'x', 'x', 1, NULL, NULL),
(1673, 'LIGORRIA', 'LAUTARO', '47270322', '2006-04-26', '2616348123', 'ligorrialautaro22@gmail.com', 'x', 'x', 1, NULL, NULL),
(1674, 'REINAGA', 'ROCIO', '46619829', '2005-08-29', '2612658392', 'rocioantonellareinaga495@gmail.com', 'x', 'x', 1, NULL, NULL),
(1675, 'ZAMUDIO FLORES', 'EDIN JUVENAL', '95090662', '2005-07-29', '2616065641', 'erickzamudio20057@gmail.com', 'x', 'x', 1, NULL, NULL),
(1676, 'GODOY', 'MARTIN CLAUDIO', '46237093', '2005-05-21', '2613837725', 'martinclaudiogodoy2004@gmail.com', 'x', 'x', 1, NULL, NULL),
(1677, 'AVILA', 'EZEQUIEL', '49727390', '2004-08-19', '2616002916', 'ezequiel.avila.100@gmail.com', 'x', 'x', 1, NULL, NULL),
(1678, 'HEREDIA', 'MARTIN', '46663391', '2005-11-08', '2613158303', 'martinivanheredia@gmail.com', 'x', 'x', 1, NULL, NULL),
(1679, 'COPA', 'JESUS', '46453210', '2005-05-10', '2612141055', 'jesuscopa178@gmail.com', 'x', 'x', 1, NULL, NULL),
(1680, 'GOMEZ', 'RODRIGO', '47270323', '2006-04-30', '2615535804', 'leonelgomez299@gmail.com', 'x', 'x', 1, NULL, NULL),
(1681, 'MAMANI', 'TANIA', '47455230', '2006-06-23', '2616080600', 'giselletania407@gmail.com', 'x', 'x', 1, NULL, NULL),
(1682, 'MIRANDA', 'ROCIO', '46865907', '2005-08-21', '2616068693', 'rociomiranda4685@gmail.com', 'x', 'x', 1, NULL, NULL),
(1683, 'RETAMAL', 'TOMAS', '46662883', '2005-12-24', '2612114988', 'tomasretamal434@gmail.com', 'x', 'x', 1, NULL, NULL),
(1685, 'AMAYA ', 'DEBORA AHINOAM', '44746918', '2000-01-01', '1111111', 'debiiamaya@gmail.com', 'LUJAN', 'LUJAN', 1, NULL, NULL),
(1686, 'OLIVARES', 'WALTER JAVIER', '28844514', '2000-01-01', '1111111', 'walterolivareshys@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1687, 'TERAN', 'SERGIO ESTEBAN', '25356869', '2000-01-01', '1111111', 'sergio.teran1@gmail.com', 'MANZANA E 19 B°:JARDIN LOMAS DE CHACRAS', 'LUJAN DE CUYO', 1, NULL, NULL),
(1688, 'SALAZAR RIOS', 'CAROLINA MARIA', '32203683', '1986-03-05', '2616679045', '', '', '', 1, NULL, NULL),
(1689, 'CABRERA RUDOLPH', 'LUZ ESMERALDA', '47373242', '2005-09-08', '2616945489', 'luzcabrera973@gmail.com', 'Bº DORREGO SUR F-10-TULUMAYA', 'LAVALLE', 1, NULL, NULL),
(1690, 'FLORES CASSINO', 'CELINA NATALIA', '47726559', '2006-06-08', '2616973369', 'gemcham6@gmail.com', 'Barrio Jarillero 2 ', 'LAVALLE ', 1, NULL, NULL),
(1691, 'ORTIZ', 'NICOL ABIGAIL', '45965249', '2004-11-10', '2617003875', 'nicolortiz2021@gmail.com', 'Bº Fuerza Nueva M:B - C:7', 'Costa de Araujo Lavalle', 1, NULL, NULL),
(1692, 'FERNANDEZ', 'AILEN ZAIRA', '45965328', '2005-05-22', '2616228215', 'fernandezzaira478@gmail.com', 'Calle rodriguez s/n ', 'Gustavo Andres Lavalle', 1, NULL, NULL),
(1693, 'Sabatini', 'Marcela ', '46474878', '2005-10-25', '2613055622', 'alondrasabatini31@gmail.com', 'Barrio general Acha M B Casa 2', 'SALVATIERRA ', 1, NULL, NULL),
(1697, 'VILLEGAS', 'LUCIA ELIZABETH', '42478445', '1998-03-18', '2617028924', 'luciavillegas467@gmail.com', 'Barrio Amiso 2 Mza C Casa 6 ', 'villa tulumaya LAVALLE ', 1, NULL, NULL),
(1698, 'BARRERA', 'AGUSTÍN NICOLÁS', '42670394', '2000-01-20', '2612465612', 'agustinbarrera231@gmail.com', 'Bº SANTA CECILIA I A-31', 'LAVALLE', 1, NULL, NULL),
(1699, 'CORTEZ', 'DÉBORA', '46476232', '2005-09-28', '2617014139', 'cortezmagdalena342@gmail.com', 'dorrego14', 'lavalle ', 1, NULL, NULL),
(1700, 'CASTRO BUENANUEVA', 'ALEJO HERNAN', '45965339', '2005-07-08', '2615716840', 'ac677777@gmail.com', 'Belgrano 346', 'Costa de Araujo', 1, NULL, NULL),
(1701, 'QUIROGA RUIZ', 'MARTIN JAVIER', '44058400', '2002-02-26', '2612484816', 'martinquieroga166@gmail.com', 'KM 11 MILAGROS ', 'GUAYMALLEN ', 1, NULL, NULL),
(1702, 'OLGUIN', 'JOHANNA DANIELA', '33007887', '1987-04-27', '2616611369', 'da330078@gmail.com', 'calle san ramon lote 24 ', 'BORBOLLÓN DE LAS HERAS EL PASTAL', 1, NULL, NULL),
(1703, 'MORALES', 'IVO MIGUEL URIEL', '42669456', '2000-05-02', '2612083550', 'moralesivo83@gmail.com', 'Barrio Jardin de Rosario Mz B casa 22', 'Lavalle', 1, NULL, NULL),
(1704, 'NUÑEZ ', 'GONZALO MARTIN', '45876550', '2004-08-31', '2617026800', 'nunezgonza51@gmail.com', 'SEVERO DEL CASTILLO 8124', 'GUAYMALLEN', 1, NULL, NULL),
(1705, 'ROUSSELLE', 'MARIA VICTORIA', '29385309', '1982-08-27', '26100032', 'victoriarousselle@yahoo.com.ar', 'GUAYMALLEN', 'GUAYMALLEN', 1, NULL, NULL),
(1706, 'MORALES', 'ANA LAURA', '46869398', '2006-06-14', '2615984550', 'MORALESANA14142006@GMAIL.COM', 'BARRIO PORTAL DEL SOL', 'LAVALLE', 1, NULL, NULL),
(1707, 'GUZMAN QUIROGA', 'JUAN PABLO', '46397724', '2005-04-05', '2615456789', 'juampiguzman2005@gmail.com', 'Ruta 40 KM 3339 ', 'Jocoli, Lavalle', 1, NULL, NULL),
(1708, 'MIRANDA', 'DELFINA DEL VALLE', '47195011', '2006-06-07', '261', 'delfinamiranda_07@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1709, 'GONZALEZ ', 'PAULA AYELEN SHARBELA', '38205948', '2000-01-01', '', 'pauli_15_94@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1710, 'JOFRE', 'VALERIA NOEMI', '46235521', '2005-02-16', '26160259121', 'valeriajofre916@gmail.com', 'ruta 40 km 3325', 'LAS HERAS ', 1, NULL, NULL),
(1711, 'ALMUNA CARRIZO', 'VERA LUCIA', '31902530', '1986-04-26', '1111111', 'almunalucia@gmail.com', 'Félix Suárez 568 Villanueva', 'Guaymallén', 1, NULL, NULL),
(1712, 'GUAJARDO', 'MARIA LUNA', '42914757', '2000-09-02', '2612736893', 'lunaguajardo987@gmail.com', 'VILLANUEVA S/N', 'JOCOLI', 1, NULL, NULL),
(1713, 'GARAY', 'GILDA JANET', '41661341', '1998-08-23', '2612301986', 'gildajanetgaray@hotmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1714, 'TRASLAVIÑA', 'CAMILA NICOL', '45360982', '2004-07-08', '2612788232', 'camilanicoltraslavina@gmail.com', 'Costa de araujo', 'Lavalle', 1, NULL, NULL),
(1715, 'QUIROZ', 'JULIA MERCEDES', '43279033', '2000-12-29', '2616361521', 'quirozjulia317@gmail.com', 'LAVALLE ', 'JOCOLI VIEJO', 1, NULL, NULL),
(1716, 'JOFRE VARGAS', 'CAMILA EMILCE', '47079835', '2005-09-24', '2615048370', 'jofrecamila156@gmail.com', 'Finca Leveque Ruta 142 (182)', 'Gustavo Andre', 1, NULL, NULL),
(1717, 'CRUZ', 'ALVARO', '93999716', '2000-01-01', '261222222', 'alvarocruz30217@gmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(1718, 'PASTRAN', 'ROCIO', '44878520', '2000-01-01', '32216666', 'ropastran3@gmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(1720, 'AVILA', 'AXEL', '46397320', '2005-03-31', '650+6754+6265', 'JA052641@GMAIL.COM', 'EL PASTAL ', 'LAS HERAS', 1, NULL, NULL),
(1723, 'ALANIZ', 'JAVIER ANDRES', '44756904', '2000-01-01', '2616880108', 'JAVIEROFICIALOK@GMAIL.COM', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1724, 'MAN', 'MAIRA DAIANA', '37622940', '1993-06-20', '2616996743', 'mman86220@gmail.com', 'Bº AMYSO I M:B - C:15', 'Tulumaya, Lavalle', 1, NULL, NULL),
(1725, 'PORRA', 'PRISCILA GIULIANA', '47373203', '2005-10-31', '2612315880', 'priscilaporra7@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1726, 'MARTINEZ ROVIRA', 'FRANCO AGUSTIN', '46237066', '2005-02-02', '2616415043', 'rovirafranco3@gmail.com', 'calle las Moras', 'Los Corralitos', 1, NULL, NULL),
(1727, 'GONZALEZ', 'OCTAVIO HERNAN', '45587623', '2004-04-02', '2612079707', 'gonzalezoctavio356@gmail.com', 'JOCOLI', 'LAVALLE ', 1, NULL, NULL),
(1728, 'CATALAN', 'LORENA ALISIA', '33438971', '1988-04-10', '2613614235', 'lorenaagostina30@gmail.com', 'COSTA DE ARAUJO URQUIZA S/N', 'LAVALLE', 1, NULL, NULL),
(1729, 'CAÑIZARE', 'ELIANA JOANA', '34677442', '1990-04-15', '', 'eliss.442@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1730, 'ARANCIBIA', 'IGNACIO NAHUEL', '46161716', '2004-12-09', '2612633390', 'nahuelaran3@gmail.com', 'Costa de Araujo', 'Lavalle', 1, NULL, NULL),
(1731, 'AGUIRRE', 'Daniela Rocio', '46474897', '2005-11-28', '2616802433', '01daniaguirre@gmail.com', 'CALLE LAS VIOLETAS ', 'LAS VIOLETAS', 1, NULL, NULL),
(1732, 'ESMORIS', 'ANA MARIA', '95972445', '1977-09-09', '', 'anamariaesmorisjitar1997@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1733, 'MALDONADO', 'MAURO FERNANDO GABRIEL', '47726615', '2006-06-15', '2615665459', 'maumaldonado727@gmail.com', 'PARAMILLO CALLEJON FERNANDEZ S/N', 'LAVALLE', 1, NULL, NULL),
(1734, 'PILUTTI', 'PABLO DANIEL', '46327992', '2005-08-11', '', 'dani360pg777@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1735, 'MANSILLA', 'ARACELI VANESA', '30820041', '1984-05-24', '2964469015', 'aruss0584@gmail.com', 'calle gloria Tupungato s/n', 'LAVALLE ', 1, NULL, NULL),
(1736, 'ZAMORA ', 'DAIANA ESTEFANIA', '36965525', '1991-12-01', '2612158098', 'zamoradayana36@gmail.com', 'CALLE CAMBIAGGI 8640', 'COLONIA SEGOVIA GUAYMALLEN ', 1, NULL, NULL),
(1737, 'VILLALBA', 'CLARA MILABROS', '42751301', '1999-10-06', '', 'villalbamilagros301@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1738, 'FARRUGGIA', 'AGUSTIN', '46235577', '2005-02-23', '2617043328', 'agua345farru@gmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(1739, 'MAURINO', 'AGUSTINA MAGALI', '44986372', '2003-07-28', '2615189043', 'agusmaurino0@gmail.com', 'LA PEGA ', 'LAVALLE ', 1, NULL, NULL),
(1740, 'CRUZ', 'WILMA', '94530099', '1991-08-19', '2616068125', 'wilmacruz180891@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1743, 'GRIFFONE', 'NORA LIDIA', '23339203', '1973-06-13', '2617544626', 'noragriffone.15@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1744, 'CUELLO RODIO', 'JULIETA ABRIL', '45875608', '2004-07-06', '2634223753', 'abriljulieta006@gmail.com', 'Cordoba 356', 'Ciudad, Mendoza', 1, NULL, NULL),
(1745, 'SIERRA', 'VANESA BEATRIZ', '32510783', '1986-11-21', '2634848561', 'vanesasierrra860@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1746, 'GOTIE', 'LUZ AILEN', '44438827', '2002-07-03', '', 'gotieluz@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1747, 'LUJAN ', 'CLAUDIA ELIANA', '26386352', '1977-08-06', '2612657229', 'elianalujan33@gmail.com', 'LAVALLE- JOCOLÍ RUTA 40', 'LAVALLE', 1, NULL, NULL),
(1748, 'MAMANI VEDIA', 'ELIAN NAHUEL JESÚS', '44058898', '2001-11-26', '2616247125', 'NAHUELBEDIA33@GMAIL.COM', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1749, 'ROSALES', 'MARIA ISABEL', '36581725', '1991-12-07', '2616334601', 'mariarosales3652@gmail.com', 'LAVALLE', 'ASUNCIÓN LAVALLE', 1, NULL, NULL),
(1750, 'TEJADA', 'JOSEFA VALERIA', '28813850', '1981-06-20', '2615967428', 'valeriatejada81@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1751, 'QUIROGA', 'LUCIANO', '45720389', '2004-09-17', '2616997917', 'lucianoquiroga07@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1752, 'OVANDO', 'NANCY KAREN', '41084071', '1998-02-10', '', 'karenovando2023@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1753, 'DOMIZI', 'MELISA INES', '45967021', '2004-10-06', '', 'mdomizi03@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1754, 'RIOS ', 'HECTOR', '14924515', '1962-01-31', '1168217261', 'jujuyanos@yahoo.com', 'LAVALLE LOS ARRAYANES 350 LA PEGA ', 'LAVALLE', 1, NULL, NULL),
(1755, 'CHACON ', 'MAGDALENA VALENTINA', '47080814', '2000-01-01', '', 'chaconmagdalena96@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1756, 'MONTENEGRO', 'TERESITA DE JESÚS', '30773509', '1984-02-21', '2612142288', 'teremontenegro1984@gmail.com', 'Ruta 36 Km 798 ', 'Tres de Mayo ', 1, NULL, NULL),
(1757, 'RAMIREZ', 'GIANELLA AGOSTINA', '45720331', '2004-07-14', '2617182050', 'rgianella678@gmail.com', 'Bº REPÚBLICA DEL PERÚ C-8', 'TULUMAYA', 1, NULL, NULL),
(1759, 'fornari ', 'noemi', '316363367', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1760, 'SUBELZA', 'MICAELA AGUSTINA', '45967098', '2004-10-14', '2615671813', 'subelzaaguus756kl@gmail.com', 'Bª Colonia Italia Mb C13 ', 'Colonia Italia Lavalle', 1, NULL, NULL),
(1762, 'JURADO', 'MILAGROS ESTEFANIA', '43077741', '2000-12-13', '2617088511', 'milagrosjurado013@gmail.com', 'Los Alamos 3325', 'F. L. Beltrán, Maipú', 1, NULL, NULL),
(1763, 'MARTINEZ', 'GEORGINA NICOL', '40889772', '1997-06-23', '2616320290', 'nicolma2306@gmail.com', 'Ruta 24 S/N Finca Valencia', 'El Chilcal, Lavalle', 1, NULL, NULL),
(1764, 'ALDAYA', 'AGUSTIN ALEJANDRO', '45361034', '2004-07-09', '2617071796', 'agustin45361034@gmail.com', 'Calle San Agustin S/N', 'El Carmen, Lavalle', 1, NULL, NULL),
(1765, 'RUIZ', 'FATIMA DEL VALLE', '40533845', '1996-10-20', '2617752473', 'fatidruiz96@gmail.com', 'Calle Lamadrid', 'Costa de Araujo, Lavalle', 1, NULL, NULL),
(1766, 'MARTINEZ ', 'LUCIA VICTORIA', '45360965', '2000-01-01', '26111111', 'martinezluciavictoria1899@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1767, 'BERMEJO ', 'ISABELLA', '43279594', '2000-01-01', '26111111', 'isabellabermejo33@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1768, 'CANTOS ORO', 'AGUSTIN JOSE', '47373266', '2006-06-30', '2615989848', 'agustinjosecantosoro@gmail.com', 'TULUMAYA', 'LAVALLE', 1, NULL, NULL),
(1772, 'FERNANDEZ', 'LUDMILA NEREA', '46473680', '2000-01-01', '26111111', 'luly12ferdavila@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1773, 'NAVARRO DURAN', 'ALEXIS BENJAMIN', '46475007', '2005-01-01', '26111111', 'alexisnavarro2027@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1774, 'CORTEZ LEYES', ' GONZALO WENCESLAO', '46327199', '2005-01-01', '26111111', 'gonzacortez057@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1775, 'LUCERO', 'YESICA PAOLA', '32882606', '1987-01-06', '2617153811', 'yessicaluce606@yahoo.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1776, 'CAÑA PEREZ', 'VALENTIN DAMIAN', '46869278', '2005-01-01', '26111111', '404valem@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1777, 'SULLCA ', 'ROCIO ANA', '42167547', '2005-01-01', '26111111', 'rocioanasullca@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1779, 'TERRERO', 'MAXIMILIANO NICOLAS', '46397730', '2005-01-01', '26111111', 'terreromauricio86@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1780, 'NUÑEZ', 'YANELA AILEN', '45875781', '2004-08-19', '2613631183', 'nunezailen888@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1781, 'ARCIBIA LUJAN', 'MELANIE EMILCE', '44404710', '2005-01-01', '26111111', 'melarcibia@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1782, 'SANTONI PALLICER ', 'AGUSTIN', '46738668', '2005-01-01', '26111111', 'agustinsantoni86@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1783, 'ascka', 'rosa', '29487583', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1784, 'D AMBROSIO', 'DAIANA BELÉN', '35560208', '1991-05-29', '2615663238', 'belendambrosio10@gmail.com', 'Bº Sta Cecilia I ME - C14', 'Tulumaya Lavalle', 1, NULL, NULL),
(1786, 'ZARATE', 'LUCIA', '32855577', '1987-09-19', '2612529353', 'lucia2021.pastran@gmail.com', 'DORREGO S/N', 'EL VERGEL, LAVALLE', 1, NULL, NULL),
(1787, 'ROMO', 'PRISCILA OLGA', '46474605', '2005-05-06', '2613409992', 'romorosalespriscila@gmail.com', 'Barrio Fuerza Nueva Costa de Araujo', 'LAVALLE', 1, NULL, NULL),
(1788, 'LIGORRIA', 'NICOLE ABIGAIL', '47372356', '2006-05-31', '2616684155', 'ligorrianicole58@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1789, 'ESPINOZA ', 'FACUNDO LAUTARO', '46474836', '2005-01-01', '26111111', 'facu.espinoza05@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1790, 'GIL', 'BRISA AILEN', '46546626', '2000-01-01', '26111111', 'brisagil513@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1791, 'PONCE', 'DAMIAN AGUSTIN', '46328836', '2005-05-23', '2613394519', 'agustin206897@gmail.com', 'Guaymallen', 'Guaymallen', 1, NULL, NULL),
(1792, 'LUCERO', 'MIRIAM AYELEN', '44536595', '2005-01-01', '', 'luceroayelen08@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1793, 'AGUERO', 'SELENE NICOL', '45965371', '2005-01-01', '26111111', 'selenenicolaa@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1794, 'CAÑIZARE', 'HUGO MIGUEL', '30249372', '1983-11-26', '2613625628', 'canizarehugo@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1795, 'CARRIZO NARVAEZ', 'NICOL ABRIL GUADALUPE', '46163322', '2004-11-12', '2612391444', 'nicolguadalupe@gmail.com', 'LAVALLE', '3 DE MAYO LAVALLE ', 1, NULL, NULL),
(1797, 'MERCADO', 'RAMIRO MARTIN', '45448796', '2004-02-27', '26111111', 'rodrimercadomartin@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1798, 'SALAVAGUION ESPIRITO', 'CARLA ABRIL', '46474779', '2005-06-03', '2615003292', 'carlitasalavaguion750@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1799, 'DISTROSOL', 'S.A', '30694678684', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1800, 'LUJAN', 'MILAGROS SOL', '46869345', '2006-04-03', '2616925447', 'lujan6428@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1801, 'GHIOTTI CANNIZZO', 'ANDREA SILVIA', '25547570', '1976-12-14', '', 'andreghiotti80@gmail.com', 'TRES DE MAYO', 'LAVALLE', 1, NULL, NULL),
(1802, 'VALDEZ', 'ALDANA MILAGROS', '45587627', '2004-02-24', '26111111', 'aldanavaldez@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1803, 'ANDRADA', 'ESTELA', '21933850', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1804, 'LEDESMA RONDAN', 'JAZMIN GUADALUPE', '45257571', '2003-09-25', '2612699542', 'jazminledesma174@gmail.com', 'Calle Sanchez 5908', 'colonia Segovia Guaymallen', 1, NULL, NULL),
(1805, 'OÑO', 'ALEXANDER IBER', '45361428', '2003-07-16', '2616763782', 'alex10videla@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1806, 'PONT', 'GUADALUPE ERIKA', '37779562', '1993-10-03', '2617103308', 'pontguadalupe17@gamil.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1807, 'ROMERO', 'MARINA LUJAN', '34696957', '1989-11-07', '2615136729', 'alemari3525@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1808, 'GRAMAJO', 'ESTELA NOEMI', '38758821', '1994-03-12', '2615690455', 'estelagramajo123@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1809, 'GUZMAN', 'JUAN MANUEL', '47079818', '2006-01-16', '2616660219', 'JUANMANUELGUZMAN947@GMAIL.COM', 'COSTA DE ARAUJO ', 'LAVALLE', 1, NULL, NULL),
(1811, 'MORALES', 'JEREMIAS MICHEL', '46548723', '2005-10-29', '2617617097', 'moralesjeremias384@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1812, 'MUÑOZ PIZARRO', 'VALENTIN ', '45967001', '2004-06-27', '20611111', 'valentinxts@gmail.com', 'LAVALLE VILLA', 'LAVALLE', 1, NULL, NULL),
(1813, 'PAVON', 'CECILIA ELIZABETH', '34786188', '1990-04-11', '2616791530', 'ceciliajrpavon@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1814, 'PEREZ', 'FABIANA ROSA', '21371419', '1970-03-23', '2612730049', 'favianarosa8@gmail.com', 'Calle San Esteban S/N, El Pastal', 'Las Heras', 1, NULL, NULL),
(1815, 'MUÑOZ', 'BÁRBARA TATIANA', '46869350', '2006-03-06', '2612326602', 'tatianamunoz535@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1817, 'ALVARES', 'DANIELA ALEJANDRA', '34279384', '1989-08-20', '2617710567', 'ddiana.alvarez19@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1818, 'Chirivino ', 'Fransico', '48586299', '2006-01-26', '2613992818', 'franchirivinofigueroa@gmail.com', 'Barrio Laguna de Bartoluci m \"a\" c °9', 'LAVALLE', 1, NULL, NULL),
(1819, 'RIVERA RODRIGUEZ', 'LILIAM MARLENE', '44706553', '2003-01-10', '', 'riveraliliam8@gmail.com', 'CANNING 3339', 'GUAYMALLÉN - GENERAL BELGRANO', 1, NULL, NULL);
INSERT INTO `personas` (`idpersona`, `apellido`, `nombre`, `dni`, `fechanacido`, `telefono`, `mail`, `domicilio`, `localidad`, `idrol`, `clave`, `estado`) VALUES
(1820, 'JANCO', 'MARINA ALEJANDRA', '46237496', '2005-04-01', '2612732245', 'jancomarina8@gmail.com', 'Gustavo Andre', 'LAVALLE', 1, NULL, NULL),
(1821, 'MENCONI', 'ANA BEATRIZ', '23339348', '1974-02-24', '261-6721874', 'anamenconi@gmail.com', 'BARRIO EPY-EQUEN CASA', 'LAVALLE', 1, NULL, NULL),
(1822, 'MALDONADO', 'PABLO', '43418782', '2000-01-01', '2612082695', 'molinaugng@gmail.com', 'Ruta 34  barrio Tupac amaru  MA casa 1', 'LAVALLE', 1, NULL, NULL),
(1824, 'ORELLANA', 'SOFIA MACARENA', '46869275', '2006-03-03', '2612311051', 'sofiaorellana3236@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1825, 'FUNES AGUERO', 'MARIA LUCIA', '44820698', '2002-08-08', '2616708244', 'luciafunes44@gmail.com', 'Calle Villanueva ', 'Tres de Mayo, Lavalle', 1, NULL, NULL),
(1826, 'IBARRA SANCHEZ', 'GISEL ANALIA', '46664106', '2006-01-01', '2617610095', 'giselibarra457@gmail.com', 'Calle La Madrid S/N', 'Costa de Araujo, Lavalle', 1, NULL, NULL),
(1830, 'LOPEZ ARIAS', 'IARA VALENTINA', '46572600', '2005-02-13', '2617002582', 'iaravalentina96@gmail.com', 'RUTA 24 FRENTE A TAMBO', 'LAVALLE', 1, NULL, NULL),
(1831, 'VALENTINE ROSALES', 'BIANCA AGUSTINA', '47373238', '2006-06-18', '2617034317', 'valentinebianca152@gmail.com', 'BARRIO TUPAC AMARU F 6', 'TULUMAYA', 1, NULL, NULL),
(1834, 'TORRES', 'FLAVIA VANESA', '28600470', '1981-08-01', '2613662569', 'flaviatorres1981@yahoo.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1835, 'VICENCIO', 'CAMILA ANTONELLA', '41967495', '1999-06-09', '2615922555', 'camilavicencio1999@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1836, 'QUIROGA', 'OSVALDO VICTOR', '16998514', '1964-03-08', ' 2612468973', 'osvaldommo1964@gmail.com', 'STA. CLARA 345-TRES DE MAYO-LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1837, 'ALBIZÚ', 'GRACIELA FRANCISCA ', '16698942', '1964-02-27', '2616644285', 'gracielalbizu27@gmail.com', 'STA. CLARA 345-TRES DE MAYO-LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1838, 'BARCELÓ', 'ALDANA MARLENE', '42749732', '2000-07-04', '2613063398', 'aldanamarlenebarcelo@gmail.com', 'Bº CUYUM I 3-11 COSTA DE ARAUJO', 'LAVALLE', 1, NULL, NULL),
(1840, 'RODRIGUEZ DILEO', 'MORENA ANASTASIA', '46547090', '2005-08-04', '2616683766', 'rodriguezanastasia37@gmial.com', 'San martin 4953', 'Lavalle', 1, NULL, NULL),
(1841, 'CARRIZO', 'ROCIO DEL CIELO', '46548780', '2006-02-28', '26111111', 'rociocielocarrizo18@gmail.com', 'Colonia Segovia D-12', 'COLONIA SEGOVIA', 1, NULL, NULL),
(1842, 'HERRERA', 'Sofia', '45718067', '2004-06-17', '2612125421', 'sofia.herrera.1706@gmail.com', 'calle ¨Rodriguez¨ ', 'Lavalle', 1, NULL, NULL),
(1843, 'Alaniz ', 'Jésica Verónica', '33821693', '1988-09-04', '2616079576', 'alanizyesica096@gmail.com', 'LAVALLE', 'Lavalle', 1, NULL, NULL),
(1844, 'MOLINA ', 'Pamela', '36582098', '1991-11-07', '2612328653', 'pamelamolina2021@gmail.com', 'coperativa el chical', 'Lavalle', 1, NULL, NULL),
(1845, 'LEGUIZA', 'Vanesa', '39234624', '1995-08-25', '2613864900', 'vanefranche@icloud.com', 'Esquina matienzo ', 'LAVALLE ', 1, NULL, NULL),
(1846, 'CAPPONETTO', 'MILAGROS CELESTE', '43119679', '2000-12-18', '2612525736', 'elianamayorga@hotmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1847, 'CASTRO MONTAÑA', 'MICAELA EUGENIA', '38475161', '1995-01-27', '2613891239', 'mickaian08@gmail.com', 'LAVALLE - TRES DE MAYO', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1848, 'GIMENEZ', 'SILVIA EDITH', '20559327', '1968-09-19', '261510705 ', 'edithsiluigimenez@gmail.com', 'LAS HERAS - EL ALGARROBAL', 'LAS HERAS ', 1, NULL, NULL),
(1849, 'GOMEZ ALTAMIRANO', 'Nicol Abigail', '42749710', '1999-11-26', '', 'altamiranonicol901@gmail.com', 'COSTA DE ARAUJO', 'LAVALLE', 1, NULL, NULL),
(1850, 'GONZALEZ', 'CAROLINA ABRIL', '49083107', '2005-09-22', '2612570175', 'AREDANOELIANORA@GMAIL.COM', 'FINCA JORGE FERNANDEZ', 'LAVALLE - EL PARAMILLO', 1, NULL, NULL),
(1851, 'GONZALEZ', 'ROCÍO MICHELLE', '45720305', '2001-02-21', '2617769612', 'rociomichellegonzalez21@gmail.com', 'Barrio el Paramillo', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1852, 'HEREDIA', 'CAMILA MARIEL', '45720382', '2004-09-01', '2613866718', 'camilaheredia83@gmail.com', 'ALTO DEL OLVIDO', 'LAVALLE', 1, NULL, NULL),
(1853, 'LENCINAS', 'JOHANA CELESTE', '47079867', '2006-03-09', '0261156356755', 'hugolencinas33@gmail.com', ' COSTA DE ARAUJO', 'LAVALLE', 1, NULL, NULL),
(1854, 'MAYORGA', 'JUANITA VALENTINA', '47448172', '2006-05-03', '2616747932', 'azucenaavila330@gmail.com', ' TRES DE MAYO', 'LAVALLE', 1, NULL, NULL),
(1855, 'NAVARRETE ', 'KAREN', '39843141', '1996-08-01', '2615887244', 'nkarenagustina@gmail.com', 'lavalle', 'LAVALLE', 1, NULL, NULL),
(1856, 'QUIROGA', 'MARIA DEL ROSARIO', '46162519', '2006-02-28', '0000', 'dge4258@mendoza.edu.ar', 'LAGUNA DEL ROSARIO', 'LAVALLE', 1, NULL, NULL),
(1857, 'SANCHEZ', 'CELESTE DAIANA', '43270196', '2001-05-05', '02634345477', 'sanchezceleste@escuelacatroppa.edu.ar', 'SAN MARTÍN', 'SAN MARTÍN', 1, NULL, NULL),
(1858, 'SANDOVAL ALMAZÁN', 'NATALI', '45717643', '2004-01-06', '0000', 'natalisandoval494@gmail.com', 'LAVALLE ', 'LAVALLE', 1, NULL, NULL),
(1859, 'SILVA', 'MILAGROS ROSARIO', '42912544', '2000-01-26', '261 155754830', 'mili21735945@gmail.com', 'SAN FRANCISCO', 'LAVALLE ', 1, NULL, NULL),
(1860, 'SUARES', 'GIMENA NATALÍ', '49857224', '2005-05-30', '0000', 'gimesuarez@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1861, 'VASQUES', 'ROSA YANINA', '46062597', '2005-04-17', '2612648005', 'rosivasques17@gmail.com', 'TRES DE MAYO', 'LAVALLE', 1, NULL, NULL),
(1862, 'Videla', 'Patricia Beatriz', '37622914', '1993-04-12', '2616334909', 'patito_1704@live.com.ar', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1863, 'VILLALBA', 'CINTIA LORENA', '39531699', '1996-06-07', '0000', 'cintia.lorena3953@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE ', 1, NULL, NULL),
(1864, 'ZABALA', 'JENNIFER BEATRIZ', '45361446', '2004-01-22', '0156348843', 'zabalajennifer56@gmail.com', 'TRES DE MAYO', 'LAVALLE ', 1, NULL, NULL),
(1865, 'VERA', 'ERICA', '25711219', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1866, 'OLIVERA', 'BRIAN ALEXANDER', '46397268', '2006-04-04', '2061111', 'oliverabrian137@gmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(1867, 'kuzel', 'Gladis Liliana', '17545321', '1965-10-27', '2615026263', 'lilianakuzel@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1868, 'CESPEDES CHOQUE', 'Milagros Evelyn', '47373224', '2006-06-10', '2613377722', 'MILI10CCH@gmail.com', 'SEMBRANDO ESPERANZA', 'LAVALLE -  LAS VIOLETAS', 1, NULL, NULL),
(1869, 'CISTERNA', 'CARLA NERINA', '46620816', '2005-09-01', '2613822840', 'silvana.511.1193@gmail.com', 'LOS CORRALITOS', 'GUAYMALLÉN ', 1, NULL, NULL),
(1870, 'GUARDIA', 'MATIAS SEBASTIAN', '39532461', '1996-07-08', '2616088776', 'chemaperiodista@gmail.com', ' TRES DE MAYO', 'LAVALLE ', 1, NULL, NULL),
(1871, 'LEMOS', 'TANIA NERINA', '45965350', '2005-07-22', '261156787291', 'tanialemos527@gmail.com', 'COSTA DE ARAUJO', 'LAVALLE ', 1, NULL, NULL),
(1872, 'LOYOLA', 'HILDA LUCIANA', '45144818', '2003-06-17', '2614712607-2634371297', 'loyolacinita@gmail.com', 'NUEVA CALIFORNIA', 'SAN MARTÍN', 1, NULL, NULL),
(1873, 'QUISPE', 'LAUTARO FAUSTO JESÚS', '47373333', '2006-04-09', '2617009807', 'QUISPEFAUSTO2006@gmail.com', 'VILLA TULUMAYA (CIUDAD)', 'LAVALLE', 1, NULL, NULL),
(1874, 'SAVARIEGO', 'VANESA ELIZABETH', '27984729', '1981-06-13', '2614850774', 'sabariegovanesa@gmail.com', 'ROQUE MONTENEGRO', 'LAVALLE', 1, NULL, NULL),
(1875, 'ALVORNOZ', 'BRENDA LUDMILA', '42749734', '2000-04-24', '261156715798', 'ALVORNOZBRENDA86@GMAIL.COM', 'GUSTAVO ANDRE', 'LAVALLE ', 1, NULL, NULL),
(1876, 'ASTUDILLO', 'CAMILA NICOL', '46619216', '2005-08-05', '2616189790', 'ASTUDILLOCAMILA071@gmail.com', 'EL VERGEL - FCA YANZÓN ', 'lavalle ', 1, NULL, NULL),
(1877, 'BARRERA', 'CANDELA VALENTINA', '47193593', '2005-08-10', '0156112465', 'candelabarrera068@gmail.com', 'COLONIA SEGOVIA', 'GUAYMALLÉN ', 1, NULL, NULL),
(1878, 'CAÑA', 'MARIA FERNANDA', '40371930', '1997-05-21', '0000', 'fernacana18@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1879, 'CRUZ', 'CARLA SOFIA', '35091191', '1989-09-10', '2613623483', 'soficruz2020@gmail.com', ' EL RESGUARDO', 'LAS HERAS ', 1, NULL, NULL),
(1880, 'NEREA EVANGELINA', 'FLORES', '39081175', '1995-09-13', '0000', 'nereaflores244@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1881, 'MAYORGA', 'RAMONA FELIPA HUILEN', '43637235', '2002-01-01', '0000', 'RAMONAMAYORGA7235@YAHOO.COM', ' LAGUNA DEL ROSARIO', 'lavalle ', 1, NULL, NULL),
(1882, 'NATEL GONZALEZ', 'THIAGO ISRAEL', '46869240', '2005-11-03', '0000', 'NATELTHIAGO4@GMAIL.COM', 'VILLA TULUMAYA (CIUDAD)', 'lavalle ', 1, NULL, NULL),
(1883, 'SARMIENTO', 'SANTIAGO TOMÁS', '28689415', '1981-04-06', '2612076993', 'ntiagosarmiento810@gmail.com', 'VILLA TULUMAYA (CIUDAD)', 'LAVALLE', 1, NULL, NULL),
(1884, 'MELANIE FERNANDA', 'ABREGO', '46062529', '2004-08-23', '2616778948', 'abregofernanda45@gmail.com', 'LOTEO \"EL PORVENIR\"-CALLE MASOERO-', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1885, 'AMAYA MOLINA', 'AGOSTINA AYELÉN', '45530755', '2004-01-04', '0000', 'ariela968@gmail.com', 'AMTAGA', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1886, 'ANTEQUERA', 'AGUSTINA ÉRICA', '43117535', '2000-06-09', '0000', 'agustinantequera@live.com', 'UDAONDO', 'SAN MARTÍN - NUEVA CALIFORNIA', 1, NULL, NULL),
(1887, 'BUSTOS', 'PRISCILA CANDELA', '43418243', '2001-04-21', '2616930181', 'priscilabustos059@gmail.com', 'PATRICIAS ARGENTINAS ', 'MAIPÚ - MAIPÚ', 1, NULL, NULL),
(1888, 'CARRIZO ROBLES', 'GUILLERMO DANILO', '93625782', '1976-01-24', '2616483660', 'willycarrizorobles@hotmail.com', 'B° Favorita Centro-la escuela', 'CAPITAL - CIUDAD', 1, NULL, NULL),
(1889, 'BRENDA NATALÍ', 'CASTRO', '43683159', '2001-10-12', '2617024592', 'ericagonzalez266@gmail.com', 'La Juanita ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1890, 'Cornejo ', 'Isabel Mariela', '39602006', '1996-04-26', '2612722144', 'isabel.m.cornejo@hotmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1891, 'GIULIANA AGOSTINA', 'COSTANTINI RODRIGUEZ', '47372331', '2006-05-29', '2612499319', 'destapesclaudio@yahoo.com', 'CONSTITUCION ', 'GUAYMALLÉN - EL SAUCE', 1, NULL, NULL),
(1892, 'DECARA ORIOLI', 'ARACELLI AILEN', '46475275', '2005-06-14', 'decaraaraceli@gmail.com', 'decaraaraceli@gmail.com', 'LOS JARILLEROS I', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1893, 'DIAZ VIDELA', 'CANDELA ABIGAIL', '46869305', '2006-01-02', '261155588495', 'candydiaz1206@gmail.com', 'RUTA 24', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1894, 'ESPER', 'ANA LUZ', '47079873', '2006-03-07', '2616926193', 'mmaureyra@gmail.com', 'Belgrano ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1895, 'FERNANDEZ', 'LUCAS FACUNDO', '44247393', '2002-06-10', '0000', 'fernandezlucas@escuelacatroppa.edu.ar', 'LEMOS ', 'SAN MARTÍN - TRES PORTEÑAS', 1, NULL, NULL),
(1896, 'BUENO', 'ANGEL GABRIEL', '45531296', '2004-10-29', '26122222', 'ANGELBUENOCART@GMAIL.COM', 'NUEVA CALIFORNIA ', 'SAN MARTIN ', 1, NULL, NULL),
(1897, 'FERREYRA', 'SHAIRA AILEN', '47371067', '2006-06-09', '2612099026', 'shai23ferreira@gmail.com', 'NUÑEZ \"FINCA ARISTEGUI\"', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1898, 'MARIA DEL CARMEN', 'FRIAS', '27968531', '1979-12-08', '2616846446', 'mf622633@gmai.com', 'KM 33272616846446', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1899, 'GALIANO SANCHEZ', 'LOURDES YAZMIN', '47361675', '2006-07-19', '0000', 'antoniomarcossebastian@gmail.com', 'ITALO MUÑOZ ', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1900, 'GERONIMO', 'MIRIAN', '33821569', '1989-07-07', '2615463834', 'mabigeronimo@yahoo.com.ar', 'Nueva Esperanza', 'CAPITAL - CIUDAD', 1, NULL, NULL),
(1901, 'GODOY', 'ALEXANDRA MARIA', '34194917', '1989-04-12', '261155366963', 'godoyalexandra86@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1902, 'GONZALEZ', 'Julieta', '41004784', '1997-04-02', '2615734466', 'julyterapista@gmail.com', 'Barrio Cipres', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1903, 'LUNA', 'EUGENIA ÁNGELES', '45967099', '2004-11-11', '2615568042', 'tivyluna@gmail.com', 'TUPAC AMARU', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1904, 'MORALES', 'MARIELA INES', '35908709', '1991-07-12', '2612155191', 'marielamorales1207@gmail.com', 'PUBLICA 8684', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1905, 'OCAÑA', 'TAMARA ANTONELA', '41368636', '1998-03-07', '2634750845', 'tamaraocana10@gmail.com', 'Pto. El Lucero ', 'LAVALLE - SAN MIGUEL', 1, NULL, NULL),
(1906, 'ORELLANO ', 'BELÉN BRISA', '42478408', '2000-02-13', '2612482171', 'unahumbert80@gmail.com', 'COSTA DE ARAUJO', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1907, 'ORO', 'PALOMA EUGENIA', '45720398', '2003-06-05', '2612392394', 'dge4224@mendoza.edu.ar', 'LOS MANANTIALES', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1908, 'PALMA', 'IRINA YANELA', '42912546', '2000-08-02', '0000', 'irinayanela52@gmail.com', 'LOS PUELCHES', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1909, 'PALMIERI', 'CRISTINA BELEN', '45361979', '2001-01-11', '156854465', 'roxanaguidolin@yahoo.com.ar', 'RAFAEL OBLIGADO', 'GUAYMALLÉN - SAN JOSÉ', 1, NULL, NULL),
(1910, 'REINOSO ROLDÁN', 'ALDANA BELÉN', '46548771', '2005-12-09', '261156630785', 'aldanareinoso410@gmail.com', 'San Alberto ', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1911, 'RIVAROLA', ' Marina', '35196493', '1991-02-14', '2617493805', 'tramitescarnet2014@gmail.com', 'Mathus Hoyos', 'Mathus Hoyos', 1, NULL, NULL),
(1912, 'RODRIGUEZ', 'Daiana Evelyn', '38760047', '1994-12-09', '0000', 'rodriguezdaianaevelyn2@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1913, 'SABATINI', 'FIORELLA GIULIANA', '46869375', '2006-02-12', '2612490379', 'maurosabatini600@gmail.com', 'calle 8', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1914, 'SANTANA', 'LUDMILA SOFIA', '47373340', '2006-03-24', '261154709570', 'ludsant35@gmail.com', 'LAGUNAS DE BARTOLUCCI', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1915, 'SCACCIANTE', 'SABRINA ALEJANDRA', '43683456', '2001-10-03', '0000', 'sabrinascacciante10@gmail.com', 'CALLE Nº 3', 'SAN MARTÍN - SAN MARTÍN', 1, NULL, NULL),
(1916, 'TELLO DIAZ', 'ROMINA SILVINA', '44986914', '2002-10-25', '0000', '4254rominatello@gmail.com', 'LAS LAGUNITAS', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1917, 'VASQUEZ BUSTOS', 'ABRIL AYLÉN', '47152297', '2006-03-22', '26112208179', 'vasquezabril2203@gmail.com', 'CALLEJÓN VALERO', 'LAVALLE - EL VERGEL', 1, NULL, NULL),
(1918, 'ZAPATA', 'MARÍA ROSA', '46233615', '2005-01-20', '0000', 'septimomariarosa@gmail.com', 'MATHUS  HOYOS ', 'GUAYMALLÉN - EL SAUCE', 1, NULL, NULL),
(1919, 'ALVARADO', 'MELANIE YANELA', '42749749', '1999-10-11', '2617165501', 'malvarado.2018.p@gmail.com', 'Olascoaga y Dorrego', 'LAS HERAS - EL RESGUARDO', 1, NULL, NULL),
(1920, 'ANDRADA MIRANDA', 'YANINA MICAELA', '42508672', '2000-03-22', '2616999601', 'yaninaandrada384@gmail.com', 'GRAL. ACHA Y SAN JUAN', 'GRAL. ACHA Y SAN JUAN', 1, NULL, NULL),
(1921, 'CABAÑEZ VILLEGAS', 'SELENE NICOLE', '45965382', '2005-06-15', '2612653309', 'selenecabanez3@gmail.com', 'AVENA', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1922, 'ESPINOZA', 'DULCE AYELEN', '45967720', '2004-09-25', '2617209381', 'dulceespinoza770@gmail.com', 'MONTENEGRO', 'LAVALLE - LAS VIOLETAS', 1, NULL, NULL),
(1923, 'FERNANDEZ', 'ROMINA NATALIA', '44537694', '2002-12-26', '0000', 'carinafirmapaz95@gmail.com', 'ROCA', 'MAIPÚ - MAIPÚ', 1, NULL, NULL),
(1924, 'FOSCO FERNANDEZ', 'MARIA VICTORIA', '42084431', '1999-09-25', '2615605120', 'victoriafosco@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1925, 'FREDES', 'ROCIO ALEJANDRA', '46548762', '2005-10-27', '2615572356', 'Soledadbritos270@gmail.com', 'NEBOT ', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1926, 'FUNES', 'CELIA MAGALÍ', '45720313', '2004-05-25', '0156620644', 'dge4224@mendoza.edu.ar', 'SOLARES DEL NORTE ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1927, 'GARCIA', 'IVÁN GABRIEL', '45965507', '2004-05-17', '0000', '4180garcia@gmail.com', 'JOAQUÍN V. GONZALEZ', 'GUAYMALLÉN - DORREGO', 1, NULL, NULL),
(1928, 'GOMEZ BARCELÓ', 'SANTIAGO JAVIER', '45965225', '2004-12-29', '2612502038', 'irisbarcelo21@yahoo.com.ar', 'SANTA MARIA ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1929, 'GOMEZ CARRIZO', 'JEZABEL GRACIELA', '41770027', '1999-01-10', '0000', 'jezagomez309@gmail.com', 'EL PORVENIR', 'GUAYMALLÉN - PUENTE DE HIERRO', 1, NULL, NULL),
(1930, 'LENCINA', 'ELENA DAIANA', '47271664', '2005-12-28', '0000', 'luisamilulencina@gmail.com', 'Puesto  los  Blancos', 'LAVALLE - SAN MIGUEL', 1, NULL, NULL),
(1931, 'MANRESA', 'YASMÍN NATALIA', '43943113', '2001-12-09', '0000', 'sofiapepa3@gmail.com', 'DORREGO', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1932, 'MARTINEZ SORAIDE', 'Sandra ', '96268320', '2003-07-18', '0000', 'martinezsoraides@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1933, 'OLMOS', 'SARA ALESANDRA', '40963329', '1998-05-10', '2612747346', 'olmossara08@gmail.com', 'CAMBIAGGI', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1934, 'PIEDRABUENA ', 'Rosalía Inés', '32068820', '1986-12-25', '0000', 'roine19861986@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1935, 'SANCHEZ', 'RUTH ANABEL', '42357638', '1999-02-15', '0000', 'mendoza1900@hotmail.com', 'BELGRANO ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1936, 'SIMI ROSALES', 'LUCIANA ABIGAIL', '45720111', '2004-05-14', '2615691018', 'luciamrosal@gmail.com', 'VICTORIA', 'LAS HERAS - EL ALGARROBAL', 1, NULL, NULL),
(1937, 'VAZQUEZ MOREL', 'ALEJANDRO RAMÓN', '46163329', '2004-12-09', '2616138326', 'vazqueramon457@gmail.com', 'Lote Cabero', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1938, 'VONKUNOSCHY NAVARRA', 'Marco Ivan ', '43824806', '2001-09-16', '0000', 'marcoivanvonkunoschynavarra@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1939, 'CIPOLLONE', 'ANA BEATRIZ', '18342961', '1961-02-01', '2615611423', 'an9937400@gmail.com', 'jocoli viejo ', 'lavalle', 1, NULL, NULL),
(1940, 'CANIZARE', 'EVELIN YESICA', '34607903', '1989-07-19', '2613649692', 'evelyncanizare@gmail.com', 'TACUARÍ', 'LAS HERAS - LAS HERAS', 1, NULL, NULL),
(1941, 'CASTILLO', 'ANA FLORENCIA', '39677870', '1996-04-25', '2616749439', 'anacastillo1575@gmail.com', 'SOLARES DEL NORTE 1', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1942, 'GODOY', 'LUCIANA CELESTE', '36581908', '1992-06-24', '2616222842', 'godoyluciana24@gmail.com', 'LA FLORESTA 1', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1943, 'ANGELA LUDMILA', 'BORDON', '45874363', '2004-07-06', '2617011624', 'bordonludmila68@gmail.com', 'CALLE QUIROGA', 'LAVALLE - JOCOLÍ', 1, NULL, NULL),
(1944, 'Zavala', 'María del Rosario', '26983659', '1978-11-03', '2613625979', 'mrosarioza@gmail.com', 'Lavalle 230, depto 7', 'Godoy Cruz', 1, NULL, NULL),
(1945, 'BRAVO BASILOTTA', 'AILEN ARIADNA', '46062581', '2005-02-17', '2613273402', 'ailenbasilottq@gmail.com', 'VILLALOBO ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1946, 'CARLA ELEONORA CINTIA', 'CAMARGO', '33966987', '1988-07-05', '2615752279', 'carlacamargo@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1947, 'CANSELMO MAUNA', 'MICAELA ESTEFANÍA', '46235536', '2005-03-05', '0156698220', 'yesimauna12@gmail.com', 'RUTA 24', 'LAVALLE - LA PEGA', 1, NULL, NULL),
(1948, 'CARRIZO', 'URIEL AGUSTÍN', '46867330', '2006-01-23', '2612448539', 'naninavarra@yahoo.com.ar', 'las rosas', 'GUAYMALLÉN - COLONIA SEGOVIA', 1, NULL, NULL),
(1949, 'GABRIELA NOEMÍ', 'FERNANDEZ', '46234778', '2005-03-22', '2612096412', 'Carinafirmapaz95@gmail.com', 'Sueños Cumplidos', 'LAVALLE - LAS VIOLETAS', 1, NULL, NULL),
(1950, 'ALICIA ORIANA MILENA', 'GARRO', '45965353', '2005-08-14', '26127737028', 'aliciagarro@jbalberdi4026.edu.ar', 'CUYUN II ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1951, 'JIMENA MILAGROS', 'GONZALEZ', '41643195', '1998-10-15', '2615664285', 'jimeliascris408@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1952, 'GONZALEZ', 'LAUTARO BENJAMÍN', '46867010', '2006-01-13', '261 155952785', 'lautygonzales779@gmail.com', 'CALLEJON MERCADO', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(1953, 'MARIANA MICAELA', 'GUAQUINCHAY - VALLECILLO', '46474860', '2005-10-07', '0000', 'micaelaguaquinchay654@gmail.com', 'DORREGO SUR', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1954, 'MADAF', 'BRISA ANTONELLA', '46062538', '2004-05-27', '2612321836', 'brisamadaf345@gmail.com', 'ANDACOLLO SUR', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1955, 'ERIKA DENISE', 'ROJAS', '44404492', '2002-09-19', '2615199595', 'gracielamedina0773@gmail.com', 'GARIBALDI', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1956, 'ROLDAN', 'NATALIA MACARENA', '45874382', '2004-09-11', '0000', 'Ml6584395@gmail.com', 'LOS SANJUANINOS ', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1957, 'ROMERA', 'ROCIO GEORGINA', '43417894', '2000-06-07', '2612070898', 'rocimera@yahoo.com', 'TULUMAYA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1958, 'VILLCA LIMACHI', 'AXEL JESÚS', '47371037', '2005-08-10', '0', 'axelvillca8@gmail.com', 'QUIROGA-FINCA ADOLFO DIAZ', 'LAVALLE - SAN FRANCISCO', 1, NULL, NULL),
(1959, 'VILLEGAS', 'MILAGROS ANTONELLA', '41418140', '1998-10-01', '0000', 'antonellavillegas98@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(1960, 'ALCARAZ', 'MAURO E', '46869337', '2005-06-17', '2617161552', 'alcarazmauro@gmail.com', 'FCA.HUSARES', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1961, 'BARCELÓ', 'ALEJO LAUREANO', '47372365', '2006-01-09', '2615103584', 'alejobarcelogomez123@gmail.com', 'RODRIGUEZ', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1962, 'CONTRERAS VIDELA', 'JEREMÍAS GABRIEL', '46869243', '2006-01-23', '261156028101', 'jeremiascontreras784@gmail.com', 'RUTA 24', 'LAVALLE - EL CHILCAL', 1, NULL, NULL),
(1963, 'FERNANDEZ', 'MARÍA LAURA', '42669479', '1993-02-11', '2616270787', 'ZOECANDE300@GMAIL.COM', 'SANTA ROSA ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1964, 'FRAGALE', 'LUCAS LAUTARO', '45967090', '2004-12-26', '261 156717324', 'fragalelucas12@gmail.com', 'LAVALLE - EL CHILCAL', 'LAVALLE - EL CHILCAL', 1, NULL, NULL),
(1965, 'GONZALEZ  FARIAS', 'JOSÉ IGNACIO', '45965274', '2005-03-09', '2615991084', 'joseignaciogonzalezfarias2005@gmail.com', 'SANTA MARÍA ', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1966, 'MAGALLANES', 'SEBASTIAN ALFREDO', '47371064', '2006-06-09', '2635018164', 'sebastianmagallanes607@gmail.com', 'CUYUM I', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1967, 'MARTINEZ CRUZ', 'YHENIFER YHARY', '95048235', '2005-08-19', '261637119', 'yhenyfermarttinezcruz@gmail.com', 'FINCA FLUXIA', 'LAVALLE - EL PARAMILLO', 1, NULL, NULL),
(1968, 'MENDOZA', 'NOEMÍ CRISTINA', '46869255', '2005-11-18', '0000', 'mendozacristina234@gmail.com', 'BELGRANO', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1969, 'PELAYTAY ROSALES', 'URIEL PABLO', '46163392', '2005-01-09', '4941768', 'uripelaytay05@gmail.com', 'calle GODOY CRUZ', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1970, 'PEREZ', 'CLAUDIA ROMINA', '33053245', '2002-12-26', '2616388620', 'romiicalu87@gmail.com', 'LAVALLE ', 'lavalle', 1, NULL, NULL),
(1971, 'SUAREZ', 'GASPAR MARCELO', '46474869', '2005-10-20', '0000', 'gasparsuarezmedina11@gmail.com', 'AMYSO IV', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1972, 'TEN', 'LEANDRO XAVIER', '36582226', '1992-04-01', '0000', 'CHISPALX1@GMAIL.COM', 'PORTAL DEL SOL', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1973, 'ZABALA', 'LAUTARO MAXIMILIANO EZEQUIEL', '46547345', '2005-09-19', '0000', 'zlautti@gmail.com', 'CALLEJON RETA', 'JUNIN - JUNIN', 1, NULL, NULL),
(1974, 'ALBERTTI', 'RICARDO MARTIN', '44756917', '2003-04-07', '261155991531', 'gloriagaray483@gmail.com', '9 DE JULIO', 'LAVALLE - LA PALMERA', 1, NULL, NULL),
(1975, 'ASTUDILLO', 'ARIANA ABIGAIL', '46869294', '2006-03-01', '2613862566', 'arianaastudillo09@gmail.com', 'SANTA CECILIA', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1976, 'BARRERA', 'JOAQUÍN TOBÍAS', '45023517', '2003-09-21', '261156888534', 'barrerajoaquin24@gmail.com', 'STA. CECILIA', 'LAVALLE - VILLA TULUMAYA (CIUDAD', 1, NULL, NULL),
(1977, 'BENITEZ', 'ANTONELLA PRISCILA', '47371062', '2006-04-07', '2616989299', 'antonellab196@gmail.com', 'LAMADRID', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1978, 'BORTOLIN JOFRÉ', 'SELENA LIS', '45256983', '2003-10-03', '2612704261', 'jofregladysalejandra@gmail.com', 'CALLE LAVALLE ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1979, 'CAÑIZARE', 'ANTONELLA ABRIL', '42266907', '1999-12-04', '261156050245', 'abrilczare@gmail.com', 'VILLEGAS', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1980, 'CARBONE', 'ROSA ANTONELLA', '45965245', '2004-09-01', '2612466781', 'etelsotelo19759@gmail.com', 'Villanueva (Finca Carbone)', 'LAVALLE - EL PLUMERO', 1, NULL, NULL),
(1981, 'CASAS MARTINEZ', 'MARA GIANELLA', '46233614', '2004-03-19', '0000', 'martinezmaragianella@gmail.com', 'Bº CONSTITUCIÓN', 'GUAYMALLÉN - GUAYMALLEN', 1, NULL, NULL),
(1982, 'DOMINGUEZ BAJACH', 'JUME LEYLÉN', '49083116', '2005-05-12', '2615196729', 'jumedb@yahoo.com.ar', 'BARRIO COOP. LA PEGA', 'LAVALLE - LA PEGA', 1, NULL, NULL),
(1983, 'GONZALEZ', 'YOLANDA ISABEL', '25611181', '1977-05-31', '0000', 'yoolaadaa5674@gmail.com', 'RODRIGUEZ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1984, 'IBARRA', 'CLAUDIO ANGEL', '43681917', '2001-03-26', '0000', 'ibarraclaudio903@gmail.com', 'calle Moron s/n', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(1985, 'MARTINEZ', 'LUZ ALICIA', '46663376', '2005-11-19', '2617066203', 'mluz298582@gmail.com', 'RUTA 34. DETRAS FINCA BEN BAN. LOS CHAÑARES', 'LAVALLE - EL PARAMILLO', 1, NULL, NULL),
(1986, 'OROSCO VIDELA', 'JENNIFER JULIETA', '46327685', '2005-09-06', '2613836062', 'noevidela2017@gmail.com', 'ROMERA', 'LAS HERAS - LAS HERAS', 1, NULL, NULL),
(1987, 'PECAS', 'CAMILA NICOL', '44746948', '2003-04-29', '0000', 'camilapecas@jbalberdi4026.edu.ar', 'GARIBALDI', 'LAVALLE - COSTA DE ARAUJO', 1, NULL, NULL),
(1988, 'PEÑA', 'RUTH MELANIE', '45449219', '2004-02-12', '2616775722', 'claudio344@hotmail.es', 'CARRIL SAN PEDRO CALLE LAS PIEDRITAS FCA BURNIEGO', 'SAN MARTÍN - LAS CHIMBAS', 1, NULL, NULL),
(1989, 'RIVERO', 'GIMENA MARIANELA', '45721058', '2004-04-11', '2612577403', 'marianelarivero58@gmail.com', 'DORREGO SUR', 'LAVALLE - VILLA TULUMAYA (CIUDAD)', 1, NULL, NULL),
(1990, 'RODRIGUEZ RIVAROLA', 'MELISA AYELEN', '39843206', '1996-09-12', '2615347645', 'melis-rodriguez@outlook.com', 'CONSTITUCIÓN ', 'GUAYMALLÉN - EL SAUCE', 1, NULL, NULL),
(1991, 'RUILOVA LLANOS', 'LEONEL GIOVANNI', '44908416', '2003-05-06', '261156509958', 'llanoscristina999@gmail.com', 'MATHUS HOYOS', 'GUAYMALLÉN - BERMEJO', 1, NULL, NULL),
(1992, 'SBORCHIA', 'NIRVANA MAGALI', '45361430', '2033-08-11', '261156797234', 'medelmonica9@gmail.com', 'CARLOS LA PAZ LOTES CAVERO', 'LAVALLE - JOCOLÍ VIEJO', 1, NULL, NULL),
(1993, 'SEGOVIA', 'CLAUDIA CARINA', '21515894', '1970-09-02', '2616670757', 'ccsegovia@mendoza.edu.ar', 'Roque Montenegro ', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(1994, 'SORIA', 'ROMINA LAURA', '43215104', '2001-03-14', '2612498050', 'rsoria.2019.p@gmail.com', 'NUÑEZ', 'LAVALLE - EL CARMEN', 1, NULL, NULL),
(1997, 'VERA', 'GABRIELA LOURDES', '23185053', '1973-02-13', '2614185834', 'gabriela.vea.987@gmail.com', 'BELGRANO', 'LAVALLE', 1, NULL, NULL),
(1998, 'MASI ', 'NELLY', '18521617', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1999, 'GARCIA', 'SHIRLEY LAURA MARIANA', '30889723', '1984-02-13', '2612707116', 'shirleylaura45@gmail.com', 'B° Belgrano ME-C15', 'LAVALLE', 1, NULL, NULL),
(2000, 'SALEM ', 'Maria Cecilia', '14323149', '1961-02-15', '2614697015', 'cecisalem2@gmail.com', 'barrio santa cecilia 1º m d c 8', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(2001, 'YACANTE', 'Julieta', '39381116', '1996-01-27', '2613017954', 'julietayacante25@gmail.com', 'barrio santa cecilia 1º m d c 8', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(2002, 'CÁCERES', 'GOERGINA ANTONELLA', '40690058', '1995-09-16', '2612633199', 'georcaceres7@gmail.com', 'Ruta 36', 'LAVALLE - TRES DE MAYO', 1, NULL, NULL),
(2003, 'CAMAÑO', 'MELISA GISELA', '36581501', '1991-04-06', '03412768672', 'melisagiselacamano1991@gmail.com', 'lavalle', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(2004, 'NISCOLA', 'AGUSTÍN JULIÁN', '40221096', '1997-03-02', '0000', 'AGUSTINISCOLA.04@HOTMAIL.COM', 'DEMETRIO MORALES', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(2007, 'PEREZ', 'BRISA MICHELLE', '43749615', '2001-05-26', '02616434802', 'brisamichelleperez815@gmail.com', 'LAVALLE - LAVALLE', 'LAVALLE - LAVALLE', 1, NULL, NULL),
(2008, 'ARRULA', 'FEDERICO DIEGO', '35560278', '1991-07-22', '2613790077', 'fede.arrula@gmail.com', 'BARRIO JARILLEROS 1 M-C CASA 12', 'JOCOLI VIEJO', 1, NULL, NULL),
(2009, 'ARCOS', 'MARTÍN GABRIEL', '47154925', '2006-03-22', '0', '', 'Ruta 24 ', 'LAVALLE - LA PEGA', 1, NULL, NULL),
(2010, 'GUTIERREZ', 'MAURICIO BENJAMÍN', '45469584', '2004-11-24', '2616112684', 'mariuchi.70@gmail.com', 'B° JARDIN EL SAUCE', 'GUAYMALLÉN - EL SAUCE', 1, NULL, NULL),
(2011, 'GUIÑAZÚ-VERON', 'LUCAS MARTÍN', '45361038', '2004-06-03', '261 7086484', 'lmgv2016@gmail.com', 'Virgen del Rosario', 'LAVALLE - GUSTAVO ANDRE', 1, NULL, NULL),
(2019, 'ABURTO', 'CINTIA MARIANA', '38581315', '1981-11-01', '1111111', 'aburtomari32@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2020, 'OLARTE', 'MICAELA SABRINA', '39381902', '1981-01-01', '1111111', 'aburtomari32@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2021, 'MASMAN', 'ADRIANA CINTIA', '25881563', '1980-01-01', '1111111', 'masmanadriana82@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2022, 'CARABAJAL', 'JESSICA JOHANNA', '34786155', '2000-01-01', '26111111', 'jessmic.jc@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2023, 'FICCARDI', 'MARINA RITA', '23589670', '1974-01-09', '26111111', 'mrficcardi@gmail.com', 'Entre Rios 923 ', 'LUJAN DE CUYO', 1, NULL, NULL),
(2024, 'MAYORGA', 'CECILIA VANESA', '27984538', '2000-01-01', '26111111', 'ceciliavanesamayorga@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2025, 'SILVA', 'ANDREA ALEJANDRA', '24461823', '2000-01-01', '26111111', 'dge1746@mendoza.edu.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2026, 'QUIROGA', 'ALICIA ANGELA', '36913464', '2000-01-01', '26111111', 'aliciaquiroga1p2013@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2028, 'OLMEDO', 'SILVINA GABRIELA', '29648304', '1982-07-04', '26156120723', 'silvinaolmedo89@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2029, 'Donadel ', 'María Cecilia ', '24705286', '1995-12-20', '123456789', 'mariaceciliadonadel@yahoo.com.ar', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2030, 'Siliprandi', 'Vanesa ', '30179207', '1997-12-12', '12345678', 'vanesasiliprandi@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2031, 'GÓMEZ ', 'MARIA EUGENIA', '30546473', '1999-12-23', '123456789', 'eugegom33@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2032, 'GUZMAN', 'ROCIO VICTORIA', '42403374', '1999-07-04', '2613892915', 'rguzmanni2018@gmail.com', 'ruta 24', 'lavalle', 1, NULL, NULL),
(2033, 'LARPIN', 'ANDRES CARLOS', '23901247', '2000-01-01', '26111111', 'andrescarloslarpin@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2034, 'RIGHI', 'ROXANA CARINA', '24580532', '2000-01-01', '26111111', 'roxanarighi@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2035, 'SAAVEDRA PUPPATO ', 'ROMINA GISELLA DEL CARMEN', '32433838', '2000-01-01', '26111111', 'rogisecar2016@icloud.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2036, 'CAIRO ', 'FLAVIA PAMELA', '22603543', '2000-01-01', '26111111', 'viamelacai@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2037, 'CARRO', 'ANA CAROLINA', '23339357', '2000-01-01', '26111111', 'caritocarro@hotmail.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2038, 'VARGAS', 'NILDA LOURDES', '30964490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2039, 'ALLAY', 'GUSTAVO ALEJANDRO', '18297838', '2000-01-01', '26111111', 'allgus02@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2043, 'LENES AVENDAÑO', 'ÉLIDA', '41794291', '1994-02-18', '2613605031', '', 'Calle Urquiza S/Nº', 'LAVALLE-COSTA DE ARAUJO', 1, NULL, NULL),
(2044, 'Ojeda', 'Adrián Alejandro', '34194858', '1988-12-21', '0', 'adri_mdz@live.com', 'lavalle ', 'LAVALLE', 1, NULL, NULL),
(2045, ' Dominichi', 'Maria Eugenia', '20488521', '1999-12-21', '12345678', 'eugeniadominichi@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2046, 'CORDOBA BORDON ', 'MARIA JOSE', '25938318', '2000-01-01', '26111111', 'lic.cordobabordon.psp@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2047, 'Uano ', 'Maria Elina', '26462556', '1999-12-21', '123456789', 'maryelina@yahoo.com.ar', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2048, 'ECHEGARAY', 'VANESA SOLEDAD', '34726939', '2000-01-01', '26111111', 'caelaventanadireccion@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2049, 'Burgo De Las Carreras', 'Josefina Maria ', '34800744', '1999-12-12', '12345678', 'josebrugo@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2050, 'DE LA VEGA ', 'PAULA DAIANA', '34191645', '2000-01-01', '26111111', 'dlvegap.87@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2051, ' Escalona', 'María Cecilia', '30108610', '1999-12-12', '12345678', 'mescalona175@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2052, 'LUPPO', 'LUCAS DANIEL', '32510897', '2000-01-01', '26111111', 'luppo26@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2053, 'TORRES NARVAEZ ', 'JUAN MARCELO', '46062554', '2000-01-01', '26111111', 'arroyopd29@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2054, 'NARVAEZ', 'CECILIA VERONICA', '26828803', '2000-01-01', '26111111', 'ceciliaveronicanarvaez@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2056, 'ATIENZA', 'MELINA GISEL', '36279271', '2000-01-01', '26111111', 'mechy_01191@hotmail.com.ar', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2057, 'RODRIGUEZ', 'ROMINA ANDREA', '32122869', '2000-01-01', '26111111', 'rominarodriguez.tics.2015@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2058, 'LIA ', 'YAMINA ELIZABETH', '39019323', '1111-11-11', '0', '', 'LAVALLE - LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2059, ' Herrera Vasquez', 'Melina Nahir', '41869370', '1999-05-23', '2616917807', 'mherrera2023.ni@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2060, 'BENEGAS', 'NEFTALÍ ', '29333964', '2000-01-12', '', 'neftalibenegas@gmail.com', '', '', 1, NULL, NULL),
(2061, 'Guzmán', 'Micaela Fernanda', '43485655', '1999-12-11', '12345678', 'mguzman.2019.p@gmail.com', 'Lavalle', 'Lavalle', 1, NULL, NULL),
(2062, 'CEJAS LORIA', 'CELESTE MICA', '40907040', '2000-01-01', '26111111', 'celecejasloria98@gmail.com', 'LAVALLE', 'LAVALLE', 1, NULL, NULL),
(2063, 'Lucero Diaz ', 'Jorge Miguel', '34256684', '1989-01-12', '0', 'jorge.mlucero@gmail.com', 'lavalle', 'lavalle', 1, NULL, NULL),
(2064, 'Pamela', 'Castro', '31714995', '1985-12-21', '0', 'pamelacastro995@gmail.com', 'lavalle ', 'LAVALLE', 1, NULL, NULL),
(2065, 'CABRERA ', 'VERONICA', '37622988', '1993-08-11', '0', 'cabrerairinaveronica@gmail.com', 'lavalle ', 'LAVALLE', 1, NULL, NULL),
(2066, 'SIDOTI', 'MARÌA ANTONELLA', '36653154', '2200-01-01', '2612061555', 'sidotiantonella@gmail.com', 'MAIPU', 'MAIPU', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recibos`
--

CREATE TABLE `recibos` (
  `idrecibo` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `personaid` int(11) NOT NULL,
  `tiposocioid` int(11) NOT NULL,
  `monto` decimal(65,2) DEFAULT NULL,
  `ide` int(11) DEFAULT NULL,
  `pago` int(11) DEFAULT NULL,
  `detalle` varchar(255) DEFAULT NULL,
  `temporal` varchar(255) DEFAULT NULL,
  `usuarioid` int(11) DEFAULT NULL,
  `trans` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Disparadores `recibos`
--
DELIMITER $$
CREATE TRIGGER `tr_insertcaja` AFTER INSERT ON `recibos` FOR EACH ROW BEGIN
    INSERT INTO caja (reciboid, detalle, ingreso, egreso, ide, fecha)
    VALUES (NEW.idrecibo, NEW.detalle, NEW.monto, 0, NEW.ide, CURRENT_TIMESTAMP);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_insertdiario` AFTER INSERT ON `recibos` FOR EACH ROW BEGIN
    DECLARE idcaja1 INT;
    DECLARE totali DECIMAL(65,2);
    DECLARE totale DECIMAL(65,2);
    DECLARE saldo1 DECIMAL(9,2);

    -- Obtener el último ID en la tabla 'caja'
    SELECT MAX(idcaja) INTO idcaja1 FROM caja;

    -- Calcular la suma de ingresos y egresos
    SELECT SUM(ingreso) INTO totali FROM caja;
    SELECT SUM(egreso) INTO totale FROM caja;

    -- Actualizar los valores de 'debe' y 'haber' en la última fila de 'caja'
    UPDATE caja 
    SET debe = totali, haber = totale 
    WHERE idcaja = idcaja1;

    -- Calcular el saldo
    SET saldo1 = totali - totale;

    -- Actualizar el saldo en la última fila de 'caja'
    UPDATE caja 
    SET saldo = saldo1 
    WHERE idcaja = idcaja1;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `tiporol` varchar(30) DEFAULT NULL,
  `idrol` int(11) NOT NULL,
  `detalle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'secretario'),
(4, 'comision'),
(5, 'tesorero'),
(6, 'administrador'),
(7, 'operador'),
(8, 'miembro'),
(9, 'socio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposocio`
--

CREATE TABLE `tiposocio` (
  `idtiposocio` int(11) NOT NULL,
  `tiposocio` varchar(150) NOT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `ide` int(11) NOT NULL COMMENT 'ide: Es la abreviatura de idEvento. 1-carrera; 2-curso; 3-postitulo; 4-congreso; 5-jornada; 6-ateneo; 7-donacion; 8-anulado; 9-obsequios'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `idpersona` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `fechanacido` date DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indices de la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indices de la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indices de la tabla `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`idcaja`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`idciclo`);

--
-- Indices de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  ADD PRIMARY KEY (`idcompromiso`);

--
-- Indices de la tabla `deudores`
--
ALTER TABLE `deudores`
  ADD PRIMARY KEY (`iddeudor1`);

--
-- Indices de la tabla `deudoresxtiposocio`
--
ALTER TABLE `deudoresxtiposocio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  ADD PRIMARY KEY (`idinsc`),
  ADD KEY `inscriptos_tiposocioid_fkey` (`tiposocioid`),
  ADD KEY `inscriptos_cicloid_fkey` (`cicloid`),
  ADD KEY `inscriptos_personaid_fkey` (`personaid`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`idpersona`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD PRIMARY KEY (`idrecibo`),
  ADD KEY `recibos_tiposocioid_fkey` (`tiposocioid`),
  ADD KEY `recibos_personaid_fkey` (`personaid`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tiposocio`
--
ALTER TABLE `tiposocio`
  ADD PRIMARY KEY (`idtiposocio`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idpersona`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `idcaja` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `idciclo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compromisos`
--
ALTER TABLE `compromisos`
  MODIFY `idcompromiso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deudores`
--
ALTER TABLE `deudores`
  MODIFY `iddeudor1` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deudoresxtiposocio`
--
ALTER TABLE `deudoresxtiposocio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  MODIFY `idinsc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2067;

--
-- AUTO_INCREMENT de la tabla `recibos`
--
ALTER TABLE `recibos`
  MODIFY `idrecibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tiposocio`
--
ALTER TABLE `tiposocio`
  MODIFY `idtiposocio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `idpersona` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inscriptos`
--
ALTER TABLE `inscriptos`
  ADD CONSTRAINT `inscriptos_cicloid_fkey` FOREIGN KEY (`cicloid`) REFERENCES `ciclos` (`idciclo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `inscriptos_personaid_fkey` FOREIGN KEY (`personaid`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `inscriptos_tiposocioid_fkey` FOREIGN KEY (`tiposocioid`) REFERENCES `tiposocio` (`idtiposocio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `recibos`
--
ALTER TABLE `recibos`
  ADD CONSTRAINT `recibos_personaid_fkey` FOREIGN KEY (`personaid`) REFERENCES `personas` (`idpersona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `recibos_tiposocioid_fkey` FOREIGN KEY (`tiposocioid`) REFERENCES `tiposocio` (`idtiposocio`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Base de datos: `miproyect`
--
CREATE DATABASE IF NOT EXISTS `miproyect` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `miproyect`;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"calculator_scalping\",\"table\":\"operaciones\"},{\"db\":\"armonix\",\"table\":\"user\"},{\"db\":\"calculator_scalping\",\"table\":\"brokers\"},{\"db\":\"trading_calculator\",\"table\":\"operaciones\"},{\"db\":\"trading_calculator\",\"table\":\"broker\"},{\"db\":\"trading_calculator\",\"table\":\"vista_operaciones_completa\"},{\"db\":\"trading_calculator\",\"table\":\"broker_config\"},{\"db\":\"armonix\",\"table\":\"pago_obligaciones\"},{\"db\":\"armonix\",\"table\":\"inscripcion_curso\"},{\"db\":\"armonix\",\"table\":\"ciclos_cuotas\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Volcado de datos para la tabla `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'armonix', 'user', '{\"sorted_col\":\"`id` DESC\",\"CREATE_TIME\":\"2025-05-29 22:49:36\"}', '2025-09-27 15:38:10'),
('root', 'calculator_scalping', 'operaciones', '{\"sorted_col\":\"`operaciones`.`ganancia_neta_total` DESC\"}', '2025-12-14 16:13:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-12-14 16:14:23', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\",\"NavigationWidth\":213}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
