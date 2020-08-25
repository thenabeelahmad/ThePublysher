-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2020 at 01:58 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publysher`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_post`
--

DROP TABLE IF EXISTS `accounts_post`;
CREATE TABLE IF NOT EXISTS `accounts_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc` varchar(100) NOT NULL,
  `caption` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_post`
--

INSERT INTO `accounts_post` (`id`, `doc`, `caption`) VALUES
(1, 'ksenia-makagonova-LuK-MuZ-yf0-unsplash.jpg', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add post', 7, 'add_post'),
(20, 'Can change post', 7, 'change_post'),
(21, 'Can delete post', 7, 'delete_post');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$vvqPUn9vRdOU$5hVyygzXKsc1ZzkOcFWu30kv+DHcxJOUB0z+TEYoIA4=', '2020-08-23 13:47:40.710265', 0, 'lolo', 'William Wordsworth', '', 'wil@gmail.com', 0, 1, '2020-07-12 17:27:21.731279'),
(2, 'pbkdf2_sha256$100000$WF3bD5hdwPk9$HLs8P3qDrlVwL/IItUgrnbPVBy8UZbhVl42dldv6zSg=', '2020-08-24 17:46:51.959158', 0, 'popo', 'Lenovo Viyok', '', 'nabbu@gmail.com', 0, 1, '2020-07-12 17:55:59.171571'),
(3, 'pbkdf2_sha256$100000$6xn1GdiOxvQn$OnhW4SqTWzEB4ooLghkJ2kfrkXK+T5aqMQ8KM1t41Ts=', '2020-07-15 13:07:35.389623', 0, 'koko', 'Peter Luis', '', 'peter@gmail.com', 0, 1, '2020-07-15 10:26:41.107245'),
(4, 'pbkdf2_sha256$100000$uXpuiwBoC9FH$gVFbBmskuXaBcbWU/4/XYkg1GadIuoHvEyXPikONybc=', '2020-07-15 14:22:16.432041', 0, 'jojo', 'Glen Carpelling', '', 'glen@gmail.com', 0, 1, '2020-07-15 14:22:10.003432'),
(5, 'pbkdf2_sha256$100000$kuL1BsUMX8IN$uWCzhNuV3mgfA8jSQDgOwGhAnsGY1IF6EuWflVJKHak=', '2020-07-16 19:33:40.077687', 1, 'nabbu', 'Titus Berner', '', 'bern@gmail.com', 1, 1, '2020-07-15 16:34:51.049316');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-07-15 17:01:18.901723', '1', 'hello', 1, '[{\"added\": {}}]', 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'accounts', 'post'),
(8, 'accounts', 'profilepic');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-07-12 10:14:30.231009'),
(2, 'auth', '0001_initial', '2020-07-12 10:14:33.248832'),
(3, 'admin', '0001_initial', '2020-07-12 10:14:33.777302'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-07-12 10:14:33.792976'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-07-12 10:14:33.989336'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-07-12 10:14:34.098686'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-07-12 10:14:34.208038'),
(8, 'auth', '0004_alter_user_username_opts', '2020-07-12 10:14:34.223706'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-07-12 10:14:34.333006'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-07-12 10:14:34.333006'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-07-12 10:14:34.364284'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-07-12 10:14:34.457987'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-07-12 10:14:34.584328'),
(14, 'sessions', '0001_initial', '2020-07-12 10:14:34.754900'),
(15, 'accounts', '0001_initial', '2020-07-15 16:58:55.675685');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hrqja1iiahw4jfm382u3r6hb2l6w5c0r', 'Y2NkMjc4MDQxYjg5ZGVkMThhMzJhMjA2MTY1MmZkOTUzZDU1NjU3ZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0MDNjNWUzMTkzNDhiYTY4MTUyMzZmMWRhNWRjMTViNjFlNzkyYTEwIn0=', '2020-09-06 13:47:40.788847'),
('1orr3t30hz7rf8fx4whjtmwj0gatd1na', 'ZDcxMjg0NDQxMTQxYjFmMmQ0ODY2YzJmYWIxNGE2NjJiMmQ2YzI2Njp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYzFkYmYwMjdhMjk1MWY2OTUyZGRkM2RhNDIxNGNhMDBjY2VmNzY5In0=', '2020-09-07 17:46:52.070857');

-- --------------------------------------------------------

--
-- Table structure for table `pose_question`
--

DROP TABLE IF EXISTS `pose_question`;
CREATE TABLE IF NOT EXISTS `pose_question` (
  `username` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `question` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pose_question`
