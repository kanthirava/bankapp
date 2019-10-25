-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2019 at 09:18 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank_django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add user account', 7, 'add_useraccount'),
(26, 'Can change user account', 7, 'change_useraccount'),
(27, 'Can delete user account', 7, 'delete_useraccount'),
(28, 'Can view user account', 7, 'view_useraccount'),
(29, 'Can add bankdetails', 8, 'add_bankdetails'),
(30, 'Can change bankdetails', 8, 'change_bankdetails'),
(31, 'Can delete bankdetails', 8, 'delete_bankdetails'),
(32, 'Can view bankdetails', 8, 'view_bankdetails'),
(33, 'Can add add ben', 9, 'add_addben'),
(34, 'Can change add ben', 9, 'change_addben'),
(35, 'Can delete add ben', 9, 'delete_addben'),
(36, 'Can view add ben', 9, 'view_addben');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(13, 'pbkdf2_sha256$150000$4BohjMhFpaF7$nFdeyxCOX4nEL6Eg8f/dzki2Nem5nA1p4ESX5ekcx5s=', '2019-10-22 17:00:35.426898', 1, 'kanthi', '', '', 'kanthirava.b@gmail.com', 1, 1, '2019-10-22 14:24:09.278944'),
(18, 'pbkdf2_sha256$150000$wCnTcv3pYPIA$gk1JG8VaaWjiFhqChEcBVp+dysreYfqj5N//NPfk2bY=', '2019-10-24 20:20:44.387794', 0, 'rajesh', 'rajesh', 'g', 'rajesh@gmail.com', 0, 1, '2019-10-24 17:52:06.777420');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-10-22 14:39:39.459501', '1', 'bankdetails object (1)', 1, '[{\"added\": {}}]', 8, 13),
(2, '2019-10-22 14:40:47.114895', '2', 'bankdetails object (2)', 1, '[{\"added\": {}}]', 8, 13),
(3, '2019-10-22 14:41:25.296653', '3', 'bankdetails object (3)', 1, '[{\"added\": {}}]', 8, 13),
(4, '2019-10-22 14:42:17.952850', '4', 'bankdetails object (4)', 1, '[{\"added\": {}}]', 8, 13),
(5, '2019-10-22 14:43:32.682141', '5', 'bankdetails object (5)', 1, '[{\"added\": {}}]', 8, 13),
(6, '2019-10-22 14:44:14.232857', '6', 'bankdetails object (6)', 1, '[{\"added\": {}}]', 8, 13),
(7, '2019-10-22 14:45:19.659831', '7', 'bankdetails object (7)', 1, '[{\"added\": {}}]', 8, 13),
(8, '2019-10-22 14:45:56.383053', '8', 'bankdetails object (8)', 1, '[{\"added\": {}}]', 8, 13),
(9, '2019-10-22 14:46:45.193986', '9', 'bankdetails object (9)', 1, '[{\"added\": {}}]', 8, 13),
(10, '2019-10-22 14:47:33.086241', '10', 'bankdetails object (10)', 1, '[{\"added\": {}}]', 8, 13);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'index', 'addben'),
(8, 'index', 'bankdetails'),
(7, 'index', 'useraccount'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-10-16 08:17:27.320246'),
(2, 'auth', '0001_initial', '2019-10-16 08:17:27.472654'),
(3, 'admin', '0001_initial', '2019-10-16 08:17:27.760995'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-16 08:17:27.851522'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-16 08:17:27.861045'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-16 08:17:27.908177'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-16 08:17:27.944941'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-10-16 08:17:27.985017'),
(9, 'auth', '0004_alter_user_username_opts', '2019-10-16 08:17:27.995154'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-10-16 08:17:28.037781'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-10-16 08:17:28.041131'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-16 08:17:28.066716'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-10-16 08:17:28.116089'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-16 08:17:28.171558'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-10-16 08:17:28.211287'),
(16, 'auth', '0011_update_proxy_permissions', '2019-10-16 08:17:28.222957'),
(17, 'index', '0001_initial', '2019-10-16 08:17:28.258091'),
(18, 'sessions', '0001_initial', '2019-10-16 08:17:28.338884'),
(19, 'index', '0002_bankdetails', '2019-10-22 14:38:17.737720'),
(20, 'index', '0003_auto_20191024_1701', '2019-10-24 17:01:21.970163'),
(21, 'index', '0004_auto_20191024_1733', '2019-10-24 17:33:45.939173'),
(22, 'index', '0005_addben', '2019-10-24 18:52:17.502615');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('olk02vilibby3gz3owmd79ncjo4twqys', 'ZTI0Y2ZlNTk1YmUxYzNjZTk0NmUxZDEyZTQ3MDU3ZTYwODJkY2NkMTp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzA2OGY5NDg0MWM5YzEyOTE1MmRkMTYyNDNlYTEzMzBkOGVmODdjNCJ9', '2019-11-05 13:16:45.263430');

-- --------------------------------------------------------

--
-- Table structure for table `index_addben`
--

CREATE TABLE `index_addben` (
  `id` int(11) NOT NULL,
  `beneficiary_name` varchar(30) NOT NULL,
  `beneficiary_accno` bigint(20) DEFAULT NULL,
  `ifsc_code` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index_addben`
--

INSERT INTO `index_addben` (`id`, `beneficiary_name`, `beneficiary_accno`, `ifsc_code`, `user_id`) VALUES
(1, 'kanthi', 12345678, 'sbin00002716', 18);

-- --------------------------------------------------------

--
-- Table structure for table `index_bankdetails`
--

CREATE TABLE `index_bankdetails` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `bank_branch` varchar(30) NOT NULL,
  `bank_branchcode` varchar(30) NOT NULL,
  `bank_ifsc` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index_bankdetails`
--

INSERT INTO `index_bankdetails` (`id`, `bank_name`, `bank_branch`, `bank_branchcode`, `bank_ifsc`) VALUES
(1, 'SBI', 'Gajuwaka', '2716', 'SBIN0002716'),
(2, 'SBI', 'Bhpv', '001675', 'SBIN0001675'),
(3, 'SBI', 'Sriharipuram', '003436', 'SBIN0003436'),
(4, 'SBI', 'Steel Plant', '006318', 'SBIN0006318'),
(5, 'Laxmi Vilas Bank', 'Mvp Colony', '000814', 'LAVB0000814'),
(6, 'Laxmi Vilas Bank', 'Gajuwaka', '000279', 'LAVB0000279'),
(7, 'Axis Bank', 'Sujatha Nagar', '003380', 'UTIB0003380'),
(8, 'Axis Bank', 'Gajuwaka', '000075', 'UTIB0000075'),
(9, 'Icici Bank Ltd', 'Visakhapatnam', '006653', 'ICIC0006653'),
(10, 'Icici Bank Ltd', 'Gajuwaka', '001108', 'ICIC0001108');

-- --------------------------------------------------------

--
-- Table structure for table `index_useraccount`
--

CREATE TABLE `index_useraccount` (
  `id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `phone` bigint(20) NOT NULL,
  `address` longtext NOT NULL,
  `bank` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_number` bigint(20) DEFAULT NULL,
  `branch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index_useraccount`
--

INSERT INTO `index_useraccount` (`id`, `dob`, `phone`, `address`, `bank`, `user_id`, `account_number`, `branch`) VALUES
(2, '2019-01-01', 44444444, 'dfdf', 'SBI', 18, NULL, 'Gajuwaka');

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
-- Indexes for table `index_addben`
--
ALTER TABLE `index_addben`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `index_bankdetails`
--
ALTER TABLE `index_bankdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `index_useraccount`
--
ALTER TABLE `index_useraccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `index_addben`
--
ALTER TABLE `index_addben`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `index_bankdetails`
--
ALTER TABLE `index_bankdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `index_useraccount`
--
ALTER TABLE `index_useraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Constraints for table `index_addben`
--
ALTER TABLE `index_addben`
  ADD CONSTRAINT `index_addben_user_id_bcd29888_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `index_useraccount`
--
ALTER TABLE `index_useraccount`
  ADD CONSTRAINT `index_useraccount_user_id_9577cac7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
