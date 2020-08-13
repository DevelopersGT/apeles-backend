-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2020 at 11:04 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vipspm_13`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_03_02_125050_create_password_resets_table', 1),
(2, '2019_03_04_060910_create_users_table', 1),
(3, '2019_03_11_055248_create_roles_table', 1),
(4, '2019_03_12_082413_create_departments_table', 1),
(5, '2019_03_28_080744_create_department_role_table', 1),
(6, '2019_03_28_125110_create_mailboxs_table', 1),
(7, '2019_03_29_045017_create_mailboxs_attachment_table', 1),
(8, '2019_03_30_053414_create_menu_table', 1),
(9, '2019_04_08_061711_create_countries_table', 1),
(10, '2019_04_08_061732_create_languages_table', 1),
(11, '2019_04_08_061750_create_locales_table', 1),
(12, '2019_04_08_062349_create_currency_table', 1),
(13, '2019_04_09_063535_create_department_role_menu_table', 1),
(14, '2019_04_09_074557_create_files_table', 1),
(15, '2019_04_09_075257_create_filebrowser_table', 1),
(16, '2019_04_12_121310_create_user_role_department_table', 1),
(17, '2019_04_16_045924_create_announcements_table', 1),
(18, '2019_04_16_065823_create_holidays_table', 1),
(19, '2019_04_16_074824_create_meetings_table', 1),
(20, '2019_04_16_074836_create_meeting_member_table', 1),
(21, '2019_04_19_054404_create_user_activities_table', 1),
(22, '2019_04_19_063045_create_email_group_table', 1),
(23, '2019_04_19_063114_create_email_template_table', 1),
(24, '2019_04_20_045426_create_team_table', 1),
(25, '2019_04_20_045438_create_team_members_table', 1),
(26, '2019_04_26_051327_create_clients_table', 1),
(27, '2019_04_27_071955_create_settings_table', 1),
(28, '2019_04_29_233943_create_form_table', 1),
(29, '2019_04_29_233948_create_customfields_table', 1),
(30, '2019_05_02_233217_create_projects_table', 1),
(31, '2019_05_02_233608_create_project_user_table', 1),
(32, '2019_05_03_224431_create_project_comments_table', 1),
(33, '2019_05_04_002218_create_project_attachments_table', 1),
(34, '2019_05_04_024503_create_tasks_table', 1),
(35, '2019_05_04_024539_create_task_user_table', 1),
(36, '2019_05_09_210418_create_task_comments_table', 1),
(37, '2019_05_09_234326_create_translations_table', 1),
(38, '2019_05_10_034825_create_database_backup_table', 1),
(39, '2019_05_10_222358_create_task_attachments_table', 1),
(40, '2019_05_12_203806_create_defects_table', 1),
(41, '2019_05_12_205620_create_defect_user_table', 1),
(42, '2019_05_12_213505_create_defect_history_table', 1),
(43, '2019_05_15_213459_create_defect_comments_table', 1),
(44, '2019_05_15_231520_create_defect_attachments_table', 1),
(45, '2019_05_16_233252_create_knowledge_base_categories_table', 1),
(46, '2019_05_16_233452_create_knowledge_base_articles_table', 1),
(47, '2019_05_17_224924_create_project_planner_sprints_table', 1),
(48, '2019_05_17_225011_create_project_planner_sprint_members_table', 1),
(49, '2019_05_17_231408_create_project_sprint_tasks_table', 1),
(50, '2019_05_17_231416_create_project_sprint_task_members_table', 1),
(51, '2019_05_19_214115_create_incidents_table', 1),
(52, '2019_05_19_214751_create_incident_user_table', 1),
(53, '2019_05_19_214834_create_incident_history_table', 1),
(54, '2019_05_19_214924_create_incident_attachments_table', 1),
(55, '2019_05_19_214953_create_incident_comments_table', 1),
(56, '2019_07_31_104949_create_jobs_table', 1),
(57, '2020_02_06_182202_create_providers_table', 1),
(58, '2020_02_06_182238_create_appointment_table', 1),
(59, '2020_02_15_123556_create_modules_table', 1),
(60, '2020_02_15_160826_create_timesheets_table', 1),
(61, '2020_03_04_124408_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_announcements`
--

CREATE TABLE `vipspm_announcements` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=Unpublish,1=Publish,2=Completed',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `all_client` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=None,1=All Client',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_appointment`
--

CREATE TABLE `vipspm_appointment` (
  `id` int(10) UNSIGNED NOT NULL,
  `generated_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Used for requester',
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `provider_id` int(10) UNSIGNED NOT NULL,
  `attendees` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date_time` datetime NOT NULL,
  `end_date_time` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=Reserved,2=Confirmed,3=Finished,4=Canceled',
  `send_confirmation` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_clients`
--

CREATE TABLE `vipspm_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `company_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosting_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `host_port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_countries`
--

CREATE TABLE `vipspm_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_countries`
--

INSERT INTO `vipspm_countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Aringland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos(Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Democratic Republic'),
(52, 'Cook Islands'),
(53, 'Costa Rica'),
(54, 'Ivory Coast(Ivory Coast)'),
(55, 'Croatia(Hrvatska)'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czech Republic'),
(59, 'Denmark'),
(60, 'Djibouti'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'East Timor'),
(64, 'Ecuador'),
(65, 'Egypt'),
(66, 'El Salvador'),
(67, 'Equatorial Guinea'),
(68, 'Eritrea'),
(69, 'Estonia'),
(70, 'Ethiopia'),
(71, 'Falkland Islands'),
(72, 'Faroe Islands'),
(73, 'Fiji'),
(74, 'Finland'),
(75, 'France'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Gabon'),
(80, 'Gambia'),
(81, 'Georgia'),
(82, 'Germany'),
(83, 'Ghana'),
(84, 'Gibraltar'),
(85, 'Greece'),
(86, 'Greenland'),
(87, 'Grenada'),
(88, 'Guadeloupe'),
(89, 'Guam'),
(90, 'Guatemala'),
(91, 'Guinea'),
(92, 'Guinea-Bissau'),
(93, 'Guyana'),
(94, 'Haiti'),
(95, 'Heard and McDonald Islands'),
(96, 'Honduras'),
(97, 'Hong Kong'),
(98, 'Hungary'),
(99, 'Iceland'),
(100, 'India'),
(101, 'Indonesia'),
(102, 'Iran'),
(103, 'Iraq'),
(104, 'Ireland'),
(105, 'Israel'),
(106, 'Italy'),
(107, 'Jamaica'),
(108, 'Japan'),
(109, 'Jordan'),
(110, 'Kazakhstan'),
(111, 'Kenya'),
(112, 'Kiribati'),
(113, 'Korea (north)'),
(114, 'Korea (south)'),
(115, 'Kuwait'),
(116, 'Kyrgyzstan'),
(117, 'Lao People\'s Democratic Republic'),
(118, 'Latvia'),
(119, 'Lebanon'),
(120, 'Lesotho'),
(121, 'Liberia'),
(122, 'Libyan Arab Jamahiriya'),
(123, 'Liechtenstein'),
(124, 'Lithuania'),
(125, 'Luxembourg'),
(126, 'Macao'),
(127, 'Macedonia'),
(128, 'Madagascar'),
(129, 'Malawi'),
(130, 'Malaysia'),
(131, 'Maldives'),
(132, 'Mali'),
(133, 'Malta'),
(134, 'Marshall Islands'),
(135, 'Martinique'),
(136, 'Mauritania'),
(137, 'Mauritius'),
(138, 'Mayotte'),
(139, 'Mexico'),
(140, 'Micronesia'),
(141, 'Moldova'),
(142, 'Monaco'),
(143, 'Mongolia'),
(144, 'Montserrat'),
(145, 'Morocco'),
(146, 'Mozambique'),
(147, 'Myanmar'),
(148, 'Namibia'),
(149, 'Nauru'),
(150, 'Nepal'),
(151, 'Netherlands'),
(152, 'Netherlands Antilles'),
(153, 'New Caledonia'),
(154, 'New Zealand'),
(155, 'Nicaragua'),
(156, 'Niger'),
(157, 'Nigeria'),
(158, 'Niue'),
(159, 'Norfolk Island'),
(160, 'Northern Mariana Islands'),
(161, 'Norway'),
(162, 'Oman'),
(163, 'Pakistan'),
(164, 'Palau'),
(165, 'Palestinian Territories'),
(166, 'Panama'),
(167, 'Papua New Guinea'),
(168, 'Paraguay'),
(169, 'Peru'),
(170, 'Philippines'),
(171, 'Pitcairn'),
(172, 'Poland'),
(173, 'Portugal'),
(174, 'Puerto Rico'),
(175, 'Qatar'),
(176, 'Runion'),
(177, 'Romania'),
(178, 'Russian Federation'),
(179, 'Rwanda'),
(180, 'Saint Helena'),
(181, 'Saint Kitts and Nevis'),
(182, 'Saint Lucia'),
(183, 'Saint Pierre and Miquelon'),
(184, 'Saint Vincent and the Grenadines'),
(185, 'Samoa'),
(186, 'San Marino'),
(187, 'Sao Tome and Principe'),
(188, 'Saudi Arabia'),
(189, 'Senegal'),
(190, 'Serbia and Montenegro'),
(191, 'Seychelles'),
(192, 'Sierra Leone'),
(193, 'Singapore'),
(194, 'Slovakia'),
(195, 'Slovenia'),
(196, 'Solomon Islands'),
(197, 'Somalia'),
(198, 'South Africa'),
(199, 'South Georgia and the South Sandwich Islands'),
(200, 'Spain'),
(201, 'Sri Lanka'),
(202, 'Sudan'),
(203, 'Suriname'),
(204, 'Svalbard and Jan Mayen Islands'),
(205, 'Swaziland'),
(206, 'Sweden'),
(207, 'Switzerland'),
(208, 'Syria'),
(209, 'Taiwan'),
(210, 'Tajikistan'),
(211, 'Tanzania'),
(212, 'Thailand'),
(213, 'Togo'),
(214, 'Tokelau'),
(215, 'Tonga'),
(216, 'Trinidad and Tobago'),
(217, 'Tunisia'),
(218, 'Turkey'),
(219, 'Turkmenistan'),
(220, 'Turks and Caicos Islands'),
(221, 'Tuvalu'),
(222, 'Uganda'),
(223, 'Ukraine'),
(224, 'United Arab Emirates'),
(225, 'United Kingdom'),
(226, 'United States of America'),
(227, 'Uruguay'),
(228, 'Uzbekistan'),
(229, 'Vanuatu'),
(230, 'Vatican City'),
(231, 'Venezuela'),
(232, 'Vietnam'),
(233, 'Virgin Islands (British)'),
(234, 'Virgin Islands (US)'),
(235, 'Wallis and Futuna Islands'),
(236, 'Western Sahara'),
(237, 'Yemen'),
(238, 'Zaire'),
(239, 'Zambia'),
(240, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_currency`
--

CREATE TABLE `vipspm_currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_currency`
--

