-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2024 a las 21:15:23
-- Versión del servidor: 10.5.27-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fap_db2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user profile', 7, 'add_userprofile'),
(26, 'Can change user profile', 7, 'change_userprofile'),
(27, 'Can delete user profile', 7, 'delete_userprofile'),
(28, 'Can view user profile', 7, 'view_userprofile'),
(29, 'Can add forum category', 8, 'add_forumcategory'),
(30, 'Can change forum category', 8, 'change_forumcategory'),
(31, 'Can delete forum category', 8, 'delete_forumcategory'),
(32, 'Can view forum category', 8, 'view_forumcategory'),
(33, 'Can add adoption center', 9, 'add_adoptioncenter'),
(34, 'Can change adoption center', 9, 'change_adoptioncenter'),
(35, 'Can delete adoption center', 9, 'delete_adoptioncenter'),
(36, 'Can view adoption center', 9, 'view_adoptioncenter'),
(37, 'Can add forum post', 10, 'add_forumpost'),
(38, 'Can change forum post', 10, 'change_forumpost'),
(39, 'Can delete forum post', 10, 'delete_forumpost'),
(40, 'Can view forum post', 10, 'view_forumpost'),
(41, 'Can add forum comment', 11, 'add_forumcomment'),
(42, 'Can change forum comment', 11, 'change_forumcomment'),
(43, 'Can delete forum comment', 11, 'delete_forumcomment'),
(44, 'Can view forum comment', 11, 'view_forumcomment'),
(45, 'Can add store', 12, 'add_store'),
(46, 'Can change store', 12, 'change_store'),
(47, 'Can delete store', 12, 'delete_store'),
(48, 'Can view store', 12, 'view_store'),
(49, 'Can add veterinary clinic', 13, 'add_veterinaryclinic'),
(50, 'Can change veterinary clinic', 13, 'change_veterinaryclinic'),
(51, 'Can delete veterinary clinic', 13, 'delete_veterinaryclinic'),
(52, 'Can view veterinary clinic', 13, 'view_veterinaryclinic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$870000$0H3oqvOM8jeJRgBT4wUBrb$39knjTHVxgqo1rRJOiw/zdwYs8GRIl6x1wN+ttFuU/s=', '2024-12-07 19:45:06.387070', 1, 'mvossesmeza', '', '', 'mvossesmeza@gmail.com', 0, 1, '2024-12-07 18:33:04.683949'),
(2, 'pbkdf2_sha256$870000$G4yEXyhgRHx1iooQVhPoJA$WkmdFRNco/aa4S80+nm/RinvKQFXWgaKB4DGsX6Zszw=', '2024-12-07 19:43:50.302877', 0, 'gonzalovega', '', '', 'gonzalovega@gmail.com', 0, 1, '2024-12-07 19:21:34.439152'),
(3, 'pbkdf2_sha256$870000$ZoV6yr0femE4EmgsR2zoM4$0l1DGWdvTSE1SKvWPgJw0Agq0+vzH0cyvn7meWZ/9cM=', '2024-12-07 19:42:39.217054', 0, 'felipesepulveda', '', '', 'felipesepulveda@gmail.com', 0, 1, '2024-12-07 19:24:41.553303'),
(4, 'pbkdf2_sha256$870000$s1zqI6YWKMUYXURSISMWy1$fPaX91v23FWCDA3r2+BwFqpy0mUQC7RdLUEnP4C1iAM=', '2024-12-07 19:44:12.936330', 0, 'michaelbatarce', '', '', 'michaelbatarce@gmail.com', 0, 1, '2024-12-07 19:28:09.439818'),
(5, 'pbkdf2_sha256$870000$hA0lEA4bWGIxDz73dquBE9$xbqlaO0xGQ+Qm1oNm5ZcgXB4RW9mw7UjVuwFsycqN4I=', '2024-12-07 19:39:46.905898', 0, 'aaronflores', '', '', 'aaronflores@gmail.com', 0, 1, '2024-12-07 19:29:21.008845');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'FAP_App', 'adoptioncenter'),
(8, 'FAP_App', 'forumcategory'),
(11, 'FAP_App', 'forumcomment'),
(10, 'FAP_App', 'forumpost'),
(12, 'FAP_App', 'store'),
(7, 'FAP_App', 'userprofile'),
(13, 'FAP_App', 'veterinaryclinic'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-12-07 18:29:20.706355'),
(2, 'auth', '0001_initial', '2024-12-07 18:29:20.984217'),
(3, 'FAP_App', '0001_initial', '2024-12-07 18:29:21.032609'),
(4, 'FAP_App', '0002_forumcategory_userprofile_ban_end_date_and_more', '2024-12-07 18:29:21.522324'),
(5, 'FAP_App', '0003_update_superuser_profiles', '2024-12-07 18:29:21.547495'),
(6, 'FAP_App', '0004_forumcategory_created_by_and_more', '2024-12-07 18:29:21.613195'),
(7, 'FAP_App', '0005_userprofile_foto_perfil_alter_adoptioncenter_email_and_more', '2024-12-07 18:29:21.919423'),
(8, 'admin', '0001_initial', '2024-12-07 18:29:21.994137'),
(9, 'admin', '0002_logentry_remove_auto_add', '2024-12-07 18:29:22.017079'),
(10, 'admin', '0003_logentry_add_action_flag_choices', '2024-12-07 18:29:22.037132'),
(11, 'contenttypes', '0002_remove_content_type_name', '2024-12-07 18:29:22.103330'),
(12, 'auth', '0002_alter_permission_name_max_length', '2024-12-07 18:29:22.151514'),
(13, 'auth', '0003_alter_user_email_max_length', '2024-12-07 18:29:22.176487'),
(14, 'auth', '0004_alter_user_username_opts', '2024-12-07 18:29:22.198708'),
(15, 'auth', '0005_alter_user_last_login_null', '2024-12-07 18:29:22.249519'),
(16, 'auth', '0006_require_contenttypes_0002', '2024-12-07 18:29:22.253511'),
(17, 'auth', '0007_alter_validators_add_error_messages', '2024-12-07 18:29:22.273455'),
(18, 'auth', '0008_alter_user_username_max_length', '2024-12-07 18:29:22.298700'),
(19, 'auth', '0009_alter_user_last_name_max_length', '2024-12-07 18:29:22.325480'),
(20, 'auth', '0010_alter_group_name_max_length', '2024-12-07 18:29:22.350187'),
(21, 'auth', '0011_update_proxy_permissions', '2024-12-07 18:29:22.370318'),
(22, 'auth', '0012_alter_user_first_name_max_length', '2024-12-07 18:29:22.396614'),
(23, 'sessions', '0001_initial', '2024-12-07 18:29:22.415270');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_adoptioncenter`
--

CREATE TABLE `fap_app_adoptioncenter` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `total_pets` int(11) NOT NULL,
  `requirements` longtext NOT NULL,
  `adoption_process` longtext NOT NULL,
  `needs_donations` tinyint(1) NOT NULL,
  `donation_info` longtext NOT NULL,
  `available_species` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`available_species`)),
  `success_stories` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`success_stories`)),
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_adoptioncenter`
--

INSERT INTO `fap_app_adoptioncenter` (`id`, `name`, `address`, `phone`, `email`, `website`, `description`, `image`, `rating`, `is_active`, `created_at`, `updated_at`, `latitude`, `longitude`, `total_pets`, `requirements`, `adoption_process`, `needs_donations`, `donation_info`, `available_species`, `success_stories`, `created_by_id`) VALUES
(1, 'Hogar Peluditos Felices', 'Calle Luna 123, Ciudad Esperanza', '+56 9 8765 4321', 'contacto@peluditosfelices.org', 'https://www.garrasypatas.cl', 'Refugio dedicado al rescate y rehabilitación de perros y gatos abandonados. Ofrecemos atención veterinaria, socialización y buscamos hogares responsables para nuestros peludos.', 'locations/refugio1.jpg', 0.00, 1, '2024-12-07 19:53:25.041202', '2024-12-07 19:53:25.041202', NULL, NULL, 52, 'Ser mayor de 21 años, presentar un comprobante de domicilio, identificación vigente y llenar un cuestionario sobre tenencia responsable.', '1.Llenar el formulario de preadopción en línea o en el refugio.\r\n2.Entrevista presencial o virtual.\r\n3.Visita al refugio para conocer a las mascotas disponibles.\r\n4.Firma del contrato de adopción y pago de una cuota 5.simbólica para cubrir vacunas y esterilización.\r\n6.Seguimiento postadopción durante los primeros tres meses.', 1, '', '[]', '[]', 1),
(2, 'Paticas Unidas', 'Avenida Solidaridad 456, Barrio Nuevo Amanecer', '+34 91 123 4567', 'info@paticasunidas.org', 'https://www.paticasunidas.org', 'Organización sin fines de lucro que rescata animales en situación de calle, rehabilita aquellos con necesidades especiales y fomenta la adopción responsable.', 'locations/refugio2.jpg', 0.00, 1, '2024-12-07 19:56:03.616186', '2024-12-07 19:56:03.616186', NULL, NULL, 1539, 'Presentar identificación oficial, comprobante de ingresos y pasar una evaluación domiciliaria previa.', '1.Asistir a una plática informativa sobre la adopción responsable.\r\n2.Seleccionar la mascota en el refugio o a través del sitio web.\r\n3.Revisión y aprobación de los documentos requeridos.\r\n4.Firma del contrato de adopción y retiro del animal.\r\n5.Seguimiento regular por parte del equipo del refugio.', 0, '', '[]', '[]', 1),
(3, 'La Casita de los Bigotes', 'Camino Verde 789, Pueblo Tranquilo', '+1 555 789 0123', 'lacasita@bigotes.org', 'https://www.lacasitadelosbigotes.org', 'Refugio especializado en el cuidado y adopción de gatos rescatados. Proporcionamos un ambiente seguro y cómodo mientras encuentran un hogar definitivo.', 'locations/refugio3.webp', 0.00, 1, '2024-12-07 19:58:06.220911', '2024-12-07 19:58:06.220911', NULL, NULL, 35, 'Ser mayor de edad, llenar una solicitud de adopción, y demostrar que la vivienda es apta para gatos.', '1.Completar el formulario en línea o directamente en el refugio.\r\n2.Entrevista para conocer al adoptante y su experiencia con gatos.\r\n3.Visita domiciliaria para asegurar que el entorno es adecuado.\r\n4.Firma del contrato y entrega del gato con su cartilla médica.\r\n5.Seguimiento mensual durante los primeros seis meses.', 1, '', '[]', '[]', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_forumcategory`
--

CREATE TABLE `fap_app_forumcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `order` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_forumcategory`
--

INSERT INTO `fap_app_forumcategory` (`id`, `name`, `description`, `created_at`, `icon`, `order`, `is_active`, `created_by_id`) VALUES
(1, 'Historia-Anecdota', 'Comparte una historia interesante sobre tú mascota', '2024-12-07 19:10:13.282472', 'chat-dots', 0, 1, 1),
(2, 'Cuidado de tu mascotas', 'Comparte lo que haz aprendido sobre el cuidado de tu mascota para ayudar a otros dueños.', '2024-12-07 19:34:32.356409', 'chat-dots', 0, 1, 1),
(3, 'Curiosidades', 'Cuéntanos un datos sobre animales que te parezca interesante, ¡Seguro que alguien no lo sabía!', '2024-12-07 19:36:34.700036', 'chat-dots', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_forumcomment`
--

CREATE TABLE `fap_app_forumcomment` (
  `id` bigint(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_solution` tinyint(1) NOT NULL,
  `author_id` int(11) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_forumcomment`
--

INSERT INTO `fap_app_forumcomment` (`id`, `content`, `created_at`, `updated_at`, `is_solution`, `author_id`, `parent_id`, `post_id`) VALUES
(1, 'Jajajaja, me imagino la cara de Max viendo al pato llevándose la pelota. ¡Qué divertido! Al menos lograron recuperarla. Max se ganó un premio por su paciencia, ¿no?', '2024-12-07 19:23:38.930023', '2024-12-07 19:23:38.930023', 0, 2, NULL, 1),
(2, 'Esto suena como una escena de película. ¡Un perro persiguiendo a un pato por una pelota! ???? Espero que el pato no vuelva a meterse con Max. ¿Alguna foto del ladrón?', '2024-12-07 19:25:13.512018', '2024-12-07 19:25:13.512018', 0, 3, NULL, 1),
(3, '¡Pobrecito Max! Seguro quedó pensando que los patos son los verdaderos villanos del parque. Me alegra que hayan recuperado la pelota, aunque no puedo parar de reír imaginando la persecución.', '2024-12-07 19:28:45.547050', '2024-12-07 19:28:45.547050', 0, 4, NULL, 1),
(4, 'Wow, ¡qué historia! Max debería tener cuidado, los patos tienen un sindicato de ladrones de pelotas. ???? Dale un abrazo a Max de mi parte por ser un buen chico', '2024-12-07 19:29:58.336633', '2024-12-07 19:29:58.336633', 0, 5, NULL, 1),
(5, '¡Gracias por compartirlo! Mi perro también se lame mucho las patas después de los paseos. No sabía que podía ser por eso, voy a intentar limpiarlas también. ¡Qué bueno que Bruno está mejor!', '2024-12-07 19:38:31.576323', '2024-12-07 19:38:31.576323', 0, 2, NULL, 2),
(6, '¡Qué interesante! Nunca me había planteado que los productos de limpieza pudieran afectar a los perros. Esto me hace pensar en lo que mi perrita pueda estar pisando. ¡Gracias por el consejo!', '2024-12-07 19:39:12.589407', '2024-12-07 19:39:12.589407', 0, 4, NULL, 2),
(7, '¡Me alegra haberte ayudado ;)!', '2024-12-07 19:40:32.186241', '2024-12-07 19:40:32.186241', 0, 5, 5, 2),
(8, '¡Qué interesante! No tenía idea de que las narices de los perros fueran tan únicas. Es como si tuvieran su propio pasaporte.', '2024-12-07 19:43:56.893093', '2024-12-07 19:43:56.893093', 0, 2, NULL, 3),
(9, 'Sí, yo también lo sabía, pero nunca me canso de escuchar ese dato. Las narices de los perros son asombrosas, ¡y no solo por eso! También pueden detectar olores en cantidades diminutas.', '2024-12-07 19:44:32.889167', '2024-12-07 19:44:32.889167', 0, 4, NULL, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_forumcomment_likes`
--

CREATE TABLE `fap_app_forumcomment_likes` (
  `id` bigint(20) NOT NULL,
  `forumcomment_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_forumcomment_likes`
--

INSERT INTO `fap_app_forumcomment_likes` (`id`, `forumcomment_id`, `user_id`) VALUES
(1, 1, 3),
(3, 1, 4),
(6, 1, 5),
(2, 2, 3),
(4, 2, 4),
(7, 2, 5),
(5, 3, 4),
(8, 3, 5),
(9, 4, 5),
(10, 5, 4),
(11, 5, 5),
(12, 8, 4),
(13, 9, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_forumpost`
--

CREATE TABLE `fap_app_forumpost` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `is_pinned` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `views` int(11) NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`tags`)),
  `author_id` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_forumpost`
--

INSERT INTO `fap_app_forumpost` (`id`, `title`, `content`, `created_at`, `updated_at`, `is_pinned`, `is_locked`, `views`, `tags`, `author_id`, `category_id`) VALUES
(1, 'Max vs el Pato', 'Una vez, llevé a mi perro Max al parque para jugar con su pelota favorita. La lancé con todas mis fuerzas, pero antes de que él pudiera alcanzarla, un pato que andaba por ahí decidió que era suya y salió corriendo con la pelota en el pico. Max se quedó parado, mirándome confundido, como diciendo: \"¿De verdad voy a dejar que un pato me gane?\".\r\n\r\nAl final, ambos, Max y yo, terminamos persiguiendo al pato por todo el parque. Cuando logramos recuperar la pelota, Max me la trajo, orgulloso, con la lengua afuera y una mirada que decía: \"No más patos, por favor.\" Desde entonces, cada vez que ve un pato, lo ignora completamente.', '2024-12-07 19:16:41.562446', '2024-12-07 19:34:58.522959', 0, 0, 11, '[\"mascotas\", \"adopcion\"]', 1, 1),
(2, 'Cuida sus patitas', 'Hace un tiempo, noté que mi perro Bruno se rascaba mucho las patas después de salir al parque. Pensé que era algo normal, pero empezó a lamerse tanto que hasta le salieron pequeñas heridas. Después de investigar y consultar al veterinario, descubrí que era una alergia causada por los productos químicos que usan para limpiar las calles y los parques.\r\n\r\nLa solución fue sencilla: ahora, cada vez que regresamos a casa, limpio sus patas con un paño húmedo o toallitas especiales para perros. Desde que empecé a hacerlo, el problema desapareció. Quise compartir esto porque sé que muchos, como yo, no le damos importancia a esas cosas pequeñas, pero pueden afectar mucho a nuestros peludos. ¡Espero que esta experiencia les sirva a otros dueños!', '2024-12-07 19:37:43.604973', '2024-12-07 19:40:32.191238', 0, 0, 6, '[\"salud\", \"cuidados\", \"consejos\"]', 5, 2),
(3, 'Huellas narigudas', 'El otro día aprendí algo súper curioso sobre los perros: ¿sabían que sus narices son únicas, como nuestras huellas dactilares? Ningún perro tiene el mismo patrón de líneas y relieves en su nariz. ¡Incluso hay bases de datos que usan impresiones nasales para identificarlos! Me pareció fascinante, porque siempre pensé que solo los microchips eran su \"ID\". Ahora cada vez que veo la nariz de mi perro, me imagino que es como un código secreto. ', '2024-12-07 19:43:37.729252', '2024-12-07 19:44:32.893958', 0, 0, 4, '[\"veterinaria\", \"consejos\"]', 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_forumpost_likes`
--

CREATE TABLE `fap_app_forumpost_likes` (
  `id` bigint(20) NOT NULL,
  `forumpost_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_forumpost_likes`
--

INSERT INTO `fap_app_forumpost_likes` (`id`, `forumpost_id`, `user_id`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 2, 2),
(8, 2, 4),
(9, 3, 2),
(10, 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_store`
--

CREATE TABLE `fap_app_store` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `store_type` varchar(20) NOT NULL,
  `delivery` tinyint(1) NOT NULL,
  `delivery_radius` int(11) NOT NULL,
  `opening_hours` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`opening_hours`)),
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_store`
--

INSERT INTO `fap_app_store` (`id`, `name`, `address`, `phone`, `email`, `website`, `description`, `image`, `rating`, `is_active`, `created_at`, `updated_at`, `latitude`, `longitude`, `store_type`, `delivery`, `delivery_radius`, `opening_hours`, `created_by_id`) VALUES
(1, 'Mundo Peludo', 'Avenida Central 456, Ciudad Mascota', '+56 9 5432 1234', 'contacto@mundopeludo.cl', 'https://www.mundopeludo.cl', 'Tienda especializada en alimentos premium, juguetes interactivos y productos de cuidado para perros y gatos. Ofrecemos también servicio de asesoramiento nutricional para mascotas.', 'locations/tienda2.webp', 0.00, 1, '2024-12-07 20:03:40.907563', '2024-12-07 20:03:40.907563', NULL, NULL, 'food_shop', 1, 0, '{}', 1),
(2, 'Pet Lovers Market', 'Calle Florencia 78, Barrio Verde, Ciudad Jardín', '+34 91 987 6543', 'soporte@petloversmarket.es', 'https://www.petloversmarket.es', 'En Pet Lovers Market encontrarás una amplia gama de productos para todo tipo de mascotas, desde comida balanceada hasta accesorios de última tendencia. ¡Todo lo que necesitas para consentir a tu mejor amigo!', 'locations/tienda1.webp', 0.00, 1, '2024-12-07 20:04:54.887962', '2024-12-07 20:04:54.888970', NULL, NULL, 'pet_shop', 0, 0, '{}', 1),
(3, 'Huellas y Colitas', 'Calle Nogal 123, Plaza Dorada, Pueblo Alegre', '+1 555 678 9012', 'hola@huellasycolitas.com', 'https://www.huellasycolitas.com', 'Tienda dedicada al bienestar animal, con productos orgánicos, juguetes ecoamigables y una línea completa de cuidado para mascotas exóticas. Nuestra misión es ofrecer calidad y sostenibilidad en cada artículo.', 'locations/tienda3.webp', 0.00, 1, '2024-12-07 20:06:12.014903', '2024-12-07 20:07:20.719109', NULL, NULL, 'pet_shop', 1, 0, '{}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_userprofile`
--

CREATE TABLE `fap_app_userprofile` (
  `id` bigint(20) NOT NULL,
  `role` varchar(10) NOT NULL,
  `bio` longtext NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `notifications_enabled` tinyint(1) NOT NULL,
  `dark_mode` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_end_date` datetime(6) DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL,
  `foto_perfil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_userprofile`
--

INSERT INTO `fap_app_userprofile` (`id`, `role`, `bio`, `phone`, `address`, `notifications_enabled`, `dark_mode`, `created_at`, `updated_at`, `user_id`, `ban_end_date`, `is_banned`, `foto_perfil`) VALUES
(1, 'admin', '', '', '', 1, 0, '2024-12-07 18:33:05.492170', '2024-12-07 19:45:06.389558', 1, NULL, 0, 'perfil/jinouga.gif'),
(2, 'user', '', '', '', 1, 0, '2024-12-07 19:21:35.280435', '2024-12-07 19:43:50.304477', 2, NULL, 0, 'perfil/default.jpg'),
(3, 'user', '', '', '', 1, 0, '2024-12-07 19:24:42.235667', '2024-12-07 19:42:39.220027', 3, NULL, 0, 'perfil/default.jpg'),
(4, 'user', '', '', '', 1, 0, '2024-12-07 19:28:11.160105', '2024-12-07 19:44:12.940325', 4, NULL, 0, 'perfil/default.jpg'),
(5, 'user', '', '', '', 1, 0, '2024-12-07 19:29:21.811123', '2024-12-07 19:39:46.907898', 5, NULL, 0, 'perfil/default.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fap_app_veterinaryclinic`
--

CREATE TABLE `fap_app_veterinaryclinic` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `rating` decimal(3,2) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `services` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`services`)),
  `emergency_service` tinyint(1) NOT NULL,
  `clinic_type` varchar(20) NOT NULL,
  `veterinarians` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`veterinarians`)),
  `specialties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`specialties`)),
  `created_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fap_app_veterinaryclinic`
--

INSERT INTO `fap_app_veterinaryclinic` (`id`, `name`, `address`, `phone`, `email`, `website`, `description`, `image`, `rating`, `is_active`, `created_at`, `updated_at`, `latitude`, `longitude`, `services`, `emergency_service`, `clinic_type`, `veterinarians`, `specialties`, `created_by_id`) VALUES
(1, 'Clínica Veterinaria Vida Animal', 'Calle Esperanza 234, Ciudad Salud', '+56 9 8765 1234', 'contacto@vidaanimalvet.cl', 'https://www.vidaanimalvet.cl', 'Centro veterinario integral que ofrece consultas generales, vacunación, cirugías y servicios de urgencia las 24 horas. Contamos con un equipo especializado en animales de compañía y un enfoque personalizado para cada paciente.', 'locations/vet1.webp', 0.00, 1, '2024-12-07 20:10:20.701516', '2024-12-07 20:10:20.701516', NULL, NULL, '[]', 1, 'general', '[]', '[]', 1),
(2, 'VetCare Total', 'Avenida del Sol 567, Barrio Los Jardines, Ciudad Nueva', '+34 91 654 3210', 'info@vetcaretotal.es', 'https://www.vetcaretotal.es', 'Clínica veterinaria moderna equipada con tecnología de última generación para diagnósticos y tratamientos. Ofrecemos consultas especializadas, odontología animal y servicio de hospitalización.', 'locations/vet3.jpg', 0.00, 1, '2024-12-07 20:11:34.278319', '2024-12-07 20:11:34.278319', NULL, NULL, '[]', 0, 'specialist', '[]', '[]', 1),
(3, 'Bienestar Animal', 'Camino de los Cipreses 890, Pueblo Sereno', '+1 555 789 3456', 'reservas@bienestaranimal.com', 'https://www.bienestaranimal.com', 'Clínica veterinaria que se enfoca en la salud preventiva, bienestar integral y terapias alternativas como fisioterapia y acupuntura para mascotas. También contamos con un área de urgencias y laboratorio propio.', 'locations/vet2.jpg', 0.00, 1, '2024-12-07 20:12:45.231887', '2024-12-07 20:12:45.231887', NULL, NULL, '[]', 0, 'specialist', '[]', '[]', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `fap_app_adoptioncenter`
--
ALTER TABLE `fap_app_adoptioncenter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FAP_App_adoptioncenter_created_by_id_610ca9e9_fk_auth_user_id` (`created_by_id`);

--
-- Indices de la tabla `fap_app_forumcategory`
--
ALTER TABLE `fap_app_forumcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FAP_App_forumcategory_created_by_id_2516f1d4_fk_auth_user_id` (`created_by_id`);

--
-- Indices de la tabla `fap_app_forumcomment`
--
ALTER TABLE `fap_app_forumcomment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FAP_App_forumcomment_author_id_00d602c5_fk_auth_user_id` (`author_id`),
  ADD KEY `FAP_App_forumcomment_parent_id_55104ad1_fk_FAP_App_f` (`parent_id`),
  ADD KEY `FAP_App_forumcomment_post_id_3fdf92a0_fk_FAP_App_forumpost_id` (`post_id`);

--
-- Indices de la tabla `fap_app_forumcomment_likes`
--
ALTER TABLE `fap_app_forumcomment_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FAP_App_forumcomment_likes_forumcomment_id_user_id_b876ffc4_uniq` (`forumcomment_id`,`user_id`),
  ADD KEY `FAP_App_forumcomment_likes_user_id_36c2052c_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `fap_app_forumpost`
--
ALTER TABLE `fap_app_forumpost`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FAP_App_forumpost_author_id_5088c558_fk_auth_user_id` (`author_id`),
  ADD KEY `FAP_App_forumpost_category_id_f04d3080_fk_FAP_App_f` (`category_id`);

--
-- Indices de la tabla `fap_app_forumpost_likes`
--
ALTER TABLE `fap_app_forumpost_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `FAP_App_forumpost_likes_forumpost_id_user_id_958bcc51_uniq` (`forumpost_id`,`user_id`),
  ADD KEY `FAP_App_forumpost_likes_user_id_be0f8b53_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `fap_app_store`
--
ALTER TABLE `fap_app_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FAP_App_store_created_by_id_38c0eb9d_fk_auth_user_id` (`created_by_id`);

--
-- Indices de la tabla `fap_app_userprofile`
--
ALTER TABLE `fap_app_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `fap_app_veterinaryclinic`
--
ALTER TABLE `fap_app_veterinaryclinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FAP_App_veterinaryclinic_created_by_id_10d6d16c_fk_auth_user_id` (`created_by_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `fap_app_adoptioncenter`
--
ALTER TABLE `fap_app_adoptioncenter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fap_app_forumcategory`
--
ALTER TABLE `fap_app_forumcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fap_app_forumcomment`
--
ALTER TABLE `fap_app_forumcomment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `fap_app_forumcomment_likes`
--
ALTER TABLE `fap_app_forumcomment_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `fap_app_forumpost`
--
ALTER TABLE `fap_app_forumpost`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fap_app_forumpost_likes`
--
ALTER TABLE `fap_app_forumpost_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `fap_app_store`
--
ALTER TABLE `fap_app_store`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fap_app_userprofile`
--
ALTER TABLE `fap_app_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `fap_app_veterinaryclinic`
--
ALTER TABLE `fap_app_veterinaryclinic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_adoptioncenter`
--
ALTER TABLE `fap_app_adoptioncenter`
  ADD CONSTRAINT `FAP_App_adoptioncenter_created_by_id_610ca9e9_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_forumcategory`
--
ALTER TABLE `fap_app_forumcategory`
  ADD CONSTRAINT `FAP_App_forumcategory_created_by_id_2516f1d4_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_forumcomment`
--
ALTER TABLE `fap_app_forumcomment`
  ADD CONSTRAINT `FAP_App_forumcomment_author_id_00d602c5_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `FAP_App_forumcomment_parent_id_55104ad1_fk_FAP_App_f` FOREIGN KEY (`parent_id`) REFERENCES `fap_app_forumcomment` (`id`),
  ADD CONSTRAINT `FAP_App_forumcomment_post_id_3fdf92a0_fk_FAP_App_forumpost_id` FOREIGN KEY (`post_id`) REFERENCES `fap_app_forumpost` (`id`);

--
-- Filtros para la tabla `fap_app_forumcomment_likes`
--
ALTER TABLE `fap_app_forumcomment_likes`
  ADD CONSTRAINT `FAP_App_forumcomment_forumcomment_id_5b05ab5c_fk_FAP_App_f` FOREIGN KEY (`forumcomment_id`) REFERENCES `fap_app_forumcomment` (`id`),
  ADD CONSTRAINT `FAP_App_forumcomment_likes_user_id_36c2052c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_forumpost`
--
ALTER TABLE `fap_app_forumpost`
  ADD CONSTRAINT `FAP_App_forumpost_author_id_5088c558_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `FAP_App_forumpost_category_id_f04d3080_fk_FAP_App_f` FOREIGN KEY (`category_id`) REFERENCES `fap_app_forumcategory` (`id`);

--
-- Filtros para la tabla `fap_app_forumpost_likes`
--
ALTER TABLE `fap_app_forumpost_likes`
  ADD CONSTRAINT `FAP_App_forumpost_li_forumpost_id_92849173_fk_FAP_App_f` FOREIGN KEY (`forumpost_id`) REFERENCES `fap_app_forumpost` (`id`),
  ADD CONSTRAINT `FAP_App_forumpost_likes_user_id_be0f8b53_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_store`
--
ALTER TABLE `fap_app_store`
  ADD CONSTRAINT `FAP_App_store_created_by_id_38c0eb9d_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_userprofile`
--
ALTER TABLE `fap_app_userprofile`
  ADD CONSTRAINT `FAP_App_userprofile_user_id_c4685549_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `fap_app_veterinaryclinic`
--
ALTER TABLE `fap_app_veterinaryclinic`
  ADD CONSTRAINT `FAP_App_veterinaryclinic_created_by_id_10d6d16c_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
