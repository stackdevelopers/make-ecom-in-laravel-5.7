-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 03:07 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'fcea920f7412b5da7be0cf42b8c93759', 1, '2018-12-15 00:00:00', '2018-12-15 10:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, '94972.png', 'Banner Image 1', 'products/t-shirts1', 1, '2018-08-05 14:33:27', '2018-08-07 15:59:17'),
(2, '66584.png', 'Banner Image', 'products/t-shirts', 1, '2018-08-05 14:34:06', '2018-08-05 14:34:06'),
(4, '71958.png', 'Test Banner', 'products/shoes', 1, '2018-08-07 16:13:25', '2018-08-07 16:13:25');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `product_code`, `product_color`, `size`, `price`, `quantity`, `user_email`, `session_id`, `created_at`, `updated_at`) VALUES
(3, 9, 'Green TShirt', 'GTS001-S', 'Green', 'Small', 500.00, 1, 'test@yopmail.com', 'K8vAJAL6y1H34iowSsfLczuwx0n5RYrcjuGfoeZI', NULL, NULL),
(4, 11, 'Sports TShirt', 'FTS001-S', 'Black', 'Small', 1200.00, 2, '', '98zj0JI51jLZRvzSYR22nhR66x8dJDQt4VTEy2ti', NULL, NULL),
(5, 10, 'Blue Casual Tshirt', 'BCT01-S', 'Blue', 'Small', 1500.00, 1, '', '98zj0JI51jLZRvzSYR22nhR66x8dJDQt4VTEy2ti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `url`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'T-Shirts', NULL, 't-shirts', 1, NULL, '2018-03-26 09:20:29', '2018-03-26 09:20:29'),
(2, 0, 'Shoes', NULL, 'shoes', 1, NULL, '2018-03-26 10:25:46', '2018-03-26 10:25:46'),
(3, 1, 'Formal T-Shirts', 'test', 'format-tshirts', 1, NULL, '2018-03-26 11:47:41', '2018-03-26 12:03:19'),
(4, 2, 'Formal Shoes', NULL, 'formal-shoes', 1, NULL, '2018-05-02 08:58:00', '2018-05-02 08:58:00'),
(5, 1, 'Casual T-Shirts', NULL, 'casual-t-shirts', 1, NULL, '2018-05-02 09:00:27', '2018-05-19 22:34:21'),
(6, 1, 'Sports T-Shirts', 'test', 'sports-tshirts', 1, NULL, '2018-05-09 10:55:52', '2018-05-10 08:36:55'),
(7, 1, 'Test T-shirts', 'tet', 'test', 0, NULL, '2018-05-09 10:56:56', '2018-05-09 10:56:56'),
(8, 0, 'Shirts', NULL, 'shirts', 1, NULL, '2018-11-30 12:10:39', '2018-11-30 12:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `amount`, `amount_type`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test15', 15, 'Percentage', '2018-08-31', 0, '2018-07-13 15:11:19', '2018-10-04 20:28:09'),
(3, 'test150', 150, 'Fixed', '2018-11-30', 1, '2018-07-16 16:57:39', '2018-11-04 03:03:50'),
(4, 'test10', 10, 'Percentage', '2018-10-31', 1, '2018-07-22 03:36:00', '2018-10-19 08:19:35');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 2, 'amit100@yopmail.com', 'Amit Gupta', '12345 Civil Lines', 'Ludhiana', 'Punjab', 'India', '141001', '9700000000', '2018-12-30 08:33:29', '2018-12-30 03:03:29'),
(2, 8, 'steve@yopmail.com', 'Steve', 'Test Address', 'Ludhiana', 'Punjab', 'India', '141001', '08054711805', '2018-10-19 15:58:17', '2018-10-19 10:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_18_090951_create_category_table', 2),
(4, '2018_03_18_100532_add_url_to_categories', 3),
(5, '2018_03_29_144354_create_products_table', 4),
(6, '2018_04_16_135232_create_products_attributes_table', 5),
(7, '2018_06_21_174929_create_cart_table', 6),
(8, '2018_07_09_150844_create_coupons_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_amount` float NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, 'test10', 340, 'Paid', 'COD', 3060, '2018-10-28 10:08:22', '2018-12-09 07:51:36'),
(2, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, 'test150', 150, 'New', 'COD', 1850, '2018-11-04 08:35:33', '2018-11-04 03:05:33'),
(3, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, 'test150', 150, 'New', 'COD', 4050, '2018-11-04 08:38:16', '2018-11-04 03:08:16'),
(4, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'Cancelled', 'COD', 4200, '2018-11-08 08:32:00', '2018-12-09 07:50:04'),
(5, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 500, '2018-11-12 15:29:39', '2018-11-12 09:59:39'),
(6, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 1200, '2018-11-12 15:43:05', '2018-11-12 10:13:05'),
(7, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 1500, '2018-11-12 15:45:15', '2018-11-12 10:15:15'),
(8, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 3700, '2018-11-12 15:54:45', '2018-11-12 10:24:45'),
(9, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 2200, '2018-11-12 15:56:39', '2018-11-12 10:26:39'),
(10, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 2200, '2018-11-12 15:59:14', '2018-11-12 10:29:14'),
(11, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 2200, '2018-11-12 16:06:19', '2018-11-12 10:36:19'),
(12, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 2200, '2018-11-12 16:36:11', '2018-11-12 11:06:11'),
(13, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 500, '2018-11-12 16:37:36', '2018-11-12 11:07:36'),
(14, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 2200, '2018-11-12 16:38:49', '2018-11-12 11:08:49'),
(15, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 500, '2018-11-13 16:31:50', '2018-11-13 11:01:50'),
(16, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 2200, '2018-11-13 16:37:37', '2018-11-13 11:07:37'),
(17, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'Paypal', 500, '2018-11-16 11:27:13', '2018-11-16 05:57:13'),
(18, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 500, '2018-12-29 13:47:49', '2018-12-29 08:17:49'),
(19, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-29 13:53:37', '2018-12-29 08:23:37'),
(20, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-29 13:55:09', '2018-12-29 08:25:09'),
(21, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-29 14:04:34', '2018-12-29 08:34:34'),
(22, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-29 14:10:27', '2018-12-29 08:40:27'),
(23, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-30 08:03:07', '2018-12-30 02:33:07'),
(24, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-30 08:04:18', '2018-12-30 02:34:18'),
(25, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-30 08:09:39', '2018-12-30 02:39:39'),
(26, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 1700, '2018-12-30 08:15:14', '2018-12-30 02:45:14'),
(27, 2, 'amit100@yopmail.com', 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', '141001', 'India', '9800000000', 0, '', 0, 'New', 'COD', 3400, '2018-12-30 08:24:06', '2018-12-30 02:54:06'),
(28, 2, 'amit100@yopmail.com', 'Amit Gupta', '12345 Civil Lines', 'Ludhiana', 'Punjab', '141001', 'India', '9700000000', 0, '', 0, 'New', 'COD', 5900, '2018-12-30 08:33:36', '2018-12-30 03:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_size` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-10-28 10:08:22', '2018-10-28 04:38:22'),
(2, 1, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-10-28 10:08:22', '2018-10-28 04:38:22'),
(3, 2, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-04 08:35:34', '2018-11-04 03:05:34'),
(4, 2, 2, 10, 'BCT01-M', 'Blue Casual Tshirt', 'Medium', 'Blue', 1500, 1, '2018-11-04 08:35:36', '2018-11-04 03:05:36'),
(5, 3, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-04 08:38:16', '2018-11-04 03:08:16'),
(6, 3, 2, 10, 'BCT01-M', 'Blue Casual Tshirt', 'Medium', 'Blue', 1500, 1, '2018-11-04 08:38:16', '2018-11-04 03:08:16'),
(7, 3, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-04 08:38:16', '2018-11-04 03:08:16'),
(8, 4, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-08 08:32:00', '2018-11-08 03:02:00'),
(9, 4, 2, 10, 'BCT01-M', 'Blue Casual Tshirt', 'Medium', 'Blue', 1500, 1, '2018-11-08 08:32:00', '2018-11-08 03:02:00'),
(10, 4, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-08 08:32:00', '2018-11-08 03:02:00'),
(11, 5, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-12 15:29:39', '2018-11-12 09:59:39'),
(12, 6, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-11-12 15:43:08', '2018-11-12 10:13:08'),
(13, 7, 2, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 1, '2018-11-12 15:45:16', '2018-11-12 10:15:16'),
(14, 8, 2, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 1, '2018-11-12 15:54:45', '2018-11-12 10:24:45'),
(15, 8, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-12 15:54:45', '2018-11-12 10:24:45'),
(16, 9, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-12 15:56:39', '2018-11-12 10:26:39'),
(17, 10, 2, 9, 'GTS001-M', 'Green TShirt', 'Medium', 'Green', 2200, 1, '2018-11-12 15:59:14', '2018-11-12 10:29:14'),
(18, 11, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-12 16:06:20', '2018-11-12 10:36:20'),
(19, 12, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-12 16:36:13', '2018-11-12 11:06:13'),
(20, 13, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-12 16:37:36', '2018-11-12 11:07:36'),
(21, 14, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-12 16:38:52', '2018-11-12 11:08:52'),
(22, 15, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-13 16:31:50', '2018-11-13 11:01:50'),
(23, 16, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-11-13 16:37:37', '2018-11-13 11:07:37'),
(24, 17, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-11-16 11:27:14', '2018-11-16 05:57:14'),
(25, 18, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-29 13:47:49', '2018-12-29 08:17:49'),
(26, 19, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-29 13:53:39', '2018-12-29 08:23:39'),
(27, 19, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-29 13:53:39', '2018-12-29 08:23:39'),
(28, 20, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-29 13:55:11', '2018-12-29 08:25:11'),
(29, 20, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-29 13:55:11', '2018-12-29 08:25:11'),
(30, 21, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-29 14:04:36', '2018-12-29 08:34:36'),
(31, 21, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-29 14:04:36', '2018-12-29 08:34:36'),
(32, 22, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-29 14:10:29', '2018-12-29 08:40:29'),
(33, 22, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-29 14:10:29', '2018-12-29 08:40:29'),
(34, 23, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-30 08:03:10', '2018-12-30 02:33:10'),
(35, 23, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-30 08:03:10', '2018-12-30 02:33:10'),
(36, 24, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-30 08:04:18', '2018-12-30 02:34:18'),
(37, 24, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-30 08:04:18', '2018-12-30 02:34:18'),
(38, 25, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-30 08:09:40', '2018-12-30 02:39:40'),
(39, 25, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-30 08:09:40', '2018-12-30 02:39:40'),
(40, 26, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 500, 1, '2018-12-30 08:15:16', '2018-12-30 02:45:16'),
(41, 26, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-30 08:15:16', '2018-12-30 02:45:16'),
(42, 27, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-12-30 08:24:06', '2018-12-30 02:54:06'),
(43, 27, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 1200, 1, '2018-12-30 08:24:06', '2018-12-30 02:54:06'),
(44, 28, 2, 9, 'GTS001-S', 'Green TShirt', 'Small', 'Green', 2200, 1, '2018-12-30 08:33:36', '2018-12-30 03:03:36'),
(45, 28, 2, 10, 'BCT01-S', 'Blue Casual Tshirt', 'Small', 'Blue', 1500, 1, '2018-12-30 08:33:36', '2018-12-30 03:03:36'),
(46, 28, 2, 11, 'FTS001-S', 'Sports TShirt', 'Small', 'Black', 2200, 1, '2018-12-30 08:33:36', '2018-12-30 03:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(9, 5, 'Green TShirt', 'GTS001', 'Green', 'test', 'test', 2200.00, '76925.jpg', 1, '2018-04-14 08:34:05', '2018-12-21 19:56:58'),
(10, 3, 'Blue Casual Tshirt', 'BCT011', 'Blue', '', '', 1500.00, '52109.jpg', 1, '2018-04-14 08:34:29', '2019-01-09 10:13:30'),
(11, 6, 'Sports TShirt', 'FTS001', 'Black', '', '', 2200.00, '28449.jpg', 1, '2018-05-06 03:39:16', '2018-05-10 08:31:54'),
(12, 5, 'Blue Casual Tshirt', 'BCT012', 'Blue', 'Blue Casual Tshirt has a round neck, half sleeves', '', 2200.00, '83971.png', 1, '2018-05-19 22:21:22', '2019-01-09 10:13:43'),
(13, 5, 'Blue Casual Tshirt', 'BCT01', 'Blue', 'test', '', 1000.00, '51771.jpg', 1, '2018-05-19 22:22:27', '2018-05-19 22:22:27'),
(14, 5, 'Blue Casual Tshirt', 'BCT03', 'Blue', 'test', 'test1', 1000.00, '9988.jpg', 1, '2018-05-19 22:29:25', '2019-01-09 10:13:58'),
(17, 5, 'Blue Casual Tshirt', 'BCT06', 'Blue', '', '', 1000.00, '57345.jpg', 0, '2018-06-16 09:29:01', '2019-01-09 10:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(3, 9, 'GTS001-S', 'Small', 500.00, 30, '2018-04-18 12:18:02', '2018-12-30 21:19:18'),
(5, 9, 'GTS001-M', 'Medium', 1000.00, 20, '2018-04-18 12:18:23', '2018-12-30 21:19:19'),
(6, 10, 'BCT01-S', 'Small', 1500.00, 2, '2018-05-15 11:40:25', '2018-07-07 10:17:09'),
(7, 10, 'BCT01-M', 'Medium', 1800.00, 2, '2018-05-15 11:40:28', '2018-07-07 10:17:11'),
(8, 11, 'FTS001-S', 'Small', 1200.00, 10, '2018-06-26 09:18:35', '2018-06-26 09:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 9, '69412.jpg', '2018-05-26 17:32:58', '2018-05-26 12:02:58'),
(4, 9, '81426.png', '2018-05-26 17:32:59', '2018-05-26 12:02:59'),
(5, 9, '86890.jpg', '2018-05-26 17:33:00', '2018-05-26 12:03:00'),
(6, 9, '15927.jpg', '2018-06-02 14:30:10', '2018-06-02 09:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Amit Gupta', '', '', '', '', '', '', 'amitphpprogrammer@gmail.com', '$2y$10$3I6cLW6xNL1IZVec1UPahOdA/S4PbXAh2SCoRMOPUE.EqTBV06mFu', 1, 0, 'DYtCJ20Ne5ygScQWPHOokeYOMXbKV2BOF2mYkJHskHWGg0tDCqoP50d0joBa', '2018-03-09 09:18:34', '2018-06-04 09:56:05'),
(2, 'Amit Gupta', '123 Mall Road', 'New Delhi', 'Delhi', 'India', '141001', '9800000000', 'amit100@yopmail.com', '$2y$10$sDJnlwhote4WHLdCS1er5O5oZMnZKGoDv4WbnH.3bb4IwOOlL5htS', 0, 1, '8wjEESdfe6BLjV48AUsai9Zv0taz3ylvQqq7lEd9lgJVUdLzHqfWGVGUdFwm', '2018-08-31 09:17:18', '2018-12-30 03:03:29'),
(3, 'Amit Gupta', '', '', '', '', '', '', 'amit100646@yopmail.com', '$2y$10$dD3FmfhMJHWNxClkx5cfu.zEqV16K0bOR9WJLWF0ZpEgeoWDT.o32', 0, 0, 'AUaLi6uH21i9eaOXbFlNriHGMo3BoxpBNh8ABkcrgv5hH9mKfFiQBscBkJsn', '2018-08-31 09:18:19', '2018-08-31 09:18:19'),
(4, 'John', '', '', '', '', '', '', 'john@yopmail.com', '$2y$10$CNwOV/ocptJajX7hwWe8wO86PFJwTvYkjjQWSLGGOxChAl.BBBipO', 0, 0, '2IGUMgzO09iGYUdJYcQQJC6bdTLBBPq3BsLKcojdby09Vc42Bmv2F1PsEcN8', '2018-08-31 09:26:01', '2018-08-31 09:26:01'),
(5, 'Mike', '', '', '', '', '', '', 'mike1000@yahoo.com', '$2y$10$a9fgfK/K/jdJFxGQVavPM.3UvXC2FWpRzV/H4sytx1.NMwz/UlMBi', 0, 0, '9HdPQabUf8s75UZ4gKKI2vWD9c74rRAnoGLFt5WwVOpDQc2zLy1dQFwpXPAZ', '2018-09-01 11:35:21', '2018-09-01 11:35:21'),
(6, 'Raj', '', '', '', '', '', '', 'raj@gmail.com', '$2y$10$wXQwSZLMkA1ZWpnUI35Zr.oQtAaKe2d9K1RThq7zBLlsLV4ukzip2', 0, 0, 'cSQdOPc6E1qH7xRwLR9wxPuaSFeuZDWpcjwenWQlmDWpwHpWko2nWw5Korsr', '2018-09-01 11:47:33', '2018-09-01 11:47:33'),
(7, 'Amit Gupta', NULL, '', '', '', '', '', 'amit400@yopmail.com', '$2y$10$rd43vJDziNsdrJlsKbDZru/esOMhLAA8nJtCrMgglJ.ABDb7DwO0C', 0, 0, NULL, '2018-10-07 02:36:07', '2018-10-07 02:36:07'),
(8, 'Steve', 'Test Address', 'Ludhiana', 'Punjab', 'India', '141001', '08054711805', 'steve@yopmail.com', '$2y$10$f1iChQYzBeYcG59bnlsZKexrCV.PF0kvZr1./Oa4omMqGafmZuRji', 0, 0, 'ENVpCTZxj6Q7EBerLcABOytYgzzuYaa5IffxFOu28G7HFCgN6zcmOLwIl4Pj', '2018-10-19 10:08:03', '2018-10-19 10:28:17'),
(9, 'Amit Gupta', NULL, '', '', '', '', '', 'test@yopmail.com', '$2y$10$A6ov12TrJDxV580bx7VIjuvlRXvdliKtgdqKy87zz3JAbmoxobcHe', 0, 0, NULL, '2018-11-29 21:43:32', '2018-11-29 21:43:32'),
(10, 'Amit Gupta', NULL, '', '', '', '', '', 'amit58395@yopmail.com', '$2y$10$7SV2k5/otjssdA9zXaRu6eHdruAniix/Ucw4kwJrUI9UjruYvPgsa', 0, 0, NULL, '2018-12-18 10:03:09', '2018-12-18 10:03:09'),
(11, 'Amit Gupta', NULL, '', '', '', '', '', 'amit835783@yopmail.com', '$2y$10$as0CDsVU9LbfJqtp0M0VJ.oM85shKu4HHfHM1wUXiAkTeFV.6xI9i', 0, 0, 'VDofs1zg16G9P8oX1mznVzhoLi0Bse2dbPc0EOl5ymu9LIKlVYKvttfXA6BM', '2018-12-18 10:03:56', '2018-12-18 10:03:56'),
(12, 'Amit Gupta', NULL, '', '', '', '', '', 'amit5000@yopmail.com', '$2y$10$bklnJWAnHgHQru97ohU8buIEjNsnw7uc6nrQlAQ3G2jDBE3wjVT0C', 0, 0, NULL, '2018-12-18 10:06:04', '2018-12-18 10:06:04'),
(13, 'Amit Gupta', NULL, '', '', '', '', '', 'amit2100@yopmail.com', '$2y$10$OR7K9n2ZLEAY9FixC1ogcexOdm9j3JbIJiTtbBL8qBUEd9O1MyFkS', 0, 0, 'qwB0pxTaVPm08s8QUUQiKWRn0WEuFAQ2MzCPR768Cm01PNWxob3lKKkfQVT8', '2018-12-21 10:12:15', '2018-12-21 10:12:15'),
(14, 'Amit Gupta', NULL, '', '', '', '', '', 'amit2070@yopmail.com', '$2y$10$vrOhOsmhANMOS/1yN6uONuMrOG16zMVOSIEAuV4LJ.jat5VyvCNdO', 0, 0, NULL, '2018-12-21 10:15:02', '2018-12-21 10:15:02'),
(15, 'Amit Gupta', NULL, '', '', '', '', '', 'amit5600@yopmail.com', '$2y$10$Dq0BSkC.bRObjzHQIz5cTOAHcALZk5VFvfYrc2I/QtVNNFY9cAzgi', 0, 1, '8GmA7I44BiHnhJyz3Gjs0TXNrf0ySyuTRQAPHK8oT76oSpKBz6Cl3KBzYwsN', '2018-12-23 01:12:50', '2018-12-23 01:25:35'),
(16, 'Amit Gupta', NULL, '', '', '', '', '', 'amit35363@yopmail.com', '$2y$10$lO.F6YrfIjUv9DLW0/UODORPybiQkyQpqVnoRYYAN3R4ndU9NUfIS', 0, 1, NULL, '2018-12-23 01:30:13', '2018-12-23 01:30:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