INSERT INTO `vipspm_currency` (`id`, `code`, `name`, `symbol`) VALUES
(1, 'AUD', 'Australian Dollar', '$'),
(2, 'BAN', 'Bangladesh', 'BDT'),
(3, 'BRL', 'Brazilian Real', 'R$'),
(4, 'CAD', 'Canadian Dollar', '$'),
(5, 'CHF', 'Swiss Franc', 'Fr'),
(6, 'CLP', 'Chilean Peso', '$'),
(7, 'CNY', 'Chinese Yuan', '?'),
(8, 'CZK', 'Czech Koruna', 'K??'),
(9, 'DKK', 'Danish Krone', 'kr'),
(10, 'EUR', 'Euro', '?'),
(11, 'GBP', 'British Pound', '?'),
(12, 'HKD', 'Hong Kong Dollar', '$'),
(13, 'HUF', 'Hungarian Forint', 'Ft'),
(14, 'IDR', 'Indonesian Rupiah', 'Rp'),
(15, 'ILS', 'Israeli New Shekel', '?'),
(16, 'INR', 'Indian Rupee', 'INR'),
(17, 'JPY', 'Japanese Yen', '?'),
(18, 'KRW', 'Korean Won', '?'),
(19, 'MXN', 'Mexican Peso', '$'),
(20, 'MYR', 'Malaysian Ringgit', 'RM'),
(21, 'NOK', 'Norwegian Krone', 'kr'),
(22, 'NZD', 'New Zealand Dollar', '$'),
(23, 'PHP', 'Philippine Peso', '?'),
(24, 'PKR', 'Pakistan Rupee', '?'),
(25, 'PLN', 'Polish Zloty', 'zl'),
(26, 'RUB', 'Russian Ruble', '?'),
(27, 'SEK', 'Swedish Krona', 'kr'),
(28, 'SGD', 'Singapore Dollar', '$'),
(29, 'THB', 'Thai Baht', '?'),
(30, 'TRY', 'Turkish Lira', '?'),
(31, 'TWD', 'Taiwan Dollar', '$'),
(32, 'USD', 'US Dollar', '$'),
(33, 'VEF', 'Bol?var Fuerte', 'Bs.'),
(34, 'ZAR', 'South African Rand', 'R');

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_custom_fields`
--

CREATE TABLE `vipspm_custom_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `field_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field_column` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default_value` text COLLATE utf8_unicode_ci,
  `help_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` enum('text','textarea','dropdown','date','checkbox','numeric','url') COLLATE utf8_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'false=Inactive,true=Active',
  `show_on_details` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_database_backups`
--

CREATE TABLE `vipspm_database_backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_defects`
--

