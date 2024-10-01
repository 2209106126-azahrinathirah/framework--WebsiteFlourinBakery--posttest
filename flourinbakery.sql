-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2024 at 06:52 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flourinbakery`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add category', 7, 'add_category'),
(26, 'Can change category', 7, 'change_category'),
(27, 'Can delete category', 7, 'delete_category'),
(28, 'Can view category', 7, 'view_category'),
(29, 'Can add contact', 8, 'add_contact'),
(30, 'Can change contact', 8, 'change_contact'),
(31, 'Can delete contact', 8, 'delete_contact'),
(32, 'Can view contact', 8, 'view_contact'),
(33, 'Can add users', 9, 'add_users'),
(34, 'Can change users', 9, 'change_users'),
(35, 'Can delete users', 9, 'delete_users'),
(36, 'Can view users', 9, 'view_users'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add checkout', 12, 'add_checkout'),
(46, 'Can change checkout', 12, 'change_checkout'),
(47, 'Can delete checkout', 12, 'delete_checkout'),
(48, 'Can view checkout', 12, 'view_checkout'),
(49, 'Can add product', 13, 'add_product'),
(50, 'Can change product', 13, 'change_product'),
(51, 'Can delete product', 13, 'delete_product'),
(52, 'Can view product', 13, 'view_product'),
(53, 'Can add cart item', 14, 'add_cartitem'),
(54, 'Can change cart item', 14, 'change_cartitem'),
(55, 'Can delete cart item', 14, 'delete_cartitem'),
(56, 'Can view cart item', 14, 'view_cartitem'),
(57, 'Can add profil', 15, 'add_profil'),
(58, 'Can change profil', 15, 'change_profil'),
(59, 'Can delete profil', 15, 'delete_profil'),
(60, 'Can view profil', 15, 'view_profil');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
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
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'Wide throughout kitchen. Herself first might fine. Billion build type year agree pass war.', '1988-10-13 00:13:44.000000', 1, 'buckmark', 'Jenna', 'Hernandez', 'bblackwell@example.net', 0, 1, '2024-09-23 11:18:09.090074'),
(2, 'Paper particular easy paper music break dog require. Organization effort control space. Knowledge beat firm week.', '2000-07-23 12:51:24.000000', 1, 'rwise', 'William', 'Moore', 'jhughes@example.com', 1, 1, '2024-09-23 11:18:09.090074'),
(3, 'Become let simple lot million.\nWeight management even use or.', '1988-01-05 06:30:25.000000', 0, 'wproctor', 'Tanya', 'Williams', 'yvonne32@example.org', 1, 1, '2024-09-23 11:18:09.090074'),
(4, 'Across want human news. Before her bed consumer international whom. Dog his someone arm.', '2009-07-04 10:34:35.000000', 1, 'millerdavid', 'Michelle', 'Ferrell', 'brooke58@example.com', 0, 1, '2024-09-23 11:18:09.090074'),
(5, 'Life capital gas sign. This approach result both huge computer participant. Subject article position suggest.', '1987-10-16 04:57:01.000000', 0, 'danielle99', 'Craig', 'Nicholson', 'wbates@example.org', 1, 1, '2024-09-23 11:18:09.090074'),
(6, 'Heart million always base peace area simply. Whole wide state board. Whatever each minute compare listen.', '1975-10-27 21:46:59.000000', 0, 'kaylarivera', 'Kimberly', 'Guerrero', 'salazarthomas@example.org', 1, 1, '2024-09-23 11:18:09.090074'),
(7, 'Church recently east summer control experience reveal. Base war amount always contain remember. Another find new within.', '1978-12-23 22:46:28.000000', 0, 'hurstkyle', 'David', 'Curtis', 'robert53@example.net', 0, 1, '2024-09-23 11:18:09.090074'),
(8, 'Body voice we through quality available level fall. Message peace along side grow anyone.', '1973-08-12 11:50:58.000000', 1, 'andrealeblanc', 'Deborah', 'Riddle', 'pvasquez@example.com', 1, 1, '2024-09-23 11:18:09.090074'),
(9, 'Interest big analysis region. Against live international prevent radio star Republican. New audience of.', '2003-05-25 04:56:53.000000', 1, 'dmorrow', 'Laura', 'Brown', 'ugomez@example.com', 1, 1, '2024-09-23 11:18:09.090074'),
(10, 'Article performance both. Yard their just carry dream. Sea return animal throughout.', '2015-08-06 16:52:29.000000', 0, 'ritterbrandon', 'Pamela', 'Garcia', 'tiffanylong@example.com', 0, 1, '2024-09-23 11:18:09.090074'),
(11, 'pbkdf2_sha256$870000$653rijTCZvDVO46B7zvuFE$qZ5xWFY6BqO1am5RjXORz22BLNvRG5AUC9ykdSyN5Sw=', '2024-10-01 11:15:44.894930', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-10-01 01:15:45.118284');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-10-01 11:10:28.039814', '10', 'moorealex', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 9, 11),
(2, '2024-10-01 11:10:40.425833', '9', 'jeffreysnyder', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 9, 11),
(3, '2024-10-01 11:10:48.136275', '8', 'robbinsalbert', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 9, 11),
(4, '2024-10-01 11:10:55.259283', '6', 'nelsonpamela', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 9, 11),
(5, '2024-10-01 11:11:01.812899', '3', 'contrerasbilly', 2, '[{\"changed\": {\"fields\": [\"Role\"]}}]', 9, 11),
(6, '2024-10-01 11:11:14.279062', '11', 'admin', 1, '[{\"added\": {}}]', 9, 11),
(7, '2024-10-01 11:11:56.642855', '11', 'Profil dari admin', 1, '[{\"added\": {}}]', 15, 11),
(8, '2024-10-01 11:25:46.834165', '20', 'Birthday Cake', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Image\"]}}]', 7, 11),
(9, '2024-10-01 11:27:23.749884', '19', 'Cookies', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Image\"]}}]', 7, 11),
(10, '2024-10-01 11:28:47.028001', '18', 'Cupcakes', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Image\"]}}]', 7, 11),
(11, '2024-10-01 11:29:28.072015', '17', 'Account front pattern white. Newspaper actually including administration mouth mention.', 3, '', 7, 11),
(12, '2024-10-01 11:29:33.623570', '16', 'Often door woman police small education. Too when seven religious sort source.', 3, '', 7, 11),
(13, '2024-10-01 11:29:39.138009', '15', 'Each serious throw friend phone stuff soon world.', 3, '', 7, 11),
(14, '2024-10-01 11:29:44.262355', '14', 'Husband face pull arrive near early effort. Leader lay power stand industry.', 3, '', 7, 11),
(15, '2024-10-01 11:29:51.447897', '13', 'Course deep network easy article. Thing enter own include least bad decade.', 3, '', 7, 11),
(16, '2024-10-01 11:29:55.897007', '12', 'Exist industry do pattern. Organization shoulder our election.', 3, '', 7, 11),
(17, '2024-10-01 11:30:00.213023', '11', 'Ten population should run each bag. Beyond describe almost what.', 3, '', 7, 11),
(18, '2024-10-01 11:30:04.617141', '10', 'Example concern dog too. Fish director newspaper street across. Treat raise share foot.', 3, '', 7, 11),
(19, '2024-10-01 11:30:08.436118', '9', 'Security enough water his take. Because just mind free. Democratic economic box energy member.', 3, '', 7, 11),
(20, '2024-10-01 11:30:12.295116', '8', 'Some board structure bed say. Attack simply fill. Some live have open wrong tonight goal.', 3, '', 7, 11),
(21, '2024-10-01 11:30:16.386619', '7', 'Finally around city clear could organization economic. Drive plant management.', 3, '', 7, 11),
(22, '2024-10-01 11:30:21.051764', '6', 'Very he most whatever truth. Too two anything check life special blood. Western woman while.', 3, '', 7, 11),
(23, '2024-10-01 11:30:25.521371', '5', 'Despite general finally six hand face traditional. Should finish expert find store early.', 3, '', 7, 11),
(24, '2024-10-01 11:30:29.208771', '4', 'Do benefit staff each. Officer pattern minute.\nBegin sea able soon green. Loss future land.', 3, '', 7, 11),
(25, '2024-10-01 11:30:32.798207', '3', 'Up five force character current nation. Challenge line then son meet seek.', 3, '', 7, 11),
(26, '2024-10-01 11:30:36.551082', '2', 'Certain hundred stand few music loss bring.', 3, '', 7, 11),
(27, '2024-10-01 11:31:25.711439', '1', 'Breads', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\"]}}]', 7, 11),
(28, '2024-10-01 11:32:22.367356', '21', 'Brownis', 1, '[{\"added\": {}}]', 7, 11),
(29, '2024-10-01 12:32:40.447121', '9', 'Cookies Coklat', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Category\", \"Description\", \"Price\", \"Stock\", \"Image\"]}}]', 13, 11),
(30, '2024-10-01 13:01:56.557664', '7', 'Cupcakes Rainbow', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Description\", \"Price\", \"Stock\", \"Image\"]}}]', 13, 11),
(31, '2024-10-01 13:02:41.716271', '3', 'birthday cake', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Category\", \"Description\", \"Price\", \"Stock\", \"Image\"]}}]', 13, 11),
(32, '2024-10-01 13:21:08.334415', '3', 'birthday cake', 2, '[]', 13, 11),
(33, '2024-10-01 13:21:36.013851', '3', 'Fruits Cake', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 13, 11),
(34, '2024-10-01 13:33:48.295662', '8', 'Cart milik wproctor', 2, '[{\"added\": {\"name\": \"cart item\", \"object\": \"Fruits Cake dalam cart\"}}]', 10, 11),
(35, '2024-10-01 14:38:42.844716', '23', 'Cookies Coklat dalam cart', 3, '', 14, 11),
(36, '2024-10-01 14:40:40.804647', '11', 'Brownis Nutella', 1, '[{\"added\": {}}]', 13, 11),
(37, '2024-10-01 14:41:23.276332', '11', 'Nutella Brownies', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 13, 11),
(38, '2024-10-01 14:41:32.977029', '21', 'Brownies', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 11),
(39, '2024-10-01 14:42:38.073623', '12', 'Cream Cheese brownies', 1, '[{\"added\": {}}]', 13, 11),
(40, '2024-10-01 14:45:07.218921', '13', 'Coconut Cookies', 1, '[{\"added\": {}}]', 13, 11),
(41, '2024-10-01 14:46:17.395857', '14', 'Cracker', 1, '[{\"added\": {}}]', 13, 11),
(42, '2024-10-01 14:46:41.660477', '15', 'Cheese Bread', 1, '[{\"added\": {}}]', 13, 11),
(43, '2024-10-01 14:47:33.898875', '22', 'Pastries', 1, '[{\"added\": {}}]', 7, 11),
(44, '2024-10-01 14:48:47.928063', '22', 'Pastries', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 11),
(45, '2024-10-01 14:50:05.124999', '16', 'Croissant', 1, '[{\"added\": {}}]', 13, 11),
(46, '2024-10-01 14:54:03.891664', '17', 'Pie Chocolate', 1, '[{\"added\": {}}]', 13, 11),
(47, '2024-10-01 14:54:33.260629', '7', 'Cart milik buckmark', 2, '[{\"added\": {\"name\": \"cart item\", \"object\": \"Croissant dalam cart\"}}]', 10, 11),
(48, '2024-10-01 14:54:38.475367', '6', 'Cart milik ritterbrandon', 2, '[{\"added\": {\"name\": \"cart item\", \"object\": \"Pie Chocolate dalam cart\"}}]', 10, 11),
(49, '2024-10-01 14:54:43.135921', '5', 'Cart milik kaylarivera', 2, '[{\"added\": {\"name\": \"cart item\", \"object\": \"Cheese Bread dalam cart\"}}]', 10, 11),
(50, '2024-10-01 14:54:49.177158', '1', 'Cart milik rwise', 2, '[{\"added\": {\"name\": \"cart item\", \"object\": \"Coconut Cookies dalam cart\"}}]', 10, 11),
(51, '2024-10-01 14:56:52.473815', '20', 'Birthday Cakes', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 11),
(52, '2024-10-01 14:58:28.460456', '23', 'Donuts', 1, '[{\"added\": {}}]', 7, 11),
(53, '2024-10-01 15:00:05.262651', '24', 'Pie', 1, '[{\"added\": {}}]', 7, 11),
(54, '2024-10-01 16:08:19.509377', '17', 'Pie Chocolate', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11),
(55, '2024-10-01 16:12:36.745734', '3', 'Fruits Cake', 2, '[]', 13, 11),
(56, '2024-10-01 16:18:28.509636', '14', 'Cracker', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11),
(57, '2024-10-01 16:26:23.363776', '18', 'pie strawberry', 1, '[{\"added\": {}}]', 13, 11),
(58, '2024-10-01 16:33:34.105590', '16', 'Croissant', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11),
(59, '2024-10-01 16:33:41.684816', '15', 'Cheese Bread', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11),
(60, '2024-10-01 16:33:48.623096', '13', 'Coconut Cookies', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11),
(61, '2024-10-01 16:33:58.068514', '12', 'Cream Cheese brownies', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11),
(62, '2024-10-01 16:34:04.807707', '11', 'Nutella Brownies', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 13, 11);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'FlourinBakery', 'cart'),
(14, 'FlourinBakery', 'cartitem'),
(7, 'FlourinBakery', 'category'),
(12, 'FlourinBakery', 'checkout'),
(8, 'FlourinBakery', 'contact'),
(11, 'FlourinBakery', 'order'),
(13, 'FlourinBakery', 'product'),
(15, 'FlourinBakery', 'profil'),
(9, 'FlourinBakery', 'users'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-23 10:39:53.411247'),
(2, 'auth', '0001_initial', '2024-09-23 10:39:54.271281'),
(3, 'FlourinBakery', '0001_initial', '2024-09-23 10:39:55.155122'),
(4, 'admin', '0001_initial', '2024-09-23 10:39:55.355249'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-09-23 10:39:55.389043'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-23 10:39:55.472738'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-09-23 10:39:55.638999'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-09-23 10:39:55.739969'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-09-23 10:39:55.788762'),
(10, 'auth', '0004_alter_user_username_opts', '2024-09-23 10:39:55.806873'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-09-23 10:39:55.892937'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-09-23 10:39:55.892937'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-09-23 10:39:55.909759'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-09-23 10:39:55.960354'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-09-23 10:39:56.023852'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-09-23 10:39:56.157189'),
(17, 'auth', '0011_update_proxy_permissions', '2024-09-23 10:39:56.191411'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-09-23 10:39:56.256711'),
(19, 'sessions', '0001_initial', '2024-09-23 10:39:56.316384');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3nzk1bzdi4wg3j75ahl7nst46hgprm15', '.eJxVjDsOwjAQRO_iGller3-hpOcMlj8LDiBbipMKcXccKQWU8-bNvJkP21r81mnxc2ZnBsBOvzCG9KS6N_kR6r3x1Oq6zJHvCj_azq8t0-tyuH8HJfQy1haF0XaymLI1NMJNS-EmkKhAxYgkciJ0qEUGQQOSQCsVmARRQ3Ts8wXG0TZr:1svar2:FaUhrp7kfj5f7OTlEyJLYkMPmxXKYZFMe0oJyLK8PUQ', '2024-10-15 11:15:44.910808'),
('gu49y8ir6fyt0qhi5gvmh3yuy5zgspuk', '.eJxVjDsOwjAQRO_iGller3-hpOcMlj8LDiBbipMKcXccKQWU8-bNvJkP21r81mnxc2ZnBsBOvzCG9KS6N_kR6r3x1Oq6zJHvCj_azq8t0-tyuH8HJfQy1haF0XaymLI1NMJNS-EmkKhAxYgkciJ0qEUGQQOSQCsVmARRQ3Ts8wXG0TZr:1svRUz:ESg6Dykubz__aBnYvH1vvaBkn8ynPsG7VFWeiOz_YaY', '2024-10-15 01:16:21.146684'),
('pvt8xtahetirvv6yau9qbu3xlxr8w454', '.eJxVjDsOwjAQRO_iGller3-hpOcMlj8LDiBbipMKcXccKQWU8-bNvJkP21r81mnxc2ZnBsBOvzCG9KS6N_kR6r3x1Oq6zJHvCj_azq8t0-tyuH8HJfQy1haF0XaymLI1NMJNS-EmkKhAxYgkciJ0qEUGQQOSQCsVmARRQ3Ts8wXG0TZr:1svaYV:cS9jg20swCV74IakmQEhjauqnv7k2dj-7smAuwcS2Io', '2024-10-15 10:56:35.362746');

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_cart`
--