--

INSERT INTO `pose_question` (`username`, `author`, `question`) VALUES
('popo', 'Lenovo Viyok', 'how are you?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bookmark`
--

DROP TABLE IF EXISTS `tbl_bookmark`;
CREATE TABLE IF NOT EXISTS `tbl_bookmark` (
  `username` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bookmark`
--

INSERT INTO `tbl_bookmark` (`username`, `title`) VALUES
('nabbu', 'Mere Khaab meri ankhein'),
('nabbu', 'Mere Khaab meri dhadkan'),
('nabbu', 'Mere Khaab'),
('nabbu', 'Liked the Content?'),
('lolo', 'Mere Khaab dhadkan'),
('lolo', 'Mere Khaab'),
('lolo', 'Mere Khaab meri ankhein'),
('popo', 'Mere Khaab'),
('popo', 'Mere Khaab meri dhadkan'),
('lolo', 'Liked the Content?'),
('lolo', 'Mere Khaab meri dhadkan'),
('lolo', 'Mere Khaab meri ankhein');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `username` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`username`, `author`, `title`, `comment`, `date`) VALUES
('nabbu', 'Titus Berner', 'Mere Khaab meri ankhein', 'Lovable', '2020-07-17'),
('nabbu', 'Titus Berner', 'Mere Khaab', 'Liked it...', '2020-07-17'),
('nabbu', 'Titus Berner', 'Mere Khaab meri ankhein', 'Mindblowing', '2020-07-17'),
('nabbu', 'Titus Berner', 'Mere Khaab', 'loved it\r\n', '2020-07-18'),
('nabbu', 'Titus Berner', 'Mere Khaab', 'qwerty', '2020-07-18'),
('nabbu', 'Titus Berner', 'Mere Khaab', 'berner lee', '2020-07-18'),
('nabbu', 'Titus Berner', 'Mere Khaab meri ankhein', 'laajawaab\r\n', '2020-07-18'),
('lolo', 'William Wordsworth', 'Mere Khaab meri dhadkan', 'Nice.', '2020-08-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prose`
--

DROP TABLE IF EXISTS `tbl_prose`;
CREATE TABLE IF NOT EXISTS `tbl_prose` (
  `username` varchar(25) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(25) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `content` varchar(20000) NOT NULL,
  `pubdate` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `description` (`description`),
  UNIQUE KEY `content` (`content`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prose`
--

INSERT INTO `tbl_prose` (`username`, `id`, `author`, `title`, `description`, `genre`, `content`, `pubdate`) VALUES
('lolo', 1, 'William Wordsworth', 'Liked the Content?', 'Love or Hate did\'nt', 'Love ', '\r\n\r\nmujhse pehle toone jis tarah usko chaha tha\r\nshayad ab bhi vo tera khayaal krti hai\r\nmagar ab usko mera sahara mil chuka hai\r\napne khwabo mein tujhe na dekha krti hai\r\n\r\nmain smjhta hun tujhse ghalti hui hai\r\nkho gaya hai tu kisi aur ke sang\r\nab na apna khayaal meri jaan ko laana\r\nchadha chuka hoon uspr main apna rang\r\n\r\nphir ek roz agar tujhko aye ye khayal\r\ntujhe apne krni pr ho agar malaal\r\ndaagh dekh kar ho tuhko zakhm ka ehsaas\r\nphirse ki jo toone khwahish pane ki usko paas\r\n\r\nto mumkim hai ye ki tu \r\nzamane se raabta tod kar aye\r\njisko toone chhod diya tha kisi aur ke khatir\r\na kar phir usi ko purnam manaye\r\n\r\nvo to masoom bhi hai nadaan bhi hai\r\nvo aaj jo meri jaan bhi hai\r\ntere tasuon pr vo pighalne lage\r\ntere behte aansu apne hathon se malne lage\r\n\r\naur main jisne sirf  usey apna maana\r\nuske khayaalon ki khushbu me kahin kho jaunga\r\nguzre kal me jis tarah tanha tha main\r\naney wale kl me bhi usi sa tanha ho jaunga \r\n\r\n			\r\n\r\n                                                      ~ahmad nabeel\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '2020-07-16'),
('nabbu', 2, 'Titus Berner', 'Mere Khaab', 'Sach hai wo jo dikhta nahi', 'Reality', '\r\n\r\nmujhse pehle toone jis tarah usko chaha tha\r\nshayad ab bhi vo tera khayaal krti hai\r\nmagar ab usko mera sahara mil chuka hai\r\napne khwabo mein tujhe na dekha krti hai\r\n\r\nmain smjhta hun tujhse ghalti hui hai\r\nkho gaya hai tu kisi aur ke sang\r\nab na apna khayaal meri jaan ko laana\r\nchadha chuka hoon uspr main apna rang\r\n\r\nphir ek roz agar tujhko aye ye khayal\r\ntujhe apne krni pr ho agar malaal\r\ndaagh dekh kar ho tuhko zakhm ka ehsaas\r\nphirse ki jo toone khwahish pane ki usko paas\r\n\r\nto mumkim hai ye ki tu \r\nzamane se raabta tod kar aye\r\njisko toone chhod diya tha kisi aur ke khatir\r\na kar phir usi ko purnam manaye\r\n\r\nvo to masoom bhi hai nadaan bhi hai\r\nvo aaj jo meri jaan bhi hai\r\ntere tasuon pr vo pighalne lage\r\ntere behte aansu apne hathon se malne lage\r\n\r\naur main jisne sirf  usey apna maana\r\nuske khayaalon ki khushbu me kahin kho jaunga\r\nguzre kal me jis tarah tanha tha main\r\naney wale kl me bhi usi sa tanha ho jaunga \r\n\r\n			\r\n\r\n                                                      \r\n\r\n\r\n\r\n\r\n\r\n', '2020-07-17'),
('nabbu', 3, 'Titus Berner', 'Mere Khaab meri ankhein', 'Sach hai jo kaha nahi', 'Reality', '\r\n\r\nmujhse pehle toone jis tarah usko chaha tha\r\nshayad ab bhi vo tera khayaal krti hai\r\nmagar ab usko mera sahara mil chuka hai\r\napne khwabo mein tujhe na dekha krti \r\n\r\nmain smjhta hun tujhse ghalti hui hai\r\nkho gaya hai tu kisi aur ke sang\r\nab na apna khayaal meri jaan ko laana\r\nchadha chuka hoon uspr main apna rang\r\n\r\nphir ek roz agar tujhko aye ye khayal\r\ntujhe apne krni pr ho agar malaal\r\ndaagh dekh kar ho tuhko zakhm ka ehsaas\r\nphirse ki jo toone khwahish pane ki usko paas\r\n\r\nto mumkim hai ye ki tu \r\nzamane se raabta tod kar aye\r\njisko toone chhod diya tha kisi aur ke khatir\r\na kar phir usi ko purnam manaye\r\n\r\nvo to masoom bhi hai nadaan bhi hai\r\nvo aaj jo meri jaan bhi hai\r\ntere tasuon pr vo pighalne lage\r\ntere behte aansu apne hathon se malne lage\r\n\r\naur main jisne sirf  usey apna maana\r\nuske khayaalon ki khushbu me kahin kho jaunga\r\nguzre kal me jis tarah tanha tha main\r\naney wale kl me bhi usi sa tanha ho jaunga \r\n\r\n			\r\n\r\n                                                      \r\n\r\n\r\n\r\n\r\n\r\n', '2020-07-17'),
('nabbu', 4, 'Titus Berner', 'Mere Khaab meri dhadkan', 'Sach hai jo kaha', 'Reality', '\r\n\r\nmujhse pehle toone jis tarah usko \r\nshayad ab bhi vo tera khayaal krti hai\r\nmagar ab usko mera sahara mil chuka hai\r\napne khwabo mein tujhe na dekha krti \r\n\r\nmain smjhta hun tujhse ghalti hui hai\r\nkho gaya hai tu kisi aur ke sang\r\nab na apna khayaal meri jaan ko laana\r\nchadha chuka hoon uspr main apna rang\r\n\r\nphir ek roz agar tujhko aye ye khayal\r\ntujhe apne krni pr ho agar malaal\r\ndaagh dekh kar ho tuhko zakhm ka ehsaas\r\nphirse ki jo toone khwahish pane ki usko paas\r\n\r\nto mumkim hai ye ki tu \r\nzamane se raabta tod kar aye\r\njisko toone chhod diya tha kisi aur ke khatir\r\na kar phir usi ko purnam manaye\r\n\r\nvo to masoom bhi hai nadaan bhi hai\r\nvo aaj jo meri jaan bhi hai\r\ntere tasuon pr vo pighalne lage\r\ntere behte aansu apne hathon se malne lage\r\n\r\naur main jisne sirf  usey apna maana\r\nuske khayaalon ki khushbu me kahin kho jaunga\r\nguzre kal me jis tarah tanha tha main\r\naney wale kl me bhi usi sa tanha ho jaunga \r\n\r\n			\r\n\r\n                                                      \r\n\r\n\r\n\r\n\r\n\r\n', '2020-07-17'),
('nabbu', 5, 'Titus Berner', 'Mere Khaab dhadkan', 'Sach o kaha', 'Reality', '\r\n\r\nmujhse pehle toone jis tarah usko \r\nshayad ab bhi vo tera khayaal  hai\r\nmagar ab usko mera sahara mil chuka hai\r\napne khwabo mein tujhe na dekha krti \r\n\r\nmain smjhta hun tujhse ghalti hui hai\r\nkho gaya hai tu kisi aur ke sang\r\nab na apna khayaal meri jaan ko laana\r\nchadha chuka hoon uspr main apna rang\r\n\r\nphir ek roz agar tujhko aye ye khayal\r\ntujhe apne krni pr ho agar malaal\r\ndaagh dekh kar ho tuhko zakhm ka ehsaas\r\nphirse ki jo toone khwahish pane ki usko paas\r\n\r\nto mumkim hai ye ki tu \r\nzamane se raabta tod kar aye\r\njisko toone chhod diya tha kisi aur ke khatir\r\na kar phir usi ko purnam manaye\r\n\r\nvo to masoom bhi hai nadaan bhi hai\r\nvo aaj jo meri jaan bhi hai\r\ntere tasuon pr vo pighalne lage\r\ntere behte aansu apne hathon se malne lage\r\n\r\naur main jisne sirf  usey apna maana\r\nuske khayaalon ki khushbu me kahin kho jaunga\r\nguzre kal me jis tarah tanha tha main\r\naney wale kl me bhi usi sa tanha ho jaunga \r\n\r\n			\r\n\r\n                                                      \r\n\r\n\r\n\r\n\r\n\r\n', '2020-07-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_prose`
--
ALTER TABLE `tbl_prose` ADD FULLTEXT KEY `title` (`title`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
