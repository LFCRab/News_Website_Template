-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 09:39 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"wordpress1\",\"table\":\"wp_posts\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-02-17 08:39:12', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `wordpress1`
--
CREATE DATABASE IF NOT EXISTS `wordpress1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress1`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1', 'yes'),
(2, 'home', 'http://127.0.0.1', 'yes'),
(3, 'blogname', 'FirstSite', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'a@a.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:58:\"C:\\xampp\\htdocs/wp-content/themes/WebDevelopment/style.css\";i:1;s:49:\"C:\\xampp\\htdocs/wp-content/themes/theme/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'WebDevelopment', 'yes'),
(41, 'stylesheet', 'WebDevelopment', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_GB', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1581191993;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581209993;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581253193;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581253216;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581253217;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573646821;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(168, 'current_theme', '', 'yes'),
(169, 'theme_mods_theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:4:\"main\";i:5;s:4:\"Main\";i:5;}s:18:\"custom_css_post_id\";i:23;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578932300;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(170, 'theme_switched', '', 'yes'),
(173, 'new_admin_email', 'a@a.com', 'yes'),
(240, 'admin_email_lifespan', '1590964210', 'yes'),
(241, 'db_upgraded', '', 'yes'),
(244, 'can_compress_scripts', '1', 'no'),
(361, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581188689;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(364, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:7:\"a@a.com\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1578480244;}', 'no'),
(389, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:1:{i:0;i:5;}}', 'yes'),
(425, 'theme_mods_WebDevelopment', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(478, 'recently_activated', 'a:0:{}', 'yes'),
(735, 'category_children', 'a:3:{i:6;a:2:{i:0;i:9;i:1;i:10;}i:8;a:2:{i:0;i:11;i:1;i:12;}i:7;a:2:{i:0;i:13;i:1;i:14;}}', 'yes'),
(757, 'recovery_mode_email_last_sent', '1580218505', 'yes'),
(797, '_site_transient_timeout_browser_05f578eb3fa9f908f5d74ef7bf6207a5', '1581502948', 'no'),
(798, '_site_transient_browser_05f578eb3fa9f908f5d74ef7bf6207a5', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"79.0.3945.130\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(799, '_site_transient_timeout_php_check_a4e7a3af7060c530d791075f6e3eb5fa', '1581502948', 'no'),
(800, '_site_transient_php_check_a4e7a3af7060c530d791075f6e3eb5fa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(830, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581188695;s:7:\"checked\";a:4:{s:14:\"WebDevelopment\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(831, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1581188695;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(846, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1581594672', 'no'),
(847, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(862, '_site_transient_timeout_theme_roots', '1581190494', 'no'),
(863, '_site_transient_theme_roots', 'a:4:{s:14:\"WebDevelopment\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(12, 11, '_wp_attached_file', '2019/11/Jazz.jpg'),
(13, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:16:\"2019/11/Jazz.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Jazz-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Jazz-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"Jazz-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"Jazz-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 63, '_edit_lock', '1580219028:1'),
(245, 63, '_wp_page_template', 'single-custom.php'),
(246, 63, '_edit_last', '1'),
(249, 65, '_edit_lock', '1580218844:1'),
(252, 65, '_wp_page_template', 'single-custom.php'),
(253, 65, '_edit_last', '1'),
(264, 68, '_edit_lock', '1580218830:1'),
(267, 68, '_edit_last', '1'),
(271, 68, '_wp_page_template', 'single-custom3.php'),
(272, 71, '_edit_lock', '1580218814:1'),
(275, 71, '_edit_last', '1'),
(278, 71, '_wp_page_template', 'single-custom2.php'),
(287, 2, '_wp_trash_meta_status', 'publish'),
(288, 2, '_wp_trash_meta_time', '1579006276'),
(289, 2, '_wp_desired_post_slug', 'sample-page'),
(290, 75, '_edit_lock', '1580218794:1'),
(293, 75, '_wp_page_template', 'single-custom2.php'),
(294, 75, '_edit_last', '1'),
(300, 65, 'image', 'rooney.jpg'),
(305, 63, 'image', 'ronaldo.jpg'),
(312, 68, 'image', 'stocks.jpg'),
(315, 71, 'image', 'henry.jpg'),
(316, 75, 'image', 'pacino.jpg'),
(317, 71, 'jumbo', 'geralt.jpg'),
(320, 75, 'jumbo', 'actor.jpg'),
(323, 78, '_edit_lock', '1580218763:1'),
(324, 78, 'image', 'reeves.jpg'),
(325, 78, 'jumbo', 'keanu.jpg'),
(328, 78, '_edit_last', '1'),
(331, 78, '_wp_page_template', 'single-custom2.php'),
(336, 68, 'brief', 'Has Brexit caused stock values to decrease?'),
(339, 78, 'brief', 'But does he deserve it?'),
(344, 75, 'brief', 'Star of the Irishman speaks about his career.'),
(349, 71, 'brief', 'Fans are excited, and so are we!'),
(355, 65, 'brief', 'Not even age can hold this man back!'),
(360, 63, 'brief', 'More of the same from the Portuguese man.'),
(382, 87, '_edit_lock', '1580218748:1'),
(383, 87, 'brief', 'Cricket teams always shoot themselves in the foot'),
(384, 87, '_edit_last', '1'),
(385, 87, 'brief', 'Cricket teams always shoot themselves in the foot'),
(386, 87, 'image', 'cricket.jpg'),
(396, 87, '_wp_page_template', 'single-custom.php'),
(420, 96, '_edit_lock', '1580218732:1'),
(421, 96, 'brief', 'Harry\'s speech about leaving the royal family'),
(422, 96, '_edit_last', '1'),
(423, 96, 'brief', 'Harry\'s speech about leaving the royal family'),
(424, 96, 'image', 'harry.jpg'),
(427, 96, '_wp_page_template', 'single-custom3.php'),
(432, 99, '_edit_lock', '1580899836:1'),
(433, 99, 'brief', 'Boris is in hot water with brexit'),
(434, 99, '_edit_last', '1'),
(435, 99, 'brief', 'Boris is in hot water with brexit'),
(438, 99, '_wp_page_template', 'single-custom3.php'),
(439, 99, 'image', 'boris.jpg'),
(532, 63, '_pingme', '1'),
(533, 63, '_encloseme', '1'),
(534, 117, '_edit_lock', '1580912513:1'),
(535, 118, '_menu_item_type', 'post_type'),
(536, 118, '_menu_item_menu_item_parent', '0'),
(537, 118, '_menu_item_object_id', '117'),
(538, 118, '_menu_item_object', 'page'),
(539, 118, '_menu_item_target', ''),
(540, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(541, 118, '_menu_item_xfn', ''),
(542, 118, '_menu_item_url', ''),
(543, 117, '_edit_last', '1'),
(544, 121, '_edit_lock', '1580912518:1'),
(545, 122, '_menu_item_type', 'post_type'),
(546, 122, '_menu_item_menu_item_parent', '0'),
(547, 122, '_menu_item_object_id', '121'),
(548, 122, '_menu_item_object', 'page'),
(549, 122, '_menu_item_target', ''),
(550, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(551, 122, '_menu_item_xfn', ''),
(552, 122, '_menu_item_url', ''),
(553, 121, '_edit_last', '1'),
(554, 121, '_wp_page_template', 'page.php'),
(555, 117, '_wp_page_template', 'page.php'),
(556, 124, '_edit_lock', '1580916814:1'),
(557, 125, '_menu_item_type', 'post_type'),
(558, 125, '_menu_item_menu_item_parent', '0'),
(559, 125, '_menu_item_object_id', '124'),
(560, 125, '_menu_item_object', 'page'),
(561, 125, '_menu_item_target', ''),
(562, 125, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(563, 125, '_menu_item_xfn', ''),
(564, 125, '_menu_item_url', ''),
(565, 124, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-11-06 12:59:52', '2019-11-06 12:59:52', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://127.0.0.1/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-01-14 12:51:16', '2020-01-14 12:51:16', '', 0, 'http://127.0.0.1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-06 12:59:52', '2019-11-06 12:59:52', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://127.0.0.1.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-06 12:59:52', '2019-11-06 12:59:52', '', 0, 'http://127.0.0.1/?page_id=3', 0, 'page', '', 0),
(11, 1, '2019-11-27 12:14:30', '2019-11-27 12:14:30', '', 'Jazz', '', 'inherit', 'open', 'closed', '', 'jazz', '', '', '2019-11-27 12:14:30', '2019-11-27 12:14:30', '', 0, 'http://127.0.0.1/wp-content/uploads/2019/11/Jazz.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-12-04 09:46:02', '2019-12-04 09:46:02', '.test {\n    font-size: 30px;\n}\n\n.container {\n  display: flex;\n  flex-direction: row;\n  flex-wrap: wrap;\n  justify-content:center;\n}\n\n.media-items{\n	width:200px;\n	margin:20px;\n}\n', 'theme', '', 'publish', 'closed', 'closed', '', 'theme', '', '', '2019-12-04 09:46:02', '2019-12-04 09:46:02', '', 0, 'http://127.0.0.1/2019/12/04/theme/', 0, 'custom_css', '', 0),
(24, 1, '2019-12-04 09:46:02', '2019-12-04 09:46:02', '.test {\n    font-size: 30px;\n}\n\n.container {\n  display: flex;\n  flex-direction: row;\n  flex-wrap: wrap;\n  justify-content:center;\n}\n\n.media-items{\n	width:200px;\n	margin:20px;\n}\n', 'theme', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-12-04 09:46:02', '2019-12-04 09:46:02', '', 23, 'http://127.0.0.1/2019/12/04/23-revision-v1/', 0, 'revision', '', 0),
(63, 2, '2020-01-13 18:15:18', '2020-01-13 18:15:18', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Great Play From Ronaldo', '', 'publish', 'open', 'open', '', 'sports-news', '', '', '2020-01-28 13:40:57', '2020-01-28 13:40:57', '', 0, 'http://127.0.0.1/?p=63', 0, 'post', '', 0),
(64, 1, '2020-01-13 18:15:18', '2020-01-13 18:15:18', '<!-- wp:paragraph -->\n<p>It\'s a solid performance today from professional footballer Cristiano Ronaldo</p>\n<!-- /wp:paragraph -->', 'Sports news', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-13 18:15:18', '2020-01-13 18:15:18', '', 63, 'http://127.0.0.1/63-revision-v1/', 0, 'revision', '', 0),
(65, 2, '2020-01-13 18:17:00', '2020-01-13 18:17:00', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'publish', 'open', 'open', '', 'rooney-is-back', '', '', '2020-01-28 13:40:43', '2020-01-28 13:40:43', '', 0, 'http://127.0.0.1/?p=65', 0, 'post', '', 0),
(66, 1, '2020-01-13 18:17:00', '2020-01-13 18:17:00', '<!-- wp:paragraph -->\n<p>We all knew that it was on the cards but to have him back so soon took everyone by surprise</p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-13 18:17:00', '2020-01-13 18:17:00', '', 65, 'http://127.0.0.1/65-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-01-13 18:21:29', '2020-01-13 18:21:29', '<!-- wp:paragraph -->\n<p>It\'s a solid performance today from professional footballer Cristiano Ronaldo</p>\n<!-- /wp:paragraph -->', 'Great Play From Ronaldo', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-13 18:21:29', '2020-01-13 18:21:29', '', 63, 'http://127.0.0.1/63-revision-v1/', 0, 'revision', '', 0),
(68, 2, '2020-01-13 19:58:23', '2020-01-13 19:58:23', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Stocks are going down', '', 'publish', 'open', 'open', '', 'stocks-are-down', '', '', '2020-01-28 13:40:30', '2020-01-28 13:40:30', '', 0, 'http://127.0.0.1/?p=68', 0, 'post', '', 0),
(69, 1, '2020-01-13 19:58:23', '2020-01-13 19:58:23', '<!-- wp:paragraph -->\n<p>The financial market has taken ANOTHER downturn this winter with</p>\n<!-- /wp:paragraph -->', 'Stocks are down', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-13 19:58:23', '2020-01-13 19:58:23', '', 68, 'http://127.0.0.1/uncategorised/68-revision-v1/', 0, 'revision', '', 0),
(71, 2, '2020-01-13 19:59:56', '2020-01-13 19:59:56', '<p><!--EndFragment--></p>\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'The Witcher Series 2 Confirmed', '', 'publish', 'open', 'open', '', 'the-witcher-series-2-confirmed', '', '', '2020-01-28 13:40:13', '2020-01-28 13:40:13', '', 0, 'http://127.0.0.1/?p=71', 0, 'post', '', 0),
(72, 1, '2020-01-13 19:59:56', '2020-01-13 19:59:56', '<!-- wp:paragraph -->\n<p>Fans of the series will be pleased to hear that the cast of the first series will be returning for another series.</p>\n<!-- /wp:paragraph -->', 'The Witcher Series 2 Confirmed', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-13 19:59:56', '2020-01-13 19:59:56', '', 71, 'http://127.0.0.1/uncategorised/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-14 12:51:16', '2020-01-14 12:51:16', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://127.0.0.1/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-01-14 12:51:16', '2020-01-14 12:51:16', '', 2, 'http://127.0.0.1/uncategorised/2-revision-v1/', 0, 'revision', '', 0),
(75, 2, '2020-01-14 15:52:20', '2020-01-14 15:52:20', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Al Pacino; Looking Back', '', 'publish', 'open', 'open', '', 'al-pacino-looking-back', '', '', '2020-01-28 13:39:54', '2020-01-28 13:39:54', '', 0, 'http://127.0.0.1/?p=75', 0, 'post', '', 0),
(76, 1, '2020-01-14 15:52:20', '2020-01-14 15:52:20', '<!-- wp:paragraph -->\n<p>Al Pacino has had an eventful career, to say the least, with a wide range of roles but gangster films have always been his core focus.</p>\n<!-- /wp:paragraph -->', 'Al Pacino; Looking Back', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-01-14 15:52:20', '2020-01-14 15:52:20', '', 75, 'http://127.0.0.1/uncategorised/75-revision-v1/', 0, 'revision', '', 0),
(78, 2, '2020-01-15 15:00:06', '2020-01-15 15:00:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Keanu Reeves nominated for man of 2019', '', 'publish', 'open', 'open', '', 'keanu-reeves-nominated-for-man-of-2019', '', '', '2020-01-28 13:39:23', '2020-01-28 13:39:23', '', 0, 'http://127.0.0.1/?p=78', 0, 'post', '', 0),
(79, 1, '2020-01-15 15:00:06', '2020-01-15 15:00:06', '<!-- wp:paragraph -->\n<p>Everyone knows that John Wick is a cool movie, but did you know that Keanu Reeves is actually a nice person in real life? Studies show that he is 80% nicer than most people. </p>\n<!-- /wp:paragraph -->', 'Keanu Reeves nominated for man of 2019', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-15 15:00:06', '2020-01-15 15:00:06', '', 78, 'http://127.0.0.1/uncategorised/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-01-15 15:52:37', '2020-01-15 15:52:37', '<!-- wp:paragraph -->\n<p>The financial market has taken ANOTHER downturn this winter with Brexit finally going through. All indices have taken a hit however gold stocks have managed to increase!</p>\n<!-- /wp:paragraph -->', 'Stocks are down', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-15 15:52:37', '2020-01-15 15:52:37', '', 68, 'http://127.0.0.1/uncategorised/68-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-01-16 16:02:59', '2020-01-16 16:02:59', '<!-- wp:paragraph -->\n<p>Everyone knows that John Wick is a cool movie, but did you know that Keanu Reeves is actually a nice person in real life? Studies show that he is 80% nicer than most people. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Reeves began his acting career at the age of nine, appearing in a theatre production of <em><a href=\"https://en.wikipedia.org/wiki/Damn_Yankees\">Damn Yankees</a></em>.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-32\">[31]</a></sup> At 15, he played <a href=\"https://en.wikipedia.org/wiki/Mercutio\">Mercutio</a> in a stage production of <em><a href=\"https://en.wikipedia.org/wiki/Romeo_and_Juliet\">Romeo and Juliet</a></em> at the Leah Posluns Theatre.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-MrReeves-33\">[32]</a></sup> Reeves dropped out of high school when he was 17. He obtained a green card through his American stepfather and moved to Los Angeles three years later.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-totalfilm2008-26\">[25]</a></sup> Reeves made his screen acting debut in an episode of <em><a href=\"https://en.wikipedia.org/wiki/Hangin%27_In\">Hangin\' In</a></em>. In the early 1980s, he appeared in commercials including one for <a href=\"https://en.wikipedia.org/wiki/Coca-Cola\">Coca-Cola</a>, short films including the <a href=\"https://en.wikipedia.org/wiki/National_Film_Board_of_Canada\">NFB</a> drama <em>One Step Away</em>,<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-34\">[33]</a></sup> and stage work such as <a href=\"https://en.wikipedia.org/wiki/Brad_Fraser\">Brad Fraser</a>\'s cult hit <em><a href=\"https://en.wikipedia.org/wiki/Wolfboy\">Wolfboy</a></em> in Toronto. In 1984, he was a correspondent for the <a href=\"https://en.wikipedia.org/wiki/Canadian_Broadcasting_Corporation\">Canadian Broadcasting Corporation</a> TV youth program <em><a href=\"https://en.wikipedia.org/wiki/Going_Great\">Going Great</a></em>.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-YouTube-35\">[34]</a></sup></p>\n<!-- /wp:paragraph -->', 'Keanu Reeves nominated for man of 2019', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-16 16:02:59', '2020-01-16 16:02:59', '', 78, 'http://127.0.0.1/uncategorised/78-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-01-16 16:21:03', '2020-01-16 16:21:03', '<!-- wp:paragraph -->\n<p>We all knew that it was on the cards but to have him back so soon took everyone by surprise</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Rooney joined the <a href=\"https://en.wikipedia.org/wiki/Everton_F.C.\">Everton</a> youth team at the age of 9 and made his professional debut for the club in 2002 at the age of 16. He spent two seasons at the <a href=\"https://en.wikipedia.org/wiki/Merseyside\">Merseyside</a> club, before moving to Manchester United for £25.6 million in the 2004 summer <a href=\"https://en.wikipedia.org/wiki/Transfer_window\">transfer window</a> where he won 16 trophies and became the only English player, alongside teammate <a href=\"https://en.wikipedia.org/wiki/Michael_Carrick\">Michael Carrick</a>, to win the <a href=\"https://en.wikipedia.org/wiki/Premier_League\">Premier League</a>, <a href=\"https://en.wikipedia.org/wiki/FA_Cup\">FA Cup</a>, <a href=\"https://en.wikipedia.org/wiki/UEFA_Champions_League\">UEFA Champions League</a>, <a href=\"https://en.wikipedia.org/wiki/EFL_Cup\">League Cup</a>, <a href=\"https://en.wikipedia.org/wiki/UEFA_Europa_League\">UEFA Europa League</a>, and <a href=\"https://en.wikipedia.org/wiki/FIFA_Club_World_Cup\">FIFA Club World Cup</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-5\">[5]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-6\">[6]</a></sup> He scored 253 goals for United in all competitions to make him their <a href=\"https://en.wikipedia.org/wiki/List_of_Manchester_United_F.C._records_and_statistics#Goalscorers\">top goalscorer of all time</a>, with 183 Premier League goals being the most scored by a player for any single club. Rooney\'s 208 Premier League goals make him the Premier League\'s second <a href=\"https://en.wikipedia.org/wiki/List_of_Premier_League_players_with_100_or_more_goals\">top scorer of all time</a> behind only <a href=\"https://en.wikipedia.org/wiki/Alan_Shearer\">Alan Shearer</a>. He also has the third-highest number of assists in the Premier League, with 103.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-Everton_3%E2%80%931_Swansea_City-7\">[7]</a></sup> </p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-16 16:21:03', '2020-01-16 16:21:03', '', 65, 'http://127.0.0.1/uncategorised/65-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2020-01-16 16:51:43', '2020-01-16 16:51:43', '<!-- wp:paragraph -->\n<p>It\'s a solid performance today from professional footballer Cristiano Ronaldo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Cristiano Ronaldo dos Santos Aveiro</strong><a href=\"https://en.wikipedia.org/wiki/Order_of_Prince_Henry\">GOIH</a><a href=\"https://en.wikipedia.org/wiki/Order_of_Merit_(Portugal)\">ComM</a> (European Portuguese: <a href=\"https://en.wikipedia.org/wiki/Help:IPA/Portuguese\">[kɾiʃˈtjɐnu ʁɔˈnaɫdu]</a>; born 5 February 1985) is a Portuguese professional <a href=\"https://en.wikipedia.org/wiki/Association_football\">footballer</a> who plays as a <a href=\"https://en.wikipedia.org/wiki/Forward_(association_football)\">forward</a> for <a href=\"https://en.wikipedia.org/wiki/Serie_A\">Serie A</a> club <a href=\"https://en.wikipedia.org/wiki/Juventus_F.C.\">Juventus</a> and <a href=\"https://en.wikipedia.org/wiki/Captain_(association_football)\">captains</a> the <a href=\"https://en.wikipedia.org/wiki/Portugal_national_football_team\">Portugal national team</a>. Often considered the best player in the world and widely regarded as one of the greatest players of all time,<sup><a href=\"https://en.wikipedia.org/wiki/Cristiano_Ronaldo#cite_note-13\">[note 3]</a></sup> Ronaldo has won five <a href=\"https://en.wikipedia.org/wiki/Ballon_d%27Or\">Ballons d\'Or</a><sup><a href=\"https://en.wikipedia.org/wiki/Cristiano_Ronaldo#cite_note-14\">[note 4]</a></sup> and four <a href=\"https://en.wikipedia.org/wiki/European_Golden_Shoe\">European Golden Shoes</a>, both of which are records for a European player. He has won <a href=\"https://en.wikipedia.org/wiki/List_of_career_achievements_by_Cristiano_Ronaldo#Collective_awards\">29 trophies in his career</a>, including six league titles, five <a href=\"https://en.wikipedia.org/wiki/UEFA_Champions_League\">UEFA Champions Leagues</a>, one <a href=\"https://en.wikipedia.org/wiki/UEFA_European_Championship\">UEFA European Championship</a>, and one <a href=\"https://en.wikipedia.org/wiki/UEFA_Nations_League\">UEFA Nations League</a>. A prolific goalscorer, Ronaldo holds the records for the most goals scored in the UEFA Champions League (128) and the joint-most goals scored in the UEFA European Championship (9). He has scored over <a href=\"https://en.wikipedia.org/wiki/List_of_men%27s_footballers_with_500_or_more_goals\">700 senior career goals</a> for club and country.<sup><a href=\"https://en.wikipedia.org/wiki/Cristiano_Ronaldo#cite_note-15\">[11]</a></sup></p>\n<!-- /wp:paragraph -->', 'Great Play From Ronaldo', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-16 16:51:43', '2020-01-16 16:51:43', '', 63, 'http://127.0.0.1/uncategorised/63-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-01-16 16:52:38', '2020-01-16 16:52:38', '<!-- wp:paragraph -->\n<p>It\'s a solid performance today from professional footballer Cristiano Ronaldo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Cristiano Ronaldo dos Santos Aveiro</strong><a href=\"https://en.wikipedia.org/wiki/Order_of_Prince_Henry\">GOIH</a><a href=\"https://en.wikipedia.org/wiki/Order_of_Merit_(Portugal)\">ComM</a> (European Portuguese: <a href=\"https://en.wikipedia.org/wiki/Help:IPA/Portuguese\">[kɾiʃˈtjɐnu ʁɔˈnaɫdu]</a>; born 5 February 1985) is a Portuguese professional <a href=\"https://en.wikipedia.org/wiki/Association_football\">footballer</a> who plays as a <a href=\"https://en.wikipedia.org/wiki/Forward_(association_football)\">forward</a> for <a href=\"https://en.wikipedia.org/wiki/Serie_A\">Serie A</a> club <a href=\"https://en.wikipedia.org/wiki/Juventus_F.C.\">Juventus</a> and <a href=\"https://en.wikipedia.org/wiki/Captain_(association_football)\">captains</a> the <a href=\"https://en.wikipedia.org/wiki/Portugal_national_football_team\">Portugal national team</a>. Often considered the best player in the world and widely regarded as one of the greatest players of all time,<sup><a href=\"https://en.wikipedia.org/wiki/Cristiano_Ronaldo#cite_note-13\">[note 3]</a></sup> Ronaldo has won five <a href=\"https://en.wikipedia.org/wiki/Ballon_d%27Or\">Ballons d\'Or</a><sup><a href=\"https://en.wikipedia.org/wiki/Cristiano_Ronaldo#cite_note-14\">[note 4]</a></sup> and four <a href=\"https://en.wikipedia.org/wiki/European_Golden_Shoe\">European Golden Shoes</a>, both of which are records for a European player. He has won <a href=\"https://en.wikipedia.org/wiki/List_of_career_achievements_by_Cristiano_Ronaldo#Collective_awards\">29 trophies in his career</a>, including six league titles, five <a href=\"https://en.wikipedia.org/wiki/UEFA_Champions_League\">UEFA Champions Leagues</a>, one <a href=\"https://en.wikipedia.org/wiki/UEFA_European_Championship\">UEFA European Championship</a>, and one <a href=\"https://en.wikipedia.org/wiki/UEFA_Nations_League\">UEFA Nations League</a>. A prolific goalscorer, Ronaldo holds the records for the most goals scored in the UEFA Champions League (128) and the joint-most goals scored in the UEFA European Championship (9). He has scored over <a href=\"https://en.wikipedia.org/wiki/List_of_men%27s_footballers_with_500_or_more_goals\">700 senior career goals</a> for club and country.<sup><a href=\"https://en.wikipedia.org/wiki/Cristiano_Ronaldo#cite_note-15\">[11]</a></sup></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Born and raised in <a href=\"https://en.wikipedia.org/wiki/Madeira\">Madeira</a>, Ronaldo began his senior club career playing for <a href=\"https://en.wikipedia.org/wiki/Sporting_CP\">Sporting CP</a>, before signing with <a href=\"https://en.wikipedia.org/wiki/Manchester_United_F.C.\">Manchester United</a> in 2003, aged 18. After winning the <a href=\"https://en.wikipedia.org/wiki/FA_Cup\">FA Cup</a> in his first season, he helped United win three successive <a href=\"https://en.wikipedia.org/wiki/Premier_League\">Premier League</a> titles, the UEFA Champions League, and the <a href=\"https://en.wikipedia.org/wiki/FIFA_Club_World_Cup\">FIFA Club World Cup</a>; at age 23, he won his first Ballon d\'Or. In 2009, Ronaldo was the subject of the then-<a href=\"https://en.wikipedia.org/wiki/Most_expensive_association_football_transfer\">most expensive association football transfer</a> when signed for <a href=\"https://en.wikipedia.org/wiki/Real_Madrid_CF\">Real Madrid</a> in a <a href=\"https://en.wikipedia.org/wiki/Transfer_(association_football)\">transfer</a> worth €94 million (£80 million). There, Ronaldo won 15 trophies, including two <a href=\"https://en.wikipedia.org/wiki/La_Liga\">La Liga</a> titles, two <a href=\"https://en.wikipedia.org/wiki/Copa_del_Rey\">Copas del Rey</a>, and four UEFA Champions League titles, and became <a href=\"https://en.wikipedia.org/wiki/List_of_Real_Madrid_CF_records_and_statistics#Goalscorers\">the club\'s all-time top goalscorer</a>. After joining Madrid, Ronaldo finished runner-up for the Ballon d\'Or three times, behind <a href=\"https://en.wikipedia.org/wiki/Lionel_Messi\">Lionel Messi</a>—his perceived <a href=\"https://en.wikipedia.org/wiki/Messi%E2%80%93Ronaldo_rivalry\">career rival</a>—before winning back-to-back Ballons d\'Or from <a href=\"https://en.wikipedia.org/wiki/2013_FIFA_Ballon_d%27Or\">2013</a>–<a href=\"https://en.wikipedia.org/wiki/2014_FIFA_Ballon_d%27Or\">2014</a> and again from <a href=\"https://en.wikipedia.org/wiki/2016_Ballon_d%27Or\">2016</a>–<a href=\"https://en.wikipedia.org/wiki/2017_Ballon_d%27Or\">2017</a>. After winning a <a href=\"https://en.wikipedia.org/wiki/2018_UEFA_Champions_League_Final\">third consecutive Champions League</a> title in 2018, Ronaldo became the first player to win the trophy five times. In 2018, he signed for Juventus in a transfer worth an initial €100 million (£88 million), the highest ever paid by an Italian club and the highest ever paid for a player over 30 years old. With the Italian outfit, he has won one <a href=\"https://en.wikipedia.org/wiki/2018%E2%80%9319_Serie_A\">Serie A</a> and one <a href=\"https://en.wikipedia.org/wiki/2018_Supercoppa_Italiana\">Supercoppa Italiana</a>. </p>\n<!-- /wp:paragraph -->', 'Great Play From Ronaldo', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-16 16:52:38', '2020-01-16 16:52:38', '', 63, 'http://127.0.0.1/uncategorised/63-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2020-01-20 12:22:35', '2020-01-20 12:22:35', '<!-- wp:paragraph -->\n<p>We all knew that it was on the cards but to have him back so soon took everyone by surprise</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Rooney joined the <a href=\"https://en.wikipedia.org/wiki/Everton_F.C.\">Everton</a> youth team at the age of 9 and made his professional debut for the club in 2002 at the age of 16. He spent two seasons at the <a href=\"https://en.wikipedia.org/wiki/Merseyside\">Merseyside</a> club, before moving to Manchester United for £25.6 million in the 2004 summer <a href=\"https://en.wikipedia.org/wiki/Transfer_window\">transfer window</a> where he won 16 trophies and became the only English player, alongside teammate <a href=\"https://en.wikipedia.org/wiki/Michael_Carrick\">Michael Carrick</a>, to win the <a href=\"https://en.wikipedia.org/wiki/Premier_League\">Premier League</a>, <a href=\"https://en.wikipedia.org/wiki/FA_Cup\">FA Cup</a>, <a href=\"https://en.wikipedia.org/wiki/UEFA_Champions_League\">UEFA Champions League</a>, <a href=\"https://en.wikipedia.org/wiki/EFL_Cup\">League Cup</a>, <a href=\"https://en.wikipedia.org/wiki/UEFA_Europa_League\">UEFA Europa League</a>, and <a href=\"https://en.wikipedia.org/wiki/FIFA_Club_World_Cup\">FIFA Club World Cup</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-5\">[5]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-6\">[6]</a></sup> He scored 253 goals for United in all competitions to make him their <a href=\"https://en.wikipedia.org/wiki/List_of_Manchester_United_F.C._records_and_statistics#Goalscorers\">top goalscorer of all time</a>, with 183 Premier League goals being the most scored by a player for any single club. Rooney\'s 208 Premier League goals make him the Premier League\'s second <a href=\"https://en.wikipedia.org/wiki/List_of_Premier_League_players_with_100_or_more_goals\">top scorer of all time</a> behind only <a href=\"https://en.wikipedia.org/wiki/Alan_Shearer\">Alan Shearer</a>. He also has the third-highest number of assists in the Premier League, with 103.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-Everton_3%E2%80%931_Swansea_City-7\">[7]</a></sup> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>One of Wayne\'s most memorable quotes is \'<em>There are many ways to grow football-wise. You go slow or are pushed to go faster, otherwise you get left behind. For me, there would be trouble in stopping learning.</em>\'</p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-20 12:22:35', '2020-01-20 12:22:35', '', 65, 'http://127.0.0.1/uncategorised/65-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(86, 1, '2020-01-20 12:24:09', '2020-01-20 12:24:09', '<!-- wp:paragraph -->\n<p>We all knew that it was on the cards but to have him back so soon took everyone by surprise</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Rooney joined the <a href=\"https://en.wikipedia.org/wiki/Everton_F.C.\">Everton</a> youth team at the age of 9 and made his professional debut for the club in 2002 at the age of 16. He spent two seasons at the <a href=\"https://en.wikipedia.org/wiki/Merseyside\">Merseyside</a> club, before moving to Manchester United for £25.6 million in the 2004 summer <a href=\"https://en.wikipedia.org/wiki/Transfer_window\">transfer window</a> where he won 16 trophies and became the only English player, alongside teammate <a href=\"https://en.wikipedia.org/wiki/Michael_Carrick\">Michael Carrick</a>, to win the <a href=\"https://en.wikipedia.org/wiki/Premier_League\">Premier League</a>, <a href=\"https://en.wikipedia.org/wiki/FA_Cup\">FA Cup</a>, <a href=\"https://en.wikipedia.org/wiki/UEFA_Champions_League\">UEFA Champions League</a>, <a href=\"https://en.wikipedia.org/wiki/EFL_Cup\">League Cup</a>, <a href=\"https://en.wikipedia.org/wiki/UEFA_Europa_League\">UEFA Europa League</a>, and <a href=\"https://en.wikipedia.org/wiki/FIFA_Club_World_Cup\">FIFA Club World Cup</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-5\">[5]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-6\">[6]</a></sup> He scored 253 goals for United in all competitions to make him their <a href=\"https://en.wikipedia.org/wiki/List_of_Manchester_United_F.C._records_and_statistics#Goalscorers\">top goalscorer of all time</a>, with 183 Premier League goals being the most scored by a player for any single club. Rooney\'s 208 Premier League goals make him the Premier League\'s second <a href=\"https://en.wikipedia.org/wiki/List_of_Premier_League_players_with_100_or_more_goals\">top scorer of all time</a> behind only <a href=\"https://en.wikipedia.org/wiki/Alan_Shearer\">Alan Shearer</a>. He also has the third-highest number of assists in the Premier League, with 103.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-Everton_3%E2%80%931_Swansea_City-7\">[7]</a></sup> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>One of Wayne\'s most memorable quotes is; \'<em>There are many ways to grow football-wise. You go slow or are pushed to go faster, otherwise you get left behind. For me, there would be trouble in stopping learning.</em>\' with this attitude it is easy to see that the professional footballer has a bright future whether it be into managing teams or his continued play.</p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-20 12:24:09', '2020-01-20 12:24:09', '', 65, 'http://127.0.0.1/uncategorised/65-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2020-01-20 12:27:31', '2020-01-20 12:27:31', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Cricket team banned for celebrating', '', 'publish', 'closed', 'closed', '', 'cricket-team-banned-for-celebrating', '', '', '2020-01-28 13:39:07', '2020-01-28 13:39:07', '', 0, 'http://127.0.0.1/?p=87', 0, 'post', '', 0),
(88, 1, '2020-01-20 12:26:38', '2020-01-20 12:26:38', '', 'Draft created on 20th January 2020 at 12:26 pm', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2020-01-20 12:26:38', '2020-01-20 12:26:38', '', 87, 'http://127.0.0.1/uncategorised/87-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-01-20 12:27:31', '2020-01-20 12:27:31', '<!-- wp:paragraph -->\n<p>Cricket really does know how to shoot itself in the foot. The International Cricket Council does nothing about issues such as slow over rates but&nbsp;<a href=\"https://www.telegraph.co.uk/cricket/2020/01/17/south-africa-hit-massive-blow-kagiso-rabada-banned-final-test/\">jumps on bowlers like Kagiso Rabada for simply celebrating a wicket</a>.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>His one-match ban is ridiculous. The world has gone mad if a bowler cannot celebrate dismissing the opposition captain with a snorter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Yes he has history. He was warned in Cape Town for something similar with Zak Crawley and has a track record of send-offs. But this was not worthy of a demerit point. It appears once the ICC is&nbsp;on your case it will get you in the end.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>His celebration was a bit over the top but don’t we want to see our Test cricketers showing passion and character? From what I saw it was nothing but an emotional release after the celebration of a key wicket. He was bowling hard on a flat, slow pitch with no pace and after his team had lost the toss. It was a hot, humid day. He was frustrated about not being given the new ball and then bowls a beauty to dismiss Joe. How do you expect him to react?...</p>\n<!-- /wp:paragraph -->', 'Cricket team banned for celebrating', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2020-01-20 12:27:31', '2020-01-20 12:27:31', '', 87, 'http://127.0.0.1/uncategorised/87-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-01-20 12:30:04', '2020-01-20 12:30:04', '<!-- wp:paragraph -->\n<p>We all knew that it was on the cards but to have him back so soon took everyone by surprise</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Rooney joined the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Everton_F.C.\">Everton</a>&nbsp;youth team at the age of 9 and made his professional debut for the club in 2002 at the age of 16. He spent two seasons at the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Merseyside\">Merseyside</a>&nbsp;club, before moving to Manchester United for £25.6&nbsp;million in the 2004 summer&nbsp;<a href=\"https://en.wikipedia.org/wiki/Transfer_window\">transfer window</a>&nbsp;where he won 16 trophies and became the only English player, alongside teammate&nbsp;<a href=\"https://en.wikipedia.org/wiki/Michael_Carrick\">Michael Carrick</a>, to win the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Premier_League\">Premier League</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/FA_Cup\">FA Cup</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/UEFA_Champions_League\">UEFA Champions League</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/EFL_Cup\">League Cup</a>,&nbsp;<a href=\"https://en.wikipedia.org/wiki/UEFA_Europa_League\">UEFA Europa League</a>, and&nbsp;<a href=\"https://en.wikipedia.org/wiki/FIFA_Club_World_Cup\">FIFA Club World Cup</a>.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-5\">[5]</a><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-6\">[6]</a></sup>&nbsp;He scored 253 goals for United in all competitions to make him their&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Manchester_United_F.C._records_and_statistics#Goalscorers\">top goalscorer of all time</a>, with 183 Premier League goals being the most scored by a player for any single club. Rooney\'s 208 Premier League goals make him the Premier League\'s second&nbsp;<a href=\"https://en.wikipedia.org/wiki/List_of_Premier_League_players_with_100_or_more_goals\">top scorer of all time</a>&nbsp;behind only&nbsp;<a href=\"https://en.wikipedia.org/wiki/Alan_Shearer\">Alan Shearer</a>. He also has the third-highest number of assists in the Premier League, with 103.<sup><a href=\"https://en.wikipedia.org/wiki/Wayne_Rooney#cite_note-Everton_3%E2%80%931_Swansea_City-7\">[7]</a></sup> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>One of Wayne\'s most memorable quotes is; \'<em>There are many ways to grow football-wise. You go slow or are pushed to go faster, otherwise you get left behind. For me, there would be trouble in stopping learning.</em>\' with this attitude it is easy to see that the professional footballer has a bright future whether it be into managing teams or his continued play.</p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-20 12:30:04', '2020-01-20 12:30:04', '', 65, 'http://127.0.0.1/uncategorised/65-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-01-20 12:39:34', '2020-01-20 12:39:34', '<!-- wp:paragraph -->\n<p>Everyone knows that John Wick is a cool movie, but did you know that Keanu Reeves is actually a nice person in real life? Studies show that he is 80% nicer than most people. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Reeves began his acting career at the age of nine, appearing in a theatre production of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Damn_Yankees\">Damn Yankees</a></em>.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-32\">[31]</a></sup>&nbsp;At 15, he played&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mercutio\">Mercutio</a>&nbsp;in a stage production of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Romeo_and_Juliet\">Romeo and Juliet</a></em>&nbsp;at the Leah Posluns Theatre.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-MrReeves-33\">[32]</a></sup>&nbsp;Reeves dropped out of high school when he was 17. He obtained a green card through his American stepfather and moved to Los Angeles three years later.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-totalfilm2008-26\">[25]</a></sup>&nbsp;Reeves made his screen acting debut in an episode of&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Hangin%27_In\">Hangin\' In</a></em>. In the early 1980s, he appeared in commercials including one for&nbsp;<a href=\"https://en.wikipedia.org/wiki/Coca-Cola\">Coca-Cola</a>, short films including the&nbsp;<a href=\"https://en.wikipedia.org/wiki/National_Film_Board_of_Canada\">NFB</a>&nbsp;drama&nbsp;<em>One Step Away</em>,<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-34\">[33]</a></sup>&nbsp;and stage work such as&nbsp;<a href=\"https://en.wikipedia.org/wiki/Brad_Fraser\">Brad Fraser</a>\'s cult hit&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Wolfboy\">Wolfboy</a></em>&nbsp;in Toronto. In 1984, he was a correspondent for the&nbsp;<a href=\"https://en.wikipedia.org/wiki/Canadian_Broadcasting_Corporation\">Canadian Broadcasting Corporation</a>&nbsp;TV youth program&nbsp;<em><a href=\"https://en.wikipedia.org/wiki/Going_Great\">Going Great</a></em>.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-YouTube-35\">[34]</a></sup></p>\n<!-- /wp:paragraph -->', 'Keanu Reeves nominated for man of 2019', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-20 12:39:34', '2020-01-20 12:39:34', '', 78, 'http://127.0.0.1/uncategorised/78-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2020-01-20 13:00:26', '2020-01-20 13:00:26', '<!-- wp:paragraph -->\n<p>Everyone knows that John Wick is a cool movie, but did you know that Keanu Reeves is actually a nice person in real life? Studies show that he is 80% nicer than most people. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Reeves began his acting career at the age of nine, appearing in a theatre production of <em><a href=\"https://en.wikipedia.org/wiki/Damn_Yankees\">Damn Yankees</a></em>.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-32\">[31]</a></sup> At 15, he played <a href=\"https://en.wikipedia.org/wiki/Mercutio\">Mercutio</a> in a stage production of <em><a href=\"https://en.wikipedia.org/wiki/Romeo_and_Juliet\">Romeo and Juliet</a></em> at the Leah Posluns Theatre.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-MrReeves-33\">[32]</a></sup> Reeves dropped out of high school when he was 17. He obtained a green card through his American stepfather and moved to Los Angeles three years later.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-totalfilm2008-26\">[25]</a></sup> Reeves made his screen acting debut in an episode of <em><a href=\"https://en.wikipedia.org/wiki/Hangin%27_In\">Hangin\' In</a></em>. In the early 1980s, he appeared in commercials including one for <a href=\"https://en.wikipedia.org/wiki/Coca-Cola\">Coca-Cola</a>, short films including the <a href=\"https://en.wikipedia.org/wiki/National_Film_Board_of_Canada\">NFB</a> drama <em>One Step Away</em>,<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-34\">[33]</a></sup> and stage work such as <a href=\"https://en.wikipedia.org/wiki/Brad_Fraser\">Brad Fraser</a>\'s cult hit <em><a href=\"https://en.wikipedia.org/wiki/Wolfboy\">Wolfboy</a></em> in Toronto. In 1984, he was a correspondent for the <a href=\"https://en.wikipedia.org/wiki/Canadian_Broadcasting_Corporation\">Canadian Broadcasting Corporation</a> TV youth program <em><a href=\"https://en.wikipedia.org/wiki/Going_Great\">Going Great</a></em>.<sup><a href=\"https://en.wikipedia.org/wiki/Keanu_Reeves#cite_note-YouTube-35\">[34]</a></sup></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Keanu Reeves has stolen our hearts with films such as “The House of the Lake”, has also shown his sexy side with stories like “John Wick”, whose third part premiered in 2019.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The actor has also returned to the science fiction genre with “Replicas”; However, it seems that his charm and talent was not enough and he is considered the worst actor. Que?????</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The winners of the Razzie Awards will be announced on February 8, a gala opposite the Oscars that rewards the worst of cinema and Keanu was nominated for “Worst Actor.” Apparently, the actor is not able to conquer everyone and even if they are prizes of “joke” or “John Wick” could save him. LOL</p>\n<!-- /wp:paragraph -->', 'Keanu Reeves nominated for man of 2019', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-20 13:00:26', '2020-01-20 13:00:26', '', 78, 'http://127.0.0.1/uncategorised/78-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-01-20 13:03:03', '2020-01-20 13:03:03', '<!-- wp:paragraph -->\n<p>Al Pacino has had an eventful career, to say the least, with a wide range of roles but gangster films have always been his core focus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It\'s worth pointing out that Pacino seemed to recall Bridges being nominated alongside himself for best actor, but he was actually nominated for best supporting actor, a category that would have already been announced, for \"Thunderbolt and Lightfoot.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Indeed, Bridges lost the award to Pacino\'s \"Godfather II\" costar Robert De Niro (who also stars in \"The Irishman\"), perhaps explaining his frostiness to Pacino. Still, Pacino was startled at just how long the Oscars were.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"That collapsed me,\" he told Kimmel. \"I thought, \'What am I going to do for the next two hours?\'\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"If you\'re so high that Jeff Bridges has to tell you what\'s going on...\" Kimmel joked.</p>\n<!-- /wp:paragraph -->', 'Al Pacino; Looking Back', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-01-20 13:03:03', '2020-01-20 13:03:03', '', 75, 'http://127.0.0.1/uncategorised/75-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-01-20 13:03:28', '2020-01-20 13:03:28', '<!-- wp:paragraph -->\n<p>Al Pacino has had an eventful career, to say the least, with a wide range of roles but gangster films have always been his core focus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>It\'s worth pointing out that Pacino seemed to recall Bridges being nominated alongside himself for best actor, but he was actually nominated for best supporting actor, a category that would have already been announced, for \"Thunderbolt and Lightfoot.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Indeed, Bridges lost the award to Pacino\'s \"Godfather II\" costar Robert De Niro (who also stars in \"The Irishman\"), perhaps explaining his frostiness to Pacino. Still, Pacino was startled at just how long the Oscars were.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"That collapsed me,\" he told Kimmel. \"I thought, \'What am I going to do for the next two hours?\'\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"If you\'re so high that Jeff Bridges has to tell you what\'s going on...\" Kimmel joked.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I was sitting there and it wasn\'t at all like you\'d expect,\" Pacino said. \"I went and I was sat there in this big event and I was with a friend. I had a few things, you know. I was not completely myself.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"So everything was tolerable, you know?\" he added. \"The nerves had calmed down. I was sitting there enjoying the show. I turned to&nbsp;<a href=\"https://www.insider.com/category/jeff-bridges\">Jeff Bridges</a>&nbsp;— he was also nominated — and I said hi.\"</p>\n<!-- /wp:paragraph -->', 'Al Pacino; Looking Back', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-01-20 13:03:28', '2020-01-20 13:03:28', '', 75, 'http://127.0.0.1/uncategorised/75-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-01-20 15:17:16', '2020-01-20 15:17:16', '<!-- wp:paragraph -->\n<p>(Sharecast News) - London stocks were steady in early trade on Monday at the start of what is expected to be a fairly quiet session, with US markets out of action for Martin Luther King Jr day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At 0835 GMT, the&nbsp;<a href=\"https://www.hl.co.uk/shares/stock-market-summary/ftse-100\">FTSE 100</a>&nbsp;was flat at 7,674.37, while sterling was down&nbsp;<strong>0.3%</strong>&nbsp;against the dollar at 1.2980.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oil prices surged earlier but had given up some gains by early trade, with West Texas Intermediate up&nbsp;<strong>0.8%</strong>&nbsp;at&nbsp;<strong>$59.07</strong>&nbsp;a barrel and Brent crude&nbsp;<strong>0.9%</strong>&nbsp;higher at&nbsp;<strong>$65.47</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Neil Wilson, chief market analyst at Markets.com, said: \"Oil took off amid supply disruption in Libya and Iraq. Production of&nbsp;<strong>1.2m</strong>&nbsp;barrels per day has been completely crippled after forces loyal to Khalifa Haftar closed a pipeline. About 800k bpd of that figure has been taken out, although it could be higher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"This is coinciding with disruptions to production in Iraq. We can expect both countries to provide ongoing supply uncertainty but these are relatively mild and likely to be shorter duration outages. I don\'t think we are seeing a major disruption - certainly any spare capacity can simply be absorbed by other OPEC members gladly pumping a little more to compensate. And the global oil market just isn\'t as exposed to shocks as it once was.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>On home turf, investors were mulling the latest survey from Rightmove, which showed that asking prices for UK houses rose at their fastest pace on record for the month in January, with sentiment boosted by the outcome of the general election.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>House prices were up&nbsp;<strong>2.3%</strong>&nbsp;on the month, marking the largest price rise recorded at this time of the year since the Rightmove house price survey began in 2002. Prices had fallen&nbsp;<strong>0.9%</strong>&nbsp;in December.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>This pushed the annual rate of increase to&nbsp;<strong>2.7%</strong>, which is the highest level since July 2017. Prices had risen&nbsp;<strong>0.8%</strong>&nbsp;the month before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rightmove director and housing market analyst Miles Shipside said: \"These statistics seem to indicate that many buyers and sellers feel that the election result gives a window of stability. The housing market dislikes uncertainty, and the unsettled political outlook over the last three and a half years since the EU referendum caused some potential home-movers to hesitate.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"There now seems to be a release of this pent-up demand, which suggests we are in store for an active spring market. The early birds are on it, with over 1.3 million buyer enquiries to agents since the election, up <strong>15%</strong> on the same period a year ago. Some buyers are even further ahead and have snapped up a property already, with the number of sales agreed up by <strong>7.4%</strong> on this time last year.\"</p>\n<!-- /wp:paragraph -->', 'Stocks are going down', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-20 15:17:16', '2020-01-20 15:17:16', '', 68, 'http://127.0.0.1/uncategorised/68-revision-v1/', 0, 'revision', '', 0),
(96, 2, '2020-01-20 15:23:40', '2020-01-20 15:23:40', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Harry and Meghan: Duke\'s speech on his royal future in full', '', 'publish', 'closed', 'closed', '', 'harry-and-meghan-dukes-speech-on-his-royal-future-in-full', '', '', '2020-01-28 13:38:51', '2020-01-28 13:38:51', '', 0, 'http://127.0.0.1/?p=96', 0, 'post', '', 0),
(97, 1, '2020-01-20 15:22:26', '2020-01-20 15:22:26', '', 'Draft created on 20th January 2020 at 3:22 pm', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-01-20 15:22:26', '2020-01-20 15:22:26', '', 96, 'http://127.0.0.1/uncategorised/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2020-01-20 15:23:40', '2020-01-20 15:23:40', '<!-- wp:paragraph -->\n<p>The Duke of Sussex has spoken for the first time after Buckingham Palace announced the terms on which he and his wife Meghan, Duchess of Sussex, will step back from being senior royals.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>He made his remarks during a speech at a private reception in central London for his charity Sentebale.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Good evening, and thank you for being here for Sentebale, a charity me and Prince Seeiso created back in 2006 to honour my mother\'s legacy in supporting those affected by HIV and Aids.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Before I begin, I must say that I can only imagine what you may have heard or perhaps read over the last few weeks...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"So, I want you to hear the truth from me, as much as I can share - not as a prince, or a duke, but as Harry, the same person that many of you have watched grow up over the last 35 years - but with a clearer perspective.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"The UK is my home and a place that I love. That will never change.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I have grown up feeling support from so many of you, and I watched as you welcomed Meghan with open arms as you saw me find the love and happiness that I had hoped for all my life. Finally, the second son of Diana got hitched, hurray!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I also know you\'ve come to know me well enough over all these years to trust that the woman I chose as my wife upholds the same values as I do. And she does, and she\'s the same woman I fell in love with.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"We both do everything we can to fly the flag and carry out our roles for this country with pride.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Once Meghan and I were married, we were excited, we were hopeful, and we were here to serve.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"For those reasons, it brings me great sadness that it has come to this.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"The decision that I have made for my wife and I to step back is not one I made lightly. It was so many months of talks after so many years of challenges. And I know I haven\'t always got it right, but as far as this goes, there really was no other option.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"What I want to make clear is we\'re not walking away, and we certainly aren\'t walking away from you. Our hope was to continue serving the Queen, the Commonwealth, and my military associations, but without public funding. Unfortunately, that wasn\'t possible.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'ve accepted this, knowing that it doesn\'t change who I am or how committed I am.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"But I hope that helps you understand what it had come to, that I would step my family back from all I have ever known, to take a step forward into what I hope can be a more peaceful life.</p>\n<!-- /wp:paragraph -->', 'Harry and Meghan: Duke\'s speech on his royal future in full', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-01-20 15:23:40', '2020-01-20 15:23:40', '', 96, 'http://127.0.0.1/uncategorised/96-revision-v1/', 0, 'revision', '', 0),
(99, 2, '2020-01-20 15:32:34', '2020-01-20 15:32:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Immigration system will \'put people before passports\' - PM', '', 'publish', 'closed', 'closed', '', 'immigration-system-will-put-people-before-passports-pm', '', '', '2020-01-28 13:38:36', '2020-01-28 13:38:36', '', 0, 'http://127.0.0.1/?p=99', 0, 'post', '', 0),
(100, 1, '2020-01-20 15:32:09', '2020-01-20 15:32:09', '', 'Draft created on 20th January 2020 at 3:32 pm', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-01-20 15:32:09', '2020-01-20 15:32:09', '', 99, 'http://127.0.0.1/uncategorised/99-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2020-01-20 15:32:34', '2020-01-20 15:32:34', '<!-- wp:paragraph -->\n<p>The UK\'s post-Brexit immigration system will put \"people before passports\", Boris Johnson has said.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Speaking at the UK-Africa Investment Summit, the PM said immigration would become \"fairer... treating people the same wherever they come from\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Freedom of movement between the UK and EU is expected to end after the Brexit transition period on 31 December 2020.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The government says it will introduce an Australian-style points based system by January 2021.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Under this system those wanting to work in the UK could be assigned points based on a number of professional and personal characteristics such as education levels.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Currently, under freedom of movement, EU citizens do not need a visa to work in the UK, but immigrants from outside the EU are subject to a points system based on English language skills, being sponsored by a company and meeting a salary threshold.</p>\n<!-- /wp:paragraph -->', 'Immigration system will \'put people before passports\' - PM', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-01-20 15:32:34', '2020-01-20 15:32:34', '', 99, 'http://127.0.0.1/uncategorised/99-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2020-01-20 15:49:03', '2020-01-20 15:49:03', '<!-- wp:paragraph -->\n<p>Fans of the series will be pleased to hear that the cast of the first series will be returning for another series.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The Witcher is an American fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent. </p>\n<!-- /wp:paragraph -->', 'The Witcher Series 2 Confirmed', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-20 15:49:03', '2020-01-20 15:49:03', '', 71, 'http://127.0.0.1/uncategorised/71-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-01-20 15:51:28', '2020-01-20 15:51:28', '<!-- wp:paragraph -->\n<p>Fans of the series will be pleased to hear that the cast of the first series will be returning for another series.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The Witcher is an American fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The success of the series has ridden off of the coat-tails of the game, with CD Projekt Reds input the series has undergone a rebirth since the days of the original books. To the dismay of fans on the series and to Andrzej Sapkowski himself most of the rights for the monetary aspect have been bought by other companies leaving him substantially out of pocket compared to where he could have been. </p>\n<!-- /wp:paragraph -->', 'The Witcher Series 2 Confirmed', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-20 15:51:28', '2020-01-20 15:51:28', '', 71, 'http://127.0.0.1/uncategorised/71-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2020-01-20 15:53:41', '2020-01-20 15:53:41', '<!-- wp:paragraph -->\n<p>Fans of the series will be pleased to hear that the cast of the first series will be returning for another series.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The Witcher is an American fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The success of the series has ridden off of the coat-tails of the game, with CD Projekt Reds input the series has undergone a rebirth since the days of the original books. To the dismay of fans on the series and to Andrzej Sapkowski himself most of the rights for the monetary aspect have been bought by other companies leaving him substantially out of pocket compared to where he could have been. </p>\n<!-- /wp:paragraph -->\n\n<p><br>\n<br>\n<!--StartFragment--></p>\n\n<!-- wp:paragraph -->\n<p> The Witcher is an American fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The success of the series has ridden off of the coat-tails of the game, with CD Projekt Reds input the series has undergone a rebirth since the days of the original books. To the dismay of fans on the series and to Andrzej Sapkowski himself most of the rights for the monetary aspect have been bought by other companies leaving him substantially out of pocket compared to where he could have been. </p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'The Witcher Series 2 Confirmed', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-20 15:53:41', '2020-01-20 15:53:41', '', 71, 'http://127.0.0.1/uncategorised/71-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2020-01-20 15:54:04', '2020-01-20 15:54:04', '<!-- wp:paragraph -->\n<p>Fans of the series will be pleased to hear that the cast of the first series will be returning for another series.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The Witcher is an American fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The success of the series has ridden off of the coat-tails of the game, with CD Projekt Reds input the series has undergone a rebirth since the days of the original books. To the dismay of fans on the series and to Andrzej Sapkowski himself most of the rights for the monetary aspect have been bought by other companies leaving him substantially out of pocket compared to where he could have been. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> The Witcher is an American fantasy drama web television series created by Lauren Schmidt Hissrich for Netflix. It is based on the book series of the same name by Polish writer Andrzej Sapkowski. The Witcher follows the story of Geralt of Rivia, a solitary monster hunter, who struggles to find his place in a world where people often prove more wicked than monsters and beasts. But when destiny hurtles him toward a powerful sorceress, and a young princess with a special gift, the three must learn to navigate independently the increasingly volatile Continent. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The success of the series has ridden off of the coat-tails of the game, with CD Projekt Reds input the series has undergone a rebirth since the days of the original books. To the dismay of fans on the series and to Andrzej Sapkowski himself most of the rights for the monetary aspect have been bought by other companies leaving him substantially out of pocket compared to where he could have been. </p>\n<!-- /wp:paragraph -->\n\n<p><!--EndFragment--><br /><br /></p>', 'The Witcher Series 2 Confirmed', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-20 15:54:04', '2020-01-20 15:54:04', '', 71, 'http://127.0.0.1/uncategorised/71-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-01-28 13:38:14', '2020-01-28 13:38:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Immigration system will \'put people before passports\' - PM', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2020-01-28 13:38:14', '2020-01-28 13:38:14', '', 99, 'http://127.0.0.1/uncategorised/99-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(108, 1, '2020-01-28 13:38:49', '2020-01-28 13:38:49', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Harry and Meghan: Duke\'s speech on his royal future in full', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-01-28 13:38:49', '2020-01-28 13:38:49', '', 96, 'http://127.0.0.1/uncategorised/96-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-01-28 13:39:06', '2020-01-28 13:39:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Cricket team banned for celebrating', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2020-01-28 13:39:06', '2020-01-28 13:39:06', '', 87, 'http://127.0.0.1/uncategorised/87-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2020-01-28 13:39:21', '2020-01-28 13:39:21', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Keanu Reeves nominated for man of 2019', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2020-01-28 13:39:21', '2020-01-28 13:39:21', '', 78, 'http://127.0.0.1/uncategorised/78-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-01-28 13:39:41', '2020-01-28 13:39:41', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Al Pacino; Looking Back', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-01-28 13:39:41', '2020-01-28 13:39:41', '', 75, 'http://127.0.0.1/uncategorised/75-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-01-28 13:40:12', '2020-01-28 13:40:12', '<p><!--EndFragment--></p>\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'The Witcher Series 2 Confirmed', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-28 13:40:12', '2020-01-28 13:40:12', '', 71, 'http://127.0.0.1/uncategorised/71-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-01-28 13:40:28', '2020-01-28 13:40:28', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Stocks are going down', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-01-28 13:40:28', '2020-01-28 13:40:28', '', 68, 'http://127.0.0.1/uncategorised/68-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2020-01-28 13:40:42', '2020-01-28 13:40:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Rooney is back', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2020-01-28 13:40:42', '2020-01-28 13:40:42', '', 65, 'http://127.0.0.1/uncategorised/65-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2020-01-28 13:40:56', '2020-01-28 13:40:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a varius lectus. Proin sollicitudin magna eget nunc varius, id finibus leo scelerisque. Interdum et malesuada fames ac ante ipsum primis in faucibus. Curabitur semper dolor vitae dui consectetur finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus at nibh laoreet, sodales purus non, facilisis nunc. Duis vel lacinia sem. Ut tincidunt ex at odio maximus ornare. Nulla ullamcorper porta eros, ac maximus diam gravida vulputate. Sed molestie lacus nec ex pulvinar accumsan non at orci. Duis varius lorem vitae metus dictum, ac egestas eros eleifend. Quisque condimentum, tortor quis finibus aliquet, tellus velit porttitor turpis, et viverra massa lectus non leo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nullam eget sagittis libero. Vivamus fermentum ligula quis diam rhoncus, sit amet eleifend nulla malesuada. Donec at quam sit amet lectus maximus hendrerit. In ullamcorper ex mattis diam dictum pulvinar. Cras condimentum ultricies metus eu auctor. Nulla eget libero eu ipsum sagittis bibendum non eu augue. Aenean eu aliquam mi. Maecenas malesuada quam sit amet nibh tempor euismod. Pellentesque ultrices commodo ante, et vestibulum urna vehicula at.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis id tempor quam. Nunc efficitur libero sit amet augue sollicitudin, vel maximus nibh fermentum. Sed sed dignissim augue. Vivamus et libero ut leo suscipit elementum id et lectus. Sed congue fermentum risus, ac volutpat dui egestas id. Sed est lorem, elementum sed dapibus eleifend, semper eget augue. Sed nec dolor augue. Duis vulputate tincidunt justo vel sollicitudin. Cras lorem risus, venenatis eu diam a, blandit blandit velit. In tortor magna, auctor et congue vel, scelerisque sed nulla. Aliquam aliquet interdum nulla. Sed ullamcorper elit at purus semper, in efficitur velit vehicula.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aliquam non erat et augue lobortis tempus in in lorem. Mauris viverra magna a rhoncus imperdiet. Praesent nec sagittis neque, vitae dignissim leo. Fusce tempus sapien ligula, at tristique lectus pellentesque nec. Donec viverra luctus nibh faucibus blandit. Vestibulum porta libero purus, quis tincidunt ex elementum a. In cursus bibendum purus, sed tempus velit convallis in. Vestibulum nec rutrum augue. Ut vitae sodales metus. Quisque aliquet dictum laoreet. Nunc accumsan ultrices ex, sed maximus dolor venenatis a. Vestibulum sagittis ipsum in ultrices molestie.</p>\n<!-- /wp:paragraph -->', 'Great Play From Ronaldo', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2020-01-28 13:40:56', '2020-01-28 13:40:56', '', 63, 'http://127.0.0.1/uncategorised/63-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2020-02-05 10:22:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-05 10:22:28', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/?p=116', 0, 'post', '', 0),
(117, 1, '2020-02-05 11:49:14', '2020-02-05 11:49:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus nulla ante, at ultrices lorem vehicula sed. Vivamus a nibh erat. Integer ac consequat nunc. Curabitur scelerisque sem ut sem molestie, quis blandit velit fermentum. Cras placerat consequat elementum. Proin laoreet dolor eget tristique mattis. Nullam porta in libero et sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut erat eu velit ullamcorper imperdiet id nec ante. Curabitur urna ligula, dictum sed nulla vel, pulvinar viverra mi. Aliquam ullamcorper a diam nec laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis bibendum sagittis nibh sed ullamcorper. Ut fringilla tincidunt molestie. Duis vitae leo tortor. Fusce eget neque scelerisque, viverra eros ut, sodales lectus. Curabitur sodales orci quis ante venenatis, nec dictum lectus dignissim. Etiam id nulla in leo dictum pellentesque nec at erat. Proin feugiat ullamcorper urna, vitae efficitur eros semper id. In ut pretium justo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque enim quam, cursus a quam a, mattis iaculis tortor. Vestibulum finibus, tellus a malesuada pretium, lorem nunc maximus risus, vel viverra arcu enim a metus. In hac habitasse platea dictumst. Aenean facilisis massa quis ullamcorper mollis. Nunc malesuada neque at enim varius tristique. Etiam leo lorem, imperdiet et massa et, malesuada imperdiet sem. Donec in lorem id lorem scelerisque ultricies. Ut mauris tellus, accumsan sit amet semper in, sollicitudin at neque. Nunc vel lacus lorem. Ut a sem vel justo lacinia venenatis eget sed est. Pellentesque vestibulum, elit ut vestibulum pulvinar, magna elit aliquet mi, at congue tellus odio vel orci. Nam dignissim nunc eget nibh porttitor, vel accumsan metus vehicula. Nullam sapien tellus, feugiat vitae tristique vitae, auctor scelerisque ante. Duis nec nisl pellentesque, dictum dui ac, lobortis mauris. Pellentesque quis pulvinar ante.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam non velit in ligula elementum consectetur. Proin id fringilla velit, id commodo dolor. Suspendisse a elit ut velit fringilla fermentum eu venenatis ex. Nunc eros dolor, interdum sed eros eget, vulputate vehicula dolor. Quisque auctor sed nisi fermentum accumsan. Aliquam eleifend euismod enim, ac accumsan neque iaculis sed. Nullam ornare dignissim accumsan. Ut nec sapien mollis, viverra odio eget, pulvinar quam. Vivamus auctor commodo augue vel congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed molestie ex in ante elementum finibus. Phasellus vitae tortor nibh. In dapibus faucibus lacus, quis vestibulum metus semper a. Pellentesque maximus augue vitae nunc commodo viverra eu sed orci. Curabitur id ultrices nunc. Duis nisi lorem, efficitur quis dui vel, laoreet hendrerit nisl. Cras nec viverra tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque viverra nisl ut nisl dictum bibendum. Cras quis consectetur nunc. Nullam et diam eget tortor convallis molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas consequat dignissim leo, eu sagittis purus varius ac.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-02-05 14:21:53', '2020-02-05 14:21:53', '', 0, 'http://127.0.0.1/?page_id=117', 0, 'page', '', 0),
(118, 1, '2020-02-05 11:49:14', '2020-02-05 11:49:14', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2020-02-05 11:49:14', '2020-02-05 11:49:14', '', 0, 'http://127.0.0.1/uncategorised/118/', 0, 'nav_menu_item', '', 0),
(119, 1, '2020-02-05 11:49:14', '2020-02-05 11:49:14', '<!-- wp:paragraph -->\n<p>sdfdsfsdfsdfsdf</p>\n<!-- /wp:paragraph -->', 'about us', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-02-05 11:49:14', '2020-02-05 11:49:14', '', 117, 'http://127.0.0.1/uncategorised/117-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2020-02-05 13:02:16', '2020-02-05 13:02:16', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus nulla ante, at ultrices lorem vehicula sed. Vivamus a nibh erat. Integer ac consequat nunc. Curabitur scelerisque sem ut sem molestie, quis blandit velit fermentum. Cras placerat consequat elementum. Proin laoreet dolor eget tristique mattis. Nullam porta in libero et sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut erat eu velit ullamcorper imperdiet id nec ante. Curabitur urna ligula, dictum sed nulla vel, pulvinar viverra mi. Aliquam ullamcorper a diam nec laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis bibendum sagittis nibh sed ullamcorper. Ut fringilla tincidunt molestie. Duis vitae leo tortor. Fusce eget neque scelerisque, viverra eros ut, sodales lectus. Curabitur sodales orci quis ante venenatis, nec dictum lectus dignissim. Etiam id nulla in leo dictum pellentesque nec at erat. Proin feugiat ullamcorper urna, vitae efficitur eros semper id. In ut pretium justo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque enim quam, cursus a quam a, mattis iaculis tortor. Vestibulum finibus, tellus a malesuada pretium, lorem nunc maximus risus, vel viverra arcu enim a metus. In hac habitasse platea dictumst. Aenean facilisis massa quis ullamcorper mollis. Nunc malesuada neque at enim varius tristique. Etiam leo lorem, imperdiet et massa et, malesuada imperdiet sem. Donec in lorem id lorem scelerisque ultricies. Ut mauris tellus, accumsan sit amet semper in, sollicitudin at neque. Nunc vel lacus lorem. Ut a sem vel justo lacinia venenatis eget sed est. Pellentesque vestibulum, elit ut vestibulum pulvinar, magna elit aliquet mi, at congue tellus odio vel orci. Nam dignissim nunc eget nibh porttitor, vel accumsan metus vehicula. Nullam sapien tellus, feugiat vitae tristique vitae, auctor scelerisque ante. Duis nec nisl pellentesque, dictum dui ac, lobortis mauris. Pellentesque quis pulvinar ante.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam non velit in ligula elementum consectetur. Proin id fringilla velit, id commodo dolor. Suspendisse a elit ut velit fringilla fermentum eu venenatis ex. Nunc eros dolor, interdum sed eros eget, vulputate vehicula dolor. Quisque auctor sed nisi fermentum accumsan. Aliquam eleifend euismod enim, ac accumsan neque iaculis sed. Nullam ornare dignissim accumsan. Ut nec sapien mollis, viverra odio eget, pulvinar quam. Vivamus auctor commodo augue vel congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed molestie ex in ante elementum finibus. Phasellus vitae tortor nibh. In dapibus faucibus lacus, quis vestibulum metus semper a. Pellentesque maximus augue vitae nunc commodo viverra eu sed orci. Curabitur id ultrices nunc. Duis nisi lorem, efficitur quis dui vel, laoreet hendrerit nisl. Cras nec viverra tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque viverra nisl ut nisl dictum bibendum. Cras quis consectetur nunc. Nullam et diam eget tortor convallis molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas consequat dignissim leo, eu sagittis purus varius ac.</p>\n<!-- /wp:paragraph -->', 'About us', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2020-02-05 13:02:16', '2020-02-05 13:02:16', '', 117, 'http://127.0.0.1/uncategorised/117-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2020-02-05 14:14:36', '2020-02-05 14:14:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla luctus venenatis lectus et suscipit. Nulla sed diam vel ex congue pharetra pellentesque in neque. Nunc porttitor, sem faucibus fermentum fringilla, purus velit eleifend odio, non interdum quam quam eget tortor. Duis eu mi lorem. Proin semper dui vel velit sodales consectetur. Mauris faucibus convallis diam in ullamcorper. Nunc gravida tellus a ipsum cursus, in ornare nunc lacinia. In hac habitasse platea dictumst. Proin et mauris interdum, viverra turpis et, vehicula dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean orci arcu, fringilla quis sollicitudin sed, placerat ut dolor. Integer egestas, nibh ut euismod dapibus, dolor risus porta lorem, congue rutrum mi ex id tortor. Sed lectus tellus, aliquam id nisl a, cursus dignissim augue. Curabitur eu mollis nisl, non ullamcorper nisl.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus tortor nunc, accumsan et mollis sit amet, congue vel mi. Vivamus euismod pulvinar ligula, sed vehicula metus volutpat ac. Nullam dictum ultricies ligula, id aliquet erat tristique at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec consequat eros ultricies, commodo magna at, rutrum mauris. Morbi justo magna, efficitur vel euismod eu, iaculis eu metus. Nullam sem metus, vestibulum sed lorem et, mattis commodo ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis eget turpis pellentesque tellus consequat tempus. Duis quis fringilla massa. Ut ante lorem, aliquam eget mattis vel, rhoncus id arcu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum sit amet massa eget libero euismod consequat. Nunc at mi ut eros aliquet volutpat. Donec posuere dignissim turpis, sit amet tincidunt nulla. Phasellus pretium ex ut dapibus semper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eget hendrerit elit, vitae vestibulum justo. Morbi mattis, libero quis pretium semper, arcu purus feugiat quam, vel gravida nisi quam nec dui. Nullam luctus mauris vitae commodo faucibus. Quisque in ligula augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras sed leo ac ante pellentesque volutpat. Aliquam a efficitur ante. Ut eget massa a urna dapibus blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean fringilla blandit magna eget dictum. Maecenas convallis, diam sed mollis lobortis, eros leo bibendum enim, a ullamcorper mauris elit sed erat. Praesent vel rhoncus elit. Maecenas molestie massa in tristique laoreet. Morbi maximus interdum tellus eget ultricies. Cras lobortis consequat massa, vitae porta nisi. Mauris posuere arcu nec orci placerat, et imperdiet odio porta. Aenean ultricies non mi et vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra egestas eros ut pharetra. Vivamus ac cursus odio. Quisque bibendum, felis eu cursus bibendum, ipsum mi egestas mi, sed efficitur leo est a metus. Morbi suscipit pharetra tellus vitae tempor. Vivamus vestibulum consequat lectus tempor interdum. Nunc enim enim, laoreet sed dolor id, venenatis vulputate orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc at dolor ut lorem lobortis consectetur. Ut maximus tristique leo a elementum. Nulla nisl magna, vulputate in molestie vitae, feugiat vitae urna. Proin nec leo quis sem vestibulum rhoncus. Ut tincidunt magna id lacus commodo ultrices. Proin mauris tellus, consectetur et ornare in, auctor at odio. Integer mollis nibh vel elit lacinia lobortis. Nullam congue lectus vitae lorem commodo, pretium imperdiet risus sodales. Nulla facilisi.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-02-05 14:21:58', '2020-02-05 14:21:58', '', 0, 'http://127.0.0.1/?page_id=121', 0, 'page', '', 0),
(122, 1, '2020-02-05 14:14:36', '2020-02-05 14:14:36', ' ', '', '', 'publish', 'closed', 'closed', '', '122', '', '', '2020-02-05 14:14:36', '2020-02-05 14:14:36', '', 0, 'http://127.0.0.1/uncategorised/122/', 2, 'nav_menu_item', '', 0),
(123, 1, '2020-02-05 14:14:36', '2020-02-05 14:14:36', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla luctus venenatis lectus et suscipit. Nulla sed diam vel ex congue pharetra pellentesque in neque. Nunc porttitor, sem faucibus fermentum fringilla, purus velit eleifend odio, non interdum quam quam eget tortor. Duis eu mi lorem. Proin semper dui vel velit sodales consectetur. Mauris faucibus convallis diam in ullamcorper. Nunc gravida tellus a ipsum cursus, in ornare nunc lacinia. In hac habitasse platea dictumst. Proin et mauris interdum, viverra turpis et, vehicula dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean orci arcu, fringilla quis sollicitudin sed, placerat ut dolor. Integer egestas, nibh ut euismod dapibus, dolor risus porta lorem, congue rutrum mi ex id tortor. Sed lectus tellus, aliquam id nisl a, cursus dignissim augue. Curabitur eu mollis nisl, non ullamcorper nisl.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus tortor nunc, accumsan et mollis sit amet, congue vel mi. Vivamus euismod pulvinar ligula, sed vehicula metus volutpat ac. Nullam dictum ultricies ligula, id aliquet erat tristique at. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec consequat eros ultricies, commodo magna at, rutrum mauris. Morbi justo magna, efficitur vel euismod eu, iaculis eu metus. Nullam sem metus, vestibulum sed lorem et, mattis commodo ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis eget turpis pellentesque tellus consequat tempus. Duis quis fringilla massa. Ut ante lorem, aliquam eget mattis vel, rhoncus id arcu.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum sit amet massa eget libero euismod consequat. Nunc at mi ut eros aliquet volutpat. Donec posuere dignissim turpis, sit amet tincidunt nulla. Phasellus pretium ex ut dapibus semper. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus eget hendrerit elit, vitae vestibulum justo. Morbi mattis, libero quis pretium semper, arcu purus feugiat quam, vel gravida nisi quam nec dui. Nullam luctus mauris vitae commodo faucibus. Quisque in ligula augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Cras sed leo ac ante pellentesque volutpat. Aliquam a efficitur ante. Ut eget massa a urna dapibus blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean fringilla blandit magna eget dictum. Maecenas convallis, diam sed mollis lobortis, eros leo bibendum enim, a ullamcorper mauris elit sed erat. Praesent vel rhoncus elit. Maecenas molestie massa in tristique laoreet. Morbi maximus interdum tellus eget ultricies. Cras lobortis consequat massa, vitae porta nisi. Mauris posuere arcu nec orci placerat, et imperdiet odio porta. Aenean ultricies non mi et vulputate. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra egestas eros ut pharetra. Vivamus ac cursus odio. Quisque bibendum, felis eu cursus bibendum, ipsum mi egestas mi, sed efficitur leo est a metus. Morbi suscipit pharetra tellus vitae tempor. Vivamus vestibulum consequat lectus tempor interdum. Nunc enim enim, laoreet sed dolor id, venenatis vulputate orci.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nunc at dolor ut lorem lobortis consectetur. Ut maximus tristique leo a elementum. Nulla nisl magna, vulputate in molestie vitae, feugiat vitae urna. Proin nec leo quis sem vestibulum rhoncus. Ut tincidunt magna id lacus commodo ultrices. Proin mauris tellus, consectetur et ornare in, auctor at odio. Integer mollis nibh vel elit lacinia lobortis. Nullam congue lectus vitae lorem commodo, pretium imperdiet risus sodales. Nulla facilisi.</p>\n<!-- /wp:paragraph -->', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '121-revision-v1', '', '', '2020-02-05 14:14:36', '2020-02-05 14:14:36', '', 121, 'http://127.0.0.1/uncategorised/121-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2020-02-05 15:24:06', '2020-02-05 15:24:06', '<!-- wp:paragraph -->\n<p>lorem</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus nulla ante, at ultrices lorem vehicula sed. Vivamus a nibh erat. Integer ac consequat nunc. Curabitur scelerisque sem ut sem molestie, quis blandit velit fermentum. Cras placerat consequat elementum. Proin laoreet dolor eget tristique mattis. Nullam porta in libero et sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut erat eu velit ullamcorper imperdiet id nec ante. Curabitur urna ligula, dictum sed nulla vel, pulvinar viverra mi. Aliquam ullamcorper a diam nec laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis bibendum sagittis nibh sed ullamcorper. Ut fringilla tincidunt molestie. Duis vitae leo tortor. Fusce eget neque scelerisque, viverra eros ut, sodales lectus. Curabitur sodales orci quis ante venenatis, nec dictum lectus dignissim. Etiam id nulla in leo dictum pellentesque nec at erat. Proin feugiat ullamcorper urna, vitae efficitur eros semper id. In ut pretium justo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque enim quam, cursus a quam a, mattis iaculis tortor. Vestibulum finibus, tellus a malesuada pretium, lorem nunc maximus risus, vel viverra arcu enim a metus. In hac habitasse platea dictumst. Aenean facilisis massa quis ullamcorper mollis. Nunc malesuada neque at enim varius tristique. Etiam leo lorem, imperdiet et massa et, malesuada imperdiet sem. Donec in lorem id lorem scelerisque ultricies. Ut mauris tellus, accumsan sit amet semper in, sollicitudin at neque. Nunc vel lacus lorem. Ut a sem vel justo lacinia venenatis eget sed est. Pellentesque vestibulum, elit ut vestibulum pulvinar, magna elit aliquet mi, at congue tellus odio vel orci. Nam dignissim nunc eget nibh porttitor, vel accumsan metus vehicula. Nullam sapien tellus, feugiat vitae tristique vitae, auctor scelerisque ante. Duis nec nisl pellentesque, dictum dui ac, lobortis mauris. Pellentesque quis pulvinar ante.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam non velit in ligula elementum consectetur. Proin id fringilla velit, id commodo dolor. Suspendisse a elit ut velit fringilla fermentum eu venenatis ex. Nunc eros dolor, interdum sed eros eget, vulputate vehicula dolor. Quisque auctor sed nisi fermentum accumsan. Aliquam eleifend euismod enim, ac accumsan neque iaculis sed. Nullam ornare dignissim accumsan. Ut nec sapien mollis, viverra odio eget, pulvinar quam. Vivamus auctor commodo augue vel congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed molestie ex in ante elementum finibus. Phasellus vitae tortor nibh. In dapibus faucibus lacus, quis vestibulum metus semper a. Pellentesque maximus augue vitae nunc commodo viverra eu sed orci. Curabitur id ultrices nunc. Duis nisi lorem, efficitur quis dui vel, laoreet hendrerit nisl. Cras nec viverra tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque viverra nisl ut nisl dictum bibendum. Cras quis consectetur nunc. Nullam et diam eget tortor convallis molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas consequat dignissim leo, eu sagittis purus varius ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Enter our competition', '', 'publish', 'closed', 'closed', '', 'enter-our-competition', '', '', '2020-02-05 15:24:07', '2020-02-05 15:24:07', '', 0, 'http://127.0.0.1/?page_id=124', 0, 'page', '', 0),
(125, 1, '2020-02-05 15:24:06', '2020-02-05 15:24:06', ' ', '', '', 'publish', 'closed', 'closed', '', '125', '', '', '2020-02-05 15:24:06', '2020-02-05 15:24:06', '', 0, 'http://127.0.0.1/uncategorised/125/', 3, 'nav_menu_item', '', 0),
(126, 1, '2020-02-05 15:24:06', '2020-02-05 15:24:06', '<!-- wp:paragraph -->\n<p>lorem</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rhoncus nulla ante, at ultrices lorem vehicula sed. Vivamus a nibh erat. Integer ac consequat nunc. Curabitur scelerisque sem ut sem molestie, quis blandit velit fermentum. Cras placerat consequat elementum. Proin laoreet dolor eget tristique mattis. Nullam porta in libero et sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut erat eu velit ullamcorper imperdiet id nec ante. Curabitur urna ligula, dictum sed nulla vel, pulvinar viverra mi. Aliquam ullamcorper a diam nec laoreet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis bibendum sagittis nibh sed ullamcorper. Ut fringilla tincidunt molestie. Duis vitae leo tortor. Fusce eget neque scelerisque, viverra eros ut, sodales lectus. Curabitur sodales orci quis ante venenatis, nec dictum lectus dignissim. Etiam id nulla in leo dictum pellentesque nec at erat. Proin feugiat ullamcorper urna, vitae efficitur eros semper id. In ut pretium justo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque enim quam, cursus a quam a, mattis iaculis tortor. Vestibulum finibus, tellus a malesuada pretium, lorem nunc maximus risus, vel viverra arcu enim a metus. In hac habitasse platea dictumst. Aenean facilisis massa quis ullamcorper mollis. Nunc malesuada neque at enim varius tristique. Etiam leo lorem, imperdiet et massa et, malesuada imperdiet sem. Donec in lorem id lorem scelerisque ultricies. Ut mauris tellus, accumsan sit amet semper in, sollicitudin at neque. Nunc vel lacus lorem. Ut a sem vel justo lacinia venenatis eget sed est. Pellentesque vestibulum, elit ut vestibulum pulvinar, magna elit aliquet mi, at congue tellus odio vel orci. Nam dignissim nunc eget nibh porttitor, vel accumsan metus vehicula. Nullam sapien tellus, feugiat vitae tristique vitae, auctor scelerisque ante. Duis nec nisl pellentesque, dictum dui ac, lobortis mauris. Pellentesque quis pulvinar ante.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam non velit in ligula elementum consectetur. Proin id fringilla velit, id commodo dolor. Suspendisse a elit ut velit fringilla fermentum eu venenatis ex. Nunc eros dolor, interdum sed eros eget, vulputate vehicula dolor. Quisque auctor sed nisi fermentum accumsan. Aliquam eleifend euismod enim, ac accumsan neque iaculis sed. Nullam ornare dignissim accumsan. Ut nec sapien mollis, viverra odio eget, pulvinar quam. Vivamus auctor commodo augue vel congue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sed molestie ex in ante elementum finibus. Phasellus vitae tortor nibh. In dapibus faucibus lacus, quis vestibulum metus semper a. Pellentesque maximus augue vitae nunc commodo viverra eu sed orci. Curabitur id ultrices nunc. Duis nisi lorem, efficitur quis dui vel, laoreet hendrerit nisl. Cras nec viverra tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque viverra nisl ut nisl dictum bibendum. Cras quis consectetur nunc. Nullam et diam eget tortor convallis molestie. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas consequat dignissim leo, eu sagittis purus varius ac.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Enter our competition', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2020-02-05 15:24:06', '2020-02-05 15:24:06', '', 124, 'http://127.0.0.1/uncategorised/124-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(5, 'Main', 'main', 0),
(6, 'Sports News', 'sports-news', 0),
(7, 'World News', 'world-news', 0),
(8, 'Entertainment', 'entertainment-news', 0),
(9, 'Football News', 'football-news', 0),
(10, 'Cricket News', 'cricket-news', 0),
(11, 'Movie News', 'movie-news', 0),
(12, 'TV News', 'tv-news', 0),
(13, 'Financial news', 'financial-news', 0),
(14, 'Political News', 'political-news', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(63, 9, 0),
(65, 9, 0),
(68, 13, 0),
(71, 12, 0),
(75, 11, 0),
(78, 11, 0),
(87, 10, 0),
(96, 14, 0),
(99, 14, 0),
(118, 5, 0),
(122, 5, 0),
(125, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(5, 5, 'nav_menu', '', 0, 3),
(6, 6, 'category', 'This is a custom category to display all sports posts', 0, 0),
(7, 7, 'category', 'This is the category which illustrates all world news', 0, 0),
(8, 8, 'category', 'This is a category for all entertainment news', 0, 0),
(9, 9, 'category', 'This is the category for football news', 6, 2),
(10, 10, 'category', 'This is the category for sports news', 6, 1),
(11, 11, 'category', 'The category for movie news', 8, 2),
(12, 12, 'category', 'The category for tv news', 8, 1),
(13, 13, 'category', 'the category for financial news', 7, 1),
(14, 14, 'category', 'the category for political news', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:15:{s:64:\"2967f39cda464ec8ab36c6c28cc9150aa9da272650112187927cbb079e6485b1\";a:4:{s:10:\"expiration\";i:1581070947;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580898147;}s:64:\"33845977dbc6536357aca053c8c6b7906b6f12683243e20fca5cc46e2b968cec\";a:4:{s:10:\"expiration\";i:1581076137;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580903337;}s:64:\"d1489c26a3f0ccaf7b0f78572703b072804e4e48fe8b4794ae8539352e3297c9\";a:4:{s:10:\"expiration\";i:1581077971;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580905171;}s:64:\"f2379b52e3feab98d858afd54106b085223c8c0d9dadc30af00262f6c0189885\";a:4:{s:10:\"expiration\";i:1581080491;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580907691;}s:64:\"bbc84b790a8ec4fe0b115cf7d079028c3ec9bc248b059a5e12e5342dc82f2a9e\";a:4:{s:10:\"expiration\";i:1581080492;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580907692;}s:64:\"30a94e92c12eb8aefdaaea6cc15fe1bce39931a19142a84464dcfdea82f9e256\";a:4:{s:10:\"expiration\";i:1581084832;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580912032;}s:64:\"7ded0ae8ee1c37451f2fe5ca61a04b85bd8479e5f87dfef87a486b56be566671\";a:4:{s:10:\"expiration\";i:1581087106;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580914306;}s:64:\"912cfcb0847aefa27d16ce411f4c600e6dd1b1f12d83a03efb629dbdce43c007\";a:4:{s:10:\"expiration\";i:1581087108;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580914308;}s:64:\"f04e541a98428927f39eea910539845358bdc28e11309d54c33bc3614513cf64\";a:4:{s:10:\"expiration\";i:1581089005;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580916205;}s:64:\"56f771c8ae4815bf081da99902c1c69f96bf77216681040143de740666c96869\";a:4:{s:10:\"expiration\";i:1581089007;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580916207;}s:64:\"d504fb189aa98ad7d0599f3804946d0e0a79263aceb67f37a1c5c3ac15a8c4fb\";a:4:{s:10:\"expiration\";i:1581159070;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580986270;}s:64:\"1fdee20bd3c8c71989e51fe3e901dbeb87aa4481e4e2b0102e1f21831aecf25e\";a:4:{s:10:\"expiration\";i:1581160503;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580987703;}s:64:\"c369f08e83f2fd459872b6e4312e72e27739156d22ecf6407bd70bf26e72dd4f\";a:4:{s:10:\"expiration\";i:1581161824;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580989024;}s:64:\"b26bf98b00263fe418152556125c651f7ba921652fe9184807358ae197bff514\";a:4:{s:10:\"expiration\";i:1581162671;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580989871;}s:64:\"5957d82c984f753149c66713e6c4878b2c67eb81bd8d7cc735dc814e790f57e6\";a:4:{s:10:\"expiration\";i:1581162827;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1580990027;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '116'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'enable_custom_fields', '1'),
(20, 1, 'edit_category_per_page', '20'),
(21, 1, 'nav_menu_recently_edited', '5'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'closedpostboxes_post', 'a:0:{}'),
(25, 1, 'metaboxhidden_post', 'a:0:{}'),
(26, 2, 'nickname', 'Robbie'),
(27, 2, 'first_name', 'Robbie'),
(28, 2, 'last_name', 'C'),
(29, 2, 'description', ''),
(30, 2, 'rich_editing', 'true'),
(31, 2, 'syntax_highlighting', 'true'),
(32, 2, 'comment_shortcuts', 'false'),
(33, 2, 'admin_color', 'fresh'),
(34, 2, 'use_ssl', '0'),
(35, 2, 'show_admin_bar_front', 'true'),
(36, 2, 'locale', ''),
(37, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(38, 2, 'wp_user_level', '7'),
(39, 2, 'dismissed_wp_pointers', ''),
(41, 2, 'wp_dashboard_quick_press_last_post_id', '73'),
(42, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(43, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:\"postcustom\";}'),
(44, 1, 'metaboxhidden_page', 'a:0:{}'),
(45, 3, 'nickname', 'Irn_Bru_Rabbo'),
(46, 3, 'first_name', 'tony'),
(47, 3, 'last_name', 'hayers'),
(48, 3, 'description', ''),
(49, 3, 'rich_editing', 'true'),
(50, 3, 'syntax_highlighting', 'true'),
(51, 3, 'comment_shortcuts', 'false'),
(52, 3, 'admin_color', 'fresh'),
(53, 3, 'use_ssl', '0'),
(54, 3, 'show_admin_bar_front', 'true'),
(55, 3, 'locale', ''),
(56, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(57, 3, 'wp_user_level', '10'),
(58, 3, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BLaNU2d0VJT6xA.m8O9QmzEvwIfpys1', 'admin', 'a@a.com', '', '2019-11-06 12:59:52', '', 0, 'admin'),
(2, 'Robbie', '$P$Bxur03Ljlad5jqVHyLwpdNmNQ5rthK/', 'robbie', 'new@new.com', '', '2020-01-14 11:40:25', '', 0, 'Robbie C'),
(3, 'Irn_Bru_Rabbo', '$P$BoIS..Zeid.8iqKzJzcMltUqpQi95J/', 'irn_bru_rabbo', 'hello@bacon.com', '', '2020-02-06 10:52:47', '1580986368:$P$BLPIhQuOIUyln2QvOqGzNUBntIrRV.0', 0, 'tony hayers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=566;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `wp1`
--
CREATE DATABASE IF NOT EXISTS `wp1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wp1`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