CREATE TABLE `vipspm_defects` (
  `id` int(10) UNSIGNED NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `generated_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) NOT NULL,
  `project_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defect_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Defects,2=Enhancement',
  `defect_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `estimated_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Assigned,2=Closed,3=In Progress,4=Open,5=Solved,6=Re-open,7=Deferred',
  `assigned_group_id` int(11) DEFAULT NULL,
  `assign_member` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `severity` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Low,2=Medium,3=High,4=Very High,5=Urgent',
  `notes` text COLLATE utf8_unicode_ci,
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_defects_history`
--

CREATE TABLE `vipspm_defects_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `defect_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `commented_by_id` int(11) DEFAULT NULL,
  `solved_by_id` int(11) DEFAULT NULL,
  `closed_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_defect_attachments`
--

CREATE TABLE `vipspm_defect_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `defect_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_defect_comments`
--

CREATE TABLE `vipspm_defect_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `defect_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_defect_user`
--

CREATE TABLE `vipspm_defect_user` (
  `defect_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_departments`
--

CREATE TABLE `vipspm_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_departments`
--

INSERT INTO `vipspm_departments` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administration', '2020-06-26 09:04:22', '2020-06-26 09:04:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_departments_roles`
--

CREATE TABLE `vipspm_departments_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_departments_roles`
--

INSERT INTO `vipspm_departments_roles` (`id`, `role_id`, `department_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_department_role_menu`
--

CREATE TABLE `vipspm_department_role_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `view` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `edited` int(11) NOT NULL,
  `deleted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_department_role_menu`
--

INSERT INTO `vipspm_department_role_menu` (`id`, `department_id`, `role_id`, `menu_id`, `view`, `created`, `edited`, `deleted`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1),
(2, 1, 2, 1, 1, 0, 0, 0),
(3, 1, 3, 1, 1, 0, 0, 0),
(4, 1, 4, 1, 1, 0, 0, 0),
(5, 1, 1, 2, 2, 2, 2, 2),
(6, 1, 2, 2, 2, 0, 0, 0),
(7, 1, 3, 2, 2, 0, 0, 0),
(8, 1, 4, 2, 2, 0, 0, 0),
(9, 1, 1, 3, 3, 3, 3, 3),
(10, 1, 2, 3, 3, 0, 0, 0),
(11, 1, 3, 3, 3, 0, 0, 0),
(12, 1, 4, 3, 3, 0, 0, 0),
(13, 1, 1, 4, 4, 4, 4, 4),
(14, 1, 2, 4, 4, 0, 0, 0),
(15, 1, 3, 4, 4, 0, 0, 0),
(16, 1, 4, 4, 4, 0, 0, 0),
(17, 1, 1, 5, 5, 5, 5, 5),
(18, 1, 2, 5, 5, 0, 0, 0),
(19, 1, 3, 5, 5, 0, 0, 0),
(20, 1, 4, 5, 5, 0, 0, 0),
(21, 1, 1, 6, 6, 6, 6, 6),
(22, 1, 2, 6, 6, 0, 0, 0),
(23, 1, 3, 6, 6, 0, 0, 0),
(24, 1, 4, 6, 6, 0, 0, 0),
(25, 1, 1, 7, 7, 7, 7, 7),
(26, 1, 2, 7, 7, 0, 0, 0),
(27, 1, 3, 7, 7, 0, 0, 0),
(28, 1, 4, 7, 7, 0, 0, 0),
(29, 1, 1, 9, 9, 9, 9, 9),
(30, 1, 2, 9, 9, 0, 0, 0),
(31, 1, 3, 9, 9, 0, 0, 0),
(32, 1, 4, 9, 9, 0, 0, 0),
(33, 1, 1, 10, 10, 10, 10, 10),
(34, 1, 2, 10, 10, 0, 0, 0),
(35, 1, 3, 10, 10, 0, 0, 0),
(36, 1, 4, 10, 10, 0, 0, 0),
(37, 1, 1, 11, 11, 11, 11, 11),
(38, 1, 2, 11, 11, 0, 0, 0),
(39, 1, 3, 11, 11, 0, 0, 0),
(40, 1, 4, 11, 11, 0, 0, 0),
(41, 1, 1, 12, 12, 12, 12, 12),
(42, 1, 2, 12, 12, 0, 0, 0),
(43, 1, 3, 12, 12, 0, 0, 0),
(44, 1, 4, 12, 12, 0, 0, 0),
(45, 1, 1, 13, 13, 13, 13, 13),
(46, 1, 2, 13, 13, 0, 0, 0),
(47, 1, 3, 13, 13, 0, 0, 0),
(48, 1, 4, 13, 13, 0, 0, 0),
(49, 1, 1, 14, 14, 14, 14, 14),
(50, 1, 2, 14, 14, 0, 0, 0),
(51, 1, 3, 14, 14, 0, 0, 0),
(52, 1, 4, 14, 14, 0, 0, 0),
(53, 1, 1, 15, 15, 15, 15, 15),
(54, 1, 2, 15, 15, 0, 0, 0),
(55, 1, 3, 15, 15, 0, 0, 0),
(56, 1, 4, 15, 15, 0, 0, 0),
(57, 1, 1, 16, 16, 16, 16, 16),
(58, 1, 2, 16, 16, 0, 0, 0),
(59, 1, 3, 16, 16, 0, 0, 0),
(60, 1, 4, 16, 16, 0, 0, 0),
(61, 1, 1, 17, 17, 17, 17, 17),
(62, 1, 2, 17, 17, 0, 0, 0),
(63, 1, 3, 17, 17, 0, 0, 0),
(64, 1, 4, 17, 17, 0, 0, 0),
(65, 1, 1, 18, 18, 18, 18, 18),
(66, 1, 2, 18, 18, 0, 0, 0),
(67, 1, 3, 18, 18, 0, 0, 0),
(68, 1, 4, 18, 18, 0, 0, 0),
(69, 1, 1, 19, 19, 19, 19, 19),
(70, 1, 2, 19, 19, 0, 0, 0),
(71, 1, 3, 19, 19, 0, 0, 0),
(72, 1, 4, 19, 19, 0, 0, 0),
(73, 1, 1, 20, 20, 20, 20, 20),
(74, 1, 2, 20, 20, 0, 0, 0),
(75, 1, 3, 20, 20, 0, 0, 0),
(76, 1, 4, 20, 20, 0, 0, 0),
(77, 1, 1, 21, 21, 21, 21, 21),
(78, 1, 2, 21, 21, 0, 0, 0),
(79, 1, 3, 21, 21, 0, 0, 0),
(80, 1, 4, 21, 21, 0, 0, 0),
(81, 1, 1, 22, 22, 22, 22, 22),
(82, 1, 2, 22, 22, 0, 0, 0),
(83, 1, 3, 22, 22, 0, 0, 0),
(84, 1, 4, 22, 22, 0, 0, 0),
(85, 1, 1, 23, 23, 23, 23, 23),
(86, 1, 2, 23, 23, 0, 0, 0),
(87, 1, 3, 23, 23, 0, 0, 0),
(88, 1, 4, 23, 23, 0, 0, 0),
(89, 1, 1, 24, 24, 24, 24, 24),
(90, 1, 2, 24, 24, 0, 0, 0),
(91, 1, 3, 24, 24, 0, 0, 0),
(92, 1, 4, 24, 24, 0, 0, 0),
(93, 1, 1, 25, 25, 25, 25, 25),
(94, 1, 2, 25, 25, 0, 0, 0),
(95, 1, 3, 25, 25, 0, 0, 0),
(96, 1, 4, 25, 25, 0, 0, 0),
(97, 1, 1, 27, 27, 27, 27, 27),
(98, 1, 2, 27, 27, 0, 0, 0),
(99, 1, 3, 27, 27, 0, 0, 0),
(100, 1, 4, 27, 27, 0, 0, 0),
(101, 1, 1, 28, 28, 28, 28, 28),
(102, 1, 2, 28, 28, 0, 0, 0),
(103, 1, 3, 28, 28, 0, 0, 0),
(104, 1, 4, 28, 28, 0, 0, 0),
(105, 1, 1, 29, 29, 29, 29, 29),
(106, 1, 2, 29, 29, 0, 0, 0),
(107, 1, 3, 29, 29, 0, 0, 0),
(108, 1, 4, 29, 29, 0, 0, 0),
(109, 1, 1, 30, 30, 30, 30, 30),
(110, 1, 2, 30, 30, 0, 0, 0),
(111, 1, 3, 30, 30, 0, 0, 0),
(112, 1, 4, 30, 30, 0, 0, 0),
(113, 1, 1, 41, 41, 41, 41, 41),
(114, 1, 2, 41, 41, 0, 0, 0),
(115, 1, 3, 41, 41, 0, 0, 0),
(116, 1, 4, 41, 41, 0, 0, 0),
(117, 1, 1, 42, 42, 42, 42, 42),
(118, 1, 2, 42, 42, 0, 0, 0),
(119, 1, 3, 42, 42, 0, 0, 0),
(120, 1, 4, 42, 42, 0, 0, 0),
(121, 1, 1, 43, 43, 43, 43, 43),
(122, 1, 2, 43, 43, 0, 0, 0),
(123, 1, 3, 43, 43, 0, 0, 0),
(124, 1, 4, 43, 43, 0, 0, 0),
(125, 1, 1, 44, 44, 44, 44, 44),
(126, 1, 2, 44, 44, 0, 0, 0),
(127, 1, 3, 44, 44, 0, 0, 0),
(128, 1, 4, 44, 44, 0, 0, 0),
(129, 1, 1, 46, 46, 46, 46, 46),
(130, 1, 2, 46, 46, 0, 0, 0),
(131, 1, 3, 46, 46, 0, 0, 0),
(132, 1, 4, 46, 46, 0, 0, 0),
(133, 1, 1, 47, 47, 47, 47, 47),
(134, 1, 2, 47, 47, 0, 0, 0),
(135, 1, 3, 47, 47, 0, 0, 0),
(136, 1, 4, 47, 47, 0, 0, 0),
(137, 1, 1, 49, 49, 49, 49, 49),
(138, 1, 2, 49, 49, 0, 0, 0),
(139, 1, 3, 49, 49, 0, 0, 0),
(140, 1, 4, 49, 49, 0, 0, 0),
(141, 1, 1, 51, 51, 51, 51, 51),
(142, 1, 2, 51, 51, 0, 0, 0),
(143, 1, 3, 51, 51, 0, 0, 0),
(144, 1, 4, 51, 51, 0, 0, 0),
(145, 1, 1, 71, 71, 71, 71, 71),
(146, 1, 2, 71, 71, 0, 0, 0),
(147, 1, 3, 71, 71, 0, 0, 0),
(148, 1, 4, 71, 71, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_email_inbox`
--

CREATE TABLE `vipspm_email_inbox` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message_body` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inbox' COMMENT 'Inbox, Sent, Draft, Trash',
  `view_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `favourites` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `notify_me` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=On, 0=Off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_email_inbox_attachment`
--

CREATE TABLE `vipspm_email_inbox_attachment` (
  `id` int(10) UNSIGNED NOT NULL,
  `mailbox_id` int(10) UNSIGNED DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_email_template`
--

CREATE TABLE `vipspm_email_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_group_id` int(10) UNSIGNED DEFAULT NULL,
  `template_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_body` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_email_template`
--

INSERT INTO `vipspm_email_template` (`id`, `email_group_id`, `template_name`, `template_subject`, `template_body`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Activate Account', 'Activate Account', '<p>Welcome to {SITE_NAME}!</p><p>Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.</p><p>To verify your email address, please follow this link:<br><big><strong><a href=\"{ACTIVATE_URL}\">Finish your registration...</a></strong></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{ACTIVATE_URL}\">{ACTIVATE_URL}</a></p><p><br>Please verify your email within {ACTIVATION_PERIOD} hours, otherwise your registration will become invalid and you will have to register again.<br>Your username: {USERNAME}<br>Your email address: {EMAIL}<br>Your password: {PASSWORD}<br><br>Have fun!<br>The {SITE_NAME} Team</p>', 'activate_account', NULL, NULL, NULL),
(2, 1, 'Change Email', 'Change Email', '<p>New email address on {SITE_NAME}</p><p>You have changed your email address for {SITE_NAME}.<br>Follow this link to confirm your new email address:<br><big><strong><a href=\"{NEW_EMAIL_KEY_URL}\">Confirm your new email</a></strong></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{NEW_EMAIL_KEY_URL}\">{NEW_EMAIL_KEY_URL}</a><br><br>Your email address: {NEW_EMAIL}<br><br>You received this email, because it was requested by a <a href=\"{SITE_URL}\">{SITE_NAME}</a> user. If you have received this by mistake, please DO NOT click the confirmation link, and simply delete this email. After a short time, the request will be removed from the system.<br><br>Thank you,<br>The {SITE_NAME} Team</p>', 'change_email', NULL, NULL, NULL),
(3, 1, 'Forgot Password', 'Forgot Password', '<p>Forgot your password, huh? No big deal.<br>To create a new password, just follow this link:<br><br><big><strong><a href=\"{PASS_KEY_URL}\">Create a new password</a></strong></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{PASS_KEY_URL}\">{PASS_KEY_URL}</a><br>You received this email, because it was requested by a <a href=\"{SITE_URL}\">{SITE_NAME}</a> user.</p><p>This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same.</p><p><br>Thank you,<br>The {SITE_NAME} Team</p>', 'forgot_password', NULL, NULL, NULL),
(4, 1, 'Register Email', 'Register Email', '<p>Welcome to {SITE_NAME}</p><p>Thanks for joining {SITE_NAME}. We listed your sign in details below, make sure you keep them safe.<br>To open your {SITE_NAME} homepage, please follow this link:<br><big><strong><a href=\"{SITE_URL}\">{SITE_NAME} Account!</a></strong></big><br>Link doesn\'t work? Copy the following link to your browser address bar:<br><a href=\"{SITE_URL}\">{SITE_URL}</a><br>Your username: {USERNAME}<br>Your email address: {EMAIL}<br>Your password: {PASSWORD}<br>Have fun!<br>The {SITE_NAME} Team.<br>&nbsp;</p>', 'register_email', NULL, NULL, NULL),
(5, 1, 'Reset Password', 'Reset Password', '<p>New password on {SITE_NAME}</p><p>You have changed your password.<br>Please, keep it in your records so you don\'t forget it.</p><p>Your username: {USERNAME}<br>Your email address: {EMAIL}<br>Your new password: {NEW_PASSWORD}<br><br>Thank you,<br>The {SITE_NAME} Team</p>', 'reset_password', NULL, NULL, NULL),
(6, 1, 'Welcome Email', 'Welcome Email', '<p>Hello <strong>{NAME}</strong>,</p><p>Welcome to <strong>{COMPANY_NAME}</strong> .Thanks for joining <strong>{COMPANY_NAME}</strong>.</p><p>We just wanted to say welcome.</p><p>Please contact us if you need any help.</p><p>Click here to view your profile: <strong><a href=\"{COMPANY_URL}\">View Profile</a></strong></p><p><br>Have fun!<br>The <strong>{COMPANY_NAME}</strong> Team.</p>', 'welcome_email', NULL, NULL, NULL),
(7, 1, 'Meeting', 'Meeting', 'Hi <strong>{NAME}</strong>,<div><br></div><div>A meeting has been scheduled on <strong>{MEETING_DATE}</strong>, in the <strong>{LOCATION}</strong> at <strong>{MEETING_TIME}</strong>.</div><div><br></div><div>{DESCRIPTION}</div><div><br></div><div>Have fun!<br>The&nbsp;<strong>{COMPANY_NAME}</strong>&nbsp;Team.<br></div><div><br></div>', 'meeting', NULL, NULL, NULL),
(8, 1, 'Announcement', 'Announcement', 'Hi <strong>{NAME}</strong>,<div><br></div><div><strong>{TITLE}</strong></div><div><br></div><div><strong>Start Date :</strong> {START_DATE}</div><div><strong>End Date :</strong> {END_DATE}</div><div><br></div><div>{DESCRIPTION}</div><div><br></div><div>Have fun!<br>The&nbsp;<strong>{COMPANY_NAME}</strong>&nbsp;Team.<br></div><div><br></div>', 'announcement', NULL, NULL, NULL),
(9, 2, 'Assigned Project', 'Assigned Project', '<p>Hi There,</p><p>A<strong> {PROJECT_NAME}</strong> has been assigned by <strong>{ASSIGNED_BY} </strong>to you.You can view this project by logging in to the portal using the link below:<br><br><big><a href=\"{PROJECT_URL}\"><strong>View Project</strong></a></big><br><br>Best Regards<br>The {SITE_NAME} Team</p><p>&nbsp;</p>', 'assigned_project', NULL, NULL, NULL),
(10, 2, 'Notification Client', 'New Project Created', '<p>Hello <strong>{CLIENT_NAME}</strong>,<br /><br />We have created a new project with your account.<br /><br />Project name : <strong>{PROJECT_NAME}</strong><br />You can login to see the status of your project by using this link:<br /><big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big></p><p><br />Best Regards<br />The {SITE_NAME} Team</p><p>&nbsp;</p>', 'notification_client', NULL, NULL, NULL),
(11, 2, 'Complete Projects', 'Project Completed', '<p>Hi <strong>{CLIENT_NAME}</strong>,</p><p>Project : <strong>{PROJECT_NAME}</strong> &nbsp;has been completed.<br />You can view the project by logging into your portal Account:<br /><big><a href=\"{PROJECT_LINK}\"><strong>View Project</strong></a></big><br /><br />Best Regards,<br />The {SITE_NAME} Team</p>', 'complete_projects', NULL, NULL, NULL),
(12, 2, 'Project Comments', 'New Project Comment Received', '<p>Hi There,</p><p>A new comment has been posted by <strong>{POSTED_BY}</strong> to project <strong>{PROJECT_NAME}</strong>.</p><p>You can view the comment using the link below:<br /><big><a href=\"{COMMENT_URL}\"><strong>View Project</strong></a></big><br /><br /><em>{COMMENT_MESSAGE}</em><br /><br />Best Regards,<br />The {SITE_NAME} Team</p>', 'project_comments', NULL, NULL, NULL),
(13, 2, 'Project Attachment', 'New Project Attachment', '<p>Hi There,</p><p>A new file has been uploaded by <strong>{UPLOADED_BY}</strong> to project <strong>{PROJECT_NAME}</strong>.<br />You can view the Project using the link below:<br><br><big><a href=\"{PROJECT_URL}\"><strong>View Project</strong></a></big><br /><br />Best Regards,<br />The {SITE_NAME} Team</p>', 'project_attachment', NULL, NULL, NULL),
(14, 3, 'Task Assigned', 'Task Assigned', '<p>Hi there,</p><p>A new task <strong>{TASK_NAME}</strong> &nbsp;has been assigned to <strong>{ASSIGNED_TO}</strong> by <strong>{ASSIGNED_BY}</strong>.</p><p>You can view this task by logging in to the portal using the link below.</p><p><big><strong><a href=\"{TASK_URL}\">View Task</a></strong></big><br><br>Regards<br>The {SITE_NAME} Team</p>', 'task_assigned', NULL, NULL, NULL),
(15, 3, 'Task Comments', 'New Task Comment Received', '<p>Hi There,</p><p>A new comment has been posted by <strong>{POSTED_BY}</strong> to <strong>{TASK_NAME}</strong>.</p><p>You can view the comment using the link below:<br /><big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br /><br /><em>{COMMENT_MESSAGE}</em><br /><br />Best Regards,<br />The {SITE_NAME} Team</p>', 'task_comments', NULL, NULL, NULL),
(16, 3, 'Tasks Attachment', 'New Tasks Attachment', '<p>Hi There,</p><p>A new file has been uploaded by <strong>{UPLOADED_BY} </strong>to Task <strong>{TASK_NAME}</strong>.<br>You can view the Task&nbsp;using the link below:</p><p><br><big><a href=\"{TASK_URL}\"><strong>View Task</strong></a></big><br><br>Best Regards,<br>The {SITE_NAME} Team</p>', 'task_attachment', NULL, NULL, NULL),
(17, 3, 'Task Updated', 'Task Updated', '<p>Hi there,</p><p><strong>{TASK_NAME}</strong> has been updated by <strong>{ASSIGNED_BY}</strong>.</p><p>You can view this Task by logging in to the portal using the link below.</p><p><br /><big><strong><a href=\"{TASK_URL}\">View Task</a></strong></big><br /><br />Regards<br />The {SITE_NAME} Team</p>', 'task_updated', NULL, NULL, NULL),
(18, 4, 'Defect Assigned', 'New Defect Assigned', '<p>Hi there,</p><p>A new defect &nbsp;{DEFECT_TITLE} &nbsp;has been assigned to <strong>{ASSIGNED_TO}</strong> by <strong>{ASSIGNED_BY}</strong>.</p><p>You can view this defect by logging in to the portal using the link below.</p><p><br /><big><strong><a href=\"{DEFECT_URL}\">View Defect</a></strong></big><br /><br />Regards<br />The {SITE_NAME} Team</p>', 'defect_assigned', NULL, NULL, NULL),
(19, 4, 'Defect Comments', 'New Defect Comment Received', '<p>Hi there,</p><p>A new comment has been posted by {POSTED_BY} to defect {DEFECT_TITLE}.</p><p>You can view the comment using the link below.</p><p><em>{COMMENT_MESSAGE}</em></p><p><br /><big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br><br>Regards<br />The {SITE_NAME} Team</p><p>&nbsp;</p>', 'defect_comments', NULL, NULL, NULL),
(20, 4, 'Defect Attachment', 'New Defect Attachment', '<p>Hi there,</p><p>A new attachment&nbsp;has been uploaded by {UPLOADED_BY} to issue {DEFECT_TITLE}.</p><p>You can view the defect using the link below.</p><p><br /><big><strong><a href=\"{DEFECT_URL}\">View Defect</a></strong></big></p><p><br />Regards<br />The {SITE_NAME} Team</p>', 'defect_attachment', NULL, NULL, NULL),
(21, 4, 'Defect Updated', 'Defect Status Changed', '<p>Hi there,</p><p>Defect {DEFECT_TITLE} has been marked as {STATUS} by {MARKED_BY}.</p><p>You can view this defect by logging in to the portal using the link below.</p><p><big><strong><a href=\"{DEFECT_URL}\">View Defect</a></strong></big>/p><p><br />Regards<br />The {SITE_NAME} Team</p>', 'defect_updated', NULL, NULL, NULL),
(22, 5, 'Incident Assigned', 'New Incident Assigned', '<p>Hi there,</p><p>A new incident &nbsp;<big><strong>{INCIDENT_TITLE}</big></strong> &nbsp;has been assigned to <strong>{ASSIGNED_TO}</strong> by <strong>{ASSIGNED_BY}</strong>.</p><p>You can view this incident by logging in to the portal using the link below.</p><p><br><big><strong><a href=\"{INCIDENT_URL}\">View Incident</a></strong></big><br><br>Regards<br>The {SITE_NAME} Team</p>', 'incident_assigned', NULL, NULL, NULL),
(23, 5, 'Incident Comments', 'New Incident Comment Received', '<p>Hi there,</p><p>A new comment has been posted by {POSTED_BY} to incident {INCIDENT_TITLE}.</p><p>You can view the comment using the link below.</p><p><em>{COMMENT_MESSAGE}</em></p><p><br><big><strong><a href=\"{COMMENT_URL}\">View Comment</a></strong></big><br><br>Regards<br>The {SITE_NAME} Team</p><p>&nbsp;</p>', 'incident_comments', NULL, NULL, NULL),
(24, 5, 'Incident Attachment', 'New Incident Attachment', '<p>Hi there,</p><p>A new attachment&nbsp;has been uploaded by {UPLOADED_BY} to issue {INCIDENT_TITLE}.</p><p>You can view the incident using the link below.</p><p><br><big><strong><a href=\"{INCIDENT_URL}\">View Incident</a></strong></big></p><p><br>Regards<br>The {SITE_NAME} Team</p>', 'incident_attachment', NULL, NULL, NULL),
(25, 5, 'Incident Updated', 'Incident Status Changed', '<p>Hi there,</p><p>Incident {INCIDENT_TITLE} has been marked as {STATUS} by {MARKED_BY}.</p><p>You can view this incident by logging in to the portal using the link below.</p><p><big><strong><a href=\"{INCIDENT_URL}\">View Incident</a></strong></big></p><p><br>Regards<br>The {SITE_NAME} Team</p>', 'incident_updated', NULL, NULL, NULL),
(26, 6, 'Appointment Mail', 'Appointment Mail', 'Hi <strong>{NAME}</strong>,<br><div>A appointment has been scheduled on <strong>{APPOINTEMENT_DATE}</strong>, in the <strong>{LOCATION}</strong> at <strong>{APPOINTEMENT_TIME}</strong>.</div><br><div>{DESCRIPTION}</div><br><div>Have fun!<br>The&nbsp;<strong>{COMPANY_NAME}</strong>&nbsp;Team.<br></div>', 'appointment_mail', NULL, NULL, NULL),
(27, 1, 'Cancel Meeting', 'Cancel Meeting', 'Hi <strong>{NAME}</strong>,<div><br></div><div>The meeting scheduled on <strong>{MEETING_DATE}</strong> <strong>{MEETING_TIME}</strong> at <strong>{LOCATION}</strong> has been canceled.</div><br><div>{DESCRIPTION}</div><br><div>Have fun!<br>The&nbsp;<strong>{COMPANY_NAME}</strong>&nbsp;Team.<br></div>', 'cancel_meeting', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_email_template_groups`
--

CREATE TABLE `vipspm_email_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_email_template_groups`
--

INSERT INTO `vipspm_email_template_groups` (`id`, `email_group_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Account Emails', NULL, NULL, NULL),
(2, 'Project Emails', NULL, NULL, NULL),
(3, 'Task Emails', NULL, NULL, NULL),
(4, 'Defects Email', NULL, NULL, NULL),
(5, 'Incidents Email', NULL, NULL, NULL),
(6, 'Appointment Emails', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_files`
--

CREATE TABLE `vipspm_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `file_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_folders`
--

CREATE TABLE `vipspm_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `folder_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_folder` int(11) NOT NULL,
  `folder_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_form`
--

CREATE TABLE `vipspm_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_form`
--

INSERT INTO `vipspm_form` (`id`, `name`, `table_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Project', 'vipspm_projects', 1, NULL, NULL),
(2, 'Task', 'vipspm_tasks', 1, NULL, NULL),
(3, 'Defect', 'vipspm_defects', 1, NULL, NULL),
(4, 'Incident', 'vipspm_incidents', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_holidays`
--

CREATE TABLE `vipspm_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `date` date NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#1ab394',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_incidents`
--

CREATE TABLE `vipspm_incidents` (
  `id` int(10) UNSIGNED NOT NULL,
  `create_user_id` int(11) NOT NULL,
  `generated_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `project_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `incident_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Service Request,2=Info Request',
  `incident_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `estimated_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Open,2=Assigned,3=In Progress,4=Solved,5=Deferred,6=Re-open,7=Closed',
  `assigned_group_id` int(11) DEFAULT NULL,
  `assign_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Low,2=Medium,3=High,4=Very High,5=Urgent',
  `notes` text COLLATE utf8_unicode_ci,
  `orders` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_incident_attachments`
--

CREATE TABLE `vipspm_incident_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `incident_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_incident_comments`
--

CREATE TABLE `vipspm_incident_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `incident_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_incident_history`
--

CREATE TABLE `vipspm_incident_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `incident_id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by_id` int(11) DEFAULT NULL,
  `commented_by_id` int(11) DEFAULT NULL,
  `solved_by_id` int(11) DEFAULT NULL,
  `closed_by_id` int(11) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_incident_user`
--

CREATE TABLE `vipspm_incident_user` (
  `incident_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_knowledge_base_article`
--

CREATE TABLE `vipspm_knowledge_base_article` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `article_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_knowledge_base_category`
--

CREATE TABLE `vipspm_knowledge_base_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_languages`
--

CREATE TABLE `vipspm_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=Inactive, 1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_languages`
--

INSERT INTO `vipspm_languages` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ar', 'Arabic', 1, NULL, NULL),
(2, 'cs', 'Czech', 1, NULL, NULL),
(3, 'da', 'Danish', 1, NULL, NULL),
(4, 'de', 'German', 1, NULL, NULL),
(5, 'el', 'Greek', 1, NULL, NULL),
(6, 'en', 'English', 1, NULL, NULL),
(7, 'es', 'Spanish', 1, NULL, NULL),
(8, 'fr', 'French', 1, NULL, NULL),
(9, 'gu', 'Gujarati', 1, NULL, NULL),
(10, 'hi', 'Hindi', 1, NULL, NULL),
(11, 'id', 'Indonesian', 1, NULL, NULL),
(12, 'it', 'Italian', 1, NULL, NULL),
(13, 'ja', 'Japanese', 1, NULL, NULL),
(14, 'nl', 'Dutch', 1, NULL, NULL),
(15, 'no', 'Norwegian', 1, NULL, NULL),
(16, 'pl', 'Polish', 1, NULL, NULL),
(17, 'pt', 'Portuguese', 1, NULL, NULL),
(18, 'ro', 'Romanian', 1, NULL, NULL),
(19, 'ru', 'Russian', 1, NULL, NULL),
(20, 'tr', 'Turkish', 1, NULL, NULL),
(21, 'zh', 'Chinese', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_locales`
--

CREATE TABLE `vipspm_locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0=Inactive, 1=Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_locales`
--

INSERT INTO `vipspm_locales` (`id`, `name`, `locale`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'afghanistan', 1, NULL, NULL),
(2, 'Aringland Islands', 'aringland_islands', 1, NULL, NULL),
(3, 'Albania', 'albania', 1, NULL, NULL),
(4, 'Algeria', 'algeria', 1, NULL, NULL),
(5, 'American Samoa', 'american_samoa', 1, NULL, NULL),
(6, 'Andorra', 'andorra', 1, NULL, NULL),
(7, 'Angola', 'angola', 1, NULL, NULL),
(8, 'Anguilla', 'anguilla', 1, NULL, NULL),
(9, 'Antarctica', 'antarctica', 1, NULL, NULL),
(10, 'Antigua and Barbuda', 'antigua_and_barbuda', 1, NULL, NULL),
(11, 'Argentina', 'argentina', 1, NULL, NULL),
(12, 'Armenia', 'armenia', 1, NULL, NULL),
(13, 'Aruba', 'aruba', 1, NULL, NULL),
(14, 'Australia', 'australia', 1, NULL, NULL),
(15, 'Austria', 'austria', 1, NULL, NULL),
(16, 'Azerbaijan', 'azerbaijan', 1, NULL, NULL),
(17, 'Bahamas', 'bahamas', 1, NULL, NULL),
(18, 'Bahrain', 'bahrain', 1, NULL, NULL),
(19, 'Bangladesh', 'bangladesh', 1, NULL, NULL),
(20, 'Barbados', 'barbados', 1, NULL, NULL),
(21, 'Belarus', 'belarus', 1, NULL, NULL),
(22, 'Belgium', 'belgium', 1, NULL, NULL),
(23, 'Belize', 'belize', 1, NULL, NULL),
(24, 'Benin', 'benin', 1, NULL, NULL),
(25, 'Bermuda', 'bermuda', 1, NULL, NULL),
(26, 'Bhutan', 'bhutan', 1, NULL, NULL),
(27, 'Bolivia', 'bolivia', 1, NULL, NULL),
(28, 'Bosnia and Herzegovina', 'bosnia_and_herzegovina', 1, NULL, NULL),
(29, 'Botswana', 'botswana', 1, NULL, NULL),
(30, 'Bouvet Island', 'bouvet_island', 1, NULL, NULL),
(31, 'Brazil', 'brazil', 1, NULL, NULL),
(32, 'British Indian Ocean territory', 'british_indian_ocean_territory', 1, NULL, NULL),
(33, 'Brunei Darussalam', 'brunei_darussalam', 1, NULL, NULL),
(34, 'Bulgaria', 'bulgaria', 1, NULL, NULL),
(35, 'Burkina Faso', 'burkina_faso', 1, NULL, NULL),
(36, 'Burundi', 'burundi', 1, NULL, NULL),
(37, 'Cambodia', 'cambodia', 1, NULL, NULL),
(38, 'Cameroon', 'cameroon', 1, NULL, NULL),
(39, 'Canada', 'canada', 1, NULL, NULL),
(40, 'Cape Verde', 'cape_verde', 1, NULL, NULL),
(41, 'Cayman Islands', 'cayman_islands', 1, NULL, NULL),
(42, 'Central African Republic', 'central_african_republic', 1, NULL, NULL),
(43, 'Chad', 'chad', 1, NULL, NULL),
(44, 'Chile', 'chile', 1, NULL, NULL),
(45, 'China', 'china', 1, NULL, NULL),
(46, 'Christmas Island', 'christmas_island', 1, NULL, NULL),
(47, 'Cocos(Keeling) Islands', 'cocos_islands', 1, NULL, NULL),
(48, 'Colombia', 'colombia', 1, NULL, NULL),
(49, 'Comoros', 'comoros', 1, NULL, NULL),
(50, 'Congo', 'congo', 1, NULL, NULL),
(51, 'Democratic Republic', 'democratic_republic', 1, NULL, NULL),
(52, 'Cook Islands', 'cook_islands', 1, NULL, NULL),
(53, 'Costa Rica', 'costa_rica', 1, NULL, NULL),
(54, 'Ivory Coast(Ivory Coast)', 'ivory_coast', 1, NULL, NULL),
(55, 'Croatia(Hrvatska)', 'croatia', 1, NULL, NULL),
(56, 'Cuba', 'cuba', 1, NULL, NULL),
(57, 'Cyprus', 'cyprus', 1, NULL, NULL),
(58, 'Czech Republic', 'czech_republic', 1, NULL, NULL),
(59, 'Denmark', 'denmark', 1, NULL, NULL),
(60, 'Djibouti', 'djibouti', 1, NULL, NULL),
(61, 'Dominica', 'dominica', 1, NULL, NULL),
(62, 'Dominican Republic', 'dominican_republic', 1, NULL, NULL),
(63, 'East Timor', 'east_timor', 1, NULL, NULL),
(64, 'Ecuador', 'ecuador', 1, NULL, NULL),
(65, 'Egypt', 'egypt', 1, NULL, NULL),
(66, 'El Salvador', 'el_salvador', 1, NULL, NULL),
(67, 'Equatorial Guinea', 'equatorial_guinea', 1, NULL, NULL),
(68, 'Eritrea', 'eritrea', 1, NULL, NULL),
(69, 'Estonia', 'estonia', 1, NULL, NULL),
(70, 'Ethiopia', 'ethiopia', 1, NULL, NULL),
(71, 'Falkland Islands', 'falkland_islands', 1, NULL, NULL),
(72, 'Faroe Islands', 'faroe_islands', 1, NULL, NULL),
(73, 'Fiji', 'fiji', 1, NULL, NULL),
(74, 'Finland', 'finland', 1, NULL, NULL),
(75, 'France', 'france', 1, NULL, NULL),
(76, 'French Guiana', 'french_guiana', 1, NULL, NULL),
(77, 'French Polynesia', 'french_polynesia', 1, NULL, NULL),
(78, 'French Southern Territories', 'french_southern_territories', 1, NULL, NULL),
(79, 'Gabon', 'gabon', 1, NULL, NULL),
(80, 'Gambia', 'gambia', 1, NULL, NULL),
(81, 'Georgia', 'georgia', 1, NULL, NULL),
(82, 'Germany', 'germany', 1, NULL, NULL),
(83, 'Ghana', 'ghana', 1, NULL, NULL),
(84, 'Gibraltar', 'gibraltar', 1, NULL, NULL),
(85, 'Greece', 'greece', 1, NULL, NULL),
(86, 'Greenland', 'greenland', 1, NULL, NULL),
(87, 'Grenada', 'grenada', 1, NULL, NULL),
(88, 'Guadeloupe', 'guadeloupe', 1, NULL, NULL),
(89, 'Guam', 'guam', 1, NULL, NULL),
(90, 'Guatemala', 'guatemala', 1, NULL, NULL),
(91, 'Guinea', 'guinea', 1, NULL, NULL),
(92, 'Guinea-Bissau', 'guinea_bissau', 1, NULL, NULL),
(93, 'Guyana', 'guyana', 1, NULL, NULL),
(94, 'Haiti', 'haiti', 1, NULL, NULL),
(95, 'Heard and McDonald Islands', 'heard_and_mcdonald_islands', 1, NULL, NULL),
(96, 'Honduras', 'honduras', 1, NULL, NULL),
(97, 'Hong Kong', 'hong_kong', 1, NULL, NULL),
(98, 'Hungary', 'hungary', 1, NULL, NULL),
(99, 'Iceland', 'iceland', 1, NULL, NULL),
(100, 'India', 'india', 1, NULL, NULL),
(101, 'Indonesia', 'indonesia', 1, NULL, NULL),
(102, 'Iran', 'iran', 1, NULL, NULL),
(103, 'Iraq', 'iraq', 1, NULL, NULL),
(104, 'Ireland', 'ireland', 1, NULL, NULL),
(105, 'Israel', 'israel', 1, NULL, NULL),
(106, 'Italy', 'italy', 1, NULL, NULL),
(107, 'Jamaica', 'jamaica', 1, NULL, NULL),
(108, 'Japan', 'japan', 1, NULL, NULL),
(109, 'Jordan', 'jordan', 1, NULL, NULL),
(110, 'Kazakhstan', 'kazakhstan', 1, NULL, NULL),
(111, 'Kenya', 'kenya', 1, NULL, NULL),
(112, 'Kiribati', 'kiribati', 1, NULL, NULL),
(113, 'Korea (north)', 'korea_north', 1, NULL, NULL),
(114, 'Korea (south)', 'korea_south', 1, NULL, NULL),
(115, 'Kuwait', 'kuwait', 1, NULL, NULL),
(116, 'Kyrgyzstan', 'kyrgyzstan', 1, NULL, NULL),
(117, 'Lao People\'s Democratic Republic', 'Lao_peoples_emocratic_republic', 1, NULL, NULL),
(118, 'Latvia', 'latvia', 1, NULL, NULL),
(119, 'Lebanon', 'lebanon', 1, NULL, NULL),
(120, 'Lesotho', 'lesotho', 1, NULL, NULL),
(121, 'Liberia', 'liberia', 1, NULL, NULL),
(122, 'Libyan Arab Jamahiriya', 'libyan_arab_jamahiriya', 1, NULL, NULL),
(123, 'Liechtenstein', 'liechtenstein', 1, NULL, NULL),
(124, 'Lithuania', 'lithuania', 1, NULL, NULL),
(125, 'Luxembourg', 'luxembourg', 1, NULL, NULL),
(126, 'Macao', 'macao', 1, NULL, NULL),
(127, 'Macedonia', 'macedonia', 1, NULL, NULL),
(128, 'Madagascar', 'madagascar', 1, NULL, NULL),
(129, 'Malawi', 'malawi', 1, NULL, NULL),
(130, 'Malaysia', 'malaysia', 1, NULL, NULL),
(131, 'Maldives', 'maldives', 1, NULL, NULL),
(132, 'Mali', 'mali', 1, NULL, NULL),
(133, 'Malta', 'malta', 1, NULL, NULL),
(134, 'Marshall Islands', 'marshall_islands', 1, NULL, NULL),
(135, 'Martinique', 'martinique', 1, NULL, NULL),
(136, 'Mauritania', 'mauritania', 1, NULL, NULL),
(137, 'Mauritius', 'mauritius', 1, NULL, NULL),
(138, 'Mayotte', 'mayotte', 1, NULL, NULL),
(139, 'Mexico', 'mexico', 1, NULL, NULL),
(140, 'Micronesia', 'micronesia', 1, NULL, NULL),
(141, 'Moldova', 'moldova', 1, NULL, NULL),
(142, 'Monaco', 'monaco', 1, NULL, NULL),
(143, 'Mongolia', 'mongolia', 1, NULL, NULL),
(144, 'Montserrat', 'Montserrat', 1, NULL, NULL),
(145, 'Morocco', 'morocco', 1, NULL, NULL),
(146, 'Mozambique', 'mozambique', 1, NULL, NULL),
(147, 'Myanmar', 'myanmar', 1, NULL, NULL),
(148, 'Namibia', 'namibia', 1, NULL, NULL),
(149, 'Nauru', 'nauru', 1, NULL, NULL),
(150, 'Nepal', 'nepal', 1, NULL, NULL),
(151, 'Netherlands', 'netherlands', 1, NULL, NULL),
(152, 'Netherlands Antilles', 'netherlands_antilles', 1, NULL, NULL),
(153, 'New Caledonia', 'new_caledonia', 1, NULL, NULL),
(154, 'New Zealand', 'new_zealand', 1, NULL, NULL),
(155, 'Nicaragua', 'nicaragua', 1, NULL, NULL),
(156, 'Niger', 'niger', 1, NULL, NULL),
(157, 'Nigeria', 'nigeria', 1, NULL, NULL),
(158, 'Niue', 'niue', 1, NULL, NULL),
(159, 'Norfolk Island', 'norfolk_island', 1, NULL, NULL),
(160, 'Northern Mariana Islands', 'northern_mariana_islands', 1, NULL, NULL),
(161, 'Norway', 'norway', 1, NULL, NULL),
(162, 'Oman', 'oman', 1, NULL, NULL),
(163, 'Pakistan', 'pakistan', 1, NULL, NULL),
(164, 'Palau', 'palau', 1, NULL, NULL),
(165, 'Palestinian Territories', 'palestinian_territories', 1, NULL, NULL),
(166, 'Panama', 'panama', 1, NULL, NULL),
(167, 'Papua New Guinea', 'papua_new_guinea', 1, NULL, NULL),
(168, 'Paraguay', 'paraguay', 1, NULL, NULL),
(169, 'Peru', 'peru', 1, NULL, NULL),
(170, 'Philippines', 'philippines', 1, NULL, NULL),
(171, 'Pitcairn', 'pitcairn', 1, NULL, NULL),
(172, 'Poland', 'poland', 1, NULL, NULL),
(173, 'Portugal', 'portugal', 1, NULL, NULL),
(174, 'Puerto Rico', 'puerto_rico', 1, NULL, NULL),
(175, 'Qatar', 'qatar', 1, NULL, NULL),
(176, 'Runion', 'runion', 1, NULL, NULL),
(177, 'Romania', 'romania', 1, NULL, NULL),
(178, 'Russian Federation', 'russian_federation', 1, NULL, NULL),
(179, 'Rwanda', 'rwanda', 1, NULL, NULL),
(180, 'Saint Helena', 'saint_helena', 1, NULL, NULL),
(181, 'Saint Kitts and Nevis', 'saint_kitts_and_nevis', 1, NULL, NULL),
(182, 'Saint Lucia', 'saint_lucia', 1, NULL, NULL),
(183, 'Saint Pierre and Miquelon', 'saint_pierre_and_miquelon', 1, NULL, NULL),
(184, 'Saint Vincent and the Grenadines', 'saint_vincent_and_the_grenadines', 1, NULL, NULL),
(185, 'Samoa', 'samoa', 1, NULL, NULL),
(186, 'San Marino', 'san_marino', 1, NULL, NULL),
(187, 'Sao Tome and Principe', 'sao_tome_and_principe', 1, NULL, NULL),
(188, 'Saudi Arabia', 'saudi_arabia', 1, NULL, NULL),
(189, 'Senegal', 'senegal', 1, NULL, NULL),
(190, 'Serbia and Montenegro', 'serbia_and_montenegro', 1, NULL, NULL),
(191, 'Seychelles', 'seychelles', 1, NULL, NULL),
(192, 'Sierra Leone', 'sierra_leone', 1, NULL, NULL),
(193, 'Singapore', 'singapore', 1, NULL, NULL),
(194, 'Slovakia', 'slovakia', 1, NULL, NULL),
(195, 'Slovenia', 'slovenia', 1, NULL, NULL),
(196, 'Solomon Islands', 'solomon_islands', 1, NULL, NULL),
(197, 'Somalia', 'somalia', 1, NULL, NULL),
(198, 'South Africa', 'south_africa', 1, NULL, NULL),
(199, 'South Georgia and the South Sandwich Islands', 'south_georgia_and_the_south_sandwich_islands', 1, NULL, NULL),
(200, 'Spain', 'spain', 1, NULL, NULL),
(201, 'Sri Lanka', 'sri_lanka', 1, NULL, NULL),
(202, 'Sudan', 'sudan', 1, NULL, NULL),
(203, 'Suriname', 'suriname', 1, NULL, NULL),
(204, 'Svalbard and Jan Mayen Islands', 'svalbard_and_jan_mayen_islands', 1, NULL, NULL),
(205, 'Swaziland', 'swaziland', 1, NULL, NULL),
(206, 'Sweden', 'sweden', 1, NULL, NULL),
(207, 'Switzerland', 'switzerland', 1, NULL, NULL),
(208, 'Syria', 'syria', 1, NULL, NULL),
(209, 'Taiwan', 'taiwan', 1, NULL, NULL),
(210, 'Tajikistan', 'tajikistan', 1, NULL, NULL),
(211, 'Tanzania', 'tanzania', 1, NULL, NULL),
(212, 'Thailand', 'thailand', 1, NULL, NULL),
(213, 'Togo', 'togo', 1, NULL, NULL),
(214, 'Tokelau', 'tokelau', 1, NULL, NULL),
(215, 'Tonga', 'tonga', 1, NULL, NULL),
(216, 'Trinidad and Tobago', 'trinidad_and_tobago', 1, NULL, NULL),
(217, 'Tunisia', 'tunisia', 1, NULL, NULL),
(218, 'Turkey', 'turkey', 1, NULL, NULL),
(219, 'Turkmenistan', 'turkmenistan', 1, NULL, NULL),
(220, 'Turks and Caicos Islands', 'turks_and_caicos_islands', 1, NULL, NULL),
(221, 'Tuvalu', 'tuvalu', 1, NULL, NULL),
(222, 'Uganda', 'uganda', 1, NULL, NULL),
(223, 'Ukraine', 'ukraine', 1, NULL, NULL),
(224, 'United Arab Emirates', 'united_arab_emirates', 1, NULL, NULL),
(225, 'United Kingdom', 'united_kingdom', 1, NULL, NULL),
(226, 'United States of America', 'united_states_of_america', 1, NULL, NULL),
(227, 'Uruguay', 'uruguay', 1, NULL, NULL),
(228, 'Uzbekistan', 'uzbekistan', 1, NULL, NULL),
(229, 'Vanuatu', 'vanuatu', 1, NULL, NULL),
(230, 'Vatican City', 'vatican_city', 1, NULL, NULL),
(231, 'Venezuela', 'venezuela', 1, NULL, NULL),
(232, 'Vietnam', 'vietnam', 1, NULL, NULL),
(233, 'Virgin Islands (British)', 'virgin_islands_british', 1, NULL, NULL),
(234, 'Virgin Islands (US)', 'virgin_islands_us', 1, NULL, NULL),
(235, 'Wallis and Futuna Islands', 'wallis_and_futuna_islands', 1, NULL, NULL),
(236, 'Western Sahara', 'western_sahara', 1, NULL, NULL),
(237, 'Yemen', 'yemen', 1, NULL, NULL),
(238, 'Zaire', 'zaire', 1, NULL, NULL),
(239, 'Zambia', 'zambia', 1, NULL, NULL),
(240, 'Zimbabwe', 'zimbabwe', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_meetings`
--

CREATE TABLE `vipspm_meetings` (
  `id` int(10) UNSIGNED NOT NULL,
  `generated_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organizer_id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `hour_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Open,2=In Progress,3=Cancel,4=Completed',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_meeting_members`
--

CREATE TABLE `vipspm_meeting_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `meeting_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_menus`
--

CREATE TABLE `vipspm_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_menu_id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `subscription` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Subscription, 0=Unsubscription',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_menus`
--

INSERT INTO `vipspm_menus` (`id`, `parent_menu_id`, `module`, `label`, `text`, `link`, `icon`, `order`, `subscription`, `status`) VALUES
(1, 0, 'dashboard', 'dashboard', 'Dashboard', '/dashboard', 'fa fa-dashboard', 1, 1, 1),
(2, 0, 'calendar', 'calendar', 'Calendar', '/calendar', 'fa fa-calendar', 2, 1, 1),
(3, 0, 'admin', 'administration', 'Administration', '#', 'fa fa-user-circle', 3, 1, 1),
(4, 3, 'admin', 'roles', 'Roles', '/roles', 'fa fa-user-circle', 1, 1, 1),
(5, 3, 'admin', 'departments', 'Departments', '/departments', 'fa fa-building-o', 2, 1, 1),
(6, 3, 'admin', 'users', 'Users', '/users', 'fa fa-user-circle', 3, 1, 1),
(7, 3, 'admin', 'teams', 'Teams', '/teams', 'fa fa-universal-access', 4, 1, 1),
(9, 0, 'utilities', 'holidays', 'Holidays', '/holidays', 'fa fa-calendar-plus-o', 0, 1, 1),
(10, 0, 'meetings', 'meetings', 'Meetings', '/meetings', 'fa fa-group', 10, 1, 1),
(11, 0, 'clients', 'clients', 'Clients', '/clients', 'fa fa-user-circle', 12, 1, 1),
(12, 0, 'utilities', 'todos', 'Todos', '/todos', 'fa fa-list-ul', 0, 1, 1),
(13, 0, 'utilities', 'announcements', 'Announcements', '/announcements', 'fa fa-announcements', 0, 1, 1),
(14, 0, 'utilities', 'mailbox', 'Mailbox', '/mailbox', 'fa fa-envelope-o', 0, 1, 1),
(15, 0, 'filemanager', 'file manager', 'File Manager', '/file-browser', 'fa fa-folder', 13, 1, 1),
(16, 0, 'setting', 'settings', 'Settings', '/settings', 'fa fa-cogs', 16, 1, 1),
(17, 16, 'settings', 'company detail', 'Company Detail', '#', 'fa fa-info-circle', 1, 1, 1),
(18, 16, 'settings', 'email settings', 'Email Settings', '#', 'fa fa-envelope', 2, 1, 1),
(19, 16, 'settings', 'email Templates', 'Email Templates', '#', 'fa fa-pencil-square', 3, 1, 1),
(20, 16, 'settings', 'email notifications', 'Email Notifications', '#', 'fa fa-bell-o', 4, 1, 1),
(21, 16, 'settings', 'cronjob', 'Cronjob', '#', 'fa fa-contao', 5, 1, 1),
(22, 16, 'settings', 'menu allocation', 'Menu Allocation', '#', 'fa fa-language', 6, 1, 1),
(23, 16, 'settings', 'theme settings', 'Theme Settings', '#', 'fa fa-compass', 7, 1, 1),
(24, 16, 'settings', 'dashboard settings', 'Dashboard Settings', '#', 'fa fa-cog', 8, 1, 1),
(25, 16, 'settings', 'system settings', 'System Settings', '#', 'fa fa-desktop', 9, 1, 1),
(27, 16, 'settings', 'backup database', 'Backup Database', '#', 'fa fa-database', 11, 1, 1),
(28, 16, 'settings', 'custom fields', 'Custom Fields', '#', 'fa fa-list-alt', 12, 1, 1),
(29, 0, 'pm', 'timesheet', 'Timesheet', '/timesheet', 'fa fa-clock-o', 9, 1, 1),
(30, 16, 'settings', 'translations', 'Translations', '#', 'fa fa-language', 13, 1, 1),
(41, 0, 'pm', 'project management', 'Project Management', '#', 'fa fa-product-hunt', 0, 1, 0),
(42, 0, 'pm', 'project planner', 'Project Planner', '/projects-planner', 'fa fa-american-sign-language-interpreting', 4, 1, 1),
(43, 0, 'pm', 'projects', 'Projects', '/projects', 'fa fa-product-hunt', 5, 1, 1),
(44, 0, 'pm', 'tasks', 'Tasks', '/tasks', 'fa fa-tasks', 6, 1, 1),
(46, 0, 'pm', 'defects', 'Defects', '/defects', 'fa fa-bug', 7, 1, 1),
(47, 0, 'pm', 'incidents', 'Incidents', '/incidents', 'fa fa-ticket', 8, 1, 1),
(49, 0, 'pm', 'knowledge base', 'Knowledge Base', '/knowledgebase', 'fa fa-graduation-cap', 14, 1, 1),
(51, 0, 'pm', 'reports', 'Reports', '/reports', 'fa fa-bar-chart', 15, 1, 1),
(71, 0, 'crm', 'appointment', 'Appointments', '/appointments', 'fa fa-calendar-times-o', 11, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_modules`
--

CREATE TABLE `vipspm_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `module_slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active,0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_modules`
--

INSERT INTO `vipspm_modules` (`id`, `module_id`, `module_name`, `module_slug`, `status`) VALUES
(1, 1, 'Project', 'projects', 1),
(2, 2, 'Task', 'task', 1),
(3, 3, 'Defect', 'defect', 1),
(4, 4, 'Incident', 'incident', 1),
(5, 5, 'Meeting', 'meeting', 1),
(6, 6, 'Other', 'other', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_password_resets`
--

CREATE TABLE `vipspm_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_projects`
--

CREATE TABLE `vipspm_projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `generated_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `progress` int(11) NOT NULL DEFAULT '0',
  `project_hours` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=Progress Bar,1=Task Hours',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `billing_type` tinyint(4) DEFAULT NULL COMMENT '1=Fixed Rate,2=Hourly Rate',
  `price_rate` double(15,8) DEFAULT NULL,
  `estimated_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=Open,2=InProgress,3=OnHold,4=Cancel,5=Completed',
  `demo_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `project_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_to` tinyint(4) DEFAULT NULL,
  `assign_members` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_attachments`
--

CREATE TABLE `vipspm_project_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_description` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_comments`
--

CREATE TABLE `vipspm_project_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_sprints`
--

CREATE TABLE `vipspm_project_sprints` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `sprint_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Open,2=InProgress,3=Closed',
  `description` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_sprint_members`
--

CREATE TABLE `vipspm_project_sprint_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_sprint_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_sprint_tasks`
--

CREATE TABLE `vipspm_project_sprint_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_sprint_id` int(10) UNSIGNED DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Task:1=Open, 2=OnHold, 3=Closed, 4=Released|Story:1=Open, 2=InProgress, 3=Closed',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `estimated_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `assign_to` tinyint(4) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_sprint_task_members`
--

CREATE TABLE `vipspm_project_sprint_task_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_project_user`
--

CREATE TABLE `vipspm_project_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes',
  `edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes',
  `delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_providers`
--

CREATE TABLE `vipspm_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '1=Active,0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_roles`
--

CREATE TABLE `vipspm_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_roles`
--

INSERT INTO `vipspm_roles` (`id`, `name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'User has access to all system functionality.', '1', NULL, NULL),
(2, 'Manager', 'manager', 'Manager role.', '1', NULL, NULL),
(3, 'Staff', 'staff', 'Staff role.', '1', NULL, NULL),
(4, 'Client', 'client', 'Client role.', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_tasks`
--

CREATE TABLE `vipspm_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_task_id` int(11) NOT NULL DEFAULT '0',
  `generated_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `project_version` text COLLATE utf8_unicode_ci,
  `planned_start_date` date DEFAULT NULL,
  `planned_end_date` date DEFAULT NULL,
  `task_start_date` datetime DEFAULT NULL,
  `task_end_date` datetime DEFAULT NULL,
  `estimated_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_hours` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Open,2=In Progress,3=On Hold,4=Waiting For Some one,5=Cancel,6=Completed',
  `priority` int(11) NOT NULL COMMENT '1=Urgent,2=Very High,3=High,4=Medium,5=Low',
  `progress` int(11) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `assign_to` tinyint(4) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `notes` text COLLATE utf8_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_task_attachments`
--

CREATE TABLE `vipspm_task_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_task_comments`
--

CREATE TABLE `vipspm_task_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_task_user`
--

CREATE TABLE `vipspm_task_user` (
  `task_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes',
  `edit` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes',
  `delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_teams`
--

CREATE TABLE `vipspm_teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `team_leader` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_teams_members`
--

CREATE TABLE `vipspm_teams_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_timesheets`
--

CREATE TABLE `vipspm_timesheets` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `module_related_id` int(11) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `decimal_time` decimal(8,2) NOT NULL,
  `hour_time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `created_user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_todos`
--

CREATE TABLE `vipspm_todos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) NOT NULL,
  `module_related_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `due_date` date DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Open, 2=Completed',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_translations`
--

CREATE TABLE `vipspm_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vipspm_translations`
--

INSERT INTO `vipspm_translations` (`id`, `name`, `language`, `icon`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 'United-States.png', 1, NULL, NULL, NULL),
(2, 'Chinese', 'zh', 'China.png', 1, NULL, NULL, NULL),
(3, 'Czech', 'cs', 'Czech-Republic.png', 1, NULL, NULL, NULL),
(4, 'French', 'fr', 'France.png', 1, NULL, NULL, NULL),
(5, 'German', 'de', 'Germany.png', 1, NULL, NULL, NULL),
(6, 'Italian', 'it', 'Italy.png', 1, NULL, NULL, NULL),
(7, 'Japanese', 'ja', 'Japan.png', 1, NULL, NULL, NULL),
(8, 'Russian', 'ru', 'Russia.png', 1, NULL, NULL, NULL),
(9, 'Spanish', 'es', 'Spain.png', 1, NULL, NULL, NULL),
(10, 'Dutch', 'nl', 'Netherlands.png', 1, NULL, NULL, NULL),
(11, 'Portuguese', 'pt', 'Portugal.png', 1, NULL, NULL, NULL),
(12, 'Turkish', 'tr', 'Turkey.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_users`
--

CREATE TABLE `vipspm_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_generated_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(160) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_client` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=Active, 0=Inactive',
  `email_verified` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '1=Verified, 0=Unverified',
  `email_verification_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `online_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1=Online, 0=Offline',
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `emp_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en' COMMENT 'Used for app locale',
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `maritial_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permission` text COLLATE utf8_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_user_activities`
--

CREATE TABLE `vipspm_user_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `self_parent_id` int(11) DEFAULT NULL,
  `module_field_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `diff_for_humans` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_user_role_department`
--

CREATE TABLE `vipspm_user_role_department` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vipspm_user_settings`
--

CREATE TABLE `vipspm_user_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_legal_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_short_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'VipsPM',
  `contact_person` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8_unicode_ci,
  `company_country` bigint(20) DEFAULT NULL,
  `company_city` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_zipcode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_mark` tinyint(1) NOT NULL DEFAULT '0',
  `smtp_protocol` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smtp_encryption` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sparkpost_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailgun_domain` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailgun_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mandrill_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_announcement_notification` tinyint(1) NOT NULL DEFAULT '1',
  `active_cronjob` tinyint(1) NOT NULL DEFAULT '0',
  `automatic_backup` tinyint(1) NOT NULL DEFAULT '0',
  `daily_report_emails` text COLLATE utf8_unicode_ci,
  `last_autobackup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cronjob_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_cronjob_run` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_sidebar_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sidebar_background_images` text COLLATE utf8_unicode_ci,
  `is_announcement_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_activities_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_todos_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_meetings_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_projects_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_tasks_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_defects_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `is_incidents_dashboard` tinyint(1) NOT NULL DEFAULT '1',
  `default_language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_locale` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tables_pagination_limit` int(11) NOT NULL DEFAULT '10',
  `date_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'YYYY-MM-DD',
  `time_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'hh:mm A',
  `date_time_format` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'YYYY-MM-DD hh:mm A',
  `purchase_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_coder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `update_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_collapsed_menu` tinyint(1) NOT NULL DEFAULT '0',
  `is_sidebar_background` tinyint(1) NOT NULL DEFAULT '1',
  `theme_layout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'light',
  `sidebar_bg_color` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pomegranate-gr',
  `sidebar_transparent_bg_image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'bg_glass_1',
  `sidebar_bg_custom_color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#000000',
  `sidebar_font_color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'black',
  `sidebar_width` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'medium',
  `sidebar_bg_image` int(11) NOT NULL DEFAULT '0',
  `product_version` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_announcements`
--
ALTER TABLE `vipspm_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_announcements_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_appointment`
--
ALTER TABLE `vipspm_appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_appointment_user_id_index` (`user_id`),
  ADD KEY `vipspm_appointment_provider_id_index` (`provider_id`);

--
-- Indexes for table `vipspm_clients`
--
ALTER TABLE `vipspm_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_clients_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_countries`
--
ALTER TABLE `vipspm_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_currency`
--
ALTER TABLE `vipspm_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_custom_fields`
--
ALTER TABLE `vipspm_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_custom_fields_form_id_foreign` (`form_id`);

--
-- Indexes for table `vipspm_database_backups`
--
ALTER TABLE `vipspm_database_backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_database_backups_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_defects`
--
ALTER TABLE `vipspm_defects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_defects_history`
--
ALTER TABLE `vipspm_defects_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_defects_history_defect_id_foreign` (`defect_id`);

--
-- Indexes for table `vipspm_defect_attachments`
--
ALTER TABLE `vipspm_defect_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_defect_attachments_defect_id_index` (`defect_id`);

--
-- Indexes for table `vipspm_defect_comments`
--
ALTER TABLE `vipspm_defect_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_defect_comments_user_id_foreign` (`user_id`),
  ADD KEY `vipspm_defect_comments_defect_id_index` (`defect_id`);

--
-- Indexes for table `vipspm_defect_user`
--
ALTER TABLE `vipspm_defect_user`
  ADD PRIMARY KEY (`defect_id`,`user_id`),
  ADD KEY `vipspm_defect_user_defect_id_index` (`defect_id`),
  ADD KEY `vipspm_defect_user_user_id_index` (`user_id`);

--
-- Indexes for table `vipspm_departments`
--
ALTER TABLE `vipspm_departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vipspm_departments_name_deleted_at_unique` (`name`,`deleted_at`);

--
-- Indexes for table `vipspm_departments_roles`
--
ALTER TABLE `vipspm_departments_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_departments_roles_role_id_index` (`role_id`),
  ADD KEY `vipspm_departments_roles_department_id_index` (`department_id`);

--
-- Indexes for table `vipspm_department_role_menu`
--
ALTER TABLE `vipspm_department_role_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_department_role_menu_department_id_index` (`department_id`),
  ADD KEY `vipspm_department_role_menu_role_id_index` (`role_id`),
  ADD KEY `vipspm_department_role_menu_menu_id_index` (`menu_id`);

--
-- Indexes for table `vipspm_email_inbox`
--
ALTER TABLE `vipspm_email_inbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_email_inbox_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_email_inbox_attachment`
--
ALTER TABLE `vipspm_email_inbox_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_email_inbox_attachment_mailbox_id_foreign` (`mailbox_id`);

--
-- Indexes for table `vipspm_email_template`
--
ALTER TABLE `vipspm_email_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vipspm_email_template_template_name_deleted_at_unique` (`template_name`,`deleted_at`),
  ADD KEY `vipspm_email_template_email_group_id_foreign` (`email_group_id`);

--
-- Indexes for table `vipspm_email_template_groups`
--
ALTER TABLE `vipspm_email_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_files`
--
ALTER TABLE `vipspm_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_files_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_folders`
--
ALTER TABLE `vipspm_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_folders_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_form`
--
ALTER TABLE `vipspm_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_holidays`
--
ALTER TABLE `vipspm_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_incidents`
--
ALTER TABLE `vipspm_incidents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_incident_attachments`
--
ALTER TABLE `vipspm_incident_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_incident_attachments_incident_id_index` (`incident_id`);

--
-- Indexes for table `vipspm_incident_comments`
--
ALTER TABLE `vipspm_incident_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_incident_comments_user_id_foreign` (`user_id`),
  ADD KEY `vipspm_incident_comments_incident_id_index` (`incident_id`);

--
-- Indexes for table `vipspm_incident_history`
--
ALTER TABLE `vipspm_incident_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_incident_history_incident_id_foreign` (`incident_id`);

--
-- Indexes for table `vipspm_incident_user`
--
ALTER TABLE `vipspm_incident_user`
  ADD PRIMARY KEY (`incident_id`,`user_id`),
  ADD KEY `vipspm_incident_user_incident_id_index` (`incident_id`),
  ADD KEY `vipspm_incident_user_user_id_index` (`user_id`);

--
-- Indexes for table `vipspm_knowledge_base_article`
--
ALTER TABLE `vipspm_knowledge_base_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_knowledge_base_article_user_id_foreign` (`user_id`),
  ADD KEY `vipspm_knowledge_base_article_category_id_index` (`category_id`);

--
-- Indexes for table `vipspm_knowledge_base_category`
--
ALTER TABLE `vipspm_knowledge_base_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_knowledge_base_category_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_languages`
--
ALTER TABLE `vipspm_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_locales`
--
ALTER TABLE `vipspm_locales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_meetings`
--
ALTER TABLE `vipspm_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_meetings_organizer_id_foreign` (`organizer_id`);

--
-- Indexes for table `vipspm_meeting_members`
--
ALTER TABLE `vipspm_meeting_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_meeting_members_user_id_foreign` (`user_id`),
  ADD KEY `vipspm_meeting_members_meeting_id_foreign` (`meeting_id`);

--
-- Indexes for table `vipspm_menus`
--
ALTER TABLE `vipspm_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_modules`
--
ALTER TABLE `vipspm_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_password_resets`
--
ALTER TABLE `vipspm_password_resets`
  ADD KEY `vipspm_password_resets_email_index` (`email`);

--
-- Indexes for table `vipspm_projects`
--
ALTER TABLE `vipspm_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vipspm_projects_project_name_deleted_at_unique` (`project_name`,`deleted_at`);

--
-- Indexes for table `vipspm_project_attachments`
--
ALTER TABLE `vipspm_project_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_project_attachments_project_id_foreign` (`project_id`);

--
-- Indexes for table `vipspm_project_comments`
--
ALTER TABLE `vipspm_project_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_project_comments_user_id_foreign` (`user_id`),
  ADD KEY `vipspm_project_comments_project_id_foreign` (`project_id`);

--
-- Indexes for table `vipspm_project_sprints`
--
ALTER TABLE `vipspm_project_sprints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_project_sprints_project_id_foreign` (`project_id`);

--
-- Indexes for table `vipspm_project_sprint_members`
--
ALTER TABLE `vipspm_project_sprint_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_project_sprint_members_project_sprint_id_foreign` (`project_sprint_id`),
  ADD KEY `vipspm_project_sprint_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_project_sprint_tasks`
--
ALTER TABLE `vipspm_project_sprint_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_project_sprint_tasks_project_sprint_id_foreign` (`project_sprint_id`);

--
-- Indexes for table `vipspm_project_sprint_task_members`
--
ALTER TABLE `vipspm_project_sprint_task_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_project_sprint_task_members_task_id_foreign` (`task_id`),
  ADD KEY `vipspm_project_sprint_task_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_project_user`
--
ALTER TABLE `vipspm_project_user`
  ADD PRIMARY KEY (`project_id`,`user_id`),
  ADD KEY `vipspm_project_user_user_id_index` (`user_id`),
  ADD KEY `vipspm_project_user_project_id_index` (`project_id`);

--
-- Indexes for table `vipspm_providers`
--
ALTER TABLE `vipspm_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_roles`
--
ALTER TABLE `vipspm_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vipspm_roles_slug_unique` (`slug`);

--
-- Indexes for table `vipspm_tasks`
--
ALTER TABLE `vipspm_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_tasks_project_id_index` (`project_id`);

--
-- Indexes for table `vipspm_task_attachments`
--
ALTER TABLE `vipspm_task_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_task_attachments_task_id_index` (`task_id`);

--
-- Indexes for table `vipspm_task_comments`
--
ALTER TABLE `vipspm_task_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_task_comments_user_id_foreign` (`user_id`),
  ADD KEY `vipspm_task_comments_task_id_index` (`task_id`);

--
-- Indexes for table `vipspm_task_user`
--
ALTER TABLE `vipspm_task_user`
  ADD PRIMARY KEY (`task_id`,`user_id`),
  ADD KEY `vipspm_task_user_task_id_index` (`task_id`),
  ADD KEY `vipspm_task_user_user_id_index` (`user_id`);

--
-- Indexes for table `vipspm_teams`
--
ALTER TABLE `vipspm_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_teams_members`
--
ALTER TABLE `vipspm_teams_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_teams_members_team_id_foreign` (`team_id`),
  ADD KEY `vipspm_teams_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_timesheets`
--
ALTER TABLE `vipspm_timesheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_timesheets_created_user_id_index` (`created_user_id`);

--
-- Indexes for table `vipspm_todos`
--
ALTER TABLE `vipspm_todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_todos_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_translations`
--
ALTER TABLE `vipspm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vipspm_users`
--
ALTER TABLE `vipspm_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vipspm_users_username_deleted_at_unique` (`username`,`deleted_at`),
  ADD UNIQUE KEY `vipspm_users_email_deleted_at_unique` (`email`,`deleted_at`);

--
-- Indexes for table `vipspm_user_activities`
--
ALTER TABLE `vipspm_user_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_user_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `vipspm_user_role_department`
--
ALTER TABLE `vipspm_user_role_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vipspm_user_role_department_department_id_index` (`department_id`),
  ADD KEY `vipspm_user_role_department_role_id_index` (`role_id`),
  ADD KEY `vipspm_user_role_department_user_id_index` (`user_id`);

--
-- Indexes for table `vipspm_user_settings`
--
ALTER TABLE `vipspm_user_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `vipspm_announcements`
--
ALTER TABLE `vipspm_announcements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_appointment`
--
ALTER TABLE `vipspm_appointment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_clients`
--
ALTER TABLE `vipspm_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_countries`
--
ALTER TABLE `vipspm_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `vipspm_currency`
--
ALTER TABLE `vipspm_currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `vipspm_custom_fields`
--
ALTER TABLE `vipspm_custom_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_database_backups`
--
ALTER TABLE `vipspm_database_backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_defects`
--
ALTER TABLE `vipspm_defects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_defects_history`
--
ALTER TABLE `vipspm_defects_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_defect_attachments`
--
ALTER TABLE `vipspm_defect_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_defect_comments`
--
ALTER TABLE `vipspm_defect_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_departments`
--
ALTER TABLE `vipspm_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vipspm_departments_roles`
--
ALTER TABLE `vipspm_departments_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vipspm_department_role_menu`
--
ALTER TABLE `vipspm_department_role_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `vipspm_email_inbox`
--
ALTER TABLE `vipspm_email_inbox`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_email_inbox_attachment`
--
ALTER TABLE `vipspm_email_inbox_attachment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_email_template`
--
ALTER TABLE `vipspm_email_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `vipspm_email_template_groups`
--
ALTER TABLE `vipspm_email_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vipspm_files`
--
ALTER TABLE `vipspm_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_folders`
--
ALTER TABLE `vipspm_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_form`
--
ALTER TABLE `vipspm_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vipspm_holidays`
--
ALTER TABLE `vipspm_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_incidents`
--
ALTER TABLE `vipspm_incidents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_incident_attachments`
--
ALTER TABLE `vipspm_incident_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_incident_comments`
--
ALTER TABLE `vipspm_incident_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_incident_history`
--
ALTER TABLE `vipspm_incident_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_knowledge_base_article`
--
ALTER TABLE `vipspm_knowledge_base_article`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_knowledge_base_category`
--
ALTER TABLE `vipspm_knowledge_base_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_languages`
--
ALTER TABLE `vipspm_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `vipspm_locales`
--
ALTER TABLE `vipspm_locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `vipspm_meetings`
--
ALTER TABLE `vipspm_meetings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_meeting_members`
--
ALTER TABLE `vipspm_meeting_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_menus`
--
ALTER TABLE `vipspm_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `vipspm_modules`
--
ALTER TABLE `vipspm_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vipspm_projects`
--
ALTER TABLE `vipspm_projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_project_attachments`
--
ALTER TABLE `vipspm_project_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_project_comments`
--
ALTER TABLE `vipspm_project_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_project_sprints`
--
ALTER TABLE `vipspm_project_sprints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_project_sprint_members`
--
ALTER TABLE `vipspm_project_sprint_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_project_sprint_tasks`
--
ALTER TABLE `vipspm_project_sprint_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_project_sprint_task_members`
--
ALTER TABLE `vipspm_project_sprint_task_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_providers`
--
ALTER TABLE `vipspm_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_roles`
--
ALTER TABLE `vipspm_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vipspm_tasks`
--
ALTER TABLE `vipspm_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_task_attachments`
--
ALTER TABLE `vipspm_task_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_task_comments`
--
ALTER TABLE `vipspm_task_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_teams`
--
ALTER TABLE `vipspm_teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_teams_members`
--
ALTER TABLE `vipspm_teams_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_timesheets`
--
ALTER TABLE `vipspm_timesheets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_todos`
--
ALTER TABLE `vipspm_todos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_translations`
--
ALTER TABLE `vipspm_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `vipspm_users`
--
ALTER TABLE `vipspm_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_user_activities`
--
ALTER TABLE `vipspm_user_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_user_role_department`
--
ALTER TABLE `vipspm_user_role_department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vipspm_user_settings`
--
ALTER TABLE `vipspm_user_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vipspm_announcements`
--
ALTER TABLE `vipspm_announcements`
  ADD CONSTRAINT `vipspm_announcements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`);

--
-- Constraints for table `vipspm_appointment`
--
ALTER TABLE `vipspm_appointment`
  ADD CONSTRAINT `vipspm_appointment_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `vipspm_providers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_appointment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_clients`
--
ALTER TABLE `vipspm_clients`
  ADD CONSTRAINT `vipspm_clients_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_custom_fields`
--
ALTER TABLE `vipspm_custom_fields`
  ADD CONSTRAINT `vipspm_custom_fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `vipspm_form` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_database_backups`
--
ALTER TABLE `vipspm_database_backups`
  ADD CONSTRAINT `vipspm_database_backups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_defects_history`
--
ALTER TABLE `vipspm_defects_history`
  ADD CONSTRAINT `vipspm_defects_history_defect_id_foreign` FOREIGN KEY (`defect_id`) REFERENCES `vipspm_defects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_defect_attachments`
--
ALTER TABLE `vipspm_defect_attachments`
  ADD CONSTRAINT `vipspm_defect_attachments_defect_id_foreign` FOREIGN KEY (`defect_id`) REFERENCES `vipspm_defects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_defect_comments`
--
ALTER TABLE `vipspm_defect_comments`
  ADD CONSTRAINT `vipspm_defect_comments_defect_id_foreign` FOREIGN KEY (`defect_id`) REFERENCES `vipspm_defects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_defect_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_defect_user`
--
ALTER TABLE `vipspm_defect_user`
  ADD CONSTRAINT `vipspm_defect_user_defect_id_foreign` FOREIGN KEY (`defect_id`) REFERENCES `vipspm_defects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_defect_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_departments_roles`
--
ALTER TABLE `vipspm_departments_roles`
  ADD CONSTRAINT `vipspm_departments_roles_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `vipspm_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_departments_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `vipspm_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_department_role_menu`
--
ALTER TABLE `vipspm_department_role_menu`
  ADD CONSTRAINT `vipspm_department_role_menu_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `vipspm_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_department_role_menu_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `vipspm_menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_department_role_menu_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `vipspm_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_email_inbox`
--
ALTER TABLE `vipspm_email_inbox`
  ADD CONSTRAINT `vipspm_email_inbox_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_email_inbox_attachment`
--
ALTER TABLE `vipspm_email_inbox_attachment`
  ADD CONSTRAINT `vipspm_email_inbox_attachment_mailbox_id_foreign` FOREIGN KEY (`mailbox_id`) REFERENCES `vipspm_email_inbox` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vipspm_email_template`
--
ALTER TABLE `vipspm_email_template`
  ADD CONSTRAINT `vipspm_email_template_email_group_id_foreign` FOREIGN KEY (`email_group_id`) REFERENCES `vipspm_email_template_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vipspm_files`
--
ALTER TABLE `vipspm_files`
  ADD CONSTRAINT `vipspm_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_folders`
--
ALTER TABLE `vipspm_folders`
  ADD CONSTRAINT `vipspm_folders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_incident_attachments`
--
ALTER TABLE `vipspm_incident_attachments`
  ADD CONSTRAINT `vipspm_incident_attachments_incident_id_foreign` FOREIGN KEY (`incident_id`) REFERENCES `vipspm_incidents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_incident_comments`
--
ALTER TABLE `vipspm_incident_comments`
  ADD CONSTRAINT `vipspm_incident_comments_incident_id_foreign` FOREIGN KEY (`incident_id`) REFERENCES `vipspm_incidents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_incident_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_incident_history`
--
ALTER TABLE `vipspm_incident_history`
  ADD CONSTRAINT `vipspm_incident_history_incident_id_foreign` FOREIGN KEY (`incident_id`) REFERENCES `vipspm_incidents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_incident_user`
--
ALTER TABLE `vipspm_incident_user`
  ADD CONSTRAINT `vipspm_incident_user_incident_id_foreign` FOREIGN KEY (`incident_id`) REFERENCES `vipspm_incidents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_incident_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_knowledge_base_article`
--
ALTER TABLE `vipspm_knowledge_base_article`
  ADD CONSTRAINT `vipspm_knowledge_base_article_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `vipspm_knowledge_base_category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_knowledge_base_article_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_knowledge_base_category`
--
ALTER TABLE `vipspm_knowledge_base_category`
  ADD CONSTRAINT `vipspm_knowledge_base_category_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_meetings`
--
ALTER TABLE `vipspm_meetings`
  ADD CONSTRAINT `vipspm_meetings_organizer_id_foreign` FOREIGN KEY (`organizer_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_meeting_members`
--
ALTER TABLE `vipspm_meeting_members`
  ADD CONSTRAINT `vipspm_meeting_members_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `vipspm_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_meeting_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_attachments`
--
ALTER TABLE `vipspm_project_attachments`
  ADD CONSTRAINT `vipspm_project_attachments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `vipspm_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_comments`
--
ALTER TABLE `vipspm_project_comments`
  ADD CONSTRAINT `vipspm_project_comments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `vipspm_projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_project_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_sprints`
--
ALTER TABLE `vipspm_project_sprints`
  ADD CONSTRAINT `vipspm_project_sprints_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `vipspm_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_sprint_members`
--
ALTER TABLE `vipspm_project_sprint_members`
  ADD CONSTRAINT `vipspm_project_sprint_members_project_sprint_id_foreign` FOREIGN KEY (`project_sprint_id`) REFERENCES `vipspm_project_sprints` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_project_sprint_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_sprint_tasks`
--
ALTER TABLE `vipspm_project_sprint_tasks`
  ADD CONSTRAINT `vipspm_project_sprint_tasks_project_sprint_id_foreign` FOREIGN KEY (`project_sprint_id`) REFERENCES `vipspm_project_sprints` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_sprint_task_members`
--
ALTER TABLE `vipspm_project_sprint_task_members`
  ADD CONSTRAINT `vipspm_project_sprint_task_members_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `vipspm_project_sprint_tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_project_sprint_task_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_project_user`
--
ALTER TABLE `vipspm_project_user`
  ADD CONSTRAINT `vipspm_project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `vipspm_projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_tasks`
--
ALTER TABLE `vipspm_tasks`
  ADD CONSTRAINT `vipspm_tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `vipspm_projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_task_attachments`
--
ALTER TABLE `vipspm_task_attachments`
  ADD CONSTRAINT `vipspm_task_attachments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `vipspm_tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_task_comments`
--
ALTER TABLE `vipspm_task_comments`
  ADD CONSTRAINT `vipspm_task_comments_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `vipspm_tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_task_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_task_user`
--
ALTER TABLE `vipspm_task_user`
  ADD CONSTRAINT `vipspm_task_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `vipspm_tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_task_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_teams_members`
--
ALTER TABLE `vipspm_teams_members`
  ADD CONSTRAINT `vipspm_teams_members_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `vipspm_teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_teams_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_timesheets`
--
ALTER TABLE `vipspm_timesheets`
  ADD CONSTRAINT `vipspm_timesheets_created_user_id_foreign` FOREIGN KEY (`created_user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_todos`
--
ALTER TABLE `vipspm_todos`
  ADD CONSTRAINT `vipspm_todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vipspm_user_activities`
--
ALTER TABLE `vipspm_user_activities`
  ADD CONSTRAINT `vipspm_user_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`);

--
-- Constraints for table `vipspm_user_role_department`
--
ALTER TABLE `vipspm_user_role_department`
  ADD CONSTRAINT `vipspm_user_role_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `vipspm_departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_user_role_department_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `vipspm_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vipspm_user_role_department_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `vipspm_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
