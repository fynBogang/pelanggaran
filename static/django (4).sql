-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2023 at 09:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add siswa', 7, 'add_siswa'),
(26, 'Can change siswa', 7, 'change_siswa'),
(27, 'Can delete siswa', 7, 'delete_siswa'),
(28, 'Can view siswa', 7, 'view_siswa'),
(29, 'Can add guru', 8, 'add_guru'),
(30, 'Can change guru', 8, 'change_guru'),
(31, 'Can delete guru', 8, 'delete_guru'),
(32, 'Can view guru', 8, 'view_guru'),
(33, 'Can add pelanggaran', 9, 'add_pelanggaran'),
(34, 'Can change pelanggaran', 9, 'change_pelanggaran'),
(35, 'Can delete pelanggaran', 9, 'delete_pelanggaran'),
(36, 'Can view pelanggaran', 9, 'view_pelanggaran'),
(37, 'Can add pelanggaran siswa', 10, 'add_pelanggaransiswa'),
(38, 'Can change pelanggaran siswa', 10, 'change_pelanggaransiswa'),
(39, 'Can delete pelanggaran siswa', 10, 'delete_pelanggaransiswa'),
(40, 'Can view pelanggaran siswa', 10, 'view_pelanggaransiswa'),
(41, 'Can add user profile', 11, 'add_userprofile'),
(42, 'Can change user profile', 11, 'change_userprofile'),
(43, 'Can delete user profile', 11, 'delete_userprofile'),
(44, 'Can view user profile', 11, 'view_userprofile'),
(45, 'Can add tindakan', 12, 'add_tindakan'),
(46, 'Can change tindakan', 12, 'change_tindakan'),
(47, 'Can delete tindakan', 12, 'delete_tindakan'),
(48, 'Can view tindakan', 12, 'view_tindakan'),
(49, 'Can add siswa tindakan', 13, 'add_siswatindakan'),
(50, 'Can change siswa tindakan', 13, 'change_siswatindakan'),
(51, 'Can delete siswa tindakan', 13, 'delete_siswatindakan'),
(52, 'Can view siswa tindakan', 13, 'view_siswatindakan'),
(53, 'Can add siswa pelanggaran', 14, 'add_siswapelanggaran'),
(54, 'Can change siswa pelanggaran', 14, 'change_siswapelanggaran'),
(55, 'Can delete siswa pelanggaran', 14, 'delete_siswapelanggaran'),
(56, 'Can view siswa pelanggaran', 14, 'view_siswapelanggaran');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$p2VWHFgmsugc2G5S6gFRAi$f9Ar2KhttXRTvrpoA/YfgrzCwiGRVWgx698N5jkT1S0=', '2023-07-23 06:14:06.438285', 1, 'admin', 'AHMAD MUZAYYIN', '', 'muzayyin.rpl@gmail.com', 1, 1, '2023-07-07 16:11:05.000000'),
(4, 'pbkdf2_sha256$600000$QQuTYfWOcTIyAo2taYZHQ0$CswO7Ghkc89k3L/ulYoA911OJNJU6GsXO0it1zLp1P4=', '2023-07-19 20:48:29.590729', 0, 'users', 'AHMAD', 'MUZAYYIN', 'muzayyin.rpl@gmail.com', 1, 1, '2023-07-19 20:47:39.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-07-07 21:41:13.298084', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 4, 1),
(2, '2023-07-19 20:43:48.025981', '3', '123', 3, '', 4, 1),
(3, '2023-07-19 20:47:40.043755', '4', 'users', 1, '[{\"added\": {}}]', 4, 1),
(4, '2023-07-19 20:48:06.103161', '4', 'users', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Staff status\", \"Last login\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'siswa', 'guru'),
(9, 'siswa', 'pelanggaran'),
(10, 'siswa', 'pelanggaransiswa'),
(7, 'siswa', 'siswa'),
(14, 'siswa', 'siswapelanggaran'),
(13, 'siswa', 'siswatindakan'),
(12, 'siswa', 'tindakan'),
(11, 'siswa', 'userprofile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-25 02:00:24.613076'),
(2, 'auth', '0001_initial', '2023-06-25 02:00:25.607828'),
(3, 'admin', '0001_initial', '2023-06-25 02:00:25.816789'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-25 02:00:25.830784'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-25 02:00:25.841783'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-25 02:00:25.979755'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-25 02:00:26.092733'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-25 02:00:26.130725'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-25 02:00:26.144723'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-25 02:00:26.282695'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-25 02:00:26.288694'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-25 02:00:26.301699'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-25 02:00:26.338684'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-25 02:00:26.371679'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-25 02:00:26.409674'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-25 02:00:26.425693'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-25 02:00:26.468661'),
(18, 'sessions', '0001_initial', '2023-06-25 02:00:26.547691');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4290ic5yd1ua6ufssx2cn2p0iliq987x', '.eJxVjDsOwyAQBe9CHSGDMWCX6XMGtLC7thMLJH-qKHcPllwk7Zt58xYBjn0Kx0ZrmFEMQonb7xYhvSifAJ-QxyJTyfs6R3kq8qKbfBSk5X65f4EJtqm-bautQ5UcMWqMvaKeiaEhtG3rkwHTsbG-Ae6dZibdkfe6MxGtMxXU6FLGkTDMWQz7etDnC-iUPjc:1qNSM2:yH-QHvf0jGJmronBY8Ve-t6GWUSXmtExLpd3s2eDCYg', '2023-08-06 06:14:06.444283'),
('qua7tsyb4y8rcrpq6w158rsijha8vudv', '.eJxVjDsOwjAQBe_iGlmx418o6XMGa-3dxQFkS_lUiLuTSCmgfTPz3iLCtpa4LTTHCcVVKHH53RLkJ9UD4APqvcnc6jpPSR6KPOkix4b0up3u30GBpey167XzqLInRo1pUDQwMXSEru9DNmAsGxc64MFrZtKWQtDWJHTe7EB8vvxaOCU:1qJPcS:uyUeCMyFwJRgwrPuvZUphLQ0AIuynNVCgXXYOP37u84', '2023-07-26 02:30:20.305903');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_guru`
--

CREATE TABLE `siswa_guru` (
  `id` bigint(20) NOT NULL,
  `id_guru` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nuptk` varchar(100) NOT NULL,
  `nomer_hp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_guru`
--

INSERT INTO `siswa_guru` (`id`, `id_guru`, `nama_lengkap`, `tanggal_lahir`, `nuptk`, `nomer_hp`) VALUES
(1, '5565447', 'bhuguyfg', '2023-07-01', '54564', '4654665'),
(2, '10101010', 'AHMAD MUZAYYIN', '2019-11-29', '10101010', '082332575257');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_pelanggaran`
--

CREATE TABLE `siswa_pelanggaran` (
  `id_pelanggaran` int(11) NOT NULL,
  `nama_pelanggaran` varchar(255) NOT NULL,
  `point_pelanggaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_siswa`
--

CREATE TABLE `siswa_siswa` (
  `id` bigint(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `lembaga` varchar(100) NOT NULL,
  `nomor_induk` varchar(20) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `rombel` varchar(10) NOT NULL,
  `qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_siswa`
--

INSERT INTO `siswa_siswa` (`id`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `lembaga`, `nomor_induk`, `jurusan`, `kelas`, `rombel`, `qr_code`) VALUES
(12, 'huyguyf', 'bhguygu', '2023-07-08', 'L', 'gygfyt', '6565656', 'jihuihhh', 'X', '12', 'media\\siswa\\qr_code_6565656.png'),
(13, 'ytyt', 'uugtuytu', '2023-07-08', 'L', 'hfgyufy', '54658469846', 'hjihijhj', 'X', '1', 'media\\siswa\\qr_code_54658469846.png'),
(14, 'rizal', 'situbondo', '2023-07-10', 'P', 'SMK', '56456', 'MM', 'X', '1', 'media\\siswa\\qr_code_56456.png'),
(15, 'AHMAD MUZAYYIN', 'BONDOWOSO', '2020-10-29', 'P', 'hg', '7687567576', 'gjhghjfg', 'XI', '67', '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_siswapelanggaran`
--

CREATE TABLE `siswa_siswapelanggaran` (
  `id` bigint(20) NOT NULL,
  `pelanggaran_id` int(11) NOT NULL,
  `siswa_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_tindakan`
--

CREATE TABLE `siswa_tindakan` (
  `id` bigint(20) NOT NULL,
  `id_tindakan` int(10) NOT NULL,
  `range_point` varchar(50) NOT NULL,
  `tindakan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_tindakan`
--

INSERT INTO `siswa_tindakan` (`id`, `id_tindakan`, `range_point`, `tindakan`) VALUES
(1, 1, '25', 'Membaca Al qur\'an'),
(3, 4, '2', 'Makan Nasi Jama\'ahfdsf');

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
-- Indexes for table `siswa_guru`
--
ALTER TABLE `siswa_guru`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_guru` (`id_guru`);

--
-- Indexes for table `siswa_pelanggaran`
--
ALTER TABLE `siswa_pelanggaran`
  ADD PRIMARY KEY (`id_pelanggaran`);

--
-- Indexes for table `siswa_siswa`
--
ALTER TABLE `siswa_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa_siswapelanggaran`
--
ALTER TABLE `siswa_siswapelanggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_siswapelanggar_pelanggaran_id_85635542_fk_siswa_pel` (`pelanggaran_id`),
  ADD KEY `siswa_siswapelanggaran_siswa_id_b13dcec7_fk_siswa_siswa_id` (`siswa_id`);

--
-- Indexes for table `siswa_tindakan`
--
ALTER TABLE `siswa_tindakan`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `siswa_guru`
--
ALTER TABLE `siswa_guru`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa_pelanggaran`
--
ALTER TABLE `siswa_pelanggaran`
  MODIFY `id_pelanggaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `siswa_siswa`
--
ALTER TABLE `siswa_siswa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `siswa_siswapelanggaran`
--
ALTER TABLE `siswa_siswapelanggaran`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `siswa_tindakan`
--
ALTER TABLE `siswa_tindakan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `siswa_siswapelanggaran`
--
ALTER TABLE `siswa_siswapelanggaran`
  ADD CONSTRAINT `siswa_siswapelanggar_pelanggaran_id_85635542_fk_siswa_pel` FOREIGN KEY (`pelanggaran_id`) REFERENCES `siswa_pelanggaran` (`id_pelanggaran`),
  ADD CONSTRAINT `siswa_siswapelanggaran_siswa_id_b13dcec7_fk_siswa_siswa_id` FOREIGN KEY (`siswa_id`) REFERENCES `siswa_siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