CREATE TABLE `flourinbakery_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_cart`
--

INSERT INTO `flourinbakery_cart` (`id`, `user_id`) VALUES
(7, 1),
(1, 2),
(8, 3),
(5, 6),
(3, 7),
(4, 7),
(2, 8),
(9, 8),
(10, 8),
(6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_cartitem`
--

CREATE TABLE `flourinbakery_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_cartitem`
--

INSERT INTO `flourinbakery_cartitem` (`id`, `quantity`, `cart_id`, `product_id`) VALUES
(5, 1, 3, 3),
(11, 1, 8, 7),
(14, 1, 9, 9),
(24, 1, 3, 9),
(25, 1, 9, 3),
(27, 1, 8, 3),
(28, 1, 7, 16),
(29, 1, 6, 17),
(30, 1, 5, 15),
(31, 1, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_category`
--

CREATE TABLE `flourinbakery_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_category`
--

INSERT INTO `flourinbakery_category` (`id`, `name`, `description`, `image`) VALUES
(1, 'Breads', 'Koleksi roti yang menggoda dengan berbagai jenis dan tekstur yang unik, dirancang khusus untuk memanjakan selera Anda di setiap momen. Dari roti klasik yang hangat dan renyah hingga roti artisan yang kaya rasa, setiap iris membawa kelezatan dan aroma yang memikat. Sempurna untuk menemani sarapan, camilan sore, atau sebagai pelengkap hidangan favorit Anda.', 'cup.json'),
(18, 'Cupcakes', 'Koleksi cupcakes dengan berbagai pilihan rasa, ukuran, dan dekorasi yang menarik, dibuat khusus untuk menambah keceriaan di setiap perayaan. Dari cupcakes klasik dengan krim yang lembut hingga varian kreatif dengan topping berwarna-warni, setiap gigitan menawarkan pengalaman manis yang memuaskan dan penuh kebahagiaan.', 'category_images/cupcakes.png'),
(19, 'Cookies', 'Koleksi cookies yang lezat dengan berbagai pilihan rasa, ukuran, dan tekstur yang unik, dirancang khusus untuk memanjakan lidah Anda di setiap momen istimewa. Dari cookies klasik yang renyah hingga varian inovatif dengan isian lezat, setiap gigitan menghadirkan kebahagiaan dan kehangatan.', 'category_images/Cookies.png'),
(20, 'Birthday Cakes', 'berbagai jenis kue ulang tahun dengan pilihan rasa, ukuran, dan dekorasi yang berbeda-beda, dirancang khusus untuk perayaan hari istimewa anda', 'category_images/BirthdayCake.png'),
(21, 'Brownies', 'Koleksi brownies dengan berbagai rasa dan tekstur yang kaya, dirancang khusus untuk memanjakan pencinta cokelat di setiap momen istimewa. Dari brownies fudgy yang lembut dan meleleh di mulut hingga varian renyah dengan tambahan kacang atau karamel, setiap potong menyuguhkan kelezatan yang tak tertandingi. Sempurna sebagai camilan manis atau hidangan penutup anda.', ''),
(22, 'Pastries', 'Koleksi pastries dengan berbagai bentuk dan rasa yang beragam, dirancang khusus untuk memanjakan selera Anda di setiap kesempatan. Dari croissant yang renyah dan buttery hingga puff pastry yang lembut dengan isian manis atau gurih, setiap gigitan menawarkan kombinasi tekstur dan cita rasa yang memukau. Sempurna untuk sarapan, camilan sore, atau sebagai hidangan penutup,', ''),
(23, 'Donuts', 'Koleksi donuts  dengan berbagai pilihan rasa, bentuk, dan dekorasi yang ceria, dirancang khusus untuk memanjakan setiap penggemar manis. Dari donuts klasik yang empuk dan berlapis gula hingga varian kreatif dengan isian krim dan topping warna-warni, setiap gigitan membawa kebahagiaan dan keceriaan.', ''),
(24, 'Pie', 'Koleksi pie dengan berbagai pilihan rasa, ukuran, dan lapisan yang lezat, dirancang khusus untuk memanjakan selera Anda di setiap kesempatan. Dari pie klasik apel yang hangat dan beraroma hingga pie cokelat yang kaya dan dekaden, setiap potong menawarkan harmoni cita rasa yang sempurna.', '');

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_checkout`
--

CREATE TABLE `flourinbakery_checkout` (
  `id` bigint(20) NOT NULL,
  `shipping_address` longtext NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_checkout`
--

INSERT INTO `flourinbakery_checkout` (`id`, `shipping_address`, `payment_method`, `payment_status`, `created_at`, `user_id`, `order_id`) VALUES
(1, 'From age thus glass them pass. Writer us star none big. Side walk father second fine.', 'bank_transfer', 'pending', '1997-09-10 12:04:17.000000', 3, 5),
(2, 'Total lead training out. Per debate fact. Long chance mother yeah street major.\nPush machine six bag once. Democrat anyone rise likely.', 'credit_card', 'paid', '1983-08-14 18:10:21.000000', 8, 7),
(3, 'Result check method plant whole. State performance almost responsibility five huge media picture. House high town thousand wonder.\nDifference tend art specific American. Spend field bar most.', 'paypal', 'pending', '1984-05-04 21:09:05.000000', 4, 8),
(4, 'Hospital cover discuss plan consider ball. Back important each executive.\nHer loss sometimes not. Get can article grow. Thousand natural protect him mention so.', 'paypal', 'pending', '2004-06-14 18:26:20.000000', 6, 2),
(5, 'Say which cell question inside stay. Necessary sea special campaign opportunity skin challenge difference.\nDo same agency concern. Machine discuss prepare beyond all later. Hand per born before.', 'bank_transfer', 'pending', '1989-10-27 21:46:42.000000', 10, 6),
(6, 'Court federal plant machine land. Down leader make then feeling.\nMost job area establish. So score his drive.\nTeach minute campaign dog our.', 'bank_transfer', 'paid', '1976-06-06 22:32:07.000000', 4, 1),
(7, 'Would act back issue budget six. True tonight rise television say possible much. Character another little tax federal prevent ok wear.', 'paypal', 'pending', '1976-02-02 18:09:04.000000', 3, 10),
(8, 'Worker off live. Establish family cause these voice well.\nGeneration read let then blood question. General black clear north age. Include two success room who onto away too.', 'paypal', 'paid', '2015-06-26 21:55:39.000000', 7, 9),
(9, 'Court ground certain lose mind. Set federal around fact finish ok to.\nSituation tell letter upon lead party shoulder. Attorney whose score character media air or.', 'bank_transfer', 'pending', '1991-10-22 16:59:35.000000', 8, 3),
(10, 'Strong begin network also. Onto should put hospital. Manager guy fund space trip. Film medical nearly window watch street his.', 'bank_transfer', 'paid', '2010-05-11 07:26:30.000000', 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_contact`
--

CREATE TABLE `flourinbakery_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_contact`
--

INSERT INTO `flourinbakery_contact` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'What think contain ask field. Team clearly system four need country. Line past upon single read.', 'vickie93@example.com', 'Best approach until large theory tree more continue. Show score company point time send least hear. Director upon who home city.', '1998-11-05 21:04:07.000000'),
(2, 'Dog give do here stay. Their make Republican that. Stage better bag.', 'olsoncharles@example.net', 'Stop sort fast community standard. Stop yard your arrive exist drop. Prove I not point study such I.\nCertain this technology idea ability throw. Begin raise between these.', '2013-08-24 19:36:37.000000'),
(3, 'Amount Democrat detail dream. Season year quite hour pressure.', 'arodriguez@example.com', 'Try stuff yourself. Social available already. Happen month water after. Yes reveal paper down.\nWide car weight to education.', '2013-04-24 04:06:00.000000'),
(4, 'Generation their indicate audience another finally employee. Sort teach goal cell.', 'cookkristen@example.com', 'Article total able bring. Actually form culture side clear coach. Simple child guy country.', '1982-05-20 16:20:10.000000'),
(5, 'Resource try station.', 'marksherman@example.net', 'Sense culture arrive road cold night whether mind. Along change model agent part focus hit. Chance economic face remember institution house.', '2005-11-13 10:53:24.000000'),
(6, 'Program they research reality goal per area whom. Experience measure majority such.', 'matthewsnyder@example.com', 'One rich thousand away decade. Source Congress four born sport drive sit meet.\nArtist arm floor thought memory nature. Grow hundred leave cell.', '2003-01-05 06:33:13.000000'),
(7, 'Lead assume whose break reflect weight protect.', 'cassandra48@example.net', 'Institution out another whose result else get.\nMusic most tree south second like. Window read election pull away about yeah. Eat Mr three same thought share.', '1996-12-24 14:35:53.000000'),
(8, 'Physical man around now growth Mr. Include someone you mouth.', 'johncarter@example.org', 'Total wear choose kitchen must. Address nothing financial.\nKind four meet return responsibility on hundred. Evening base true sea sell loss. Go onto beyond single whole chance the.', '2019-02-26 05:58:19.000000'),
(9, 'Threat management also. Image his campaign hair grow fight. Box message project pattern.', 'coledonald@example.com', 'Cell amount bed possible win. Energy by such just.\nFinish responsibility least anyone student. Perhaps color recently. One late become amount word see believe.', '1972-06-07 05:56:32.000000'),
(10, 'Sea they few with move.\nPretty phone Mrs. Country three air stock.', 'jacksonjohn@example.org', 'Majority focus vote almost major rule. About party word too push.\nTown type indeed skin security hot himself. Weight hope trade relate. Close man catch gun.', '1975-04-28 01:35:24.000000');

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_order`
--

CREATE TABLE `flourinbakery_order` (
  `id` bigint(20) NOT NULL,
  `order_date` datetime(6) NOT NULL,
  `status` varchar(100) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `cart_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_order`
--

INSERT INTO `flourinbakery_order` (`id`, `order_date`, `status`, `total_amount`, `cart_id`) VALUES
(1, '2024-07-17 10:01:38.000000', 'pending', 0.84, 4),
(2, '2024-02-19 01:01:51.000000', 'completed', 0.20, 3),
(3, '2023-12-26 07:56:06.000000', 'pending', 0.49, 5),
(4, '2023-11-29 17:49:43.000000', 'pending', 0.08, 5),
(5, '2023-10-15 09:24:34.000000', 'completed', 0.36, 4),
(6, '2023-10-27 15:50:01.000000', 'completed', 0.13, 7),
(7, '2024-06-12 04:41:13.000000', 'pending', 0.25, 7),
(8, '2024-04-30 04:41:13.000000', 'pending', 0.57, 2),
(9, '2023-10-01 00:53:45.000000', 'pending', 0.99, 10),
(10, '2023-12-29 02:30:04.000000', 'completed', 0.91, 6);

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_product`
--

CREATE TABLE `flourinbakery_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL CHECK (`stock` >= 0),
  `image` varchar(100) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_product`
--

INSERT INTO `flourinbakery_product` (`id`, `name`, `description`, `price`, `stock`, `image`, `category_id`) VALUES
(3, 'Fruits Cake', 'delicious', 150000.00, 20, 'products/WholeCakes_6.png', 20),
(7, 'Cupcakes Rainbow', 'delicous', 20000.00, 100, 'products/Cookies_9.png', 18),
(9, 'Cookies Coklat', 'Delicius', 35000.00, 50, 'products/Cookies_5.png', 19),
(11, 'Nutella Brownies', '', 25000.00, 10, 'products/brownies-au-nutella.jpeg', 21),
(12, 'Cream Cheese brownies', '', 25000.00, 10, 'products/Chewy-Cream-Cheese-Brownies.jpg', 21),
(13, 'Coconut Cookies', '', 27000.00, 10, 'products/coconut_cookies.jpg', 19),
(14, 'Cracker', '', 20000.00, 20, 'products/Cookies_7.png', 1),
(15, 'Cheese Bread', '', 20000.00, 20, 'products/cheesy_garlic_bread.jpg', 1),
(16, 'Croissant', '', 28000.00, 10, 'products/A-Brief-History-of-the-Croissant.jpg', 22),
(17, 'Pie Chocolate', '', 28000.00, 10, 'products/pie.jpg', 22),
(18, 'pie strawberry', '', 20000.00, 10, 'products/Screenshot_2024-10-02_002605.png', 24);

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_profil`
--

CREATE TABLE `flourinbakery_profil` (
  `id` bigint(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_profil`
--

INSERT INTO `flourinbakery_profil` (`id`, `phone`, `avatar`, `user_id`) VALUES
(1, '333.297.3996', 'huge.jpg', 8),
(2, '808.807.3876x23', 'how.flac', 3),
(3, '721-507-3491x33', 'institution.jpg', 9),
(4, '001-353-555-972', 'hotel.wav', 2),
(5, '(368)736-7230x4', 'until.png', 5),
(6, '(284)394-7381', 'money.txt', 6),
(7, '(643)272-3857', 'also.csv', 7),
(8, '(542)443-7291x1', 'strong.gif', 10),
(9, '(615)405-7964x5', 'build.json', 4),
(10, '539.474.5883x82', 'ten.gif', 1),
(11, '088888888888', 'avatars/profil-removebg-preview.png', 11);

-- --------------------------------------------------------

--
-- Table structure for table `flourinbakery_users`
--

CREATE TABLE `flourinbakery_users` (
  `id` bigint(20) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flourinbakery_users`
--

INSERT INTO `flourinbakery_users` (`id`, `username`, `password`, `role`) VALUES
(1, 'patriciagreene', 'What agent stock region exactly perhaps respond enter. Environment since almost head. Protect service half green.', 2),
(2, 'xavier21', 'American remain memory son control make. One customer her yeah capital eye offer. Positive example us agreement common great.', 2),
(3, 'contrerasbilly', 'Continue medical picture end. There save garden and thought new easy.', 2),
(4, 'tjames', 'Argue involve city around tax car interest. Weight group about other minute child.', 2),
(5, 'alexisreid', 'Be return better sense miss party. Half born short clear. Church always grow environment hear.', 2),
(6, 'nelsonpamela', 'Bring nice leave ever poor industry sea. Movie quite rise admit any. Hot into report suffer fact half.', 2),
(7, 'brownchristine', 'Story address hope chair high light leader. Soldier big old tax available another bring.', 2),
(8, 'robbinsalbert', 'Human sign hot. Authority seek indeed pull. Another yourself much real vote public.', 2),
(9, 'jeffreysnyder', 'Young once shake stuff carry mission sometimes. Move mother author hour career meet begin. Conference describe forget floor.', 2),
(10, 'moorealex', 'Scene only account offer. Language about magazine few. Republican wear draw collection throughout time cost.', 2),
(11, 'admin', 'admin123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `flourinbakery_cart`
--
ALTER TABLE `flourinbakery_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FlourinBakery_cart_user_id_af88925e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `flourinbakery_cartitem`
--
ALTER TABLE `flourinbakery_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FlourinBakery_cartitem_cart_id_b46daee0_fk_FlourinBakery_cart_id` (`cart_id`),
  ADD KEY `FlourinBakery_cartit_product_id_bab2d94c_fk_FlourinBa` (`product_id`);

--
-- Indexes for table `flourinbakery_category`
--
ALTER TABLE `flourinbakery_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flourinbakery_checkout`
--
ALTER TABLE `flourinbakery_checkout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `FlourinBakery_checkout_user_id_20a71ef0_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `flourinbakery_contact`
--
ALTER TABLE `flourinbakery_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flourinbakery_order`
--
ALTER TABLE `flourinbakery_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FlourinBakery_order_cart_id_0093ee24_fk_FlourinBakery_cart_id` (`cart_id`);

--
-- Indexes for table `flourinbakery_product`
--
ALTER TABLE `flourinbakery_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FlourinBakery_produc_category_id_58596328_fk_FlourinBa` (`category_id`);

--
-- Indexes for table `flourinbakery_profil`
--
ALTER TABLE `flourinbakery_profil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `flourinbakery_users`
--
ALTER TABLE `flourinbakery_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `flourinbakery_cart`
--
ALTER TABLE `flourinbakery_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flourinbakery_cartitem`
--
ALTER TABLE `flourinbakery_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `flourinbakery_category`
--
ALTER TABLE `flourinbakery_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `flourinbakery_checkout`
--
ALTER TABLE `flourinbakery_checkout`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flourinbakery_contact`
--
ALTER TABLE `flourinbakery_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flourinbakery_order`
--
ALTER TABLE `flourinbakery_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `flourinbakery_product`
--
ALTER TABLE `flourinbakery_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `flourinbakery_profil`
--
ALTER TABLE `flourinbakery_profil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `flourinbakery_users`
--
ALTER TABLE `flourinbakery_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `flourinbakery_cart`
--
ALTER TABLE `flourinbakery_cart`
  ADD CONSTRAINT `FlourinBakery_cart_user_id_af88925e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `flourinbakery_cartitem`
--
ALTER TABLE `flourinbakery_cartitem`
  ADD CONSTRAINT `FlourinBakery_cartit_product_id_bab2d94c_fk_FlourinBa` FOREIGN KEY (`product_id`) REFERENCES `flourinbakery_product` (`id`),
  ADD CONSTRAINT `FlourinBakery_cartitem_cart_id_b46daee0_fk_FlourinBakery_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `flourinbakery_cart` (`id`);

--
-- Constraints for table `flourinbakery_checkout`
--
ALTER TABLE `flourinbakery_checkout`
  ADD CONSTRAINT `FlourinBakery_checko_order_id_ea924ae5_fk_FlourinBa` FOREIGN KEY (`order_id`) REFERENCES `flourinbakery_order` (`id`),
  ADD CONSTRAINT `FlourinBakery_checkout_user_id_20a71ef0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `flourinbakery_order`
--
ALTER TABLE `flourinbakery_order`
  ADD CONSTRAINT `FlourinBakery_order_cart_id_0093ee24_fk_FlourinBakery_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `flourinbakery_cart` (`id`);

--
-- Constraints for table `flourinbakery_product`
--
ALTER TABLE `flourinbakery_product`
  ADD CONSTRAINT `FlourinBakery_produc_category_id_58596328_fk_FlourinBa` FOREIGN KEY (`category_id`) REFERENCES `flourinbakery_category` (`id`);

--
-- Constraints for table `flourinbakery_profil`
--
ALTER TABLE `flourinbakery_profil`
  ADD CONSTRAINT `FlourinBakery_profil_user_id_7cf1832a_fk_FlourinBakery_users_id` FOREIGN KEY (`user_id`) REFERENCES `flourinbakery_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
