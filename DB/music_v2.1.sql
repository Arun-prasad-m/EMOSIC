-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 06:10 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

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
(25, 'Can add feedback', 7, 'add_feedback'),
(26, 'Can change feedback', 7, 'change_feedback'),
(27, 'Can delete feedback', 7, 'delete_feedback'),
(28, 'Can view feedback', 7, 'view_feedback'),
(29, 'Can add music_recommendation', 8, 'add_music_recommendation'),
(30, 'Can change music_recommendation', 8, 'change_music_recommendation'),
(31, 'Can delete music_recommendation', 8, 'delete_music_recommendation'),
(32, 'Can view music_recommendation', 8, 'view_music_recommendation'),
(33, 'Can add register', 9, 'add_register'),
(34, 'Can change register', 9, 'change_register'),
(35, 'Can delete register', 9, 'delete_register'),
(36, 'Can view register', 9, 'view_register');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'music', 'feedback'),
(8, 'music', 'music_recommendation'),
(9, 'music', 'register'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-21 10:01:16.638903'),
(2, 'auth', '0001_initial', '2023-03-21 10:01:17.589446'),
(3, 'admin', '0001_initial', '2023-03-21 10:01:17.769834'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-21 10:01:17.776069'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-21 10:01:17.790565'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-21 10:01:17.902904'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-21 10:01:17.963741'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-21 10:01:18.031198'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-21 10:01:18.042676'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-21 10:01:18.092377'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-21 10:01:18.106384'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-21 10:01:18.110486'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-21 10:01:18.174576'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-21 10:01:18.232926'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-21 10:01:18.304168'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-21 10:01:18.319288'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-21 10:01:18.378016'),
(18, 'music', '0001_initial', '2023-03-21 10:01:18.511267'),
(19, 'sessions', '0001_initial', '2023-03-21 10:01:18.585143');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fnt8cv151fvodefss2yw54qn9juyks17', '.eJyrVirNTFGyMtRRKs5LzE1VslJyzM7IzFEC8lNzE4EMK6WyzLzEysTsRJC4pblDOkhYLzk_F6imtDi1CKgCTNUCAJlYGM0:1peZFA:ztlstqraSS6KiR_DiKlQ3a0tpbE6CRqR2oLsycbcxBI', '2023-04-04 10:29:28.253106'),
('yres4vokfk4i1ru7mo1rizljb486twu3', '.eJyrVirNTFGyMtRRKs5LzE1VslJyzCvJz6tUAgqk5iZm5gBFEsEiDukgrl5yfi5QrrQ4tQgoA6ZqAfksFoo:1pm5HM:Wg5P6zmir1VKdoeBWNhlmVpdAKQMBc6_zrjNMAgV1i4', '2023-04-25 04:06:48.708229'),
('z8gnku1hbxif06d3f1xvs4h2bfg8vu0n', '.eJyrVirNTFGyMtJRKs5LzE1VslJyLEosy8xLUQKKpOYmZuYAhRIhQrmpefl5DukgQb3k_FygitLi1CKgPJiqBQCpZhlA:1plttU:I2X8PYJw9cFPS4wzJivOR0nR3EAEKnEttgKq-_Y9WN0', '2023-04-24 15:57:24.964616');

-- --------------------------------------------------------

--
-- Table structure for table `music_feedback`
--

CREATE TABLE IF NOT EXISTS `music_feedback` (
  `id` int(11) NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `feedbacks` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_music_recommendation`
--

CREATE TABLE IF NOT EXISTS `music_music_recommendation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `musics` varchar(150) NOT NULL,
  `emotion` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `music_music_recommendation`
--

INSERT INTO `music_music_recommendation` (`id`, `name`, `description`, `musics`, `emotion`) VALUES
(2, 'Kaduvaye Kiduva Pidikkunne', 'set life ', 'Kaduvaye Kiduva Pidikkunne - song_efhRalu.mp3', 'surprise'),
(4, 'Mockingbird - Eminem', '', 'Mockingbird - Eminem-(DJMaza)_xvg57om.mp3', 'sad'),
(5, 'Nothing Else Matters', 'nirvana', 'Nothing Else Matters - Metallica.mp3', 'Fear'),
(7, 'safe and sound', 'Capital cities', 'Capital Cities - Safe And Sound (Official Video).m4a', 'neutral'),
(8, 'what a wonderful world', 'L. Armstrong', 'Louis Armstrong - What A Wonderful World (Lyrics).m4a', 'surprise'),
(9, 'pungi', 'Hindi song', 'Pungi (Remix).mp3', 'Disgust'),
(10, 'Chop suey', 'System of a down', 'System Of A Down - Chop Suey! (Official HD Video)_D8SKpvd.m4a', 'angry'),
(11, 'Pharrell Williams - Happy', '1', 'Happy (from Despicable Me 2) G I R L - 320Kbps_Aq0Lwwh.mp3', 'happy');

-- --------------------------------------------------------

--
-- Table structure for table `music_register`
--

CREATE TABLE IF NOT EXISTS `music_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `music_register`
--

INSERT INTO `music_register` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Antony', 'antony@gmail.com', '9876543210', '123'),
(2, 'Aravind', 'aravindmenon@gmail.com', '9744873683', '123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
