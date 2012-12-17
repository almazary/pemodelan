-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2012 at 11:36 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `senimandigital_comot`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE IF NOT EXISTS `alamat` (
  `alamat_id` mediumint(7) NOT NULL,
  `alamat_perusahaan` varchar(128) NOT NULL,
  `alamat_nama` varchar(32) NOT NULL,
  `alamat_satu` varchar(1024) NOT NULL,
  `alamat_dua` varchar(1024) NOT NULL,
  `alamat_kodepos_id` smallint(5) NOT NULL,
  `alamat_propinsi_id` smallint(5) NOT NULL,
  `alamat_negara_id` int(9) NOT NULL,
  `alamat_kota_id` smallint(5) NOT NULL,
  PRIMARY KEY (`alamat_id`),
  KEY `fk_alamat_alamat_kodepos1_idx` (`alamat_kodepos_id`),
  KEY `fk_alamat_alamat_propinsi1_idx` (`alamat_propinsi_id`),
  KEY `fk_alamat_alamat_negara1_idx` (`alamat_negara_id`),
  KEY `fk_alamat_alamat_kota1_idx` (`alamat_kota_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`alamat_id`, `alamat_perusahaan`, `alamat_nama`, `alamat_satu`, `alamat_dua`, `alamat_kodepos_id`, `alamat_propinsi_id`, `alamat_negara_id`, `alamat_kota_id`) VALUES
(1, 'senimandigital', 'Eboy', 'Jl.Pandean gg.Cindelaras', 'Jl.Cileban Baru', 1, 1516, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `alamat_anggota`
--

CREATE TABLE IF NOT EXISTS `alamat_anggota` (
  `anggota_id` smallint(5) unsigned NOT NULL,
  `alamat_id` mediumint(7) NOT NULL,
  KEY `fk_alamat_anggota_anggota1_idx` (`anggota_id`),
  KEY `fk_alamat_anggota_alamat1_idx` (`alamat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamat_anggota`
--


-- --------------------------------------------------------

--
-- Table structure for table `alamat_kodepos`
--

CREATE TABLE IF NOT EXISTS `alamat_kodepos` (
  `alamat_kodepos_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `alamat_kodepos_kode` varchar(10) NOT NULL,
  `alamat_kodepos_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`alamat_kodepos_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `alamat_kodepos`
--

INSERT INTO `alamat_kodepos` (`alamat_kodepos_id`, `alamat_kodepos_kode`, `alamat_kodepos_status`) VALUES
(1, '37253', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alamat_kota`
--

CREATE TABLE IF NOT EXISTS `alamat_kota` (
  `alamat_kota_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `alamat_kota_nama` varchar(128) NOT NULL,
  `alamat_kota_status` tinyint(1) NOT NULL DEFAULT '1',
  `alamat_propinsi_id` smallint(5) NOT NULL,
  PRIMARY KEY (`alamat_kota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `alamat_kota`
--

INSERT INTO `alamat_kota` (`alamat_kota_id`, `alamat_kota_nama`, `alamat_kota_status`, `alamat_propinsi_id`) VALUES
(1, 'yogyakarta', 1, 0),
(2, 'semarang', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `alamat_negara`
--

CREATE TABLE IF NOT EXISTS `alamat_negara` (
  `alamat_negara_id` int(9) NOT NULL AUTO_INCREMENT,
  `alamat_negara_nama` varchar(128) COLLATE utf8_bin NOT NULL,
  `alamat_negara_iso_code_2` char(2) COLLATE utf8_bin NOT NULL,
  `alamat_negara_iso_code_3` char(3) COLLATE utf8_bin NOT NULL,
  `alamat_negara_status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`alamat_negara_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=241 ;

--
-- Dumping data for table `alamat_negara`
--

INSERT INTO `alamat_negara` (`alamat_negara_id`, `alamat_negara_nama`, `alamat_negara_iso_code_2`, `alamat_negara_iso_code_3`, `alamat_negara_status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 1),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'North Korea', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 1),
(189, 'Slovak Republic', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 1),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1),
(240, 'Channel Islands', 'CI', 'CHI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `alamat_propinsi`
--

CREATE TABLE IF NOT EXISTS `alamat_propinsi` (
  `alamat_propinsi_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `alamat_propinsi_kode` varchar(32) COLLATE utf8_bin NOT NULL,
  `alamat_propinsi_nama` varchar(128) COLLATE utf8_bin NOT NULL,
  `alamat_propinsi_status` tinyint(1) NOT NULL DEFAULT '1',
  `alamat_negara_id` smallint(5) NOT NULL,
  PRIMARY KEY (`alamat_propinsi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3936 ;

--
-- Dumping data for table `alamat_propinsi`
--

INSERT INTO `alamat_propinsi` (`alamat_propinsi_id`, `alamat_propinsi_kode`, `alamat_propinsi_nama`, `alamat_propinsi_status`, `alamat_negara_id`) VALUES
(1, 'BDS', 'Badakhshan', 1, 1),
(2, 'BDG', 'Badghis', 1, 1),
(3, 'BGL', 'Baghlan', 1, 1),
(4, 'BAL', 'Balkh', 1, 1),
(5, 'BAM', 'Bamian', 1, 1),
(6, 'FRA', 'Farah', 1, 1),
(7, 'FYB', 'Faryab', 1, 1),
(8, 'GHA', 'Ghazni', 1, 1),
(9, 'GHO', 'Ghowr', 1, 1),
(10, 'HEL', 'Helmand', 1, 1),
(11, 'HER', 'Herat', 1, 1),
(12, 'JOW', 'Jowzjan', 1, 1),
(13, 'KAB', 'Kabul', 1, 1),
(14, 'KAN', 'Kandahar', 1, 1),
(15, 'KAP', 'Kapisa', 1, 1),
(16, 'KHO', 'Khost', 1, 1),
(17, 'KNR', 'Konar', 1, 1),
(18, 'KDZ', 'Kondoz', 1, 1),
(19, 'LAG', 'Laghman', 1, 1),
(20, 'LOW', 'Lowgar', 1, 1),
(21, 'NAN', 'Nangrahar', 1, 1),
(22, 'NIM', 'Nimruz', 1, 1),
(23, 'NUR', 'Nurestan', 1, 1),
(24, 'ORU', 'Oruzgan', 1, 1),
(25, 'PIA', 'Paktia', 1, 1),
(26, 'PKA', 'Paktika', 1, 1),
(27, 'PAR', 'Parwan', 1, 1),
(28, 'SAM', 'Samangan', 1, 1),
(29, 'SAR', 'Sar-e Pol', 1, 1),
(30, 'TAK', 'Takhar', 1, 1),
(31, 'WAR', 'Wardak', 1, 1),
(32, 'ZAB', 'Zabol', 1, 1),
(33, 'BR', 'Berat', 1, 2),
(34, 'BU', 'Bulqize', 1, 2),
(35, 'DL', 'Delvine', 1, 2),
(36, 'DV', 'Devoll', 1, 2),
(37, 'DI', 'Diber', 1, 2),
(38, 'DR', 'Durres', 1, 2),
(39, 'EL', 'Elbasan', 1, 2),
(40, 'ER', 'Kolonje', 1, 2),
(41, 'FR', 'Fier', 1, 2),
(42, 'GJ', 'Gjirokaster', 1, 2),
(43, 'GR', 'Gramsh', 1, 2),
(44, 'HA', 'Has', 1, 2),
(45, 'KA', 'Kavaje', 1, 2),
(46, 'KB', 'Kurbin', 1, 2),
(47, 'KC', 'Kucove', 1, 2),
(48, 'KO', 'Korce', 1, 2),
(49, 'KR', 'Kruje', 1, 2),
(50, 'KU', 'Kukes', 1, 2),
(51, 'LB', 'Librazhd', 1, 2),
(52, 'LE', 'Lezhe', 1, 2),
(53, 'LU', 'Lushnje', 1, 2),
(54, 'MM', 'Malesi e Madhe', 1, 2),
(55, 'MK', 'Mallakaster', 1, 2),
(56, 'MT', 'Mat', 1, 2),
(57, 'MR', 'Mirdite', 1, 2),
(58, 'PQ', 'Peqin', 1, 2),
(59, 'PR', 'Permet', 1, 2),
(60, 'PG', 'Pogradec', 1, 2),
(61, 'PU', 'Puke', 1, 2),
(62, 'SH', 'Shkoder', 1, 2),
(63, 'SK', 'Skrapar', 1, 2),
(64, 'SR', 'Sarande', 1, 2),
(65, 'TE', 'Tepelene', 1, 2),
(66, 'TP', 'Tropoje', 1, 2),
(67, 'TR', 'Tirane', 1, 2),
(68, 'VL', 'Vlore', 1, 2),
(69, 'ADR', 'Adrar', 1, 3),
(70, 'ADE', 'Ain Defla', 1, 3),
(71, 'ATE', 'Ain Temouchent', 1, 3),
(72, 'ALG', 'Alger', 1, 3),
(73, 'ANN', 'Annaba', 1, 3),
(74, 'BAT', 'Batna', 1, 3),
(75, 'BEC', 'Bechar', 1, 3),
(76, 'BEJ', 'Bejaia', 1, 3),
(77, 'BIS', 'Biskra', 1, 3),
(78, 'BLI', 'Blida', 1, 3),
(79, 'BBA', 'Bordj Bou Arreridj', 1, 3),
(80, 'BOA', 'Bouira', 1, 3),
(81, 'BMD', 'Boumerdes', 1, 3),
(82, 'CHL', 'Chlef', 1, 3),
(83, 'CON', 'Constantine', 1, 3),
(84, 'DJE', 'Djelfa', 1, 3),
(85, 'EBA', 'El Bayadh', 1, 3),
(86, 'EOU', 'El Oued', 1, 3),
(87, 'ETA', 'El Tarf', 1, 3),
(88, 'GHA', 'Ghardaia', 1, 3),
(89, 'GUE', 'Guelma', 1, 3),
(90, 'ILL', 'Illizi', 1, 3),
(91, 'JIJ', 'Jijel', 1, 3),
(92, 'KHE', 'Khenchela', 1, 3),
(93, 'LAG', 'Laghouat', 1, 3),
(94, 'MUA', 'Muaskar', 1, 3),
(95, 'MED', 'Medea', 1, 3),
(96, 'MIL', 'Mila', 1, 3),
(97, 'MOS', 'Mostaganem', 1, 3),
(98, 'MSI', 'M''Sila', 1, 3),
(99, 'NAA', 'Naama', 1, 3),
(100, 'ORA', 'Oran', 1, 3),
(101, 'OUA', 'Ouargla', 1, 3),
(102, 'OEB', 'Oum el-Bouaghi', 1, 3),
(103, 'REL', 'Relizane', 1, 3),
(104, 'SAI', 'Saida', 1, 3),
(105, 'SET', 'Setif', 1, 3),
(106, 'SBA', 'Sidi Bel Abbes', 1, 3),
(107, 'SKI', 'Skikda', 1, 3),
(108, 'SAH', 'Souk Ahras', 1, 3),
(109, 'TAM', 'Tamanghasset', 1, 3),
(110, 'TEB', 'Tebessa', 1, 3),
(111, 'TIA', 'Tiaret', 1, 3),
(112, 'TIN', 'Tindouf', 1, 3),
(113, 'TIP', 'Tipaza', 1, 3),
(114, 'TIS', 'Tissemsilt', 1, 3),
(115, 'TOU', 'Tizi Ouzou', 1, 3),
(116, 'TLE', 'Tlemcen', 1, 3),
(117, 'E', 'Eastern', 1, 4),
(118, 'M', 'Manu''a', 1, 4),
(119, 'R', 'Rose Island', 1, 4),
(120, 'S', 'Swains Island', 1, 4),
(121, 'W', 'Western', 1, 4),
(122, 'ALV', 'Andorra la Vella', 1, 5),
(123, 'CAN', 'Canillo', 1, 5),
(124, 'ENC', 'Encamp', 1, 5),
(125, 'ESE', 'Escaldes-Engordany', 1, 5),
(126, 'LMA', 'La Massana', 1, 5),
(127, 'ORD', 'Ordino', 1, 5),
(128, 'SJL', 'Sant Julia de Loria', 1, 5),
(129, 'BGO', 'Bengo', 1, 6),
(130, 'BGU', 'Benguela', 1, 6),
(131, 'BIE', 'Bie', 1, 6),
(132, 'CAB', 'Cabinda', 1, 6),
(133, 'CCU', 'Cuando-Cubango', 1, 6),
(134, 'CNO', 'Cuanza Norte', 1, 6),
(135, 'CUS', 'Cuanza Sul', 1, 6),
(136, 'CNN', 'Cunene', 1, 6),
(137, 'HUA', 'Huambo', 1, 6),
(138, 'HUI', 'Huila', 1, 6),
(139, 'LUA', 'Luanda', 1, 6),
(140, 'LNO', 'Lunda Norte', 1, 6),
(141, 'LSU', 'Lunda Sul', 1, 6),
(142, 'MAL', 'Malange', 1, 6),
(143, 'MOX', 'Moxico', 1, 6),
(144, 'NAM', 'Namibe', 1, 6),
(145, 'UIG', 'Uige', 1, 6),
(146, 'ZAI', 'Zaire', 1, 6),
(147, 'ASG', 'Saint George', 1, 9),
(148, 'ASJ', 'Saint John', 1, 9),
(149, 'ASM', 'Saint Mary', 1, 9),
(150, 'ASL', 'Saint Paul', 1, 9),
(151, 'ASR', 'Saint Peter', 1, 9),
(152, 'ASH', 'Saint Philip', 1, 9),
(153, 'BAR', 'Barbuda', 1, 9),
(154, 'RED', 'Redonda', 1, 9),
(155, 'AN', 'Antartida e Islas del Atlantico', 1, 10),
(156, 'BA', 'Buenos Aires', 1, 10),
(157, 'CA', 'Catamarca', 1, 10),
(158, 'CH', 'Chaco', 1, 10),
(159, 'CU', 'Chubut', 1, 10),
(160, 'CO', 'Cordoba', 1, 10),
(161, 'CR', 'Corrientes', 1, 10),
(162, 'DF', 'Distrito Federal', 1, 10),
(163, 'ER', 'Entre Rios', 1, 10),
(164, 'FO', 'Formosa', 1, 10),
(165, 'JU', 'Jujuy', 1, 10),
(166, 'LP', 'La Pampa', 1, 10),
(167, 'LR', 'La Rioja', 1, 10),
(168, 'ME', 'Mendoza', 1, 10),
(169, 'MI', 'Misiones', 1, 10),
(170, 'NE', 'Neuquen', 1, 10),
(171, 'RN', 'Rio Negro', 1, 10),
(172, 'SA', 'Salta', 1, 10),
(173, 'SJ', 'San Juan', 1, 10),
(174, 'SL', 'San Luis', 1, 10),
(175, 'SC', 'Santa Cruz', 1, 10),
(176, 'SF', 'Santa Fe', 1, 10),
(177, 'SD', 'Santiago del Estero', 1, 10),
(178, 'TF', 'Tierra del Fuego', 1, 10),
(179, 'TU', 'Tucuman', 1, 10),
(180, 'AGT', 'Aragatsotn', 1, 11),
(181, 'ARR', 'Ararat', 1, 11),
(182, 'ARM', 'Armavir', 1, 11),
(183, 'GEG', 'Geghark''unik''', 1, 11),
(184, 'KOT', 'Kotayk''', 1, 11),
(185, 'LOR', 'Lorri', 1, 11),
(186, 'SHI', 'Shirak', 1, 11),
(187, 'SYU', 'Syunik''', 1, 11),
(188, 'TAV', 'Tavush', 1, 11),
(189, 'VAY', 'Vayots'' Dzor', 1, 11),
(190, 'YER', 'Yerevan', 1, 11),
(191, 'ACT', 'Australian Capital Territory', 1, 13),
(192, 'NSW', 'New South Wales', 1, 13),
(193, 'NT', 'Northern Territory', 1, 13),
(194, 'QLD', 'Queensland', 1, 13),
(195, 'SA', 'South Australia', 1, 13),
(196, 'TAS', 'Tasmania', 1, 13),
(197, 'VIC', 'Victoria', 1, 13),
(198, 'WA', 'Western Australia', 1, 13),
(199, 'BUR', 'Burgenland', 1, 14),
(200, 'KAR', 'Kärnten', 1, 14),
(201, 'NOS', 'Nieder&ouml;sterreich', 1, 14),
(202, 'OOS', 'Ober&ouml;sterreich', 1, 14),
(203, 'SAL', 'Salzburg', 1, 14),
(204, 'STE', 'Steiermark', 1, 14),
(205, 'TIR', 'Tirol', 1, 14),
(206, 'VOR', 'Vorarlberg', 1, 14),
(207, 'WIE', 'Wien', 1, 14),
(208, 'AB', 'Ali Bayramli', 1, 15),
(209, 'ABS', 'Abseron', 1, 15),
(210, 'AGC', 'AgcabAdi', 1, 15),
(211, 'AGM', 'Agdam', 1, 15),
(212, 'AGS', 'Agdas', 1, 15),
(213, 'AGA', 'Agstafa', 1, 15),
(214, 'AGU', 'Agsu', 1, 15),
(215, 'AST', 'Astara', 1, 15),
(216, 'BA', 'Baki', 1, 15),
(217, 'BAB', 'BabAk', 1, 15),
(218, 'BAL', 'BalakAn', 1, 15),
(219, 'BAR', 'BArdA', 1, 15),
(220, 'BEY', 'Beylaqan', 1, 15),
(221, 'BIL', 'Bilasuvar', 1, 15),
(222, 'CAB', 'Cabrayil', 1, 15),
(223, 'CAL', 'Calilabab', 1, 15),
(224, 'CUL', 'Culfa', 1, 15),
(225, 'DAS', 'Daskasan', 1, 15),
(226, 'DAV', 'Davaci', 1, 15),
(227, 'FUZ', 'Fuzuli', 1, 15),
(228, 'GA', 'Ganca', 1, 15),
(229, 'GAD', 'Gadabay', 1, 15),
(230, 'GOR', 'Goranboy', 1, 15),
(231, 'GOY', 'Goycay', 1, 15),
(232, 'HAC', 'Haciqabul', 1, 15),
(233, 'IMI', 'Imisli', 1, 15),
(234, 'ISM', 'Ismayilli', 1, 15),
(235, 'KAL', 'Kalbacar', 1, 15),
(236, 'KUR', 'Kurdamir', 1, 15),
(237, 'LA', 'Lankaran', 1, 15),
(238, 'LAC', 'Lacin', 1, 15),
(239, 'LAN', 'Lankaran', 1, 15),
(240, 'LER', 'Lerik', 1, 15),
(241, 'MAS', 'Masalli', 1, 15),
(242, 'MI', 'Mingacevir', 1, 15),
(243, 'NA', 'Naftalan', 1, 15),
(244, 'NEF', 'Neftcala', 1, 15),
(245, 'OGU', 'Oguz', 1, 15),
(246, 'ORD', 'Ordubad', 1, 15),
(247, 'QAB', 'Qabala', 1, 15),
(248, 'QAX', 'Qax', 1, 15),
(249, 'QAZ', 'Qazax', 1, 15),
(250, 'QOB', 'Qobustan', 1, 15),
(251, 'QBA', 'Quba', 1, 15),
(252, 'QBI', 'Qubadli', 1, 15),
(253, 'QUS', 'Qusar', 1, 15),
(254, 'SA', 'Saki', 1, 15),
(255, 'SAT', 'Saatli', 1, 15),
(256, 'SAB', 'Sabirabad', 1, 15),
(257, 'SAD', 'Sadarak', 1, 15),
(258, 'SAH', 'Sahbuz', 1, 15),
(259, 'SAK', 'Saki', 1, 15),
(260, 'SAL', 'Salyan', 1, 15),
(261, 'SM', 'Sumqayit', 1, 15),
(262, 'SMI', 'Samaxi', 1, 15),
(263, 'SKR', 'Samkir', 1, 15),
(264, 'SMX', 'Samux', 1, 15),
(265, 'SAR', 'Sarur', 1, 15),
(266, 'SIY', 'Siyazan', 1, 15),
(267, 'SS', 'Susa', 1, 15),
(268, 'SUS', 'Susa', 1, 15),
(269, 'TAR', 'Tartar', 1, 15),
(270, 'TOV', 'Tovuz', 1, 15),
(271, 'UCA', 'Ucar', 1, 15),
(272, 'XA', 'Xankandi', 1, 15),
(273, 'XAC', 'Xacmaz', 1, 15),
(274, 'XAN', 'Xanlar', 1, 15),
(275, 'XIZ', 'Xizi', 1, 15),
(276, 'XCI', 'Xocali', 1, 15),
(277, 'XVD', 'Xocavand', 1, 15),
(278, 'YAR', 'Yardimli', 1, 15),
(279, 'YEV', 'Yevlax', 1, 15),
(280, 'ZAN', 'Zangilan', 1, 15),
(281, 'ZAQ', 'Zaqatala', 1, 15),
(282, 'ZAR', 'Zardab', 1, 15),
(283, 'NX', 'Naxcivan', 1, 15),
(284, 'ACK', 'Acklins', 1, 16),
(285, 'BER', 'Berry Islands', 1, 16),
(286, 'BIM', 'Bimini', 1, 16),
(287, 'BLK', 'Black Point', 1, 16),
(288, 'CAT', 'Cat Island', 1, 16),
(289, 'CAB', 'Central Abaco', 1, 16),
(290, 'CAN', 'Central Andros', 1, 16),
(291, 'CEL', 'Central Eleuthera', 1, 16),
(292, 'FRE', 'City of Freeport', 1, 16),
(293, 'CRO', 'Crooked Island', 1, 16),
(294, 'EGB', 'East Grand Bahama', 1, 16),
(295, 'EXU', 'Exuma', 1, 16),
(296, 'GRD', 'Grand Cay', 1, 16),
(297, 'HAR', 'Harbour Island', 1, 16),
(298, 'HOP', 'Hope Town', 1, 16),
(299, 'INA', 'Inagua', 1, 16),
(300, 'LNG', 'Long Island', 1, 16),
(301, 'MAN', 'Mangrove Cay', 1, 16),
(302, 'MAY', 'Mayaguana', 1, 16),
(303, 'MOO', 'Moore''s Island', 1, 16),
(304, 'NAB', 'North Abaco', 1, 16),
(305, 'NAN', 'North Andros', 1, 16),
(306, 'NEL', 'North Eleuthera', 1, 16),
(307, 'RAG', 'Ragged Island', 1, 16),
(308, 'RUM', 'Rum Cay', 1, 16),
(309, 'SAL', 'San Salvador', 1, 16),
(310, 'SAB', 'South Abaco', 1, 16),
(311, 'SAN', 'South Andros', 1, 16),
(312, 'SEL', 'South Eleuthera', 1, 16),
(313, 'SWE', 'Spanish Wells', 1, 16),
(314, 'WGB', 'West Grand Bahama', 1, 16),
(315, 'CAP', 'Capital', 1, 17),
(316, 'CEN', 'Central', 1, 17),
(317, 'MUH', 'Muharraq', 1, 17),
(318, 'NOR', 'Northern', 1, 17),
(319, 'SOU', 'Southern', 1, 17),
(320, 'BAR', 'Barisal', 1, 18),
(321, 'CHI', 'Chittagong', 1, 18),
(322, 'DHA', 'Dhaka', 1, 18),
(323, 'KHU', 'Khulna', 1, 18),
(324, 'RAJ', 'Rajshahi', 1, 18),
(325, 'SYL', 'Sylhet', 1, 18),
(326, 'CC', 'Christ Church', 1, 19),
(327, 'AND', 'Saint Andrew', 1, 19),
(328, 'GEO', 'Saint George', 1, 19),
(329, 'JAM', 'Saint James', 1, 19),
(330, 'JOH', 'Saint John', 1, 19),
(331, 'JOS', 'Saint Joseph', 1, 19),
(332, 'LUC', 'Saint Lucy', 1, 19),
(333, 'MIC', 'Saint Michael', 1, 19),
(334, 'PET', 'Saint Peter', 1, 19),
(335, 'PHI', 'Saint Philip', 1, 19),
(336, 'THO', 'Saint Thomas', 1, 19),
(337, 'BR', 'Brestskaya (Brest)', 1, 20),
(338, 'HO', 'Homyel''skaya (Homyel'')', 1, 20),
(339, 'HM', 'Horad Minsk', 1, 20),
(340, 'HR', 'Hrodzyenskaya (Hrodna)', 1, 20),
(341, 'MA', 'Mahilyowskaya (Mahilyow)', 1, 20),
(342, 'MI', 'Minskaya', 1, 20),
(343, 'VI', 'Vitsyebskaya (Vitsyebsk)', 1, 20),
(344, 'VAN', 'Antwerpen', 1, 21),
(345, 'WBR', 'Brabant Wallon', 1, 21),
(346, 'WHT', 'Hainaut', 1, 21),
(347, 'WLG', 'Liege', 1, 21),
(348, 'VLI', 'Limburg', 1, 21),
(349, 'WLX', 'Luxembourg', 1, 21),
(350, 'WNA', 'Namur', 1, 21),
(351, 'VOV', 'Oost-Vlaanderen', 1, 21),
(352, 'VBR', 'Vlaams Brabant', 1, 21),
(353, 'VWV', 'West-Vlaanderen', 1, 21),
(354, 'BZ', 'Belize', 1, 22),
(355, 'CY', 'Cayo', 1, 22),
(356, 'CR', 'Corozal', 1, 22),
(357, 'OW', 'Orange Walk', 1, 22),
(358, 'SC', 'Stann Creek', 1, 22),
(359, 'TO', 'Toledo', 1, 22),
(360, 'AL', 'Alibori', 1, 23),
(361, 'AK', 'Atakora', 1, 23),
(362, 'AQ', 'Atlantique', 1, 23),
(363, 'BO', 'Borgou', 1, 23),
(364, 'CO', 'Collines', 1, 23),
(365, 'DO', 'Donga', 1, 23),
(366, 'KO', 'Kouffo', 1, 23),
(367, 'LI', 'Littoral', 1, 23),
(368, 'MO', 'Mono', 1, 23),
(369, 'OU', 'Oueme', 1, 23),
(370, 'PL', 'Plateau', 1, 23),
(371, 'ZO', 'Zou', 1, 23),
(372, 'DS', 'Devonshire', 1, 24),
(373, 'HC', 'Hamilton City', 1, 24),
(374, 'HA', 'Hamilton', 1, 24),
(375, 'PG', 'Paget', 1, 24),
(376, 'PB', 'Pembroke', 1, 24),
(377, 'GC', 'Saint George City', 1, 24),
(378, 'SG', 'Saint George''s', 1, 24),
(379, 'SA', 'Sandys', 1, 24),
(380, 'SM', 'Smith''s', 1, 24),
(381, 'SH', 'Southampton', 1, 24),
(382, 'WA', 'Warwick', 1, 24),
(383, 'BUM', 'Bumthang', 1, 25),
(384, 'CHU', 'Chukha', 1, 25),
(385, 'DAG', 'Dagana', 1, 25),
(386, 'GAS', 'Gasa', 1, 25),
(387, 'HAA', 'Haa', 1, 25),
(388, 'LHU', 'Lhuntse', 1, 25),
(389, 'MON', 'Mongar', 1, 25),
(390, 'PAR', 'Paro', 1, 25),
(391, 'PEM', 'Pemagatshel', 1, 25),
(392, 'PUN', 'Punakha', 1, 25),
(393, 'SJO', 'Samdrup Jongkhar', 1, 25),
(394, 'SAT', 'Samtse', 1, 25),
(395, 'SAR', 'Sarpang', 1, 25),
(396, 'THI', 'Thimphu', 1, 25),
(397, 'TRG', 'Trashigang', 1, 25),
(398, 'TRY', 'Trashiyangste', 1, 25),
(399, 'TRO', 'Trongsa', 1, 25),
(400, 'TSI', 'Tsirang', 1, 25),
(401, 'WPH', 'Wangdue Phodrang', 1, 25),
(402, 'ZHE', 'Zhemgang', 1, 25),
(403, 'BEN', 'Beni', 1, 26),
(404, 'CHU', 'Chuquisaca', 1, 26),
(405, 'COC', 'Cochabamba', 1, 26),
(406, 'LPZ', 'La Paz', 1, 26),
(407, 'ORU', 'Oruro', 1, 26),
(408, 'PAN', 'Pando', 1, 26),
(409, 'POT', 'Potosi', 1, 26),
(410, 'SCZ', 'Santa Cruz', 1, 26),
(411, 'TAR', 'Tarija', 1, 26),
(412, 'BRO', 'Brcko district', 1, 27),
(413, 'FUS', 'Unsko-Sanski Kanton', 1, 27),
(414, 'FPO', 'Posavski Kanton', 1, 27),
(415, 'FTU', 'Tuzlanski Kanton', 1, 27),
(416, 'FZE', 'Zenicko-Dobojski Kanton', 1, 27),
(417, 'FBP', 'Bosanskopodrinjski Kanton', 1, 27),
(418, 'FSB', 'Srednjebosanski Kanton', 1, 27),
(419, 'FHN', 'Hercegovacko-neretvanski Kanton', 1, 27),
(420, 'FZH', 'Zapadnohercegovacka Zupanija', 1, 27),
(421, 'FSA', 'Kanton Sarajevo', 1, 27),
(422, 'FZA', 'Zapadnobosanska', 1, 27),
(423, 'SBL', 'Banja Luka', 1, 27),
(424, 'SDO', 'Doboj', 1, 27),
(425, 'SBI', 'Bijeljina', 1, 27),
(426, 'SVL', 'Vlasenica', 1, 27),
(427, 'SSR', 'Sarajevo-Romanija or Sokolac', 1, 27),
(428, 'SFO', 'Foca', 1, 27),
(429, 'STR', 'Trebinje', 1, 27),
(430, 'CE', 'Central', 1, 28),
(431, 'GH', 'Ghanzi', 1, 28),
(432, 'KD', 'Kgalagadi', 1, 28),
(433, 'KT', 'Kgatleng', 1, 28),
(434, 'KW', 'Kweneng', 1, 28),
(435, 'NG', 'Ngamiland', 1, 28),
(436, 'NE', 'North East', 1, 28),
(437, 'NW', 'North West', 1, 28),
(438, 'SE', 'South East', 1, 28),
(439, 'SO', 'Southern', 1, 28),
(440, 'AC', 'Acre', 1, 30),
(441, 'AL', 'Alagoas', 1, 30),
(442, 'AP', 'Amapa', 1, 30),
(443, 'AM', 'Amazonas', 1, 30),
(444, 'BA', 'Bahia', 1, 30),
(445, 'CE', 'Ceara', 1, 30),
(446, 'DF', 'Distrito Federal', 1, 30),
(447, 'ES', 'Espirito Santo', 1, 30),
(448, 'GO', 'Goias', 1, 30),
(449, 'MA', 'Maranhao', 1, 30),
(450, 'MT', 'Mato Grosso', 1, 30),
(451, 'MS', 'Mato Grosso do Sul', 1, 30),
(452, 'MG', 'Minas Gerais', 1, 30),
(453, 'PA', 'Para', 1, 30),
(454, 'PB', 'Paraiba', 1, 30),
(455, 'PR', 'Parana', 1, 30),
(456, 'PE', 'Pernambuco', 1, 30),
(457, 'PI', 'Piaui', 1, 30),
(458, 'RJ', 'Rio de Janeiro', 1, 30),
(459, 'RN', 'Rio Grande do Norte', 1, 30),
(460, 'RS', 'Rio Grande do Sul', 1, 30),
(461, 'RO', 'Rondonia', 1, 30),
(462, 'RR', 'Roraima', 1, 30),
(463, 'SC', 'Santa Catarina', 1, 30),
(464, 'SP', 'Sao Paulo', 1, 30),
(465, 'SE', 'Sergipe', 1, 30),
(466, 'TO', 'Tocantins', 1, 30),
(467, 'PB', 'Peros Banhos', 1, 31),
(468, 'SI', 'Salomon Islands', 1, 31),
(469, 'NI', 'Nelsons Island', 1, 31),
(470, 'TB', 'Three Brothers', 1, 31),
(471, 'EA', 'Eagle Islands', 1, 31),
(472, 'DI', 'Danger Island', 1, 31),
(473, 'EG', 'Egmont Islands', 1, 31),
(474, 'DG', 'Diego Garcia', 1, 31),
(475, 'BEL', 'Belait', 1, 32),
(476, 'BRM', 'Brunei and Muara', 1, 32),
(477, 'TEM', 'Temburong', 1, 32),
(478, 'TUT', 'Tutong', 1, 32),
(479, '', 'Blagoevgrad', 1, 33),
(480, '', 'Burgas', 1, 33),
(481, '', 'Dobrich', 1, 33),
(482, '', 'Gabrovo', 1, 33),
(483, '', 'Haskovo', 1, 33),
(484, '', 'Kardjali', 1, 33),
(485, '', 'Kyustendil', 1, 33),
(486, '', 'Lovech', 1, 33),
(487, '', 'Montana', 1, 33),
(488, '', 'Pazardjik', 1, 33),
(489, '', 'Pernik', 1, 33),
(490, '', 'Pleven', 1, 33),
(491, '', 'Plovdiv', 1, 33),
(492, '', 'Razgrad', 1, 33),
(493, '', 'Shumen', 1, 33),
(494, '', 'Silistra', 1, 33),
(495, '', 'Sliven', 1, 33),
(496, '', 'Smolyan', 1, 33),
(497, '', 'Sofia', 1, 33),
(498, '', 'Sofia - town', 1, 33),
(499, '', 'Stara Zagora', 1, 33),
(500, '', 'Targovishte', 1, 33),
(501, '', 'Varna', 1, 33),
(502, '', 'Veliko Tarnovo', 1, 33),
(503, '', 'Vidin', 1, 33),
(504, '', 'Vratza', 1, 33),
(505, '', 'Yambol', 1, 33),
(506, 'BAL', 'Bale', 1, 34),
(507, 'BAM', 'Bam', 1, 34),
(508, 'BAN', 'Banwa', 1, 34),
(509, 'BAZ', 'Bazega', 1, 34),
(510, 'BOR', 'Bougouriba', 1, 34),
(511, 'BLG', 'Boulgou', 1, 34),
(512, 'BOK', 'Boulkiemde', 1, 34),
(513, 'COM', 'Comoe', 1, 34),
(514, 'GAN', 'Ganzourgou', 1, 34),
(515, 'GNA', 'Gnagna', 1, 34),
(516, 'GOU', 'Gourma', 1, 34),
(517, 'HOU', 'Houet', 1, 34),
(518, 'IOA', 'Ioba', 1, 34),
(519, 'KAD', 'Kadiogo', 1, 34),
(520, 'KEN', 'Kenedougou', 1, 34),
(521, 'KOD', 'Komondjari', 1, 34),
(522, 'KOP', 'Kompienga', 1, 34),
(523, 'KOS', 'Kossi', 1, 34),
(524, 'KOL', 'Koulpelogo', 1, 34),
(525, 'KOT', 'Kouritenga', 1, 34),
(526, 'KOW', 'Kourweogo', 1, 34),
(527, 'LER', 'Leraba', 1, 34),
(528, 'LOR', 'Loroum', 1, 34),
(529, 'MOU', 'Mouhoun', 1, 34),
(530, 'NAH', 'Nahouri', 1, 34),
(531, 'NAM', 'Namentenga', 1, 34),
(532, 'NAY', 'Nayala', 1, 34),
(533, 'NOU', 'Noumbiel', 1, 34),
(534, 'OUB', 'Oubritenga', 1, 34),
(535, 'OUD', 'Oudalan', 1, 34),
(536, 'PAS', 'Passore', 1, 34),
(537, 'PON', 'Poni', 1, 34),
(538, 'SAG', 'Sanguie', 1, 34),
(539, 'SAM', 'Sanmatenga', 1, 34),
(540, 'SEN', 'Seno', 1, 34),
(541, 'SIS', 'Sissili', 1, 34),
(542, 'SOM', 'Soum', 1, 34),
(543, 'SOR', 'Sourou', 1, 34),
(544, 'TAP', 'Tapoa', 1, 34),
(545, 'TUY', 'Tuy', 1, 34),
(546, 'YAG', 'Yagha', 1, 34),
(547, 'YAT', 'Yatenga', 1, 34),
(548, 'ZIR', 'Ziro', 1, 34),
(549, 'ZOD', 'Zondoma', 1, 34),
(550, 'ZOW', 'Zoundweogo', 1, 34),
(551, 'BB', 'Bubanza', 1, 35),
(552, 'BJ', 'Bujumbura', 1, 35),
(553, 'BR', 'Bururi', 1, 35),
(554, 'CA', 'Cankuzo', 1, 35),
(555, 'CI', 'Cibitoke', 1, 35),
(556, 'GI', 'Gitega', 1, 35),
(557, 'KR', 'Karuzi', 1, 35),
(558, 'KY', 'Kayanza', 1, 35),
(559, 'KI', 'Kirundo', 1, 35),
(560, 'MA', 'Makamba', 1, 35),
(561, 'MU', 'Muramvya', 1, 35),
(562, 'MY', 'Muyinga', 1, 35),
(563, 'MW', 'Mwaro', 1, 35),
(564, 'NG', 'Ngozi', 1, 35),
(565, 'RT', 'Rutana', 1, 35),
(566, 'RY', 'Ruyigi', 1, 35),
(567, 'PP', 'Phnom Penh', 1, 36),
(568, 'PS', 'Preah Seihanu (Kompong Som or Sihanoukville)', 1, 36),
(569, 'PA', 'Pailin', 1, 36),
(570, 'KB', 'Keb', 1, 36),
(571, 'BM', 'Banteay Meanchey', 1, 36),
(572, 'BA', 'Battambang', 1, 36),
(573, 'KM', 'Kampong Cham', 1, 36),
(574, 'KN', 'Kampong Chhnang', 1, 36),
(575, 'KU', 'Kampong Speu', 1, 36),
(576, 'KO', 'Kampong Som', 1, 36),
(577, 'KT', 'Kampong Thom', 1, 36),
(578, 'KP', 'Kampot', 1, 36),
(579, 'KL', 'Kandal', 1, 36),
(580, 'KK', 'Kaoh Kong', 1, 36),
(581, 'KR', 'Kratie', 1, 36),
(582, 'MK', 'Mondul Kiri', 1, 36),
(583, 'OM', 'Oddar Meancheay', 1, 36),
(584, 'PU', 'Pursat', 1, 36),
(585, 'PR', 'Preah Vihear', 1, 36),
(586, 'PG', 'Prey Veng', 1, 36),
(587, 'RK', 'Ratanak Kiri', 1, 36),
(588, 'SI', 'Siemreap', 1, 36),
(589, 'ST', 'Stung Treng', 1, 36),
(590, 'SR', 'Svay Rieng', 1, 36),
(591, 'TK', 'Takeo', 1, 36),
(592, 'ADA', 'Adamawa (Adamaoua)', 1, 37),
(593, 'CEN', 'Centre', 1, 37),
(594, 'EST', 'East (Est)', 1, 37),
(595, 'EXN', 'Extreme North (Extreme-Nord)', 1, 37),
(596, 'LIT', 'Littoral', 1, 37),
(597, 'NOR', 'North (Nord)', 1, 37),
(598, 'NOT', 'Northwest (Nord-Ouest)', 1, 37),
(599, 'OUE', 'West (Ouest)', 1, 37),
(600, 'SUD', 'South (Sud)', 1, 37),
(601, 'SOU', 'Southwest (Sud-Ouest).', 1, 37),
(602, 'AB', 'Alberta', 1, 38),
(603, 'BC', 'British Columbia', 1, 38),
(604, 'MB', 'Manitoba', 1, 38),
(605, 'NB', 'New Brunswick', 1, 38),
(606, 'NL', 'Newfoundland and Labrador', 1, 38),
(607, 'NT', 'Northwest Territories', 1, 38),
(608, 'NS', 'Nova Scotia', 1, 38),
(609, 'NU', 'Nunavut', 1, 38),
(610, 'ON', 'Ontario', 1, 38),
(611, 'PE', 'Prince Edward Island', 1, 38),
(612, 'QC', 'Qu&eacute;bec', 1, 38),
(613, 'SK', 'Saskatchewan', 1, 38),
(614, 'YT', 'Yukon Territory', 1, 38),
(615, 'BV', 'Boa Vista', 1, 39),
(616, 'BR', 'Brava', 1, 39),
(617, 'CS', 'Calheta de Sao Miguel', 1, 39),
(618, 'MA', 'Maio', 1, 39),
(619, 'MO', 'Mosteiros', 1, 39),
(620, 'PA', 'Paul', 1, 39),
(621, 'PN', 'Porto Novo', 1, 39),
(622, 'PR', 'Praia', 1, 39),
(623, 'RG', 'Ribeira Grande', 1, 39),
(624, 'SL', 'Sal', 1, 39),
(625, 'CA', 'Santa Catarina', 1, 39),
(626, 'CR', 'Santa Cruz', 1, 39),
(627, 'SD', 'Sao Domingos', 1, 39),
(628, 'SF', 'Sao Filipe', 1, 39),
(629, 'SN', 'Sao Nicolau', 1, 39),
(630, 'SV', 'Sao Vicente', 1, 39),
(631, 'TA', 'Tarrafal', 1, 39),
(632, 'CR', 'Creek', 1, 40),
(633, 'EA', 'Eastern', 1, 40),
(634, 'ML', 'Midland', 1, 40),
(635, 'ST', 'South Town', 1, 40),
(636, 'SP', 'Spot Bay', 1, 40),
(637, 'SK', 'Stake Bay', 1, 40),
(638, 'WD', 'West End', 1, 40),
(639, 'WN', 'Western', 1, 40),
(640, 'BBA', 'Bamingui-Bangoran', 1, 41),
(641, 'BKO', 'Basse-Kotto', 1, 41),
(642, 'HKO', 'Haute-Kotto', 1, 41),
(643, 'HMB', 'Haut-Mbomou', 1, 41),
(644, 'KEM', 'Kemo', 1, 41),
(645, 'LOB', 'Lobaye', 1, 41),
(646, 'MKD', 'Mambere-KadeÔ', 1, 41),
(647, 'MBO', 'Mbomou', 1, 41),
(648, 'NMM', 'Nana-Mambere', 1, 41),
(649, 'OMP', 'Ombella-M''Poko', 1, 41),
(650, 'OUK', 'Ouaka', 1, 41),
(651, 'OUH', 'Ouham', 1, 41),
(652, 'OPE', 'Ouham-Pende', 1, 41),
(653, 'VAK', 'Vakaga', 1, 41),
(654, 'NGR', 'Nana-Grebizi', 1, 41),
(655, 'SMB', 'Sangha-Mbaere', 1, 41),
(656, 'BAN', 'Bangui', 1, 41),
(657, 'BA', 'Batha', 1, 42),
(658, 'BI', 'Biltine', 1, 42),
(659, 'BE', 'Borkou-Ennedi-Tibesti', 1, 42),
(660, 'CB', 'Chari-Baguirmi', 1, 42),
(661, 'GU', 'Guera', 1, 42),
(662, 'KA', 'Kanem', 1, 42),
(663, 'LA', 'Lac', 1, 42),
(664, 'LC', 'Logone Occidental', 1, 42),
(665, 'LR', 'Logone Oriental', 1, 42),
(666, 'MK', 'Mayo-Kebbi', 1, 42),
(667, 'MC', 'Moyen-Chari', 1, 42),
(668, 'OU', 'Ouaddai', 1, 42),
(669, 'SA', 'Salamat', 1, 42),
(670, 'TA', 'Tandjile', 1, 42),
(671, 'AI', 'Aisen del General Carlos Ibanez', 1, 43),
(672, 'AN', 'Antofagasta', 1, 43),
(673, 'AR', 'Araucania', 1, 43),
(674, 'AT', 'Atacama', 1, 43),
(675, 'BI', 'Bio-Bio', 1, 43),
(676, 'CO', 'Coquimbo', 1, 43),
(677, 'LI', 'Libertador General Bernardo O''Hi', 1, 43),
(678, 'LL', 'Los Lagos', 1, 43),
(679, 'MA', 'Magallanes y de la Antartica Chi', 1, 43),
(680, 'ML', 'Maule', 1, 43),
(681, 'RM', 'Region Metropolitana', 1, 43),
(682, 'TA', 'Tarapaca', 1, 43),
(683, 'VS', 'Valparaiso', 1, 43),
(684, 'AN', 'Anhui', 1, 44),
(685, 'BE', 'Beijing', 1, 44),
(686, 'CH', 'Chongqing', 1, 44),
(687, 'FU', 'Fujian', 1, 44),
(688, 'GA', 'Gansu', 1, 44),
(689, 'GU', 'Guangdong', 1, 44),
(690, 'GX', 'Guangxi', 1, 44),
(691, 'GZ', 'Guizhou', 1, 44),
(692, 'HA', 'Hainan', 1, 44),
(693, 'HB', 'Hebei', 1, 44),
(694, 'HL', 'Heilongjiang', 1, 44),
(695, 'HE', 'Henan', 1, 44),
(696, 'HK', 'Hong Kong', 1, 44),
(697, 'HU', 'Hubei', 1, 44),
(698, 'HN', 'Hunan', 1, 44),
(699, 'IM', 'Inner Mongolia', 1, 44),
(700, 'JI', 'Jiangsu', 1, 44),
(701, 'JX', 'Jiangxi', 1, 44),
(702, 'JL', 'Jilin', 1, 44),
(703, 'LI', 'Liaoning', 1, 44),
(704, 'MA', 'Macau', 1, 44),
(705, 'NI', 'Ningxia', 1, 44),
(706, 'SH', 'Shaanxi', 1, 44),
(707, 'SA', 'Shandong', 1, 44),
(708, 'SG', 'Shanghai', 1, 44),
(709, 'SX', 'Shanxi', 1, 44),
(710, 'SI', 'Sichuan', 1, 44),
(711, 'TI', 'Tianjin', 1, 44),
(712, 'XI', 'Xinjiang', 1, 44),
(713, 'YU', 'Yunnan', 1, 44),
(714, 'ZH', 'Zhejiang', 1, 44),
(715, 'D', 'Direction Island', 1, 46),
(716, 'H', 'Home Island', 1, 46),
(717, 'O', 'Horsburgh Island', 1, 46),
(718, 'S', 'South Island', 1, 46),
(719, 'W', 'West Island', 1, 46),
(720, 'AMZ', 'Amazonas', 1, 47),
(721, 'ANT', 'Antioquia', 1, 47),
(722, 'ARA', 'Arauca', 1, 47),
(723, 'ATL', 'Atlantico', 1, 47),
(724, 'BDC', 'Bogota D.C.', 1, 47),
(725, 'BOL', 'Bolivar', 1, 47),
(726, 'BOY', 'Boyaca', 1, 47),
(727, 'CAL', 'Caldas', 1, 47),
(728, 'CAQ', 'Caqueta', 1, 47),
(729, 'CAS', 'Casanare', 1, 47),
(730, 'CAU', 'Cauca', 1, 47),
(731, 'CES', 'Cesar', 1, 47),
(732, 'CHO', 'Choco', 1, 47),
(733, 'COR', 'Cordoba', 1, 47),
(734, 'CAM', 'Cundinamarca', 1, 47),
(735, 'GNA', 'Guainia', 1, 47),
(736, 'GJR', 'Guajira', 1, 47),
(737, 'GVR', 'Guaviare', 1, 47),
(738, 'HUI', 'Huila', 1, 47),
(739, 'MAG', 'Magdalena', 1, 47),
(740, 'MET', 'Meta', 1, 47),
(741, 'NAR', 'Narino', 1, 47),
(742, 'NDS', 'Norte de Santander', 1, 47),
(743, 'PUT', 'Putumayo', 1, 47),
(744, 'QUI', 'Quindio', 1, 47),
(745, 'RIS', 'Risaralda', 1, 47),
(746, 'SAP', 'San Andres y Providencia', 1, 47),
(747, 'SAN', 'Santander', 1, 47),
(748, 'SUC', 'Sucre', 1, 47),
(749, 'TOL', 'Tolima', 1, 47),
(750, 'VDC', 'Valle del Cauca', 1, 47),
(751, 'VAU', 'Vaupes', 1, 47),
(752, 'VIC', 'Vichada', 1, 47),
(753, 'G', 'Grande Comore', 1, 48),
(754, 'A', 'Anjouan', 1, 48),
(755, 'M', 'Moheli', 1, 48),
(756, 'BO', 'Bouenza', 1, 49),
(757, 'BR', 'Brazzaville', 1, 49),
(758, 'CU', 'Cuvette', 1, 49),
(759, 'CO', 'Cuvette-Ouest', 1, 49),
(760, 'KO', 'Kouilou', 1, 49),
(761, 'LE', 'Lekoumou', 1, 49),
(762, 'LI', 'Likouala', 1, 49),
(763, 'NI', 'Niari', 1, 49),
(764, 'PL', 'Plateaux', 1, 49),
(765, 'PO', 'Pool', 1, 49),
(766, 'SA', 'Sangha', 1, 49),
(767, 'PU', 'Pukapuka', 1, 50),
(768, 'RK', 'Rakahanga', 1, 50),
(769, 'MK', 'Manihiki', 1, 50),
(770, 'PE', 'Penrhyn', 1, 50),
(771, 'NI', 'Nassau Island', 1, 50),
(772, 'SU', 'Surwarrow', 1, 50),
(773, 'PA', 'Palmerston', 1, 50),
(774, 'AI', 'Aitutaki', 1, 50),
(775, 'MA', 'Manuae', 1, 50),
(776, 'TA', 'Takutea', 1, 50),
(777, 'MT', 'Mitiaro', 1, 50),
(778, 'AT', 'Atiu', 1, 50),
(779, 'MU', 'Mauke', 1, 50),
(780, 'RR', 'Rarotonga', 1, 50),
(781, 'MG', 'Mangaia', 1, 50),
(782, 'AL', 'Alajuela', 1, 51),
(783, 'CA', 'Cartago', 1, 51),
(784, 'GU', 'Guanacaste', 1, 51),
(785, 'HE', 'Heredia', 1, 51),
(786, 'LI', 'Limon', 1, 51),
(787, 'PU', 'Puntarenas', 1, 51),
(788, 'SJ', 'San Jose', 1, 51),
(789, 'ABE', 'Abengourou', 1, 52),
(790, 'ABI', 'Abidjan', 1, 52),
(791, 'ABO', 'Aboisso', 1, 52),
(792, 'ADI', 'Adiake', 1, 52),
(793, 'ADZ', 'Adzope', 1, 52),
(794, 'AGB', 'Agboville', 1, 52),
(795, 'AGN', 'Agnibilekrou', 1, 52),
(796, 'ALE', 'Alepe', 1, 52),
(797, 'BOC', 'Bocanda', 1, 52),
(798, 'BAN', 'Bangolo', 1, 52),
(799, 'BEO', 'Beoumi', 1, 52),
(800, 'BIA', 'Biankouma', 1, 52),
(801, 'BDK', 'Bondoukou', 1, 52),
(802, 'BGN', 'Bongouanou', 1, 52),
(803, 'BFL', 'Bouafle', 1, 52),
(804, 'BKE', 'Bouake', 1, 52),
(805, 'BNA', 'Bouna', 1, 52),
(806, 'BDL', 'Boundiali', 1, 52),
(807, 'DKL', 'Dabakala', 1, 52),
(808, 'DBU', 'Dabou', 1, 52),
(809, 'DAL', 'Daloa', 1, 52),
(810, 'DAN', 'Danane', 1, 52),
(811, 'DAO', 'Daoukro', 1, 52),
(812, 'DIM', 'Dimbokro', 1, 52),
(813, 'DIV', 'Divo', 1, 52),
(814, 'DUE', 'Duekoue', 1, 52),
(815, 'FER', 'Ferkessedougou', 1, 52),
(816, 'GAG', 'Gagnoa', 1, 52),
(817, 'GBA', 'Grand-Bassam', 1, 52),
(818, 'GLA', 'Grand-Lahou', 1, 52),
(819, 'GUI', 'Guiglo', 1, 52),
(820, 'ISS', 'Issia', 1, 52),
(821, 'JAC', 'Jacqueville', 1, 52),
(822, 'KAT', 'Katiola', 1, 52),
(823, 'KOR', 'Korhogo', 1, 52),
(824, 'LAK', 'Lakota', 1, 52),
(825, 'MAN', 'Man', 1, 52),
(826, 'MKN', 'Mankono', 1, 52),
(827, 'MBA', 'Mbahiakro', 1, 52),
(828, 'ODI', 'Odienne', 1, 52),
(829, 'OUM', 'Oume', 1, 52),
(830, 'SAK', 'Sakassou', 1, 52),
(831, 'SPE', 'San-Pedro', 1, 52),
(832, 'SAS', 'Sassandra', 1, 52),
(833, 'SEG', 'Seguela', 1, 52),
(834, 'SIN', 'Sinfra', 1, 52),
(835, 'SOU', 'Soubre', 1, 52),
(836, 'TAB', 'Tabou', 1, 52),
(837, 'TAN', 'Tanda', 1, 52),
(838, 'TIE', 'Tiebissou', 1, 52),
(839, 'TIN', 'Tingrela', 1, 52),
(840, 'TIA', 'Tiassale', 1, 52),
(841, 'TBA', 'Touba', 1, 52),
(842, 'TLP', 'Toulepleu', 1, 52),
(843, 'TMD', 'Toumodi', 1, 52),
(844, 'VAV', 'Vavoua', 1, 52),
(845, 'YAM', 'Yamoussoukro', 1, 52),
(846, 'ZUE', 'Zuenoula', 1, 52),
(847, 'BB', 'Bjelovar-Bilogora', 1, 53),
(848, 'CZ', 'City of Zagreb', 1, 53),
(849, 'DN', 'Dubrovnik-Neretva', 1, 53),
(850, 'IS', 'Istra', 1, 53),
(851, 'KA', 'Karlovac', 1, 53),
(852, 'KK', 'Koprivnica-Krizevci', 1, 53),
(853, 'KZ', 'Krapina-Zagorje', 1, 53),
(854, 'LS', 'Lika-Senj', 1, 53),
(855, 'ME', 'Medimurje', 1, 53),
(856, 'OB', 'Osijek-Baranja', 1, 53),
(857, 'PS', 'Pozega-Slavonia', 1, 53),
(858, 'PG', 'Primorje-Gorski Kotar', 1, 53),
(859, 'SI', 'Sibenik', 1, 53),
(860, 'SM', 'Sisak-Moslavina', 1, 53),
(861, 'SB', 'Slavonski Brod-Posavina', 1, 53),
(862, 'SD', 'Split-Dalmatia', 1, 53),
(863, 'VA', 'Varazdin', 1, 53),
(864, 'VP', 'Virovitica-Podravina', 1, 53),
(865, 'VS', 'Vukovar-Srijem', 1, 53),
(866, 'ZK', 'Zadar-Knin', 1, 53),
(867, 'ZA', 'Zagreb', 1, 53),
(868, 'CA', 'Camaguey', 1, 54),
(869, 'CD', 'Ciego de Avila', 1, 54),
(870, 'CI', 'Cienfuegos', 1, 54),
(871, 'CH', 'Ciudad de La Habana', 1, 54),
(872, 'GR', 'Granma', 1, 54),
(873, 'GU', 'Guantanamo', 1, 54),
(874, 'HO', 'Holguin', 1, 54),
(875, 'IJ', 'Isla de la Juventud', 1, 54),
(876, 'LH', 'La Habana', 1, 54),
(877, 'LT', 'Las Tunas', 1, 54),
(878, 'MA', 'Matanzas', 1, 54),
(879, 'PR', 'Pinar del Rio', 1, 54),
(880, 'SS', 'Sancti Spiritus', 1, 54),
(881, 'SC', 'Santiago de Cuba', 1, 54),
(882, 'VC', 'Villa Clara', 1, 54),
(883, 'F', 'Famagusta', 1, 55),
(884, 'K', 'Kyrenia', 1, 55),
(885, 'A', 'Larnaca', 1, 55),
(886, 'I', 'Limassol', 1, 55),
(887, 'N', 'Nicosia', 1, 55),
(888, 'P', 'Paphos', 1, 55),
(889, 'U', 'Ustecky', 1, 56),
(890, 'C', 'Jihocesky', 1, 56),
(891, 'B', 'Jihomoravsky', 1, 56),
(892, 'K', 'Karlovarsky', 1, 56),
(893, 'H', 'Kralovehradecky', 1, 56),
(894, 'L', 'Liberecky', 1, 56),
(895, 'T', 'Moravskoslezsky', 1, 56),
(896, 'M', 'Olomoucky', 1, 56),
(897, 'E', 'Pardubicky', 1, 56),
(898, 'P', 'Plzensky', 1, 56),
(899, 'A', 'Praha', 1, 56),
(900, 'S', 'Stredocesky', 1, 56),
(901, 'J', 'Vysocina', 1, 56),
(902, 'Z', 'Zlinsky', 1, 56),
(903, 'AR', 'Arhus', 1, 57),
(904, 'BH', 'Bornholm', 1, 57),
(905, 'CO', 'Copenhagen', 1, 57),
(906, 'FO', 'Faroe Islands', 1, 57),
(907, 'FR', 'Frederiksborg', 1, 57),
(908, 'FY', 'Fyn', 1, 57),
(909, 'KO', 'Kobenhavn', 1, 57),
(910, 'NO', 'Nordjylland', 1, 57),
(911, 'RI', 'Ribe', 1, 57),
(912, 'RK', 'Ringkobing', 1, 57),
(913, 'RO', 'Roskilde', 1, 57),
(914, 'SO', 'Sonderjylland', 1, 57),
(915, 'ST', 'Storstrom', 1, 57),
(916, 'VK', 'Vejle', 1, 57),
(917, 'VJ', 'Vestj&aelig;lland', 1, 57),
(918, 'VB', 'Viborg', 1, 57),
(919, 'S', '''Ali Sabih', 1, 58),
(920, 'K', 'Dikhil', 1, 58),
(921, 'J', 'Djibouti', 1, 58),
(922, 'O', 'Obock', 1, 58),
(923, 'T', 'Tadjoura', 1, 58),
(924, 'AND', 'Saint Andrew Parish', 1, 59),
(925, 'DAV', 'Saint David Parish', 1, 59),
(926, 'GEO', 'Saint George Parish', 1, 59),
(927, 'JOH', 'Saint John Parish', 1, 59),
(928, 'JOS', 'Saint Joseph Parish', 1, 59),
(929, 'LUK', 'Saint Luke Parish', 1, 59),
(930, 'MAR', 'Saint Mark Parish', 1, 59),
(931, 'PAT', 'Saint Patrick Parish', 1, 59),
(932, 'PAU', 'Saint Paul Parish', 1, 59),
(933, 'PET', 'Saint Peter Parish', 1, 59),
(934, 'DN', 'Distrito Nacional', 1, 60),
(935, 'AZ', 'Azua', 1, 60),
(936, 'BC', 'Baoruco', 1, 60),
(937, 'BH', 'Barahona', 1, 60),
(938, 'DJ', 'Dajabon', 1, 60),
(939, 'DU', 'Duarte', 1, 60),
(940, 'EL', 'Elias Pina', 1, 60),
(941, 'SY', 'El Seybo', 1, 60),
(942, 'ET', 'Espaillat', 1, 60),
(943, 'HM', 'Hato Mayor', 1, 60),
(944, 'IN', 'Independencia', 1, 60),
(945, 'AL', 'La Altagracia', 1, 60),
(946, 'RO', 'La Romana', 1, 60),
(947, 'VE', 'La Vega', 1, 60),
(948, 'MT', 'Maria Trinidad Sanchez', 1, 60),
(949, 'MN', 'Monsenor Nouel', 1, 60),
(950, 'MC', 'Monte Cristi', 1, 60),
(951, 'MP', 'Monte Plata', 1, 60),
(952, 'PD', 'Pedernales', 1, 60),
(953, 'PR', 'Peravia (Bani)', 1, 60),
(954, 'PP', 'Puerto Plata', 1, 60),
(955, 'SL', 'Salcedo', 1, 60),
(956, 'SM', 'Samana', 1, 60),
(957, 'SH', 'Sanchez Ramirez', 1, 60),
(958, 'SC', 'San Cristobal', 1, 60),
(959, 'JO', 'San Jose de Ocoa', 1, 60),
(960, 'SJ', 'San Juan', 1, 60),
(961, 'PM', 'San Pedro de Macoris', 1, 60),
(962, 'SA', 'Santiago', 1, 60),
(963, 'ST', 'Santiago Rodriguez', 1, 60),
(964, 'SD', 'Santo Domingo', 1, 60),
(965, 'VA', 'Valverde', 1, 60),
(966, 'AL', 'Aileu', 1, 61),
(967, 'AN', 'Ainaro', 1, 61),
(968, 'BA', 'Baucau', 1, 61),
(969, 'BO', 'Bobonaro', 1, 61),
(970, 'CO', 'Cova Lima', 1, 61),
(971, 'DI', 'Dili', 1, 61),
(972, 'ER', 'Ermera', 1, 61),
(973, 'LA', 'Lautem', 1, 61),
(974, 'LI', 'Liquica', 1, 61),
(975, 'MT', 'Manatuto', 1, 61),
(976, 'MF', 'Manufahi', 1, 61),
(977, 'OE', 'Oecussi', 1, 61),
(978, 'VI', 'Viqueque', 1, 61),
(979, 'AZU', 'Azuay', 1, 62),
(980, 'BOL', 'Bolivar', 1, 62),
(981, 'CAN', 'Ca&ntilde;ar', 1, 62),
(982, 'CAR', 'Carchi', 1, 62),
(983, 'CHI', 'Chimborazo', 1, 62),
(984, 'COT', 'Cotopaxi', 1, 62),
(985, 'EOR', 'El Oro', 1, 62),
(986, 'ESM', 'Esmeraldas', 1, 62),
(987, 'GPS', 'Gal&aacute;pagos', 1, 62),
(988, 'GUA', 'Guayas', 1, 62),
(989, 'IMB', 'Imbabura', 1, 62),
(990, 'LOJ', 'Loja', 1, 62),
(991, 'LRO', 'Los Rios', 1, 62),
(992, 'MAN', 'Manab&iacute;', 1, 62),
(993, 'MSA', 'Morona Santiago', 1, 62),
(994, 'NAP', 'Napo', 1, 62),
(995, 'ORE', 'Orellana', 1, 62),
(996, 'PAS', 'Pastaza', 1, 62),
(997, 'PIC', 'Pichincha', 1, 62),
(998, 'SUC', 'Sucumb&iacute;os', 1, 62),
(999, 'TUN', 'Tungurahua', 1, 62),
(1000, 'ZCH', 'Zamora Chinchipe', 1, 62),
(1001, 'DHY', 'Ad Daqahliyah', 1, 63),
(1002, 'BAM', 'Al Bahr al Ahmar', 1, 63),
(1003, 'BHY', 'Al Buhayrah', 1, 63),
(1004, 'FYM', 'Al Fayyum', 1, 63),
(1005, 'GBY', 'Al Gharbiyah', 1, 63),
(1006, 'IDR', 'Al Iskandariyah', 1, 63),
(1007, 'IML', 'Al Isma''iliyah', 1, 63),
(1008, 'JZH', 'Al Jizah', 1, 63),
(1009, 'MFY', 'Al Minufiyah', 1, 63),
(1010, 'MNY', 'Al Minya', 1, 63),
(1011, 'QHR', 'Al Qahirah', 1, 63),
(1012, 'QLY', 'Al Qalyubiyah', 1, 63),
(1013, 'WJD', 'Al Wadi al Jadid', 1, 63),
(1014, 'SHQ', 'Ash Sharqiyah', 1, 63),
(1015, 'SWY', 'As Suways', 1, 63),
(1016, 'ASW', 'Aswan', 1, 63),
(1017, 'ASY', 'Asyut', 1, 63),
(1018, 'BSW', 'Bani Suwayf', 1, 63),
(1019, 'BSD', 'Bur Sa''id', 1, 63),
(1020, 'DMY', 'Dumyat', 1, 63),
(1021, 'JNS', 'Janub Sina''', 1, 63),
(1022, 'KSH', 'Kafr ash Shaykh', 1, 63),
(1023, 'MAT', 'Matruh', 1, 63),
(1024, 'QIN', 'Qina', 1, 63),
(1025, 'SHS', 'Shamal Sina''', 1, 63),
(1026, 'SUH', 'Suhaj', 1, 63),
(1027, 'AH', 'Ahuachapan', 1, 64),
(1028, 'CA', 'Cabanas', 1, 64),
(1029, 'CH', 'Chalatenango', 1, 64),
(1030, 'CU', 'Cuscatlan', 1, 64),
(1031, 'LB', 'La Libertad', 1, 64),
(1032, 'PZ', 'La Paz', 1, 64),
(1033, 'UN', 'La Union', 1, 64),
(1034, 'MO', 'Morazan', 1, 64),
(1035, 'SM', 'San Miguel', 1, 64),
(1036, 'SS', 'San Salvador', 1, 64),
(1037, 'SV', 'San Vicente', 1, 64),
(1038, 'SA', 'Santa Ana', 1, 64),
(1039, 'SO', 'Sonsonate', 1, 64),
(1040, 'US', 'Usulutan', 1, 64),
(1041, 'AN', 'Provincia Annobon', 1, 65),
(1042, 'BN', 'Provincia Bioko Norte', 1, 65),
(1043, 'BS', 'Provincia Bioko Sur', 1, 65),
(1044, 'CS', 'Provincia Centro Sur', 1, 65),
(1045, 'KN', 'Provincia Kie-Ntem', 1, 65),
(1046, 'LI', 'Provincia Litoral', 1, 65),
(1047, 'WN', 'Provincia Wele-Nzas', 1, 65),
(1048, 'MA', 'Central (Maekel)', 1, 66),
(1049, 'KE', 'Anseba (Keren)', 1, 66),
(1050, 'DK', 'Southern Red Sea (Debub-Keih-Bahri)', 1, 66),
(1051, 'SK', 'Northern Red Sea (Semien-Keih-Bahri)', 1, 66),
(1052, 'DE', 'Southern (Debub)', 1, 66),
(1053, 'BR', 'Gash-Barka (Barentu)', 1, 66),
(1054, 'HA', 'Harjumaa (Tallinn)', 1, 67),
(1055, 'HI', 'Hiiumaa (Kardla)', 1, 67),
(1056, 'IV', 'Ida-Virumaa (Johvi)', 1, 67),
(1057, 'JA', 'Jarvamaa (Paide)', 1, 67),
(1058, 'JO', 'Jogevamaa (Jogeva)', 1, 67),
(1059, 'LV', 'Laane-Virumaa (Rakvere)', 1, 67),
(1060, 'LA', 'Laanemaa (Haapsalu)', 1, 67),
(1061, 'PA', 'Parnumaa (Parnu)', 1, 67),
(1062, 'PO', 'Polvamaa (Polva)', 1, 67),
(1063, 'RA', 'Raplamaa (Rapla)', 1, 67),
(1064, 'SA', 'Saaremaa (Kuessaare)', 1, 67),
(1065, 'TA', 'Tartumaa (Tartu)', 1, 67),
(1066, 'VA', 'Valgamaa (Valga)', 1, 67),
(1067, 'VI', 'Viljandimaa (Viljandi)', 1, 67),
(1068, 'VO', 'Vorumaa (Voru)', 1, 67),
(1069, 'AF', 'Afar', 1, 68),
(1070, 'AH', 'Amhara', 1, 68),
(1071, 'BG', 'Benishangul-Gumaz', 1, 68),
(1072, 'GB', 'Gambela', 1, 68),
(1073, 'HR', 'Hariai', 1, 68),
(1074, 'OR', 'Oromia', 1, 68),
(1075, 'SM', 'Somali', 1, 68),
(1076, 'SN', 'Southern Nations - Nationalities and Peoples Region', 1, 68),
(1077, 'TG', 'Tigray', 1, 68),
(1078, 'AA', 'Addis Ababa', 1, 68),
(1079, 'DD', 'Dire Dawa', 1, 68),
(1080, 'C', 'Central Division', 1, 71),
(1081, 'N', 'Northern Division', 1, 71),
(1082, 'E', 'Eastern Division', 1, 71),
(1083, 'W', 'Western Division', 1, 71),
(1084, 'R', 'Rotuma', 1, 71),
(1085, 'AL', 'Ahvenanmaan Laani', 1, 72),
(1086, 'ES', 'Etela-Suomen Laani', 1, 72),
(1087, 'IS', 'Ita-Suomen Laani', 1, 72),
(1088, 'LS', 'Lansi-Suomen Laani', 1, 72),
(1089, 'LA', 'Lapin Lanani', 1, 72),
(1090, 'OU', 'Oulun Laani', 1, 72),
(1091, 'AL', 'Alsace', 1, 73),
(1092, 'AQ', 'Aquitaine', 1, 73),
(1093, 'AU', 'Auvergne', 1, 73),
(1094, 'BR', 'Brittany', 1, 73),
(1095, 'BU', 'Burgundy', 1, 73),
(1096, 'CE', 'Center Loire Valley', 1, 73),
(1097, 'CH', 'Champagne', 1, 73),
(1098, 'CO', 'Corse', 1, 73),
(1099, 'FR', 'France Comte', 1, 73),
(1100, 'LA', 'Languedoc Roussillon', 1, 73),
(1101, 'LI', 'Limousin', 1, 73),
(1102, 'LO', 'Lorraine', 1, 73),
(1103, 'MI', 'Midi Pyrenees', 1, 73),
(1104, 'NO', 'Nord Pas de Calais', 1, 73),
(1105, 'NR', 'Normandy', 1, 73),
(1106, 'PA', 'Paris / Ill de France', 1, 73),
(1107, 'PI', 'Picardie', 1, 73),
(1108, 'PO', 'Poitou Charente', 1, 73),
(1109, 'PR', 'Provence', 1, 73),
(1110, 'RH', 'Rhone Alps', 1, 73),
(1111, 'RI', 'Riviera', 1, 73),
(1112, 'WE', 'Western Loire Valley', 1, 73),
(1113, 'Et', 'Etranger', 1, 74),
(1114, '01', 'Ain', 1, 74),
(1115, '02', 'Aisne', 1, 74),
(1116, '03', 'Allier', 1, 74),
(1117, '04', 'Alpes de Haute Provence', 1, 74),
(1118, '05', 'Hautes-Alpes', 1, 74),
(1119, '06', 'Alpes Maritimes', 1, 74),
(1120, '07', 'Ard&egrave;che', 1, 74),
(1121, '08', 'Ardennes', 1, 74),
(1122, '09', 'Ari&egrave;ge', 1, 74),
(1123, '10', 'Aube', 1, 74),
(1124, '11', 'Aude', 1, 74),
(1125, '12', 'Aveyron', 1, 74),
(1126, '13', 'Bouches du Rh&ocirc;ne', 1, 74),
(1127, '14', 'Calvados', 1, 74),
(1128, '15', 'Cantal', 1, 74),
(1129, '16', 'Charente', 1, 74),
(1130, '17', 'Charente Maritime', 1, 74),
(1131, '18', 'Cher', 1, 74),
(1132, '19', 'Corr&egrave;ze', 1, 74),
(1133, '2A', 'Corse du Sud', 1, 74),
(1134, '2B', 'Haute Corse', 1, 74),
(1135, '21', 'C&ocirc;te d&#039;or', 1, 74),
(1136, '22', 'C&ocirc;tes d&#039;Armor', 1, 74),
(1137, '23', 'Creuse', 1, 74),
(1138, '24', 'Dordogne', 1, 74),
(1139, '25', 'Doubs', 1, 74),
(1140, '26', 'Dr&ocirc;me', 1, 74),
(1141, '27', 'Eure', 1, 74),
(1142, '28', 'Eure et Loir', 1, 74),
(1143, '29', 'Finist&egrave;re', 1, 74),
(1144, '30', 'Gard', 1, 74),
(1145, '31', 'Haute Garonne', 1, 74),
(1146, '32', 'Gers', 1, 74),
(1147, '33', 'Gironde', 1, 74),
(1148, '34', 'H&eacute;rault', 1, 74),
(1149, '35', 'Ille et Vilaine', 1, 74),
(1150, '36', 'Indre', 1, 74),
(1151, '37', 'Indre et Loire', 1, 74),
(1152, '38', 'Is&eacute;re', 1, 74),
(1153, '39', 'Jura', 1, 74),
(1154, '40', 'Landes', 1, 74),
(1155, '41', 'Loir et Cher', 1, 74),
(1156, '42', 'Loire', 1, 74),
(1157, '43', 'Haute Loire', 1, 74),
(1158, '44', 'Loire Atlantique', 1, 74),
(1159, '45', 'Loiret', 1, 74),
(1160, '46', 'Lot', 1, 74),
(1161, '47', 'Lot et Garonne', 1, 74),
(1162, '48', 'Loz&egrave;re', 1, 74),
(1163, '49', 'Maine et Loire', 1, 74),
(1164, '50', 'Manche', 1, 74),
(1165, '51', 'Marne', 1, 74),
(1166, '52', 'Haute Marne', 1, 74),
(1167, '53', 'Mayenne', 1, 74),
(1168, '54', 'Meurthe et Moselle', 1, 74),
(1169, '55', 'Meuse', 1, 74),
(1170, '56', 'Morbihan', 1, 74),
(1171, '57', 'Moselle', 1, 74),
(1172, '58', 'Ni&egrave;vre', 1, 74),
(1173, '59', 'Nord', 1, 74),
(1174, '60', 'Oise', 1, 74),
(1175, '61', 'Orne', 1, 74),
(1176, '62', 'Pas de Calais', 1, 74),
(1177, '63', 'Puy de D&ocirc;me', 1, 74),
(1178, '64', 'Pyr&eacute;n&eacute;es Atlantiques', 1, 74),
(1179, '65', 'Hautes Pyr&eacute;n&eacute;es', 1, 74),
(1180, '66', 'Pyr&eacute;n&eacute;es Orientales', 1, 74),
(1181, '67', 'Bas Rhin', 1, 74),
(1182, '68', 'Haut Rhin', 1, 74),
(1183, '69', 'Rh&ocirc;ne', 1, 74),
(1184, '70', 'Haute Sa&ocirc;ne', 1, 74),
(1185, '71', 'Sa&ocirc;ne et Loire', 1, 74),
(1186, '72', 'Sarthe', 1, 74),
(1187, '73', 'Savoie', 1, 74),
(1188, '74', 'Haute Savoie', 1, 74),
(1189, '75', 'Paris', 1, 74),
(1190, '76', 'Seine Maritime', 1, 74),
(1191, '77', 'Seine et Marne', 1, 74),
(1192, '78', 'Yvelines', 1, 74),
(1193, '79', 'Deux S&egrave;vres', 1, 74),
(1194, '80', 'Somme', 1, 74),
(1195, '81', 'Tarn', 1, 74),
(1196, '82', 'Tarn et Garonne', 1, 74),
(1197, '83', 'Var', 1, 74),
(1198, '84', 'Vaucluse', 1, 74),
(1199, '85', 'Vend&eacute;e', 1, 74),
(1200, '86', 'Vienne', 1, 74),
(1201, '87', 'Haute Vienne', 1, 74),
(1202, '88', 'Vosges', 1, 74),
(1203, '89', 'Yonne', 1, 74),
(1204, '90', 'Territoire de Belfort', 1, 74),
(1205, '91', 'Essonne', 1, 74),
(1206, '92', 'Hauts de Seine', 1, 74),
(1207, '93', 'Seine St-Denis', 1, 74),
(1208, '94', 'Val de Marne', 1, 74),
(1209, '95', 'Val d''Oise', 1, 74),
(1210, 'M', 'Archipel des Marquises', 1, 76),
(1211, 'T', 'Archipel des Tuamotu', 1, 76),
(1212, 'I', 'Archipel des Tubuai', 1, 76),
(1213, 'V', 'Iles du Vent', 1, 76),
(1214, 'S', 'Iles Sous-le-Vent', 1, 76),
(1215, 'C', 'Iles Crozet', 1, 77),
(1216, 'K', 'Iles Kerguelen', 1, 77),
(1217, 'A', 'Ile Amsterdam', 1, 77),
(1218, 'P', 'Ile Saint-Paul', 1, 77),
(1219, 'D', 'Adelie Land', 1, 77),
(1220, 'ES', 'Estuaire', 1, 78),
(1221, 'HO', 'Haut-Ogooue', 1, 78),
(1222, 'MO', 'Moyen-Ogooue', 1, 78),
(1223, 'NG', 'Ngounie', 1, 78),
(1224, 'NY', 'Nyanga', 1, 78),
(1225, 'OI', 'Ogooue-Ivindo', 1, 78),
(1226, 'OL', 'Ogooue-Lolo', 1, 78),
(1227, 'OM', 'Ogooue-Maritime', 1, 78),
(1228, 'WN', 'Woleu-Ntem', 1, 78),
(1229, 'BJ', 'Banjul', 1, 79),
(1230, 'BS', 'Basse', 1, 79),
(1231, 'BR', 'Brikama', 1, 79),
(1232, 'JA', 'Janjangbure', 1, 79),
(1233, 'KA', 'Kanifeng', 1, 79),
(1234, 'KE', 'Kerewan', 1, 79),
(1235, 'KU', 'Kuntaur', 1, 79),
(1236, 'MA', 'Mansakonko', 1, 79),
(1237, 'LR', 'Lower River', 1, 79),
(1238, 'CR', 'Central River', 1, 79),
(1239, 'NB', 'North Bank', 1, 79),
(1240, 'UR', 'Upper River', 1, 79),
(1241, 'WE', 'Western', 1, 79),
(1242, 'AB', 'Abkhazia', 1, 80),
(1243, 'AJ', 'Ajaria', 1, 80),
(1244, 'TB', 'Tbilisi', 1, 80),
(1245, 'GU', 'Guria', 1, 80),
(1246, 'IM', 'Imereti', 1, 80),
(1247, 'KA', 'Kakheti', 1, 80),
(1248, 'KK', 'Kvemo Kartli', 1, 80),
(1249, 'MM', 'Mtskheta-Mtianeti', 1, 80),
(1250, 'RL', 'Racha Lechkhumi and Kvemo Svanet', 1, 80),
(1251, 'SZ', 'Samegrelo-Zemo Svaneti', 1, 80),
(1252, 'SJ', 'Samtskhe-Javakheti', 1, 80),
(1253, 'SK', 'Shida Kartli', 1, 80),
(1254, 'BAW', 'Baden-W&uuml;rttemberg', 1, 81),
(1255, 'BAY', 'Bayern', 1, 81),
(1256, 'BER', 'Berlin', 1, 81),
(1257, 'BRG', 'Brandenburg', 1, 81),
(1258, 'BRE', 'Bremen', 1, 81),
(1259, 'HAM', 'Hamburg', 1, 81),
(1260, 'HES', 'Hessen', 1, 81),
(1261, 'MEC', 'Mecklenburg-Vorpommern', 1, 81),
(1262, 'NDS', 'Niedersachsen', 1, 81),
(1263, 'NRW', 'Nordrhein-Westfalen', 1, 81),
(1264, 'RHE', 'Rheinland-Pfalz', 1, 81),
(1265, 'SAR', 'Saarland', 1, 81),
(1266, 'SAS', 'Sachsen', 1, 81),
(1267, 'SAC', 'Sachsen-Anhalt', 1, 81),
(1268, 'SCN', 'Schleswig-Holstein', 1, 81),
(1269, 'THE', 'Th&uuml;ringen', 1, 81),
(1270, 'AS', 'Ashanti Region', 1, 82),
(1271, 'BA', 'Brong-Ahafo Region', 1, 82),
(1272, 'CE', 'Central Region', 1, 82),
(1273, 'EA', 'Eastern Region', 1, 82),
(1274, 'GA', 'Greater Accra Region', 1, 82),
(1275, 'NO', 'Northern Region', 1, 82),
(1276, 'UE', 'Upper East Region', 1, 82),
(1277, 'UW', 'Upper West Region', 1, 82),
(1278, 'VO', 'Volta Region', 1, 82),
(1279, 'WE', 'Western Region', 1, 82),
(1280, 'AT', 'Attica', 1, 84),
(1281, 'CN', 'Central Greece', 1, 84),
(1282, 'CM', 'Central Macedonia', 1, 84),
(1283, 'CR', 'Crete', 1, 84),
(1284, 'EM', 'East Macedonia and Thrace', 1, 84),
(1285, 'EP', 'Epirus', 1, 84),
(1286, 'II', 'Ionian Islands', 1, 84),
(1287, 'NA', 'North Aegean', 1, 84),
(1288, 'PP', 'Peloponnesos', 1, 84),
(1289, 'SA', 'South Aegean', 1, 84),
(1290, 'TH', 'Thessaly', 1, 84),
(1291, 'WG', 'West Greece', 1, 84),
(1292, 'WM', 'West Macedonia', 1, 84),
(1293, 'A', 'Avannaa', 1, 85),
(1294, 'T', 'Tunu', 1, 85),
(1295, 'K', 'Kitaa', 1, 85),
(1296, 'A', 'Saint Andrew', 1, 86),
(1297, 'D', 'Saint David', 1, 86),
(1298, 'G', 'Saint George', 1, 86),
(1299, 'J', 'Saint John', 1, 86),
(1300, 'M', 'Saint Mark', 1, 86),
(1301, 'P', 'Saint Patrick', 1, 86),
(1302, 'C', 'Carriacou', 1, 86),
(1303, 'Q', 'Petit Martinique', 1, 86),
(1304, 'AV', 'Alta Verapaz', 1, 89),
(1305, 'BV', 'Baja Verapaz', 1, 89),
(1306, 'CM', 'Chimaltenango', 1, 89),
(1307, 'CQ', 'Chiquimula', 1, 89),
(1308, 'PE', 'El Peten', 1, 89),
(1309, 'PR', 'El Progreso', 1, 89),
(1310, 'QC', 'El Quiche', 1, 89),
(1311, 'ES', 'Escuintla', 1, 89),
(1312, 'GU', 'Guatemala', 1, 89),
(1313, 'HU', 'Huehuetenango', 1, 89),
(1314, 'IZ', 'Izabal', 1, 89),
(1315, 'JA', 'Jalapa', 1, 89),
(1316, 'JU', 'Jutiapa', 1, 89),
(1317, 'QZ', 'Quetzaltenango', 1, 89),
(1318, 'RE', 'Retalhuleu', 1, 89),
(1319, 'ST', 'Sacatepequez', 1, 89),
(1320, 'SM', 'San Marcos', 1, 89),
(1321, 'SR', 'Santa Rosa', 1, 89),
(1322, 'SO', 'Solola', 1, 89),
(1323, 'SU', 'Suchitepequez', 1, 89),
(1324, 'TO', 'Totonicapan', 1, 89),
(1325, 'ZA', 'Zacapa', 1, 89),
(1326, 'CNK', 'Conakry', 1, 90),
(1327, 'BYL', 'Beyla', 1, 90),
(1328, 'BFA', 'Boffa', 1, 90),
(1329, 'BOK', 'Boke', 1, 90),
(1330, 'COY', 'Coyah', 1, 90),
(1331, 'DBL', 'Dabola', 1, 90),
(1332, 'DLB', 'Dalaba', 1, 90),
(1333, 'DGR', 'Dinguiraye', 1, 90),
(1334, 'DBR', 'Dubreka', 1, 90),
(1335, 'FRN', 'Faranah', 1, 90),
(1336, 'FRC', 'Forecariah', 1, 90),
(1337, 'FRI', 'Fria', 1, 90),
(1338, 'GAO', 'Gaoual', 1, 90),
(1339, 'GCD', 'Gueckedou', 1, 90),
(1340, 'KNK', 'Kankan', 1, 90),
(1341, 'KRN', 'Kerouane', 1, 90),
(1342, 'KND', 'Kindia', 1, 90),
(1343, 'KSD', 'Kissidougou', 1, 90),
(1344, 'KBA', 'Koubia', 1, 90),
(1345, 'KDA', 'Koundara', 1, 90),
(1346, 'KRA', 'Kouroussa', 1, 90),
(1347, 'LAB', 'Labe', 1, 90),
(1348, 'LLM', 'Lelouma', 1, 90),
(1349, 'LOL', 'Lola', 1, 90),
(1350, 'MCT', 'Macenta', 1, 90),
(1351, 'MAL', 'Mali', 1, 90),
(1352, 'MAM', 'Mamou', 1, 90),
(1353, 'MAN', 'Mandiana', 1, 90),
(1354, 'NZR', 'Nzerekore', 1, 90),
(1355, 'PIT', 'Pita', 1, 90),
(1356, 'SIG', 'Siguiri', 1, 90),
(1357, 'TLM', 'Telimele', 1, 90),
(1358, 'TOG', 'Tougue', 1, 90),
(1359, 'YOM', 'Yomou', 1, 90),
(1360, 'BF', 'Bafata Region', 1, 91),
(1361, 'BB', 'Biombo Region', 1, 91),
(1362, 'BS', 'Bissau Region', 1, 91),
(1363, 'BL', 'Bolama Region', 1, 91),
(1364, 'CA', 'Cacheu Region', 1, 91),
(1365, 'GA', 'Gabu Region', 1, 91),
(1366, 'OI', 'Oio Region', 1, 91),
(1367, 'QU', 'Quinara Region', 1, 91),
(1368, 'TO', 'Tombali Region', 1, 91),
(1369, 'BW', 'Barima-Waini', 1, 92),
(1370, 'CM', 'Cuyuni-Mazaruni', 1, 92),
(1371, 'DM', 'Demerara-Mahaica', 1, 92),
(1372, 'EC', 'East Berbice-Corentyne', 1, 92),
(1373, 'EW', 'Essequibo Islands-West Demerara', 1, 92),
(1374, 'MB', 'Mahaica-Berbice', 1, 92),
(1375, 'PM', 'Pomeroon-Supenaam', 1, 92),
(1376, 'PI', 'Potaro-Siparuni', 1, 92),
(1377, 'UD', 'Upper Demerara-Berbice', 1, 92),
(1378, 'UT', 'Upper Takutu-Upper Essequibo', 1, 92),
(1379, 'AR', 'Artibonite', 1, 93),
(1380, 'CE', 'Centre', 1, 93),
(1381, 'GA', 'Grand''Anse', 1, 93),
(1382, 'ND', 'Nord', 1, 93),
(1383, 'NE', 'Nord-Est', 1, 93),
(1384, 'NO', 'Nord-Ouest', 1, 93),
(1385, 'OU', 'Ouest', 1, 93),
(1386, 'SD', 'Sud', 1, 93),
(1387, 'SE', 'Sud-Est', 1, 93),
(1388, 'F', 'Flat Island', 1, 94),
(1389, 'M', 'McDonald Island', 1, 94),
(1390, 'S', 'Shag Island', 1, 94),
(1391, 'H', 'Heard Island', 1, 94),
(1392, 'AT', 'Atlantida', 1, 95),
(1393, 'CH', 'Choluteca', 1, 95),
(1394, 'CL', 'Colon', 1, 95),
(1395, 'CM', 'Comayagua', 1, 95),
(1396, 'CP', 'Copan', 1, 95),
(1397, 'CR', 'Cortes', 1, 95),
(1398, 'PA', 'El Paraiso', 1, 95),
(1399, 'FM', 'Francisco Morazan', 1, 95),
(1400, 'GD', 'Gracias a Dios', 1, 95),
(1401, 'IN', 'Intibuca', 1, 95),
(1402, 'IB', 'Islas de la Bahia (Bay Islands)', 1, 95),
(1403, 'PZ', 'La Paz', 1, 95),
(1404, 'LE', 'Lempira', 1, 95),
(1405, 'OC', 'Ocotepeque', 1, 95),
(1406, 'OL', 'Olancho', 1, 95),
(1407, 'SB', 'Santa Barbara', 1, 95),
(1408, 'VA', 'Valle', 1, 95),
(1409, 'YO', 'Yoro', 1, 95),
(1410, 'HCW', 'Central and Western Hong Kong Island', 1, 96),
(1411, 'HEA', 'Eastern Hong Kong Island', 1, 96),
(1412, 'HSO', 'Southern Hong Kong Island', 1, 96),
(1413, 'HWC', 'Wan Chai Hong Kong Island', 1, 96),
(1414, 'KKC', 'Kowloon City Kowloon', 1, 96),
(1415, 'KKT', 'Kwun Tong Kowloon', 1, 96),
(1416, 'KSS', 'Sham Shui Po Kowloon', 1, 96),
(1417, 'KWT', 'Wong Tai Sin Kowloon', 1, 96),
(1418, 'KYT', 'Yau Tsim Mong Kowloon', 1, 96),
(1419, 'NIS', 'Islands New Territories', 1, 96),
(1420, 'NKT', 'Kwai Tsing New Territories', 1, 96),
(1421, 'NNO', 'North New Territories', 1, 96),
(1422, 'NSK', 'Sai Kung New Territories', 1, 96),
(1423, 'NST', 'Sha Tin New Territories', 1, 96),
(1424, 'NTP', 'Tai Po New Territories', 1, 96),
(1425, 'NTW', 'Tsuen Wan New Territories', 1, 96),
(1426, 'NTM', 'Tuen Mun New Territories', 1, 96),
(1427, 'NYL', 'Yuen Long New Territories', 1, 96),
(1428, 'BK', 'Bacs-Kiskun', 1, 97),
(1429, 'BA', 'Baranya', 1, 97),
(1430, 'BE', 'Bekes', 1, 97),
(1431, 'BS', 'Bekescsaba', 1, 97),
(1432, 'BZ', 'Borsod-Abauj-Zemplen', 1, 97),
(1433, 'BU', 'Budapest', 1, 97),
(1434, 'CS', 'Csongrad', 1, 97),
(1435, 'DE', 'Debrecen', 1, 97),
(1436, 'DU', 'Dunaujvaros', 1, 97),
(1437, 'EG', 'Eger', 1, 97),
(1438, 'FE', 'Fejer', 1, 97),
(1439, 'GY', 'Gyor', 1, 97),
(1440, 'GM', 'Gyor-Moson-Sopron', 1, 97),
(1441, 'HB', 'Hajdu-Bihar', 1, 97),
(1442, 'HE', 'Heves', 1, 97),
(1443, 'HO', 'Hodmezovasarhely', 1, 97),
(1444, 'JN', 'Jasz-Nagykun-Szolnok', 1, 97),
(1445, 'KA', 'Kaposvar', 1, 97),
(1446, 'KE', 'Kecskemet', 1, 97),
(1447, 'KO', 'Komarom-Esztergom', 1, 97),
(1448, 'MI', 'Miskolc', 1, 97),
(1449, 'NA', 'Nagykanizsa', 1, 97),
(1450, 'NO', 'Nograd', 1, 97),
(1451, 'NY', 'Nyiregyhaza', 1, 97),
(1452, 'PE', 'Pecs', 1, 97),
(1453, 'PS', 'Pest', 1, 97),
(1454, 'SO', 'Somogy', 1, 97),
(1455, 'SP', 'Sopron', 1, 97),
(1456, 'SS', 'Szabolcs-Szatmar-Bereg', 1, 97),
(1457, 'SZ', 'Szeged', 1, 97),
(1458, 'SE', 'Szekesfehervar', 1, 97),
(1459, 'SL', 'Szolnok', 1, 97),
(1460, 'SM', 'Szombathely', 1, 97),
(1461, 'TA', 'Tatabanya', 1, 97),
(1462, 'TO', 'Tolna', 1, 97),
(1463, 'VA', 'Vas', 1, 97),
(1464, 'VE', 'Veszprem', 1, 97),
(1465, 'ZA', 'Zala', 1, 97),
(1466, 'ZZ', 'Zalaegerszeg', 1, 97),
(1467, 'AL', 'Austurland', 1, 98),
(1468, 'HF', 'Hofuoborgarsvaeoi', 1, 98),
(1469, 'NE', 'Norourland eystra', 1, 98),
(1470, 'NV', 'Norourland vestra', 1, 98),
(1471, 'SL', 'Suourland', 1, 98),
(1472, 'SN', 'Suournes', 1, 98),
(1473, 'VF', 'Vestfiroir', 1, 98),
(1474, 'VL', 'Vesturland', 1, 98),
(1475, 'AN', 'Andaman and Nicobar Islands', 1, 99),
(1476, 'AP', 'Andhra Pradesh', 1, 99),
(1477, 'AR', 'Arunachal Pradesh', 1, 99),
(1478, 'AS', 'Assam', 1, 99),
(1479, 'BI', 'Bihar', 1, 99),
(1480, 'CH', 'Chandigarh', 1, 99),
(1481, 'DA', 'Dadra and Nagar Haveli', 1, 99),
(1482, 'DM', 'Daman and Diu', 1, 99),
(1483, 'DE', 'Delhi', 1, 99),
(1484, 'GO', 'Goa', 1, 99),
(1485, 'GU', 'Gujarat', 1, 99),
(1486, 'HA', 'Haryana', 1, 99),
(1487, 'HP', 'Himachal Pradesh', 1, 99),
(1488, 'JA', 'Jammu and Kashmir', 1, 99),
(1489, 'KA', 'Karnataka', 1, 99),
(1490, 'KE', 'Kerala', 1, 99),
(1491, 'LI', 'Lakshadweep Islands', 1, 99),
(1492, 'MP', 'Madhya Pradesh', 1, 99),
(1493, 'MA', 'Maharashtra', 1, 99),
(1494, 'MN', 'Manipur', 1, 99),
(1495, 'ME', 'Meghalaya', 1, 99),
(1496, 'MI', 'Mizoram', 1, 99),
(1497, 'NA', 'Nagaland', 1, 99),
(1498, 'OR', 'Orissa', 1, 99),
(1499, 'PO', 'Pondicherry', 1, 99),
(1500, 'PU', 'Punjab', 1, 99),
(1501, 'RA', 'Rajasthan', 1, 99),
(1502, 'SI', 'Sikkim', 1, 99),
(1503, 'TN', 'Tamil Nadu', 1, 99),
(1504, 'TR', 'Tripura', 1, 99),
(1505, 'UP', 'Uttar Pradesh', 1, 99),
(1506, 'WB', 'West Bengal', 1, 99),
(1507, 'AC', 'Aceh', 1, 100),
(1508, 'BA', 'Bali', 1, 100),
(1509, 'BT', 'Banten', 1, 100),
(1510, 'BE', 'Bengkulu', 1, 100),
(1511, 'BD', 'BoDeTaBek', 1, 100),
(1512, 'GO', 'Gorontalo', 1, 100),
(1513, 'JK', 'Jakarta Raya', 1, 100),
(1514, 'JA', 'Jambi', 1, 100),
(1515, 'JB', 'Jawa Barat', 1, 100),
(1516, 'JT', 'Jawa Tengah', 1, 100),
(1517, 'JI', 'Jawa Timur', 1, 100),
(1518, 'KB', 'Kalimantan Barat', 1, 100),
(1519, 'KS', 'Kalimantan Selatan', 1, 100),
(1520, 'KT', 'Kalimantan Tengah', 1, 100),
(1521, 'KI', 'Kalimantan Timur', 1, 100),
(1522, 'BB', 'Kepulauan Bangka Belitung', 1, 100),
(1523, 'LA', 'Lampung', 1, 100),
(1524, 'MA', 'Maluku', 1, 100),
(1525, 'MU', 'Maluku Utara', 1, 100),
(1526, 'NB', 'Nusa Tenggara Barat', 1, 100),
(1527, 'NT', 'Nusa Tenggara Timur', 1, 100),
(1528, 'PA', 'Papua', 1, 100),
(1529, 'RI', 'Riau', 1, 100),
(1530, 'SN', 'Sulawesi Selatan', 1, 100),
(1531, 'ST', 'Sulawesi Tengah', 1, 100),
(1532, 'SG', 'Sulawesi Tenggara', 1, 100),
(1533, 'SA', 'Sulawesi Utara', 1, 100),
(1534, 'SB', 'Sumatera Barat', 1, 100);
INSERT INTO `alamat_propinsi` (`alamat_propinsi_id`, `alamat_propinsi_kode`, `alamat_propinsi_nama`, `alamat_propinsi_status`, `alamat_negara_id`) VALUES
(1535, 'SS', 'Sumatera Selatan', 1, 100),
(1536, 'SU', 'Sumatera Utara', 1, 100),
(1537, 'YO', 'Yogyakarta', 1, 100),
(1538, 'TEH', 'Tehran', 1, 101),
(1539, 'QOM', 'Qom', 1, 101),
(1540, 'MKZ', 'Markazi', 1, 101),
(1541, 'QAZ', 'Qazvin', 1, 101),
(1542, 'GIL', 'Gilan', 1, 101),
(1543, 'ARD', 'Ardabil', 1, 101),
(1544, 'ZAN', 'Zanjan', 1, 101),
(1545, 'EAZ', 'East Azarbaijan', 1, 101),
(1546, 'WEZ', 'West Azarbaijan', 1, 101),
(1547, 'KRD', 'Kurdistan', 1, 101),
(1548, 'HMD', 'Hamadan', 1, 101),
(1549, 'KRM', 'Kermanshah', 1, 101),
(1550, 'ILM', 'Ilam', 1, 101),
(1551, 'LRS', 'Lorestan', 1, 101),
(1552, 'KZT', 'Khuzestan', 1, 101),
(1553, 'CMB', 'Chahar Mahaal and Bakhtiari', 1, 101),
(1554, 'KBA', 'Kohkiluyeh and Buyer Ahmad', 1, 101),
(1555, 'BSH', 'Bushehr', 1, 101),
(1556, 'FAR', 'Fars', 1, 101),
(1557, 'HRM', 'Hormozgan', 1, 101),
(1558, 'SBL', 'Sistan and Baluchistan', 1, 101),
(1559, 'KRB', 'Kerman', 1, 101),
(1560, 'YZD', 'Yazd', 1, 101),
(1561, 'EFH', 'Esfahan', 1, 101),
(1562, 'SMN', 'Semnan', 1, 101),
(1563, 'MZD', 'Mazandaran', 1, 101),
(1564, 'GLS', 'Golestan', 1, 101),
(1565, 'NKH', 'North Khorasan', 1, 101),
(1566, 'RKH', 'Razavi Khorasan', 1, 101),
(1567, 'SKH', 'South Khorasan', 1, 101),
(1568, 'BD', 'Baghdad', 1, 102),
(1569, 'SD', 'Salah ad Din', 1, 102),
(1570, 'DY', 'Diyala', 1, 102),
(1571, 'WS', 'Wasit', 1, 102),
(1572, 'MY', 'Maysan', 1, 102),
(1573, 'BA', 'Al Basrah', 1, 102),
(1574, 'DQ', 'Dhi Qar', 1, 102),
(1575, 'MU', 'Al Muthanna', 1, 102),
(1576, 'QA', 'Al Qadisyah', 1, 102),
(1577, 'BB', 'Babil', 1, 102),
(1578, 'KB', 'Al Karbala', 1, 102),
(1579, 'NJ', 'An Najaf', 1, 102),
(1580, 'AB', 'Al Anbar', 1, 102),
(1581, 'NN', 'Ninawa', 1, 102),
(1582, 'DH', 'Dahuk', 1, 102),
(1583, 'AL', 'Arbil', 1, 102),
(1584, 'TM', 'At Ta''mim', 1, 102),
(1585, 'SL', 'As Sulaymaniyah', 1, 102),
(1586, 'CA', 'Carlow', 1, 103),
(1587, 'CV', 'Cavan', 1, 103),
(1588, 'CL', 'Clare', 1, 103),
(1589, 'CO', 'Cork', 1, 103),
(1590, 'DO', 'Donegal', 1, 103),
(1591, 'DU', 'Dublin', 1, 103),
(1592, 'GA', 'Galway', 1, 103),
(1593, 'KE', 'Kerry', 1, 103),
(1594, 'KI', 'Kildare', 1, 103),
(1595, 'KL', 'Kilkenny', 1, 103),
(1596, 'LA', 'Laois', 1, 103),
(1597, 'LE', 'Leitrim', 1, 103),
(1598, 'LI', 'Limerick', 1, 103),
(1599, 'LO', 'Longford', 1, 103),
(1600, 'LU', 'Louth', 1, 103),
(1601, 'MA', 'Mayo', 1, 103),
(1602, 'ME', 'Meath', 1, 103),
(1603, 'MO', 'Monaghan', 1, 103),
(1604, 'OF', 'Offaly', 1, 103),
(1605, 'RO', 'Roscommon', 1, 103),
(1606, 'SL', 'Sligo', 1, 103),
(1607, 'TI', 'Tipperary', 1, 103),
(1608, 'WA', 'Waterford', 1, 103),
(1609, 'WE', 'Westmeath', 1, 103),
(1610, 'WX', 'Wexford', 1, 103),
(1611, 'WI', 'Wicklow', 1, 103),
(1612, 'BS', 'Be''er Sheva', 1, 104),
(1613, 'BH', 'Bika''at Hayarden', 1, 104),
(1614, 'EA', 'Eilat and Arava', 1, 104),
(1615, 'GA', 'Galil', 1, 104),
(1616, 'HA', 'Haifa', 1, 104),
(1617, 'JM', 'Jehuda Mountains', 1, 104),
(1618, 'JE', 'Jerusalem', 1, 104),
(1619, 'NE', 'Negev', 1, 104),
(1620, 'SE', 'Semaria', 1, 104),
(1621, 'SH', 'Sharon', 1, 104),
(1622, 'TA', 'Tel Aviv (Gosh Dan)', 1, 104),
(1623, 'CLA', 'Clarendon Parish', 1, 106),
(1624, 'HAN', 'Hanover Parish', 1, 106),
(1625, 'KIN', 'Kingston Parish', 1, 106),
(1626, 'MAN', 'Manchester Parish', 1, 106),
(1627, 'POR', 'Portland Parish', 1, 106),
(1628, 'AND', 'Saint Andrew Parish', 1, 106),
(1629, 'ANN', 'Saint Ann Parish', 1, 106),
(1630, 'CAT', 'Saint Catherine Parish', 1, 106),
(1631, 'ELI', 'Saint Elizabeth Parish', 1, 106),
(1632, 'JAM', 'Saint James Parish', 1, 106),
(1633, 'MAR', 'Saint Mary Parish', 1, 106),
(1634, 'THO', 'Saint Thomas Parish', 1, 106),
(1635, 'TRL', 'Trelawny Parish', 1, 106),
(1636, 'WML', 'Westmoreland Parish', 1, 106),
(1637, 'AI', 'Aichi', 1, 107),
(1638, 'AK', 'Akita', 1, 107),
(1639, 'AO', 'Aomori', 1, 107),
(1640, 'CH', 'Chiba', 1, 107),
(1641, 'EH', 'Ehime', 1, 107),
(1642, 'FK', 'Fukui', 1, 107),
(1643, 'FU', 'Fukuoka', 1, 107),
(1644, 'FS', 'Fukushima', 1, 107),
(1645, 'GI', 'Gifu', 1, 107),
(1646, 'GU', 'Gumma', 1, 107),
(1647, 'HI', 'Hiroshima', 1, 107),
(1648, 'HO', 'Hokkaido', 1, 107),
(1649, 'HY', 'Hyogo', 1, 107),
(1650, 'IB', 'Ibaraki', 1, 107),
(1651, 'IS', 'Ishikawa', 1, 107),
(1652, 'IW', 'Iwate', 1, 107),
(1653, 'KA', 'Kagawa', 1, 107),
(1654, 'KG', 'Kagoshima', 1, 107),
(1655, 'KN', 'Kanagawa', 1, 107),
(1656, 'KO', 'Kochi', 1, 107),
(1657, 'KU', 'Kumamoto', 1, 107),
(1658, 'KY', 'Kyoto', 1, 107),
(1659, 'MI', 'Mie', 1, 107),
(1660, 'MY', 'Miyagi', 1, 107),
(1661, 'MZ', 'Miyazaki', 1, 107),
(1662, 'NA', 'Nagano', 1, 107),
(1663, 'NG', 'Nagasaki', 1, 107),
(1664, 'NR', 'Nara', 1, 107),
(1665, 'NI', 'Niigata', 1, 107),
(1666, 'OI', 'Oita', 1, 107),
(1667, 'OK', 'Okayama', 1, 107),
(1668, 'ON', 'Okinawa', 1, 107),
(1669, 'OS', 'Osaka', 1, 107),
(1670, 'SA', 'Saga', 1, 107),
(1671, 'SI', 'Saitama', 1, 107),
(1672, 'SH', 'Shiga', 1, 107),
(1673, 'SM', 'Shimane', 1, 107),
(1674, 'SZ', 'Shizuoka', 1, 107),
(1675, 'TO', 'Tochigi', 1, 107),
(1676, 'TS', 'Tokushima', 1, 107),
(1677, 'TK', 'Tokyo', 1, 107),
(1678, 'TT', 'Tottori', 1, 107),
(1679, 'TY', 'Toyama', 1, 107),
(1680, 'WA', 'Wakayama', 1, 107),
(1681, 'YA', 'Yamagata', 1, 107),
(1682, 'YM', 'Yamaguchi', 1, 107),
(1683, 'YN', 'Yamanashi', 1, 107),
(1684, 'AM', '''Amman', 1, 108),
(1685, 'AJ', 'Ajlun', 1, 108),
(1686, 'AA', 'Al ''Aqabah', 1, 108),
(1687, 'AB', 'Al Balqa''', 1, 108),
(1688, 'AK', 'Al Karak', 1, 108),
(1689, 'AL', 'Al Mafraq', 1, 108),
(1690, 'AT', 'At Tafilah', 1, 108),
(1691, 'AZ', 'Az Zarqa''', 1, 108),
(1692, 'IR', 'Irbid', 1, 108),
(1693, 'JA', 'Jarash', 1, 108),
(1694, 'MA', 'Ma''an', 1, 108),
(1695, 'MD', 'Madaba', 1, 108),
(1696, 'AL', 'Almaty', 1, 109),
(1697, 'AC', 'Almaty City', 1, 109),
(1698, 'AM', 'Aqmola', 1, 109),
(1699, 'AQ', 'Aqtobe', 1, 109),
(1700, 'AS', 'Astana City', 1, 109),
(1701, 'AT', 'Atyrau', 1, 109),
(1702, 'BA', 'Batys Qazaqstan', 1, 109),
(1703, 'BY', 'Bayqongyr City', 1, 109),
(1704, 'MA', 'Mangghystau', 1, 109),
(1705, 'ON', 'Ongtustik Qazaqstan', 1, 109),
(1706, 'PA', 'Pavlodar', 1, 109),
(1707, 'QA', 'Qaraghandy', 1, 109),
(1708, 'QO', 'Qostanay', 1, 109),
(1709, 'QY', 'Qyzylorda', 1, 109),
(1710, 'SH', 'Shyghys Qazaqstan', 1, 109),
(1711, 'SO', 'Soltustik Qazaqstan', 1, 109),
(1712, 'ZH', 'Zhambyl', 1, 109),
(1713, 'CE', 'Central', 1, 110),
(1714, 'CO', 'Coast', 1, 110),
(1715, 'EA', 'Eastern', 1, 110),
(1716, 'NA', 'Nairobi Area', 1, 110),
(1717, 'NE', 'North Eastern', 1, 110),
(1718, 'NY', 'Nyanza', 1, 110),
(1719, 'RV', 'Rift Valley', 1, 110),
(1720, 'WE', 'Western', 1, 110),
(1721, 'AG', 'Abaiang', 1, 111),
(1722, 'AM', 'Abemama', 1, 111),
(1723, 'AK', 'Aranuka', 1, 111),
(1724, 'AO', 'Arorae', 1, 111),
(1725, 'BA', 'Banaba', 1, 111),
(1726, 'BE', 'Beru', 1, 111),
(1727, 'bT', 'Butaritari', 1, 111),
(1728, 'KA', 'Kanton', 1, 111),
(1729, 'KR', 'Kiritimati', 1, 111),
(1730, 'KU', 'Kuria', 1, 111),
(1731, 'MI', 'Maiana', 1, 111),
(1732, 'MN', 'Makin', 1, 111),
(1733, 'ME', 'Marakei', 1, 111),
(1734, 'NI', 'Nikunau', 1, 111),
(1735, 'NO', 'Nonouti', 1, 111),
(1736, 'ON', 'Onotoa', 1, 111),
(1737, 'TT', 'Tabiteuea', 1, 111),
(1738, 'TR', 'Tabuaeran', 1, 111),
(1739, 'TM', 'Tamana', 1, 111),
(1740, 'TW', 'Tarawa', 1, 111),
(1741, 'TE', 'Teraina', 1, 111),
(1742, 'CHA', 'Chagang-do', 1, 112),
(1743, 'HAB', 'Hamgyong-bukto', 1, 112),
(1744, 'HAN', 'Hamgyong-namdo', 1, 112),
(1745, 'HWB', 'Hwanghae-bukto', 1, 112),
(1746, 'HWN', 'Hwanghae-namdo', 1, 112),
(1747, 'KAN', 'Kangwon-do', 1, 112),
(1748, 'PYB', 'P''yongan-bukto', 1, 112),
(1749, 'PYN', 'P''yongan-namdo', 1, 112),
(1750, 'YAN', 'Ryanggang-do (Yanggang-do)', 1, 112),
(1751, 'NAJ', 'Rason Directly Governed City', 1, 112),
(1752, 'PYO', 'P''yongyang Special City', 1, 112),
(1753, 'CO', 'Ch''ungch''ong-bukto', 1, 113),
(1754, 'CH', 'Ch''ungch''ong-namdo', 1, 113),
(1755, 'CD', 'Cheju-do', 1, 113),
(1756, 'CB', 'Cholla-bukto', 1, 113),
(1757, 'CN', 'Cholla-namdo', 1, 113),
(1758, 'IG', 'Inch''on-gwangyoksi', 1, 113),
(1759, 'KA', 'Kangwon-do', 1, 113),
(1760, 'KG', 'Kwangju-gwangyoksi', 1, 113),
(1761, 'KD', 'Kyonggi-do', 1, 113),
(1762, 'KB', 'Kyongsang-bukto', 1, 113),
(1763, 'KN', 'Kyongsang-namdo', 1, 113),
(1764, 'PG', 'Pusan-gwangyoksi', 1, 113),
(1765, 'SO', 'Soul-t''ukpyolsi', 1, 113),
(1766, 'TA', 'Taegu-gwangyoksi', 1, 113),
(1767, 'TG', 'Taejon-gwangyoksi', 1, 113),
(1768, 'AL', 'Al ''Asimah', 1, 114),
(1769, 'AA', 'Al Ahmadi', 1, 114),
(1770, 'AF', 'Al Farwaniyah', 1, 114),
(1771, 'AJ', 'Al Jahra''', 1, 114),
(1772, 'HA', 'Hawalli', 1, 114),
(1773, 'GB', 'Bishkek', 1, 115),
(1774, 'B', 'Batken', 1, 115),
(1775, 'C', 'Chu', 1, 115),
(1776, 'J', 'Jalal-Abad', 1, 115),
(1777, 'N', 'Naryn', 1, 115),
(1778, 'O', 'Osh', 1, 115),
(1779, 'T', 'Talas', 1, 115),
(1780, 'Y', 'Ysyk-Kol', 1, 115),
(1781, 'VT', 'Vientiane', 1, 116),
(1782, 'AT', 'Attapu', 1, 116),
(1783, 'BK', 'Bokeo', 1, 116),
(1784, 'BL', 'Bolikhamxai', 1, 116),
(1785, 'CH', 'Champasak', 1, 116),
(1786, 'HO', 'Houaphan', 1, 116),
(1787, 'KH', 'Khammouan', 1, 116),
(1788, 'LM', 'Louang Namtha', 1, 116),
(1789, 'LP', 'Louangphabang', 1, 116),
(1790, 'OU', 'Oudomxai', 1, 116),
(1791, 'PH', 'Phongsali', 1, 116),
(1792, 'SL', 'Salavan', 1, 116),
(1793, 'SV', 'Savannakhet', 1, 116),
(1794, 'VI', 'Vientiane', 1, 116),
(1795, 'XA', 'Xaignabouli', 1, 116),
(1796, 'XE', 'Xekong', 1, 116),
(1797, 'XI', 'Xiangkhoang', 1, 116),
(1798, 'XN', 'Xaisomboun', 1, 116),
(1799, 'AIZ', 'Aizkraukles Rajons', 1, 117),
(1800, 'ALU', 'Aluksnes Rajons', 1, 117),
(1801, 'BAL', 'Balvu Rajons', 1, 117),
(1802, 'BAU', 'Bauskas Rajons', 1, 117),
(1803, 'CES', 'Cesu Rajons', 1, 117),
(1804, 'DGR', 'Daugavpils Rajons', 1, 117),
(1805, 'DOB', 'Dobeles Rajons', 1, 117),
(1806, 'GUL', 'Gulbenes Rajons', 1, 117),
(1807, 'JEK', 'Jekabpils Rajons', 1, 117),
(1808, 'JGR', 'Jelgavas Rajons', 1, 117),
(1809, 'KRA', 'Kraslavas Rajons', 1, 117),
(1810, 'KUL', 'Kuldigas Rajons', 1, 117),
(1811, 'LPR', 'Liepajas Rajons', 1, 117),
(1812, 'LIM', 'Limbazu Rajons', 1, 117),
(1813, 'LUD', 'Ludzas Rajons', 1, 117),
(1814, 'MAD', 'Madonas Rajons', 1, 117),
(1815, 'OGR', 'Ogres Rajons', 1, 117),
(1816, 'PRE', 'Preilu Rajons', 1, 117),
(1817, 'RZR', 'Rezeknes Rajons', 1, 117),
(1818, 'RGR', 'Rigas Rajons', 1, 117),
(1819, 'SAL', 'Saldus Rajons', 1, 117),
(1820, 'TAL', 'Talsu Rajons', 1, 117),
(1821, 'TUK', 'Tukuma Rajons', 1, 117),
(1822, 'VLK', 'Valkas Rajons', 1, 117),
(1823, 'VLM', 'Valmieras Rajons', 1, 117),
(1824, 'VSR', 'Ventspils Rajons', 1, 117),
(1825, 'DGV', 'Daugavpils', 1, 117),
(1826, 'JGV', 'Jelgava', 1, 117),
(1827, 'JUR', 'Jurmala', 1, 117),
(1828, 'LPK', 'Liepaja', 1, 117),
(1829, 'RZK', 'Rezekne', 1, 117),
(1830, 'RGA', 'Riga', 1, 117),
(1831, 'VSL', 'Ventspils', 1, 117),
(1832, 'BE', 'Berea', 1, 119),
(1833, 'BB', 'Butha-Buthe', 1, 119),
(1834, 'LE', 'Leribe', 1, 119),
(1835, 'MF', 'Mafeteng', 1, 119),
(1836, 'MS', 'Maseru', 1, 119),
(1837, 'MH', 'Mohale''s Hoek', 1, 119),
(1838, 'MK', 'Mokhotlong', 1, 119),
(1839, 'QN', 'Qacha''s Nek', 1, 119),
(1840, 'QT', 'Quthing', 1, 119),
(1841, 'TT', 'Thaba-Tseka', 1, 119),
(1842, 'BI', 'Bomi', 1, 120),
(1843, 'BG', 'Bong', 1, 120),
(1844, 'GB', 'Grand Bassa', 1, 120),
(1845, 'CM', 'Grand Cape Mount', 1, 120),
(1846, 'GG', 'Grand Gedeh', 1, 120),
(1847, 'GK', 'Grand Kru', 1, 120),
(1848, 'LO', 'Lofa', 1, 120),
(1849, 'MG', 'Margibi', 1, 120),
(1850, 'ML', 'Maryland', 1, 120),
(1851, 'MS', 'Montserrado', 1, 120),
(1852, 'NB', 'Nimba', 1, 120),
(1853, 'RC', 'River Cess', 1, 120),
(1854, 'SN', 'Sinoe', 1, 120),
(1855, 'AJ', 'Ajdabiya', 1, 121),
(1856, 'AZ', 'Al ''Aziziyah', 1, 121),
(1857, 'FA', 'Al Fatih', 1, 121),
(1858, 'JA', 'Al Jabal al Akhdar', 1, 121),
(1859, 'JU', 'Al Jufrah', 1, 121),
(1860, 'KH', 'Al Khums', 1, 121),
(1861, 'KU', 'Al Kufrah', 1, 121),
(1862, 'NK', 'An Nuqat al Khams', 1, 121),
(1863, 'AS', 'Ash Shati''', 1, 121),
(1864, 'AW', 'Awbari', 1, 121),
(1865, 'ZA', 'Az Zawiyah', 1, 121),
(1866, 'BA', 'Banghazi', 1, 121),
(1867, 'DA', 'Darnah', 1, 121),
(1868, 'GD', 'Ghadamis', 1, 121),
(1869, 'GY', 'Gharyan', 1, 121),
(1870, 'MI', 'Misratah', 1, 121),
(1871, 'MZ', 'Murzuq', 1, 121),
(1872, 'SB', 'Sabha', 1, 121),
(1873, 'SW', 'Sawfajjin', 1, 121),
(1874, 'SU', 'Surt', 1, 121),
(1875, 'TL', 'Tarabulus (Tripoli)', 1, 121),
(1876, 'TH', 'Tarhunah', 1, 121),
(1877, 'TU', 'Tubruq', 1, 121),
(1878, 'YA', 'Yafran', 1, 121),
(1879, 'ZL', 'Zlitan', 1, 121),
(1880, 'V', 'Vaduz', 1, 122),
(1881, 'A', 'Schaan', 1, 122),
(1882, 'B', 'Balzers', 1, 122),
(1883, 'N', 'Triesen', 1, 122),
(1884, 'E', 'Eschen', 1, 122),
(1885, 'M', 'Mauren', 1, 122),
(1886, 'T', 'Triesenberg', 1, 122),
(1887, 'R', 'Ruggell', 1, 122),
(1888, 'G', 'Gamprin', 1, 122),
(1889, 'L', 'Schellenberg', 1, 122),
(1890, 'P', 'Planken', 1, 122),
(1891, 'AL', 'Alytus', 1, 123),
(1892, 'KA', 'Kaunas', 1, 123),
(1893, 'KL', 'Klaipeda', 1, 123),
(1894, 'MA', 'Marijampole', 1, 123),
(1895, 'PA', 'Panevezys', 1, 123),
(1896, 'SI', 'Siauliai', 1, 123),
(1897, 'TA', 'Taurage', 1, 123),
(1898, 'TE', 'Telsiai', 1, 123),
(1899, 'UT', 'Utena', 1, 123),
(1900, 'VI', 'Vilnius', 1, 123),
(1901, 'DD', 'Diekirch', 1, 124),
(1902, 'DC', 'Clervaux', 1, 124),
(1903, 'DR', 'Redange', 1, 124),
(1904, 'DV', 'Vianden', 1, 124),
(1905, 'DW', 'Wiltz', 1, 124),
(1906, 'GG', 'Grevenmacher', 1, 124),
(1907, 'GE', 'Echternach', 1, 124),
(1908, 'GR', 'Remich', 1, 124),
(1909, 'LL', 'Luxembourg', 1, 124),
(1910, 'LC', 'Capellen', 1, 124),
(1911, 'LE', 'Esch-sur-Alzette', 1, 124),
(1912, 'LM', 'Mersch', 1, 124),
(1913, 'OLF', 'Our Lady Fatima Parish', 1, 125),
(1914, 'ANT', 'St. Anthony Parish', 1, 125),
(1915, 'LAZ', 'St. Lazarus Parish', 1, 125),
(1916, 'CAT', 'Cathedral Parish', 1, 125),
(1917, 'LAW', 'St. Lawrence Parish', 1, 125),
(1918, 'AN', 'Antananarivo', 1, 127),
(1919, 'AS', 'Antsiranana', 1, 127),
(1920, 'FN', 'Fianarantsoa', 1, 127),
(1921, 'MJ', 'Mahajanga', 1, 127),
(1922, 'TM', 'Toamasina', 1, 127),
(1923, 'TL', 'Toliara', 1, 127),
(1924, 'BLK', 'Balaka', 1, 128),
(1925, 'BLT', 'Blantyre', 1, 128),
(1926, 'CKW', 'Chikwawa', 1, 128),
(1927, 'CRD', 'Chiradzulu', 1, 128),
(1928, 'CTP', 'Chitipa', 1, 128),
(1929, 'DDZ', 'Dedza', 1, 128),
(1930, 'DWA', 'Dowa', 1, 128),
(1931, 'KRG', 'Karonga', 1, 128),
(1932, 'KSG', 'Kasungu', 1, 128),
(1933, 'LKM', 'Likoma', 1, 128),
(1934, 'LLG', 'Lilongwe', 1, 128),
(1935, 'MCG', 'Machinga', 1, 128),
(1936, 'MGC', 'Mangochi', 1, 128),
(1937, 'MCH', 'Mchinji', 1, 128),
(1938, 'MLJ', 'Mulanje', 1, 128),
(1939, 'MWZ', 'Mwanza', 1, 128),
(1940, 'MZM', 'Mzimba', 1, 128),
(1941, 'NTU', 'Ntcheu', 1, 128),
(1942, 'NKB', 'Nkhata Bay', 1, 128),
(1943, 'NKH', 'Nkhotakota', 1, 128),
(1944, 'NSJ', 'Nsanje', 1, 128),
(1945, 'NTI', 'Ntchisi', 1, 128),
(1946, 'PHL', 'Phalombe', 1, 128),
(1947, 'RMP', 'Rumphi', 1, 128),
(1948, 'SLM', 'Salima', 1, 128),
(1949, 'THY', 'Thyolo', 1, 128),
(1950, 'ZBA', 'Zomba', 1, 128),
(1951, 'JO', 'Johor', 1, 129),
(1952, 'KE', 'Kedah', 1, 129),
(1953, 'KL', 'Kelantan', 1, 129),
(1954, 'LA', 'Labuan', 1, 129),
(1955, 'ME', 'Melaka', 1, 129),
(1956, 'NS', 'Negeri Sembilan', 1, 129),
(1957, 'PA', 'Pahang', 1, 129),
(1958, 'PE', 'Perak', 1, 129),
(1959, 'PR', 'Perlis', 1, 129),
(1960, 'PP', 'Pulau Pinang', 1, 129),
(1961, 'SA', 'Sabah', 1, 129),
(1962, 'SR', 'Sarawak', 1, 129),
(1963, 'SE', 'Selangor', 1, 129),
(1964, 'TE', 'Terengganu', 1, 129),
(1965, 'WP', 'Wilayah Persekutuan', 1, 129),
(1966, 'THU', 'Thiladhunmathi Uthuru', 1, 130),
(1967, 'THD', 'Thiladhunmathi Dhekunu', 1, 130),
(1968, 'MLU', 'Miladhunmadulu Uthuru', 1, 130),
(1969, 'MLD', 'Miladhunmadulu Dhekunu', 1, 130),
(1970, 'MAU', 'Maalhosmadulu Uthuru', 1, 130),
(1971, 'MAD', 'Maalhosmadulu Dhekunu', 1, 130),
(1972, 'FAA', 'Faadhippolhu', 1, 130),
(1973, 'MAA', 'Male Atoll', 1, 130),
(1974, 'AAU', 'Ari Atoll Uthuru', 1, 130),
(1975, 'AAD', 'Ari Atoll Dheknu', 1, 130),
(1976, 'FEA', 'Felidhe Atoll', 1, 130),
(1977, 'MUA', 'Mulaku Atoll', 1, 130),
(1978, 'NAU', 'Nilandhe Atoll Uthuru', 1, 130),
(1979, 'NAD', 'Nilandhe Atoll Dhekunu', 1, 130),
(1980, 'KLH', 'Kolhumadulu', 1, 130),
(1981, 'HDH', 'Hadhdhunmathi', 1, 130),
(1982, 'HAU', 'Huvadhu Atoll Uthuru', 1, 130),
(1983, 'HAD', 'Huvadhu Atoll Dhekunu', 1, 130),
(1984, 'FMU', 'Fua Mulaku', 1, 130),
(1985, 'ADD', 'Addu', 1, 130),
(1986, 'GA', 'Gao', 1, 131),
(1987, 'KY', 'Kayes', 1, 131),
(1988, 'KD', 'Kidal', 1, 131),
(1989, 'KL', 'Koulikoro', 1, 131),
(1990, 'MP', 'Mopti', 1, 131),
(1991, 'SG', 'Segou', 1, 131),
(1992, 'SK', 'Sikasso', 1, 131),
(1993, 'TB', 'Tombouctou', 1, 131),
(1994, 'CD', 'Bamako Capital District', 1, 131),
(1995, 'ATT', 'Attard', 1, 132),
(1996, 'BAL', 'Balzan', 1, 132),
(1997, 'BGU', 'Birgu', 1, 132),
(1998, 'BKK', 'Birkirkara', 1, 132),
(1999, 'BRZ', 'Birzebbuga', 1, 132),
(2000, 'BOR', 'Bormla', 1, 132),
(2001, 'DIN', 'Dingli', 1, 132),
(2002, 'FGU', 'Fgura', 1, 132),
(2003, 'FLO', 'Floriana', 1, 132),
(2004, 'GDJ', 'Gudja', 1, 132),
(2005, 'GZR', 'Gzira', 1, 132),
(2006, 'GRG', 'Gargur', 1, 132),
(2007, 'GXQ', 'Gaxaq', 1, 132),
(2008, 'HMR', 'Hamrun', 1, 132),
(2009, 'IKL', 'Iklin', 1, 132),
(2010, 'ISL', 'Isla', 1, 132),
(2011, 'KLK', 'Kalkara', 1, 132),
(2012, 'KRK', 'Kirkop', 1, 132),
(2013, 'LIJ', 'Lija', 1, 132),
(2014, 'LUQ', 'Luqa', 1, 132),
(2015, 'MRS', 'Marsa', 1, 132),
(2016, 'MKL', 'Marsaskala', 1, 132),
(2017, 'MXL', 'Marsaxlokk', 1, 132),
(2018, 'MDN', 'Mdina', 1, 132),
(2019, 'MEL', 'Melliea', 1, 132),
(2020, 'MGR', 'Mgarr', 1, 132),
(2021, 'MST', 'Mosta', 1, 132),
(2022, 'MQA', 'Mqabba', 1, 132),
(2023, 'MSI', 'Msida', 1, 132),
(2024, 'MTF', 'Mtarfa', 1, 132),
(2025, 'NAX', 'Naxxar', 1, 132),
(2026, 'PAO', 'Paola', 1, 132),
(2027, 'PEM', 'Pembroke', 1, 132),
(2028, 'PIE', 'Pieta', 1, 132),
(2029, 'QOR', 'Qormi', 1, 132),
(2030, 'QRE', 'Qrendi', 1, 132),
(2031, 'RAB', 'Rabat', 1, 132),
(2032, 'SAF', 'Safi', 1, 132),
(2033, 'SGI', 'San Giljan', 1, 132),
(2034, 'SLU', 'Santa Lucija', 1, 132),
(2035, 'SPB', 'San Pawl il-Bahar', 1, 132),
(2036, 'SGW', 'San Gwann', 1, 132),
(2037, 'SVE', 'Santa Venera', 1, 132),
(2038, 'SIG', 'Siggiewi', 1, 132),
(2039, 'SLM', 'Sliema', 1, 132),
(2040, 'SWQ', 'Swieqi', 1, 132),
(2041, 'TXB', 'Ta Xbiex', 1, 132),
(2042, 'TRX', 'Tarxien', 1, 132),
(2043, 'VLT', 'Valletta', 1, 132),
(2044, 'XGJ', 'Xgajra', 1, 132),
(2045, 'ZBR', 'Zabbar', 1, 132),
(2046, 'ZBG', 'Zebbug', 1, 132),
(2047, 'ZJT', 'Zejtun', 1, 132),
(2048, 'ZRQ', 'Zurrieq', 1, 132),
(2049, 'FNT', 'Fontana', 1, 132),
(2050, 'GHJ', 'Ghajnsielem', 1, 132),
(2051, 'GHR', 'Gharb', 1, 132),
(2052, 'GHS', 'Ghasri', 1, 132),
(2053, 'KRC', 'Kercem', 1, 132),
(2054, 'MUN', 'Munxar', 1, 132),
(2055, 'NAD', 'Nadur', 1, 132),
(2056, 'QAL', 'Qala', 1, 132),
(2057, 'VIC', 'Victoria', 1, 132),
(2058, 'SLA', 'San Lawrenz', 1, 132),
(2059, 'SNT', 'Sannat', 1, 132),
(2060, 'ZAG', 'Xagra', 1, 132),
(2061, 'XEW', 'Xewkija', 1, 132),
(2062, 'ZEB', 'Zebbug', 1, 132),
(2063, 'ALG', 'Ailinginae', 1, 133),
(2064, 'ALL', 'Ailinglaplap', 1, 133),
(2065, 'ALK', 'Ailuk', 1, 133),
(2066, 'ARN', 'Arno', 1, 133),
(2067, 'AUR', 'Aur', 1, 133),
(2068, 'BKR', 'Bikar', 1, 133),
(2069, 'BKN', 'Bikini', 1, 133),
(2070, 'BKK', 'Bokak', 1, 133),
(2071, 'EBN', 'Ebon', 1, 133),
(2072, 'ENT', 'Enewetak', 1, 133),
(2073, 'EKB', 'Erikub', 1, 133),
(2074, 'JBT', 'Jabat', 1, 133),
(2075, 'JLT', 'Jaluit', 1, 133),
(2076, 'JEM', 'Jemo', 1, 133),
(2077, 'KIL', 'Kili', 1, 133),
(2078, 'KWJ', 'Kwajalein', 1, 133),
(2079, 'LAE', 'Lae', 1, 133),
(2080, 'LIB', 'Lib', 1, 133),
(2081, 'LKP', 'Likiep', 1, 133),
(2082, 'MJR', 'Majuro', 1, 133),
(2083, 'MLP', 'Maloelap', 1, 133),
(2084, 'MJT', 'Mejit', 1, 133),
(2085, 'MIL', 'Mili', 1, 133),
(2086, 'NMK', 'Namorik', 1, 133),
(2087, 'NAM', 'Namu', 1, 133),
(2088, 'RGL', 'Rongelap', 1, 133),
(2089, 'RGK', 'Rongrik', 1, 133),
(2090, 'TOK', 'Toke', 1, 133),
(2091, 'UJA', 'Ujae', 1, 133),
(2092, 'UJL', 'Ujelang', 1, 133),
(2093, 'UTK', 'Utirik', 1, 133),
(2094, 'WTH', 'Wotho', 1, 133),
(2095, 'WTJ', 'Wotje', 1, 133),
(2096, 'AD', 'Adrar', 1, 135),
(2097, 'AS', 'Assaba', 1, 135),
(2098, 'BR', 'Brakna', 1, 135),
(2099, 'DN', 'Dakhlet Nouadhibou', 1, 135),
(2100, 'GO', 'Gorgol', 1, 135),
(2101, 'GM', 'Guidimaka', 1, 135),
(2102, 'HC', 'Hodh Ech Chargui', 1, 135),
(2103, 'HG', 'Hodh El Gharbi', 1, 135),
(2104, 'IN', 'Inchiri', 1, 135),
(2105, 'TA', 'Tagant', 1, 135),
(2106, 'TZ', 'Tiris Zemmour', 1, 135),
(2107, 'TR', 'Trarza', 1, 135),
(2108, 'NO', 'Nouakchott', 1, 135),
(2109, 'BR', 'Beau Bassin-Rose Hill', 1, 136),
(2110, 'CU', 'Curepipe', 1, 136),
(2111, 'PU', 'Port Louis', 1, 136),
(2112, 'QB', 'Quatre Bornes', 1, 136),
(2113, 'VP', 'Vacoas-Phoenix', 1, 136),
(2114, 'AG', 'Agalega Islands', 1, 136),
(2115, 'CC', 'Cargados Carajos Shoals (Saint Brandon Islands)', 1, 136),
(2116, 'RO', 'Rodrigues', 1, 136),
(2117, 'BL', 'Black River', 1, 136),
(2118, 'FL', 'Flacq', 1, 136),
(2119, 'GP', 'Grand Port', 1, 136),
(2120, 'MO', 'Moka', 1, 136),
(2121, 'PA', 'Pamplemousses', 1, 136),
(2122, 'PW', 'Plaines Wilhems', 1, 136),
(2123, 'PL', 'Port Louis', 1, 136),
(2124, 'RR', 'Riviere du Rempart', 1, 136),
(2125, 'SA', 'Savanne', 1, 136),
(2126, 'BN', 'Baja California Norte', 1, 138),
(2127, 'BS', 'Baja California Sur', 1, 138),
(2128, 'CA', 'Campeche', 1, 138),
(2129, 'CI', 'Chiapas', 1, 138),
(2130, 'CH', 'Chihuahua', 1, 138),
(2131, 'CZ', 'Coahuila de Zaragoza', 1, 138),
(2132, 'CL', 'Colima', 1, 138),
(2133, 'DF', 'Distrito Federal', 1, 138),
(2134, 'DU', 'Durango', 1, 138),
(2135, 'GA', 'Guanajuato', 1, 138),
(2136, 'GE', 'Guerrero', 1, 138),
(2137, 'HI', 'Hidalgo', 1, 138),
(2138, 'JA', 'Jalisco', 1, 138),
(2139, 'ME', 'Mexico', 1, 138),
(2140, 'MI', 'Michoacan de Ocampo', 1, 138),
(2141, 'MO', 'Morelos', 1, 138),
(2142, 'NA', 'Nayarit', 1, 138),
(2143, 'NL', 'Nuevo Leon', 1, 138),
(2144, 'OA', 'Oaxaca', 1, 138),
(2145, 'PU', 'Puebla', 1, 138),
(2146, 'QA', 'Queretaro de Arteaga', 1, 138),
(2147, 'QR', 'Quintana Roo', 1, 138),
(2148, 'SA', 'San Luis Potosi', 1, 138),
(2149, 'SI', 'Sinaloa', 1, 138),
(2150, 'SO', 'Sonora', 1, 138),
(2151, 'TB', 'Tabasco', 1, 138),
(2152, 'TM', 'Tamaulipas', 1, 138),
(2153, 'TL', 'Tlaxcala', 1, 138),
(2154, 'VE', 'Veracruz-Llave', 1, 138),
(2155, 'YU', 'Yucatan', 1, 138),
(2156, 'ZA', 'Zacatecas', 1, 138),
(2157, 'C', 'Chuuk', 1, 139),
(2158, 'K', 'Kosrae', 1, 139),
(2159, 'P', 'Pohnpei', 1, 139),
(2160, 'Y', 'Yap', 1, 139),
(2161, 'GA', 'Gagauzia', 1, 140),
(2162, 'CU', 'Chisinau', 1, 140),
(2163, 'BA', 'Balti', 1, 140),
(2164, 'CA', 'Cahul', 1, 140),
(2165, 'ED', 'Edinet', 1, 140),
(2166, 'LA', 'Lapusna', 1, 140),
(2167, 'OR', 'Orhei', 1, 140),
(2168, 'SO', 'Soroca', 1, 140),
(2169, 'TI', 'Tighina', 1, 140),
(2170, 'UN', 'Ungheni', 1, 140),
(2171, 'SN', 'St‚nga Nistrului', 1, 140),
(2172, 'FV', 'Fontvieille', 1, 141),
(2173, 'LC', 'La Condamine', 1, 141),
(2174, 'MV', 'Monaco-Ville', 1, 141),
(2175, 'MC', 'Monte-Carlo', 1, 141),
(2176, '1', 'Ulanbaatar', 1, 142),
(2177, '035', 'Orhon', 1, 142),
(2178, '037', 'Darhan uul', 1, 142),
(2179, '039', 'Hentiy', 1, 142),
(2180, '041', 'Hovsgol', 1, 142),
(2181, '043', 'Hovd', 1, 142),
(2182, '046', 'Uvs', 1, 142),
(2183, '047', 'Tov', 1, 142),
(2184, '049', 'Selenge', 1, 142),
(2185, '051', 'Suhbaatar', 1, 142),
(2186, '053', 'Omnogovi', 1, 142),
(2187, '055', 'Ovorhangay', 1, 142),
(2188, '057', 'Dzavhan', 1, 142),
(2189, '059', 'DundgovL', 1, 142),
(2190, '061', 'Dornod', 1, 142),
(2191, '063', 'Dornogov', 1, 142),
(2192, '064', 'Govi-Sumber', 1, 142),
(2193, '065', 'Govi-Altay', 1, 142),
(2194, '067', 'Bulgan', 1, 142),
(2195, '069', 'Bayanhongor', 1, 142),
(2196, '071', 'Bayan-Olgiy', 1, 142),
(2197, '073', 'Arhangay', 1, 142),
(2198, 'A', 'Saint Anthony', 1, 143),
(2199, 'G', 'Saint Georges', 1, 143),
(2200, 'P', 'Saint Peter', 1, 143),
(2201, 'AGD', 'Agadir', 1, 144),
(2202, 'HOC', 'Al Hoceima', 1, 144),
(2203, 'AZI', 'Azilal', 1, 144),
(2204, 'BME', 'Beni Mellal', 1, 144),
(2205, 'BSL', 'Ben Slimane', 1, 144),
(2206, 'BLM', 'Boulemane', 1, 144),
(2207, 'CBL', 'Casablanca', 1, 144),
(2208, 'CHA', 'Chaouen', 1, 144),
(2209, 'EJA', 'El Jadida', 1, 144),
(2210, 'EKS', 'El Kelaa des Sraghna', 1, 144),
(2211, 'ERA', 'Er Rachidia', 1, 144),
(2212, 'ESS', 'Essaouira', 1, 144),
(2213, 'FES', 'Fes', 1, 144),
(2214, 'FIG', 'Figuig', 1, 144),
(2215, 'GLM', 'Guelmim', 1, 144),
(2216, 'IFR', 'Ifrane', 1, 144),
(2217, 'KEN', 'Kenitra', 1, 144),
(2218, 'KHM', 'Khemisset', 1, 144),
(2219, 'KHN', 'Khenifra', 1, 144),
(2220, 'KHO', 'Khouribga', 1, 144),
(2221, 'LYN', 'Laayoune', 1, 144),
(2222, 'LAR', 'Larache', 1, 144),
(2223, 'MRK', 'Marrakech', 1, 144),
(2224, 'MKN', 'Meknes', 1, 144),
(2225, 'NAD', 'Nador', 1, 144),
(2226, 'ORZ', 'Ouarzazate', 1, 144),
(2227, 'OUJ', 'Oujda', 1, 144),
(2228, 'RSA', 'Rabat-Sale', 1, 144),
(2229, 'SAF', 'Safi', 1, 144),
(2230, 'SET', 'Settat', 1, 144),
(2231, 'SKA', 'Sidi Kacem', 1, 144),
(2232, 'TGR', 'Tangier', 1, 144),
(2233, 'TAN', 'Tan-Tan', 1, 144),
(2234, 'TAO', 'Taounate', 1, 144),
(2235, 'TRD', 'Taroudannt', 1, 144),
(2236, 'TAT', 'Tata', 1, 144),
(2237, 'TAZ', 'Taza', 1, 144),
(2238, 'TET', 'Tetouan', 1, 144),
(2239, 'TIZ', 'Tiznit', 1, 144),
(2240, 'ADK', 'Ad Dakhla', 1, 144),
(2241, 'BJD', 'Boujdour', 1, 144),
(2242, 'ESM', 'Es Smara', 1, 144),
(2243, 'CD', 'Cabo Delgado', 1, 145),
(2244, 'GZ', 'Gaza', 1, 145),
(2245, 'IN', 'Inhambane', 1, 145),
(2246, 'MN', 'Manica', 1, 145),
(2247, 'MC', 'Maputo (city)', 1, 145),
(2248, 'MP', 'Maputo', 1, 145),
(2249, 'NA', 'Nampula', 1, 145),
(2250, 'NI', 'Niassa', 1, 145),
(2251, 'SO', 'Sofala', 1, 145),
(2252, 'TE', 'Tete', 1, 145),
(2253, 'ZA', 'Zambezia', 1, 145),
(2254, 'AY', 'Ayeyarwady', 1, 146),
(2255, 'BG', 'Bago', 1, 146),
(2256, 'MG', 'Magway', 1, 146),
(2257, 'MD', 'Mandalay', 1, 146),
(2258, 'SG', 'Sagaing', 1, 146),
(2259, 'TN', 'Tanintharyi', 1, 146),
(2260, 'YG', 'Yangon', 1, 146),
(2261, 'CH', 'Chin State', 1, 146),
(2262, 'KC', 'Kachin State', 1, 146),
(2263, 'KH', 'Kayah State', 1, 146),
(2264, 'KN', 'Kayin State', 1, 146),
(2265, 'MN', 'Mon State', 1, 146),
(2266, 'RK', 'Rakhine State', 1, 146),
(2267, 'SH', 'Shan State', 1, 146),
(2268, 'CA', 'Caprivi', 1, 147),
(2269, 'ER', 'Erongo', 1, 147),
(2270, 'HA', 'Hardap', 1, 147),
(2271, 'KR', 'Karas', 1, 147),
(2272, 'KV', 'Kavango', 1, 147),
(2273, 'KH', 'Khomas', 1, 147),
(2274, 'KU', 'Kunene', 1, 147),
(2275, 'OW', 'Ohangwena', 1, 147),
(2276, 'OK', 'Omaheke', 1, 147),
(2277, 'OT', 'Omusati', 1, 147),
(2278, 'ON', 'Oshana', 1, 147),
(2279, 'OO', 'Oshikoto', 1, 147),
(2280, 'OJ', 'Otjozondjupa', 1, 147),
(2281, 'AO', 'Aiwo', 1, 148),
(2282, 'AA', 'Anabar', 1, 148),
(2283, 'AT', 'Anetan', 1, 148),
(2284, 'AI', 'Anibare', 1, 148),
(2285, 'BA', 'Baiti', 1, 148),
(2286, 'BO', 'Boe', 1, 148),
(2287, 'BU', 'Buada', 1, 148),
(2288, 'DE', 'Denigomodu', 1, 148),
(2289, 'EW', 'Ewa', 1, 148),
(2290, 'IJ', 'Ijuw', 1, 148),
(2291, 'ME', 'Meneng', 1, 148),
(2292, 'NI', 'Nibok', 1, 148),
(2293, 'UA', 'Uaboe', 1, 148),
(2294, 'YA', 'Yaren', 1, 148),
(2295, 'BA', 'Bagmati', 1, 149),
(2296, 'BH', 'Bheri', 1, 149),
(2297, 'DH', 'Dhawalagiri', 1, 149),
(2298, 'GA', 'Gandaki', 1, 149),
(2299, 'JA', 'Janakpur', 1, 149),
(2300, 'KA', 'Karnali', 1, 149),
(2301, 'KO', 'Kosi', 1, 149),
(2302, 'LU', 'Lumbini', 1, 149),
(2303, 'MA', 'Mahakali', 1, 149),
(2304, 'ME', 'Mechi', 1, 149),
(2305, 'NA', 'Narayani', 1, 149),
(2306, 'RA', 'Rapti', 1, 149),
(2307, 'SA', 'Sagarmatha', 1, 149),
(2308, 'SE', 'Seti', 1, 149),
(2309, 'DR', 'Drenthe', 1, 150),
(2310, 'FL', 'Flevoland', 1, 150),
(2311, 'FR', 'Friesland', 1, 150),
(2312, 'GE', 'Gelderland', 1, 150),
(2313, 'GR', 'Groningen', 1, 150),
(2314, 'LI', 'Limburg', 1, 150),
(2315, 'NB', 'Noord Brabant', 1, 150),
(2316, 'NH', 'Noord Holland', 1, 150),
(2317, 'OV', 'Overijssel', 1, 150),
(2318, 'UT', 'Utrecht', 1, 150),
(2319, 'ZE', 'Zeeland', 1, 150),
(2320, 'ZH', 'Zuid Holland', 1, 150),
(2321, 'L', 'Iles Loyaute', 1, 152),
(2322, 'N', 'Nord', 1, 152),
(2323, 'S', 'Sud', 1, 152),
(2324, 'AUK', 'Auckland', 1, 153),
(2325, 'BOP', 'Bay of Plenty', 1, 153),
(2326, 'CAN', 'Canterbury', 1, 153),
(2327, 'COR', 'Coromandel', 1, 153),
(2328, 'GIS', 'Gisborne', 1, 153),
(2329, 'FIO', 'Fiordland', 1, 153),
(2330, 'HKB', 'Hawke''s Bay', 1, 153),
(2331, 'MBH', 'Marlborough', 1, 153),
(2332, 'MWT', 'Manawatu-Wanganui', 1, 153),
(2333, 'MCM', 'Mt Cook-Mackenzie', 1, 153),
(2334, 'NSN', 'Nelson', 1, 153),
(2335, 'NTL', 'Northland', 1, 153),
(2336, 'OTA', 'Otago', 1, 153),
(2337, 'STL', 'Southland', 1, 153),
(2338, 'TKI', 'Taranaki', 1, 153),
(2339, 'WGN', 'Wellington', 1, 153),
(2340, 'WKO', 'Waikato', 1, 153),
(2341, 'WAI', 'Wairprarapa', 1, 153),
(2342, 'WTC', 'West Coast', 1, 153),
(2343, 'AN', 'Atlantico Norte', 1, 154),
(2344, 'AS', 'Atlantico Sur', 1, 154),
(2345, 'BO', 'Boaco', 1, 154),
(2346, 'CA', 'Carazo', 1, 154),
(2347, 'CI', 'Chinandega', 1, 154),
(2348, 'CO', 'Chontales', 1, 154),
(2349, 'ES', 'Esteli', 1, 154),
(2350, 'GR', 'Granada', 1, 154),
(2351, 'JI', 'Jinotega', 1, 154),
(2352, 'LE', 'Leon', 1, 154),
(2353, 'MD', 'Madriz', 1, 154),
(2354, 'MN', 'Managua', 1, 154),
(2355, 'MS', 'Masaya', 1, 154),
(2356, 'MT', 'Matagalpa', 1, 154),
(2357, 'NS', 'Nuevo Segovia', 1, 154),
(2358, 'RS', 'Rio San Juan', 1, 154),
(2359, 'RI', 'Rivas', 1, 154),
(2360, 'AG', 'Agadez', 1, 155),
(2361, 'DF', 'Diffa', 1, 155),
(2362, 'DS', 'Dosso', 1, 155),
(2363, 'MA', 'Maradi', 1, 155),
(2364, 'NM', 'Niamey', 1, 155),
(2365, 'TH', 'Tahoua', 1, 155),
(2366, 'TL', 'Tillaberi', 1, 155),
(2367, 'ZD', 'Zinder', 1, 155),
(2368, 'AB', 'Abia', 1, 156),
(2369, 'CT', 'Abuja Federal Capital Territory', 1, 156),
(2370, 'AD', 'Adamawa', 1, 156),
(2371, 'AK', 'Akwa Ibom', 1, 156),
(2372, 'AN', 'Anambra', 1, 156),
(2373, 'BC', 'Bauchi', 1, 156),
(2374, 'BY', 'Bayelsa', 1, 156),
(2375, 'BN', 'Benue', 1, 156),
(2376, 'BO', 'Borno', 1, 156),
(2377, 'CR', 'Cross River', 1, 156),
(2378, 'DE', 'Delta', 1, 156),
(2379, 'EB', 'Ebonyi', 1, 156),
(2380, 'ED', 'Edo', 1, 156),
(2381, 'EK', 'Ekiti', 1, 156),
(2382, 'EN', 'Enugu', 1, 156),
(2383, 'GO', 'Gombe', 1, 156),
(2384, 'IM', 'Imo', 1, 156),
(2385, 'JI', 'Jigawa', 1, 156),
(2386, 'KD', 'Kaduna', 1, 156),
(2387, 'KN', 'Kano', 1, 156),
(2388, 'KT', 'Katsina', 1, 156),
(2389, 'KE', 'Kebbi', 1, 156),
(2390, 'KO', 'Kogi', 1, 156),
(2391, 'KW', 'Kwara', 1, 156),
(2392, 'LA', 'Lagos', 1, 156),
(2393, 'NA', 'Nassarawa', 1, 156),
(2394, 'NI', 'Niger', 1, 156),
(2395, 'OG', 'Ogun', 1, 156),
(2396, 'ONG', 'Ondo', 1, 156),
(2397, 'OS', 'Osun', 1, 156),
(2398, 'OY', 'Oyo', 1, 156),
(2399, 'PL', 'Plateau', 1, 156),
(2400, 'RI', 'Rivers', 1, 156),
(2401, 'SO', 'Sokoto', 1, 156),
(2402, 'TA', 'Taraba', 1, 156),
(2403, 'YO', 'Yobe', 1, 156),
(2404, 'ZA', 'Zamfara', 1, 156),
(2405, 'N', 'Northern Islands', 1, 159),
(2406, 'R', 'Rota', 1, 159),
(2407, 'S', 'Saipan', 1, 159),
(2408, 'T', 'Tinian', 1, 159),
(2409, 'AK', 'Akershus', 1, 160),
(2410, 'AA', 'Aust-Agder', 1, 160),
(2411, 'BU', 'Buskerud', 1, 160),
(2412, 'FM', 'Finnmark', 1, 160),
(2413, 'HM', 'Hedmark', 1, 160),
(2414, 'HL', 'Hordaland', 1, 160),
(2415, 'MR', 'More og Romdal', 1, 160),
(2416, 'NT', 'Nord-Trondelag', 1, 160),
(2417, 'NL', 'Nordland', 1, 160),
(2418, 'OF', 'Ostfold', 1, 160),
(2419, 'OP', 'Oppland', 1, 160),
(2420, 'OL', 'Oslo', 1, 160),
(2421, 'RL', 'Rogaland', 1, 160),
(2422, 'ST', 'Sor-Trondelag', 1, 160),
(2423, 'SJ', 'Sogn og Fjordane', 1, 160),
(2424, 'SV', 'Svalbard', 1, 160),
(2425, 'TM', 'Telemark', 1, 160),
(2426, 'TR', 'Troms', 1, 160),
(2427, 'VA', 'Vest-Agder', 1, 160),
(2428, 'VF', 'Vestfold', 1, 160),
(2429, 'DA', 'Ad Dakhiliyah', 1, 161),
(2430, 'BA', 'Al Batinah', 1, 161),
(2431, 'WU', 'Al Wusta', 1, 161),
(2432, 'SH', 'Ash Sharqiyah', 1, 161),
(2433, 'ZA', 'Az Zahirah', 1, 161),
(2434, 'MA', 'Masqat', 1, 161),
(2435, 'MU', 'Musandam', 1, 161),
(2436, 'ZU', 'Zufar', 1, 161),
(2437, 'B', 'Balochistan', 1, 162),
(2438, 'T', 'Federally Administered Tribal Areas', 1, 162),
(2439, 'I', 'Islamabad Capital Territory', 1, 162),
(2440, 'N', 'North-West Frontier', 1, 162),
(2441, 'P', 'Punjab', 1, 162),
(2442, 'S', 'Sindh', 1, 162),
(2443, 'AM', 'Aimeliik', 1, 163),
(2444, 'AR', 'Airai', 1, 163),
(2445, 'AN', 'Angaur', 1, 163),
(2446, 'HA', 'Hatohobei', 1, 163),
(2447, 'KA', 'Kayangel', 1, 163),
(2448, 'KO', 'Koror', 1, 163),
(2449, 'ME', 'Melekeok', 1, 163),
(2450, 'NA', 'Ngaraard', 1, 163),
(2451, 'NG', 'Ngarchelong', 1, 163),
(2452, 'ND', 'Ngardmau', 1, 163),
(2453, 'NT', 'Ngatpang', 1, 163),
(2454, 'NC', 'Ngchesar', 1, 163),
(2455, 'NR', 'Ngeremlengui', 1, 163),
(2456, 'NW', 'Ngiwal', 1, 163),
(2457, 'PE', 'Peleliu', 1, 163),
(2458, 'SO', 'Sonsorol', 1, 163),
(2459, 'BT', 'Bocas del Toro', 1, 164),
(2460, 'CH', 'Chiriqui', 1, 164),
(2461, 'CC', 'Cocle', 1, 164),
(2462, 'CL', 'Colon', 1, 164),
(2463, 'DA', 'Darien', 1, 164),
(2464, 'HE', 'Herrera', 1, 164),
(2465, 'LS', 'Los Santos', 1, 164),
(2466, 'PA', 'Panama', 1, 164),
(2467, 'SB', 'San Blas', 1, 164),
(2468, 'VG', 'Veraguas', 1, 164),
(2469, 'BV', 'Bougainville', 1, 165),
(2470, 'CE', 'Central', 1, 165),
(2471, 'CH', 'Chimbu', 1, 165),
(2472, 'EH', 'Eastern Highlands', 1, 165),
(2473, 'EB', 'East New Britain', 1, 165),
(2474, 'ES', 'East Sepik', 1, 165),
(2475, 'EN', 'Enga', 1, 165),
(2476, 'GU', 'Gulf', 1, 165),
(2477, 'MD', 'Madang', 1, 165),
(2478, 'MN', 'Manus', 1, 165),
(2479, 'MB', 'Milne Bay', 1, 165),
(2480, 'MR', 'Morobe', 1, 165),
(2481, 'NC', 'National Capital', 1, 165),
(2482, 'NI', 'New Ireland', 1, 165),
(2483, 'NO', 'Northern', 1, 165),
(2484, 'SA', 'Sandaun', 1, 165),
(2485, 'SH', 'Southern Highlands', 1, 165),
(2486, 'WE', 'Western', 1, 165),
(2487, 'WH', 'Western Highlands', 1, 165),
(2488, 'WB', 'West New Britain', 1, 165),
(2489, 'AG', 'Alto Paraguay', 1, 166),
(2490, 'AN', 'Alto Parana', 1, 166),
(2491, 'AM', 'Amambay', 1, 166),
(2492, 'AS', 'Asuncion', 1, 166),
(2493, 'BO', 'Boqueron', 1, 166),
(2494, 'CG', 'Caaguazu', 1, 166),
(2495, 'CZ', 'Caazapa', 1, 166),
(2496, 'CN', 'Canindeyu', 1, 166),
(2497, 'CE', 'Central', 1, 166),
(2498, 'CC', 'Concepcion', 1, 166),
(2499, 'CD', 'Cordillera', 1, 166),
(2500, 'GU', 'Guaira', 1, 166),
(2501, 'IT', 'Itapua', 1, 166),
(2502, 'MI', 'Misiones', 1, 166),
(2503, 'NE', 'Neembucu', 1, 166),
(2504, 'PA', 'Paraguari', 1, 166),
(2505, 'PH', 'Presidente Hayes', 1, 166),
(2506, 'SP', 'San Pedro', 1, 166),
(2507, 'AM', 'Amazonas', 1, 167),
(2508, 'AN', 'Ancash', 1, 167),
(2509, 'AP', 'Apurimac', 1, 167),
(2510, 'AR', 'Arequipa', 1, 167),
(2511, 'AY', 'Ayacucho', 1, 167),
(2512, 'CJ', 'Cajamarca', 1, 167),
(2513, 'CL', 'Callao', 1, 167),
(2514, 'CU', 'Cusco', 1, 167),
(2515, 'HV', 'Huancavelica', 1, 167),
(2516, 'HO', 'Huanuco', 1, 167),
(2517, 'IC', 'Ica', 1, 167),
(2518, 'JU', 'Junin', 1, 167),
(2519, 'LD', 'La Libertad', 1, 167),
(2520, 'LY', 'Lambayeque', 1, 167),
(2521, 'LI', 'Lima', 1, 167),
(2522, 'LO', 'Loreto', 1, 167),
(2523, 'MD', 'Madre de Dios', 1, 167),
(2524, 'MO', 'Moquegua', 1, 167),
(2525, 'PA', 'Pasco', 1, 167),
(2526, 'PI', 'Piura', 1, 167),
(2527, 'PU', 'Puno', 1, 167),
(2528, 'SM', 'San Martin', 1, 167),
(2529, 'TA', 'Tacna', 1, 167),
(2530, 'TU', 'Tumbes', 1, 167),
(2531, 'UC', 'Ucayali', 1, 167),
(2532, 'ABR', 'Abra', 1, 168),
(2533, 'ANO', 'Agusan del Norte', 1, 168),
(2534, 'ASU', 'Agusan del Sur', 1, 168),
(2535, 'AKL', 'Aklan', 1, 168),
(2536, 'ALB', 'Albay', 1, 168),
(2537, 'ANT', 'Antique', 1, 168),
(2538, 'APY', 'Apayao', 1, 168),
(2539, 'AUR', 'Aurora', 1, 168),
(2540, 'BAS', 'Basilan', 1, 168),
(2541, 'BTA', 'Bataan', 1, 168),
(2542, 'BTE', 'Batanes', 1, 168),
(2543, 'BTG', 'Batangas', 1, 168),
(2544, 'BLR', 'Biliran', 1, 168),
(2545, 'BEN', 'Benguet', 1, 168),
(2546, 'BOL', 'Bohol', 1, 168),
(2547, 'BUK', 'Bukidnon', 1, 168),
(2548, 'BUL', 'Bulacan', 1, 168),
(2549, 'CAG', 'Cagayan', 1, 168),
(2550, 'CNO', 'Camarines Norte', 1, 168),
(2551, 'CSU', 'Camarines Sur', 1, 168),
(2552, 'CAM', 'Camiguin', 1, 168),
(2553, 'CAP', 'Capiz', 1, 168),
(2554, 'CAT', 'Catanduanes', 1, 168),
(2555, 'CAV', 'Cavite', 1, 168),
(2556, 'CEB', 'Cebu', 1, 168),
(2557, 'CMP', 'Compostela', 1, 168),
(2558, 'DNO', 'Davao del Norte', 1, 168),
(2559, 'DSU', 'Davao del Sur', 1, 168),
(2560, 'DOR', 'Davao Oriental', 1, 168),
(2561, 'ESA', 'Eastern Samar', 1, 168),
(2562, 'GUI', 'Guimaras', 1, 168),
(2563, 'IFU', 'Ifugao', 1, 168),
(2564, 'INO', 'Ilocos Norte', 1, 168),
(2565, 'ISU', 'Ilocos Sur', 1, 168),
(2566, 'ILO', 'Iloilo', 1, 168),
(2567, 'ISA', 'Isabela', 1, 168),
(2568, 'KAL', 'Kalinga', 1, 168),
(2569, 'LAG', 'Laguna', 1, 168),
(2570, 'LNO', 'Lanao del Norte', 1, 168),
(2571, 'LSU', 'Lanao del Sur', 1, 168),
(2572, 'UNI', 'La Union', 1, 168),
(2573, 'LEY', 'Leyte', 1, 168),
(2574, 'MAG', 'Maguindanao', 1, 168),
(2575, 'MRN', 'Marinduque', 1, 168),
(2576, 'MSB', 'Masbate', 1, 168),
(2577, 'MIC', 'Mindoro Occidental', 1, 168),
(2578, 'MIR', 'Mindoro Oriental', 1, 168),
(2579, 'MSC', 'Misamis Occidental', 1, 168),
(2580, 'MOR', 'Misamis Oriental', 1, 168),
(2581, 'MOP', 'Mountain', 1, 168),
(2582, 'NOC', 'Negros Occidental', 1, 168),
(2583, 'NOR', 'Negros Oriental', 1, 168),
(2584, 'NCT', 'North Cotabato', 1, 168),
(2585, 'NSM', 'Northern Samar', 1, 168),
(2586, 'NEC', 'Nueva Ecija', 1, 168),
(2587, 'NVZ', 'Nueva Vizcaya', 1, 168),
(2588, 'PLW', 'Palawan', 1, 168),
(2589, 'PMP', 'Pampanga', 1, 168),
(2590, 'PNG', 'Pangasinan', 1, 168),
(2591, 'QZN', 'Quezon', 1, 168),
(2592, 'QRN', 'Quirino', 1, 168),
(2593, 'RIZ', 'Rizal', 1, 168),
(2594, 'ROM', 'Romblon', 1, 168),
(2595, 'SMR', 'Samar', 1, 168),
(2596, 'SRG', 'Sarangani', 1, 168),
(2597, 'SQJ', 'Siquijor', 1, 168),
(2598, 'SRS', 'Sorsogon', 1, 168),
(2599, 'SCO', 'South Cotabato', 1, 168),
(2600, 'SLE', 'Southern Leyte', 1, 168),
(2601, 'SKU', 'Sultan Kudarat', 1, 168),
(2602, 'SLU', 'Sulu', 1, 168),
(2603, 'SNO', 'Surigao del Norte', 1, 168),
(2604, 'SSU', 'Surigao del Sur', 1, 168),
(2605, 'TAR', 'Tarlac', 1, 168),
(2606, 'TAW', 'Tawi-Tawi', 1, 168),
(2607, 'ZBL', 'Zambales', 1, 168),
(2608, 'ZNO', 'Zamboanga del Norte', 1, 168),
(2609, 'ZSU', 'Zamboanga del Sur', 1, 168),
(2610, 'ZSI', 'Zamboanga Sibugay', 1, 168),
(2611, 'DO', 'Dolnoslaskie', 1, 170),
(2612, 'KP', 'Kujawsko-Pomorskie', 1, 170),
(2613, 'LO', 'Lodzkie', 1, 170),
(2614, 'LL', 'Lubelskie', 1, 170),
(2615, 'LU', 'Lubuskie', 1, 170),
(2616, 'ML', 'Malopolskie', 1, 170),
(2617, 'MZ', 'Mazowieckie', 1, 170),
(2618, 'OP', 'Opolskie', 1, 170),
(2619, 'PP', 'Podkarpackie', 1, 170),
(2620, 'PL', 'Podlaskie', 1, 170),
(2621, 'PM', 'Pomorskie', 1, 170),
(2622, 'SL', 'Slaskie', 1, 170),
(2623, 'SW', 'Swietokrzyskie', 1, 170),
(2624, 'WM', 'Warminsko-Mazurskie', 1, 170),
(2625, 'WP', 'Wielkopolskie', 1, 170),
(2626, 'ZA', 'Zachodniopomorskie', 1, 170),
(2627, 'P', 'Saint Pierre', 1, 198),
(2628, 'M', 'Miquelon', 1, 198),
(2629, 'AC', 'A&ccedil;ores', 1, 171),
(2630, 'AV', 'Aveiro', 1, 171),
(2631, 'BE', 'Beja', 1, 171),
(2632, 'BR', 'Braga', 1, 171),
(2633, 'BA', 'Bragan&ccedil;a', 1, 171),
(2634, 'CB', 'Castelo Branco', 1, 171),
(2635, 'CO', 'Coimbra', 1, 171),
(2636, 'EV', '&Eacute;vora', 1, 171),
(2637, 'FA', 'Faro', 1, 171),
(2638, 'GU', 'Guarda', 1, 171),
(2639, 'LE', 'Leiria', 1, 171),
(2640, 'LI', 'Lisboa', 1, 171),
(2641, 'ME', 'Madeira', 1, 171),
(2642, 'PO', 'Portalegre', 1, 171),
(2643, 'PR', 'Porto', 1, 171),
(2644, 'SA', 'Santar&eacute;m', 1, 171),
(2645, 'SE', 'Set&uacute;bal', 1, 171),
(2646, 'VC', 'Viana do Castelo', 1, 171),
(2647, 'VR', 'Vila Real', 1, 171),
(2648, 'VI', 'Viseu', 1, 171),
(2649, 'DW', 'Ad Dawhah', 1, 173),
(2650, 'GW', 'Al Ghuwayriyah', 1, 173),
(2651, 'JM', 'Al Jumayliyah', 1, 173),
(2652, 'KR', 'Al Khawr', 1, 173),
(2653, 'WK', 'Al Wakrah', 1, 173),
(2654, 'RN', 'Ar Rayyan', 1, 173),
(2655, 'JB', 'Jarayan al Batinah', 1, 173),
(2656, 'MS', 'Madinat ash Shamal', 1, 173),
(2657, 'UD', 'Umm Sa''id', 1, 173),
(2658, 'UL', 'Umm Salal', 1, 173),
(2659, 'AB', 'Alba', 1, 175),
(2660, 'AR', 'Arad', 1, 175),
(2661, 'AG', 'Arges', 1, 175),
(2662, 'BC', 'Bacau', 1, 175),
(2663, 'BH', 'Bihor', 1, 175),
(2664, 'BN', 'Bistrita-Nasaud', 1, 175),
(2665, 'BT', 'Botosani', 1, 175),
(2666, 'BV', 'Brasov', 1, 175),
(2667, 'BR', 'Braila', 1, 175),
(2668, 'B', 'Bucuresti', 1, 175),
(2669, 'BZ', 'Buzau', 1, 175),
(2670, 'CS', 'Caras-Severin', 1, 175),
(2671, 'CL', 'Calarasi', 1, 175),
(2672, 'CJ', 'Cluj', 1, 175),
(2673, 'CT', 'Constanta', 1, 175),
(2674, 'CV', 'Covasna', 1, 175),
(2675, 'DB', 'Dimbovita', 1, 175),
(2676, 'DJ', 'Dolj', 1, 175),
(2677, 'GL', 'Galati', 1, 175),
(2678, 'GR', 'Giurgiu', 1, 175),
(2679, 'GJ', 'Gorj', 1, 175),
(2680, 'HR', 'Harghita', 1, 175),
(2681, 'HD', 'Hunedoara', 1, 175),
(2682, 'IL', 'Ialomita', 1, 175),
(2683, 'IS', 'Iasi', 1, 175),
(2684, 'IF', 'Ilfov', 1, 175),
(2685, 'MM', 'Maramures', 1, 175),
(2686, 'MH', 'Mehedinti', 1, 175),
(2687, 'MS', 'Mures', 1, 175),
(2688, 'NT', 'Neamt', 1, 175),
(2689, 'OT', 'Olt', 1, 175),
(2690, 'PH', 'Prahova', 1, 175),
(2691, 'SM', 'Satu-Mare', 1, 175),
(2692, 'SJ', 'Salaj', 1, 175),
(2693, 'SB', 'Sibiu', 1, 175),
(2694, 'SV', 'Suceava', 1, 175),
(2695, 'TR', 'Teleorman', 1, 175),
(2696, 'TM', 'Timis', 1, 175),
(2697, 'TL', 'Tulcea', 1, 175),
(2698, 'VS', 'Vaslui', 1, 175),
(2699, 'VL', 'Valcea', 1, 175),
(2700, 'VN', 'Vrancea', 1, 175),
(2701, 'AB', 'Abakan', 1, 176),
(2702, 'AG', 'Aginskoye', 1, 176),
(2703, 'AN', 'Anadyr', 1, 176),
(2704, 'AR', 'Arkahangelsk', 1, 176),
(2705, 'AS', 'Astrakhan', 1, 176),
(2706, 'BA', 'Barnaul', 1, 176),
(2707, 'BE', 'Belgorod', 1, 176),
(2708, 'BI', 'Birobidzhan', 1, 176),
(2709, 'BL', 'Blagoveshchensk', 1, 176),
(2710, 'BR', 'Bryansk', 1, 176),
(2711, 'CH', 'Cheboksary', 1, 176),
(2712, 'CL', 'Chelyabinsk', 1, 176),
(2713, 'CR', 'Cherkessk', 1, 176),
(2714, 'CI', 'Chita', 1, 176),
(2715, 'DU', 'Dudinka', 1, 176),
(2716, 'EL', 'Elista', 1, 176),
(2717, 'GO', 'Gomo-Altaysk', 1, 176),
(2718, 'GA', 'Gorno-Altaysk', 1, 176),
(2719, 'GR', 'Groznyy', 1, 176),
(2720, 'IR', 'Irkutsk', 1, 176),
(2721, 'IV', 'Ivanovo', 1, 176),
(2722, 'IZ', 'Izhevsk', 1, 176),
(2723, 'KA', 'Kalinigrad', 1, 176),
(2724, 'KL', 'Kaluga', 1, 176),
(2725, 'KS', 'Kasnodar', 1, 176),
(2726, 'KZ', 'Kazan', 1, 176),
(2727, 'KE', 'Kemerovo', 1, 176),
(2728, 'KH', 'Khabarovsk', 1, 176),
(2729, 'KM', 'Khanty-Mansiysk', 1, 176),
(2730, 'KO', 'Kostroma', 1, 176),
(2731, 'KR', 'Krasnodar', 1, 176),
(2732, 'KN', 'Krasnoyarsk', 1, 176),
(2733, 'KU', 'Kudymkar', 1, 176),
(2734, 'KG', 'Kurgan', 1, 176),
(2735, 'KK', 'Kursk', 1, 176),
(2736, 'KY', 'Kyzyl', 1, 176),
(2737, 'LI', 'Lipetsk', 1, 176),
(2738, 'MA', 'Magadan', 1, 176),
(2739, 'MK', 'Makhachkala', 1, 176),
(2740, 'MY', 'Maykop', 1, 176),
(2741, 'MO', 'Moscow', 1, 176),
(2742, 'MU', 'Murmansk', 1, 176),
(2743, 'NA', 'Nalchik', 1, 176),
(2744, 'NR', 'Naryan Mar', 1, 176),
(2745, 'NZ', 'Nazran', 1, 176),
(2746, 'NI', 'Nizhniy Novgorod', 1, 176),
(2747, 'NO', 'Novgorod', 1, 176),
(2748, 'NV', 'Novosibirsk', 1, 176),
(2749, 'OM', 'Omsk', 1, 176),
(2750, 'OR', 'Orel', 1, 176),
(2751, 'OE', 'Orenburg', 1, 176),
(2752, 'PA', 'Palana', 1, 176),
(2753, 'PE', 'Penza', 1, 176),
(2754, 'PR', 'Perm', 1, 176),
(2755, 'PK', 'Petropavlovsk-Kamchatskiy', 1, 176),
(2756, 'PT', 'Petrozavodsk', 1, 176),
(2757, 'PS', 'Pskov', 1, 176),
(2758, 'RO', 'Rostov-na-Donu', 1, 176),
(2759, 'RY', 'Ryazan', 1, 176),
(2760, 'SL', 'Salekhard', 1, 176),
(2761, 'SA', 'Samara', 1, 176),
(2762, 'SR', 'Saransk', 1, 176),
(2763, 'SV', 'Saratov', 1, 176),
(2764, 'SM', 'Smolensk', 1, 176),
(2765, 'SP', 'St. Petersburg', 1, 176),
(2766, 'ST', 'Stavropol', 1, 176),
(2767, 'SY', 'Syktyvkar', 1, 176),
(2768, 'TA', 'Tambov', 1, 176),
(2769, 'TO', 'Tomsk', 1, 176),
(2770, 'TU', 'Tula', 1, 176),
(2771, 'TR', 'Tura', 1, 176),
(2772, 'TV', 'Tver', 1, 176),
(2773, 'TY', 'Tyumen', 1, 176),
(2774, 'UF', 'Ufa', 1, 176),
(2775, 'UL', 'Ul''yanovsk', 1, 176),
(2776, 'UU', 'Ulan-Ude', 1, 176),
(2777, 'US', 'Ust''-Ordynskiy', 1, 176),
(2778, 'VL', 'Vladikavkaz', 1, 176),
(2779, 'VA', 'Vladimir', 1, 176),
(2780, 'VV', 'Vladivostok', 1, 176),
(2781, 'VG', 'Volgograd', 1, 176),
(2782, 'VD', 'Vologda', 1, 176),
(2783, 'VO', 'Voronezh', 1, 176),
(2784, 'VY', 'Vyatka', 1, 176),
(2785, 'YA', 'Yakutsk', 1, 176),
(2786, 'YR', 'Yaroslavl', 1, 176),
(2787, 'YE', 'Yekaterinburg', 1, 176),
(2788, 'YO', 'Yoshkar-Ola', 1, 176),
(2789, 'BU', 'Butare', 1, 177),
(2790, 'BY', 'Byumba', 1, 177),
(2791, 'CY', 'Cyangugu', 1, 177),
(2792, 'GK', 'Gikongoro', 1, 177),
(2793, 'GS', 'Gisenyi', 1, 177),
(2794, 'GT', 'Gitarama', 1, 177),
(2795, 'KG', 'Kibungo', 1, 177),
(2796, 'KY', 'Kibuye', 1, 177),
(2797, 'KR', 'Kigali Rurale', 1, 177),
(2798, 'KV', 'Kigali-ville', 1, 177),
(2799, 'RU', 'Ruhengeri', 1, 177),
(2800, 'UM', 'Umutara', 1, 177),
(2801, 'CCN', 'Christ Church Nichola Town', 1, 178),
(2802, 'SAS', 'Saint Anne Sandy Point', 1, 178),
(2803, 'SGB', 'Saint George Basseterre', 1, 178),
(2804, 'SGG', 'Saint George Gingerland', 1, 178),
(2805, 'SJW', 'Saint James Windward', 1, 178),
(2806, 'SJC', 'Saint John Capesterre', 1, 178),
(2807, 'SJF', 'Saint John Figtree', 1, 178),
(2808, 'SMC', 'Saint Mary Cayon', 1, 178),
(2809, 'CAP', 'Saint Paul Capesterre', 1, 178),
(2810, 'CHA', 'Saint Paul Charlestown', 1, 178),
(2811, 'SPB', 'Saint Peter Basseterre', 1, 178),
(2812, 'STL', 'Saint Thomas Lowland', 1, 178),
(2813, 'STM', 'Saint Thomas Middle Island', 1, 178),
(2814, 'TPP', 'Trinity Palmetto Point', 1, 178),
(2815, 'AR', 'Anse-la-Raye', 1, 179),
(2816, 'CA', 'Castries', 1, 179),
(2817, 'CH', 'Choiseul', 1, 179),
(2818, 'DA', 'Dauphin', 1, 179),
(2819, 'DE', 'Dennery', 1, 179),
(2820, 'GI', 'Gros-Islet', 1, 179),
(2821, 'LA', 'Laborie', 1, 179),
(2822, 'MI', 'Micoud', 1, 179),
(2823, 'PR', 'Praslin', 1, 179),
(2824, 'SO', 'Soufriere', 1, 179),
(2825, 'VF', 'Vieux-Fort', 1, 179),
(2826, 'C', 'Charlotte', 1, 180),
(2827, 'R', 'Grenadines', 1, 180),
(2828, 'A', 'Saint Andrew', 1, 180),
(2829, 'D', 'Saint David', 1, 180),
(2830, 'G', 'Saint George', 1, 180),
(2831, 'P', 'Saint Patrick', 1, 180),
(2832, 'AN', 'A''ana', 1, 181),
(2833, 'AI', 'Aiga-i-le-Tai', 1, 181),
(2834, 'AT', 'Atua', 1, 181),
(2835, 'FA', 'Fa''asaleleaga', 1, 181),
(2836, 'GE', 'Gaga''emauga', 1, 181),
(2837, 'GF', 'Gagaifomauga', 1, 181),
(2838, 'PA', 'Palauli', 1, 181),
(2839, 'SA', 'Satupa''itea', 1, 181),
(2840, 'TU', 'Tuamasaga', 1, 181),
(2841, 'VF', 'Va''a-o-Fonoti', 1, 181),
(2842, 'VS', 'Vaisigano', 1, 181),
(2843, 'AC', 'Acquaviva', 1, 182),
(2844, 'BM', 'Borgo Maggiore', 1, 182),
(2845, 'CH', 'Chiesanuova', 1, 182),
(2846, 'DO', 'Domagnano', 1, 182),
(2847, 'FA', 'Faetano', 1, 182),
(2848, 'FI', 'Fiorentino', 1, 182),
(2849, 'MO', 'Montegiardino', 1, 182),
(2850, 'SM', 'Citta di San Marino', 1, 182),
(2851, 'SE', 'Serravalle', 1, 182),
(2852, 'S', 'Sao Tome', 1, 183),
(2853, 'P', 'Principe', 1, 183),
(2854, 'BH', 'Al Bahah', 1, 184),
(2855, 'HS', 'Al Hudud ash Shamaliyah', 1, 184),
(2856, 'JF', 'Al Jawf', 1, 184),
(2857, 'MD', 'Al Madinah', 1, 184),
(2858, 'QS', 'Al Qasim', 1, 184),
(2859, 'RD', 'Ar Riyad', 1, 184),
(2860, 'AQ', 'Ash Sharqiyah (Eastern)', 1, 184),
(2861, 'AS', '''Asir', 1, 184),
(2862, 'HL', 'Ha''il', 1, 184),
(2863, 'JZ', 'Jizan', 1, 184),
(2864, 'ML', 'Makkah', 1, 184),
(2865, 'NR', 'Najran', 1, 184),
(2866, 'TB', 'Tabuk', 1, 184),
(2867, 'DA', 'Dakar', 1, 185),
(2868, 'DI', 'Diourbel', 1, 185),
(2869, 'FA', 'Fatick', 1, 185),
(2870, 'KA', 'Kaolack', 1, 185),
(2871, 'KO', 'Kolda', 1, 185),
(2872, 'LO', 'Louga', 1, 185),
(2873, 'MA', 'Matam', 1, 185),
(2874, 'SL', 'Saint-Louis', 1, 185),
(2875, 'TA', 'Tambacounda', 1, 185),
(2876, 'TH', 'Thies', 1, 185),
(2877, 'ZI', 'Ziguinchor', 1, 185),
(2878, 'AP', 'Anse aux Pins', 1, 186),
(2879, 'AB', 'Anse Boileau', 1, 186),
(2880, 'AE', 'Anse Etoile', 1, 186),
(2881, 'AL', 'Anse Louis', 1, 186),
(2882, 'AR', 'Anse Royale', 1, 186),
(2883, 'BL', 'Baie Lazare', 1, 186),
(2884, 'BS', 'Baie Sainte Anne', 1, 186),
(2885, 'BV', 'Beau Vallon', 1, 186),
(2886, 'BA', 'Bel Air', 1, 186),
(2887, 'BO', 'Bel Ombre', 1, 186),
(2888, 'CA', 'Cascade', 1, 186),
(2889, 'GL', 'Glacis', 1, 186),
(2890, 'GM', 'Grand'' Anse (on Mahe)', 1, 186),
(2891, 'GP', 'Grand'' Anse (on Praslin)', 1, 186),
(2892, 'DG', 'La Digue', 1, 186),
(2893, 'RA', 'La Riviere Anglaise', 1, 186),
(2894, 'MB', 'Mont Buxton', 1, 186),
(2895, 'MF', 'Mont Fleuri', 1, 186),
(2896, 'PL', 'Plaisance', 1, 186),
(2897, 'PR', 'Pointe La Rue', 1, 186),
(2898, 'PG', 'Port Glaud', 1, 186),
(2899, 'SL', 'Saint Louis', 1, 186),
(2900, 'TA', 'Takamaka', 1, 186),
(2901, 'E', 'Eastern', 1, 187),
(2902, 'N', 'Northern', 1, 187),
(2903, 'S', 'Southern', 1, 187),
(2904, 'W', 'Western', 1, 187),
(2905, 'BA', 'Banskobystrický', 1, 189),
(2906, 'BR', 'Bratislavský', 1, 189),
(2907, 'KO', 'Košický', 1, 189),
(2908, 'NI', 'Nitriansky', 1, 189),
(2909, 'PR', 'Prešovský', 1, 189),
(2910, 'TC', 'Trenčiansky', 1, 189),
(2911, 'TV', 'Trnavský', 1, 189),
(2912, 'ZI', 'Žilinský', 1, 189),
(2913, 'CE', 'Central', 1, 191),
(2914, 'CH', 'Choiseul', 1, 191),
(2915, 'GC', 'Guadalcanal', 1, 191),
(2916, 'HO', 'Honiara', 1, 191),
(2917, 'IS', 'Isabel', 1, 191),
(2918, 'MK', 'Makira', 1, 191),
(2919, 'ML', 'Malaita', 1, 191),
(2920, 'RB', 'Rennell and Bellona', 1, 191),
(2921, 'TM', 'Temotu', 1, 191),
(2922, 'WE', 'Western', 1, 191),
(2923, 'AW', 'Awdal', 1, 192),
(2924, 'BK', 'Bakool', 1, 192),
(2925, 'BN', 'Banaadir', 1, 192),
(2926, 'BR', 'Bari', 1, 192),
(2927, 'BY', 'Bay', 1, 192),
(2928, 'GA', 'Galguduud', 1, 192),
(2929, 'GE', 'Gedo', 1, 192),
(2930, 'HI', 'Hiiraan', 1, 192),
(2931, 'JD', 'Jubbada Dhexe', 1, 192),
(2932, 'JH', 'Jubbada Hoose', 1, 192),
(2933, 'MU', 'Mudug', 1, 192),
(2934, 'NU', 'Nugaal', 1, 192),
(2935, 'SA', 'Sanaag', 1, 192),
(2936, 'SD', 'Shabeellaha Dhexe', 1, 192),
(2937, 'SH', 'Shabeellaha Hoose', 1, 192),
(2938, 'SL', 'Sool', 1, 192),
(2939, 'TO', 'Togdheer', 1, 192),
(2940, 'WG', 'Woqooyi Galbeed', 1, 192),
(2941, 'EC', 'Eastern Cape', 1, 193),
(2942, 'FS', 'Free State', 1, 193),
(2943, 'GT', 'Gauteng', 1, 193),
(2944, 'KN', 'KwaZulu-Natal', 1, 193),
(2945, 'LP', 'Limpopo', 1, 193),
(2946, 'MP', 'Mpumalanga', 1, 193),
(2947, 'NW', 'North West', 1, 193),
(2948, 'NC', 'Northern Cape', 1, 193),
(2949, 'WC', 'Western Cape', 1, 193),
(2950, 'CA', 'La Coru&ntilde;a', 1, 195),
(2951, 'AL', '&Aacute;lava', 1, 195),
(2952, 'AB', 'Albacete', 1, 195),
(2953, 'AC', 'Alicante', 1, 195),
(2954, 'AM', 'Almeria', 1, 195),
(2955, 'AS', 'Asturias', 1, 195),
(2956, 'AV', '&Aacute;vila', 1, 195),
(2957, 'BJ', 'Badajoz', 1, 195),
(2958, 'IB', 'Baleares', 1, 195),
(2959, 'BA', 'Barcelona', 1, 195),
(2960, 'BU', 'Burgos', 1, 195),
(2961, 'CC', 'C&aacute;ceres', 1, 195),
(2962, 'CZ', 'C&aacute;diz', 1, 195),
(2963, 'CT', 'Cantabria', 1, 195),
(2964, 'CL', 'Castell&oacute;n', 1, 195),
(2965, 'CE', 'Ceuta', 1, 195),
(2966, 'CR', 'Ciudad Real', 1, 195),
(2967, 'CD', 'C&oacute;rdoba', 1, 195),
(2968, 'CU', 'Cuenca', 1, 195),
(2969, 'GI', 'Girona', 1, 195),
(2970, 'GD', 'Granada', 1, 195),
(2971, 'GJ', 'Guadalajara', 1, 195),
(2972, 'GP', 'Guip&uacute;zcoa', 1, 195),
(2973, 'HL', 'Huelva', 1, 195),
(2974, 'HS', 'Huesca', 1, 195),
(2975, 'JN', 'Ja&eacute;n', 1, 195),
(2976, 'RJ', 'La Rioja', 1, 195),
(2977, 'PM', 'Las Palmas', 1, 195),
(2978, 'LE', 'Leon', 1, 195),
(2979, 'LL', 'Lleida', 1, 195),
(2980, 'LG', 'Lugo', 1, 195),
(2981, 'MD', 'Madrid', 1, 195),
(2982, 'MA', 'Malaga', 1, 195),
(2983, 'ML', 'Melilla', 1, 195),
(2984, 'MU', 'Murcia', 1, 195),
(2985, 'NV', 'Navarra', 1, 195),
(2986, 'OU', 'Ourense', 1, 195),
(2987, 'PL', 'Palencia', 1, 195),
(2988, 'PO', 'Pontevedra', 1, 195),
(2989, 'SL', 'Salamanca', 1, 195),
(2990, 'SC', 'Santa Cruz de Tenerife', 1, 195),
(2991, 'SG', 'Segovia', 1, 195),
(2992, 'SV', 'Sevilla', 1, 195),
(2993, 'SO', 'Soria', 1, 195),
(2994, 'TA', 'Tarragona', 1, 195),
(2995, 'TE', 'Teruel', 1, 195),
(2996, 'TO', 'Toledo', 1, 195),
(2997, 'VC', 'Valencia', 1, 195),
(2998, 'VD', 'Valladolid', 1, 195),
(2999, 'VZ', 'Vizcaya', 1, 195),
(3000, 'ZM', 'Zamora', 1, 195),
(3001, 'ZR', 'Zaragoza', 1, 195),
(3002, 'CE', 'Central', 1, 196),
(3003, 'EA', 'Eastern', 1, 196),
(3004, 'NC', 'North Central', 1, 196),
(3005, 'NO', 'Northern', 1, 196),
(3006, 'NW', 'North Western', 1, 196),
(3007, 'SA', 'Sabaragamuwa', 1, 196),
(3008, 'SO', 'Southern', 1, 196),
(3009, 'UV', 'Uva', 1, 196),
(3010, 'WE', 'Western', 1, 196),
(3011, 'A', 'Ascension', 1, 197),
(3012, 'S', 'Saint Helena', 1, 197),
(3013, 'T', 'Tristan da Cunha', 1, 197),
(3014, 'ANL', 'A''ali an Nil', 1, 199),
(3015, 'BAM', 'Al Bahr al Ahmar', 1, 199),
(3016, 'BRT', 'Al Buhayrat', 1, 199),
(3017, 'JZR', 'Al Jazirah', 1, 199),
(3018, 'KRT', 'Al Khartum', 1, 199),
(3019, 'QDR', 'Al Qadarif', 1, 199),
(3020, 'WDH', 'Al Wahdah', 1, 199),
(3021, 'ANB', 'An Nil al Abyad', 1, 199),
(3022, 'ANZ', 'An Nil al Azraq', 1, 199),
(3023, 'ASH', 'Ash Shamaliyah', 1, 199),
(3024, 'BJA', 'Bahr al Jabal', 1, 199),
(3025, 'GIS', 'Gharb al Istiwa''iyah', 1, 199),
(3026, 'GBG', 'Gharb Bahr al Ghazal', 1, 199),
(3027, 'GDA', 'Gharb Darfur', 1, 199),
(3028, 'GKU', 'Gharb Kurdufan', 1, 199),
(3029, 'JDA', 'Janub Darfur', 1, 199);
INSERT INTO `alamat_propinsi` (`alamat_propinsi_id`, `alamat_propinsi_kode`, `alamat_propinsi_nama`, `alamat_propinsi_status`, `alamat_negara_id`) VALUES
(3030, 'JKU', 'Janub Kurdufan', 1, 199),
(3031, 'JQL', 'Junqali', 1, 199),
(3032, 'KSL', 'Kassala', 1, 199),
(3033, 'NNL', 'Nahr an Nil', 1, 199),
(3034, 'SBG', 'Shamal Bahr al Ghazal', 1, 199),
(3035, 'SDA', 'Shamal Darfur', 1, 199),
(3036, 'SKU', 'Shamal Kurdufan', 1, 199),
(3037, 'SIS', 'Sharq al Istiwa''iyah', 1, 199),
(3038, 'SNR', 'Sinnar', 1, 199),
(3039, 'WRB', 'Warab', 1, 199),
(3040, 'BR', 'Brokopondo', 1, 200),
(3041, 'CM', 'Commewijne', 1, 200),
(3042, 'CR', 'Coronie', 1, 200),
(3043, 'MA', 'Marowijne', 1, 200),
(3044, 'NI', 'Nickerie', 1, 200),
(3045, 'PA', 'Para', 1, 200),
(3046, 'PM', 'Paramaribo', 1, 200),
(3047, 'SA', 'Saramacca', 1, 200),
(3048, 'SI', 'Sipaliwini', 1, 200),
(3049, 'WA', 'Wanica', 1, 200),
(3050, 'H', 'Hhohho', 1, 202),
(3051, 'L', 'Lubombo', 1, 202),
(3052, 'M', 'Manzini', 1, 202),
(3053, 'S', 'Shishelweni', 1, 202),
(3054, 'K', 'Blekinge', 1, 203),
(3055, 'W', 'Dalama', 1, 203),
(3056, 'X', 'G&auml;vleborg', 1, 203),
(3057, 'I', 'Gotland', 1, 203),
(3058, 'N', 'Halland', 1, 203),
(3059, 'Z', 'J&auml;mtland', 1, 203),
(3060, 'F', 'J&ouml;nk&ouml;ping', 1, 203),
(3061, 'H', 'Kalmar', 1, 203),
(3062, 'G', 'Kronoberg', 1, 203),
(3063, 'BD', 'Norrbotten', 1, 203),
(3064, 'T', '&Ouml;rebro', 1, 203),
(3065, 'E', '&Ouml;sterg&ouml;tland', 1, 203),
(3066, 'M', 'Sk&aring;ne', 1, 203),
(3067, 'D', 'S&ouml;dermanland', 1, 203),
(3068, 'AB', 'Stockholm', 1, 203),
(3069, 'C', 'Uppsala', 1, 203),
(3070, 'S', 'V&auml;rmland', 1, 203),
(3071, 'AC', 'V&auml;sterbotten', 1, 203),
(3072, 'Y', 'V&auml;sternorrland', 1, 203),
(3073, 'U', 'V&auml;stmanland', 1, 203),
(3074, 'O', 'V&auml;stra G&ouml;taland', 1, 203),
(3075, 'AG', 'Aargau', 1, 204),
(3076, 'AR', 'Appenzell Ausserrhoden', 1, 204),
(3077, 'AI', 'Appenzell Innerrhoden', 1, 204),
(3078, 'BS', 'Basel-Stadt', 1, 204),
(3079, 'BL', 'Basel-Landschaft', 1, 204),
(3080, 'BE', 'Bern', 1, 204),
(3081, 'FR', 'Fribourg', 1, 204),
(3082, 'GE', 'Gen&egrave;ve', 1, 204),
(3083, 'GL', 'Glarus', 1, 204),
(3084, 'GR', 'Graub&uuml;nden', 1, 204),
(3085, 'JU', 'Jura', 1, 204),
(3086, 'LU', 'Luzern', 1, 204),
(3087, 'NE', 'Neuch&acirc;tel', 1, 204),
(3088, 'NW', 'Nidwald', 1, 204),
(3089, 'OW', 'Obwald', 1, 204),
(3090, 'SG', 'St. Gallen', 1, 204),
(3091, 'SH', 'Schaffhausen', 1, 204),
(3092, 'SZ', 'Schwyz', 1, 204),
(3093, 'SO', 'Solothurn', 1, 204),
(3094, 'TG', 'Thurgau', 1, 204),
(3095, 'TI', 'Ticino', 1, 204),
(3096, 'UR', 'Uri', 1, 204),
(3097, 'VS', 'Valais', 1, 204),
(3098, 'VD', 'Vaud', 1, 204),
(3099, 'ZG', 'Zug', 1, 204),
(3100, 'ZH', 'Z&uuml;rich', 1, 204),
(3101, 'HA', 'Al Hasakah', 1, 205),
(3102, 'LA', 'Al Ladhiqiyah', 1, 205),
(3103, 'QU', 'Al Qunaytirah', 1, 205),
(3104, 'RQ', 'Ar Raqqah', 1, 205),
(3105, 'SU', 'As Suwayda', 1, 205),
(3106, 'DA', 'Dara', 1, 205),
(3107, 'DZ', 'Dayr az Zawr', 1, 205),
(3108, 'DI', 'Dimashq', 1, 205),
(3109, 'HL', 'Halab', 1, 205),
(3110, 'HM', 'Hamah', 1, 205),
(3111, 'HI', 'Hims', 1, 205),
(3112, 'ID', 'Idlib', 1, 205),
(3113, 'RD', 'Rif Dimashq', 1, 205),
(3114, 'TA', 'Tartus', 1, 205),
(3115, 'CH', 'Chang-hua', 1, 206),
(3116, 'CI', 'Chia-i', 1, 206),
(3117, 'HS', 'Hsin-chu', 1, 206),
(3118, 'HL', 'Hua-lien', 1, 206),
(3119, 'IL', 'I-lan', 1, 206),
(3120, 'KH', 'Kao-hsiung county', 1, 206),
(3121, 'KM', 'Kin-men', 1, 206),
(3122, 'LC', 'Lien-chiang', 1, 206),
(3123, 'ML', 'Miao-li', 1, 206),
(3124, 'NT', 'Nan-t''ou', 1, 206),
(3125, 'PH', 'P''eng-hu', 1, 206),
(3126, 'PT', 'P''ing-tung', 1, 206),
(3127, 'TG', 'T''ai-chung', 1, 206),
(3128, 'TA', 'T''ai-nan', 1, 206),
(3129, 'TP', 'T''ai-pei county', 1, 206),
(3130, 'TT', 'T''ai-tung', 1, 206),
(3131, 'TY', 'T''ao-yuan', 1, 206),
(3132, 'YL', 'Yun-lin', 1, 206),
(3133, 'CC', 'Chia-i city', 1, 206),
(3134, 'CL', 'Chi-lung', 1, 206),
(3135, 'HC', 'Hsin-chu', 1, 206),
(3136, 'TH', 'T''ai-chung', 1, 206),
(3137, 'TN', 'T''ai-nan', 1, 206),
(3138, 'KC', 'Kao-hsiung city', 1, 206),
(3139, 'TC', 'T''ai-pei city', 1, 206),
(3140, 'GB', 'Gorno-Badakhstan', 1, 207),
(3141, 'KT', 'Khatlon', 1, 207),
(3142, 'SU', 'Sughd', 1, 207),
(3143, 'AR', 'Arusha', 1, 208),
(3144, 'DS', 'Dar es Salaam', 1, 208),
(3145, 'DO', 'Dodoma', 1, 208),
(3146, 'IR', 'Iringa', 1, 208),
(3147, 'KA', 'Kagera', 1, 208),
(3148, 'KI', 'Kigoma', 1, 208),
(3149, 'KJ', 'Kilimanjaro', 1, 208),
(3150, 'LN', 'Lindi', 1, 208),
(3151, 'MY', 'Manyara', 1, 208),
(3152, 'MR', 'Mara', 1, 208),
(3153, 'MB', 'Mbeya', 1, 208),
(3154, 'MO', 'Morogoro', 1, 208),
(3155, 'MT', 'Mtwara', 1, 208),
(3156, 'MW', 'Mwanza', 1, 208),
(3157, 'PN', 'Pemba North', 1, 208),
(3158, 'PS', 'Pemba South', 1, 208),
(3159, 'PW', 'Pwani', 1, 208),
(3160, 'RK', 'Rukwa', 1, 208),
(3161, 'RV', 'Ruvuma', 1, 208),
(3162, 'SH', 'Shinyanga', 1, 208),
(3163, 'SI', 'Singida', 1, 208),
(3164, 'TB', 'Tabora', 1, 208),
(3165, 'TN', 'Tanga', 1, 208),
(3166, 'ZC', 'Zanzibar Central/South', 1, 208),
(3167, 'ZN', 'Zanzibar North', 1, 208),
(3168, 'ZU', 'Zanzibar Urban/West', 1, 208),
(3169, 'Amnat Charoen', 'Amnat Charoen', 1, 209),
(3170, 'Ang Thong', 'Ang Thong', 1, 209),
(3171, 'Ayutthaya', 'Ayutthaya', 1, 209),
(3172, 'Bangkok', 'Bangkok', 1, 209),
(3173, 'Buriram', 'Buriram', 1, 209),
(3174, 'Chachoengsao', 'Chachoengsao', 1, 209),
(3175, 'Chai Nat', 'Chai Nat', 1, 209),
(3176, 'Chaiyaphum', 'Chaiyaphum', 1, 209),
(3177, 'Chanthaburi', 'Chanthaburi', 1, 209),
(3178, 'Chiang Mai', 'Chiang Mai', 1, 209),
(3179, 'Chiang Rai', 'Chiang Rai', 1, 209),
(3180, 'Chon Buri', 'Chon Buri', 1, 209),
(3181, 'Chumphon', 'Chumphon', 1, 209),
(3182, 'Kalasin', 'Kalasin', 1, 209),
(3183, 'Kamphaeng Phet', 'Kamphaeng Phet', 1, 209),
(3184, 'Kanchanaburi', 'Kanchanaburi', 1, 209),
(3185, 'Khon Kaen', 'Khon Kaen', 1, 209),
(3186, 'Krabi', 'Krabi', 1, 209),
(3187, 'Lampang', 'Lampang', 1, 209),
(3188, 'Lamphun', 'Lamphun', 1, 209),
(3189, 'Loei', 'Loei', 1, 209),
(3190, 'Lop Buri', 'Lop Buri', 1, 209),
(3191, 'Mae Hong Son', 'Mae Hong Son', 1, 209),
(3192, 'Maha Sarakham', 'Maha Sarakham', 1, 209),
(3193, 'Mukdahan', 'Mukdahan', 1, 209),
(3194, 'Nakhon Nayok', 'Nakhon Nayok', 1, 209),
(3195, 'Nakhon Pathom', 'Nakhon Pathom', 1, 209),
(3196, 'Nakhon Phanom', 'Nakhon Phanom', 1, 209),
(3197, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1, 209),
(3198, 'Nakhon Sawan', 'Nakhon Sawan', 1, 209),
(3199, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1, 209),
(3200, 'Nan', 'Nan', 1, 209),
(3201, 'Narathiwat', 'Narathiwat', 1, 209),
(3202, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1, 209),
(3203, 'Nong Khai', 'Nong Khai', 1, 209),
(3204, 'Nonthaburi', 'Nonthaburi', 1, 209),
(3205, 'Pathum Thani', 'Pathum Thani', 1, 209),
(3206, 'Pattani', 'Pattani', 1, 209),
(3207, 'Phangnga', 'Phangnga', 1, 209),
(3208, 'Phatthalung', 'Phatthalung', 1, 209),
(3209, 'Phayao', 'Phayao', 1, 209),
(3210, 'Phetchabun', 'Phetchabun', 1, 209),
(3211, 'Phetchaburi', 'Phetchaburi', 1, 209),
(3212, 'Phichit', 'Phichit', 1, 209),
(3213, 'Phitsanulok', 'Phitsanulok', 1, 209),
(3214, 'Phrae', 'Phrae', 1, 209),
(3215, 'Phuket', 'Phuket', 1, 209),
(3216, 'Prachin Buri', 'Prachin Buri', 1, 209),
(3217, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1, 209),
(3218, 'Ranong', 'Ranong', 1, 209),
(3219, 'Ratchaburi', 'Ratchaburi', 1, 209),
(3220, 'Rayong', 'Rayong', 1, 209),
(3221, 'Roi Et', 'Roi Et', 1, 209),
(3222, 'Sa Kaeo', 'Sa Kaeo', 1, 209),
(3223, 'Sakon Nakhon', 'Sakon Nakhon', 1, 209),
(3224, 'Samut Prakan', 'Samut Prakan', 1, 209),
(3225, 'Samut Sakhon', 'Samut Sakhon', 1, 209),
(3226, 'Samut Songkhram', 'Samut Songkhram', 1, 209),
(3227, 'Sara Buri', 'Sara Buri', 1, 209),
(3228, 'Satun', 'Satun', 1, 209),
(3229, 'Sing Buri', 'Sing Buri', 1, 209),
(3230, 'Sisaket', 'Sisaket', 1, 209),
(3231, 'Songkhla', 'Songkhla', 1, 209),
(3232, 'Sukhothai', 'Sukhothai', 1, 209),
(3233, 'Suphan Buri', 'Suphan Buri', 1, 209),
(3234, 'Surat Thani', 'Surat Thani', 1, 209),
(3235, 'Surin', 'Surin', 1, 209),
(3236, 'Tak', 'Tak', 1, 209),
(3237, 'Trang', 'Trang', 1, 209),
(3238, 'Trat', 'Trat', 1, 209),
(3239, 'Ubon Ratchathani', 'Ubon Ratchathani', 1, 209),
(3240, 'Udon Thani', 'Udon Thani', 1, 209),
(3241, 'Uthai Thani', 'Uthai Thani', 1, 209),
(3242, 'Uttaradit', 'Uttaradit', 1, 209),
(3243, 'Yala', 'Yala', 1, 209),
(3244, 'Yasothon', 'Yasothon', 1, 209),
(3245, 'K', 'Kara', 1, 210),
(3246, 'P', 'Plateaux', 1, 210),
(3247, 'S', 'Savanes', 1, 210),
(3248, 'C', 'Centrale', 1, 210),
(3249, 'M', 'Maritime', 1, 210),
(3250, 'A', 'Atafu', 1, 211),
(3251, 'F', 'Fakaofo', 1, 211),
(3252, 'N', 'Nukunonu', 1, 211),
(3253, 'H', 'Ha''apai', 1, 212),
(3254, 'T', 'Tongatapu', 1, 212),
(3255, 'V', 'Vava''u', 1, 212),
(3256, 'CT', 'Couva/Tabaquite/Talparo', 1, 213),
(3257, 'DM', 'Diego Martin', 1, 213),
(3258, 'MR', 'Mayaro/Rio Claro', 1, 213),
(3259, 'PD', 'Penal/Debe', 1, 213),
(3260, 'PT', 'Princes Town', 1, 213),
(3261, 'SG', 'Sangre Grande', 1, 213),
(3262, 'SL', 'San Juan/Laventille', 1, 213),
(3263, 'SI', 'Siparia', 1, 213),
(3264, 'TP', 'Tunapuna/Piarco', 1, 213),
(3265, 'PS', 'Port of Spain', 1, 213),
(3266, 'SF', 'San Fernando', 1, 213),
(3267, 'AR', 'Arima', 1, 213),
(3268, 'PF', 'Point Fortin', 1, 213),
(3269, 'CH', 'Chaguanas', 1, 213),
(3270, 'TO', 'Tobago', 1, 213),
(3271, 'AR', 'Ariana', 1, 214),
(3272, 'BJ', 'Beja', 1, 214),
(3273, 'BA', 'Ben Arous', 1, 214),
(3274, 'BI', 'Bizerte', 1, 214),
(3275, 'GB', 'Gabes', 1, 214),
(3276, 'GF', 'Gafsa', 1, 214),
(3277, 'JE', 'Jendouba', 1, 214),
(3278, 'KR', 'Kairouan', 1, 214),
(3279, 'KS', 'Kasserine', 1, 214),
(3280, 'KB', 'Kebili', 1, 214),
(3281, 'KF', 'Kef', 1, 214),
(3282, 'MH', 'Mahdia', 1, 214),
(3283, 'MN', 'Manouba', 1, 214),
(3284, 'ME', 'Medenine', 1, 214),
(3285, 'MO', 'Monastir', 1, 214),
(3286, 'NA', 'Nabeul', 1, 214),
(3287, 'SF', 'Sfax', 1, 214),
(3288, 'SD', 'Sidi', 1, 214),
(3289, 'SL', 'Siliana', 1, 214),
(3290, 'SO', 'Sousse', 1, 214),
(3291, 'TA', 'Tataouine', 1, 214),
(3292, 'TO', 'Tozeur', 1, 214),
(3293, 'TU', 'Tunis', 1, 214),
(3294, 'ZA', 'Zaghouan', 1, 214),
(3295, 'ADA', 'Adana', 1, 215),
(3296, 'ADI', 'Adiyaman', 1, 215),
(3297, 'AFY', 'Afyonkarahisar', 1, 215),
(3298, 'AGR', 'Agri', 1, 215),
(3299, 'AKS', 'Aksaray', 1, 215),
(3300, 'AMA', 'Amasya', 1, 215),
(3301, 'ANK', 'Ankara', 1, 215),
(3302, 'ANT', 'Antalya', 1, 215),
(3303, 'ARD', 'Ardahan', 1, 215),
(3304, 'ART', 'Artvin', 1, 215),
(3305, 'AYI', 'Aydin', 1, 215),
(3306, 'BAL', 'Balikesir', 1, 215),
(3307, 'BAR', 'Bartin', 1, 215),
(3308, 'BAT', 'Batman', 1, 215),
(3309, 'BAY', 'Bayburt', 1, 215),
(3310, 'BIL', 'Bilecik', 1, 215),
(3311, 'BIN', 'Bingol', 1, 215),
(3312, 'BIT', 'Bitlis', 1, 215),
(3313, 'BOL', 'Bolu', 1, 215),
(3314, 'BRD', 'Burdur', 1, 215),
(3315, 'BRS', 'Bursa', 1, 215),
(3316, 'CKL', 'Canakkale', 1, 215),
(3317, 'CKR', 'Cankiri', 1, 215),
(3318, 'COR', 'Corum', 1, 215),
(3319, 'DEN', 'Denizli', 1, 215),
(3320, 'DIY', 'Diyarbakir', 1, 215),
(3321, 'DUZ', 'Duzce', 1, 215),
(3322, 'EDI', 'Edirne', 1, 215),
(3323, 'ELA', 'Elazig', 1, 215),
(3324, 'EZC', 'Erzincan', 1, 215),
(3325, 'EZR', 'Erzurum', 1, 215),
(3326, 'ESK', 'Eskisehir', 1, 215),
(3327, 'GAZ', 'Gaziantep', 1, 215),
(3328, 'GIR', 'Giresun', 1, 215),
(3329, 'GMS', 'Gumushane', 1, 215),
(3330, 'HKR', 'Hakkari', 1, 215),
(3331, 'HTY', 'Hatay', 1, 215),
(3332, 'IGD', 'Igdir', 1, 215),
(3333, 'ISP', 'Isparta', 1, 215),
(3334, 'IST', 'Istanbul', 1, 215),
(3335, 'IZM', 'Izmir', 1, 215),
(3336, 'KAH', 'Kahramanmaras', 1, 215),
(3337, 'KRB', 'Karabuk', 1, 215),
(3338, 'KRM', 'Karaman', 1, 215),
(3339, 'KRS', 'Kars', 1, 215),
(3340, 'KAS', 'Kastamonu', 1, 215),
(3341, 'KAY', 'Kayseri', 1, 215),
(3342, 'KLS', 'Kilis', 1, 215),
(3343, 'KRK', 'Kirikkale', 1, 215),
(3344, 'KLR', 'Kirklareli', 1, 215),
(3345, 'KRH', 'Kirsehir', 1, 215),
(3346, 'KOC', 'Kocaeli', 1, 215),
(3347, 'KON', 'Konya', 1, 215),
(3348, 'KUT', 'Kutahya', 1, 215),
(3349, 'MAL', 'Malatya', 1, 215),
(3350, 'MAN', 'Manisa', 1, 215),
(3351, 'MAR', 'Mardin', 1, 215),
(3352, 'MER', 'Mersin', 1, 215),
(3353, 'MUG', 'Mugla', 1, 215),
(3354, 'MUS', 'Mus', 1, 215),
(3355, 'NEV', 'Nevsehir', 1, 215),
(3356, 'NIG', 'Nigde', 1, 215),
(3357, 'ORD', 'Ordu', 1, 215),
(3358, 'OSM', 'Osmaniye', 1, 215),
(3359, 'RIZ', 'Rize', 1, 215),
(3360, 'SAK', 'Sakarya', 1, 215),
(3361, 'SAM', 'Samsun', 1, 215),
(3362, 'SAN', 'Sanliurfa', 1, 215),
(3363, 'SII', 'Siirt', 1, 215),
(3364, 'SIN', 'Sinop', 1, 215),
(3365, 'SIR', 'Sirnak', 1, 215),
(3366, 'SIV', 'Sivas', 1, 215),
(3367, 'TEL', 'Tekirdag', 1, 215),
(3368, 'TOK', 'Tokat', 1, 215),
(3369, 'TRA', 'Trabzon', 1, 215),
(3370, 'TUN', 'Tunceli', 1, 215),
(3371, 'USK', 'Usak', 1, 215),
(3372, 'VAN', 'Van', 1, 215),
(3373, 'YAL', 'Yalova', 1, 215),
(3374, 'YOZ', 'Yozgat', 1, 215),
(3375, 'ZON', 'Zonguldak', 1, 215),
(3376, 'A', 'Ahal Welayaty', 1, 216),
(3377, 'B', 'Balkan Welayaty', 1, 216),
(3378, 'D', 'Dashhowuz Welayaty', 1, 216),
(3379, 'L', 'Lebap Welayaty', 1, 216),
(3380, 'M', 'Mary Welayaty', 1, 216),
(3381, 'AC', 'Ambergris Cays', 1, 217),
(3382, 'DC', 'Dellis Cay', 1, 217),
(3383, 'FC', 'French Cay', 1, 217),
(3384, 'LW', 'Little Water Cay', 1, 217),
(3385, 'RC', 'Parrot Cay', 1, 217),
(3386, 'PN', 'Pine Cay', 1, 217),
(3387, 'SL', 'Salt Cay', 1, 217),
(3388, 'GT', 'Grand Turk', 1, 217),
(3389, 'SC', 'South Caicos', 1, 217),
(3390, 'EC', 'East Caicos', 1, 217),
(3391, 'MC', 'Middle Caicos', 1, 217),
(3392, 'NC', 'North Caicos', 1, 217),
(3393, 'PR', 'Providenciales', 1, 217),
(3394, 'WC', 'West Caicos', 1, 217),
(3395, 'NMG', 'Nanumanga', 1, 218),
(3396, 'NLK', 'Niulakita', 1, 218),
(3397, 'NTO', 'Niutao', 1, 218),
(3398, 'FUN', 'Funafuti', 1, 218),
(3399, 'NME', 'Nanumea', 1, 218),
(3400, 'NUI', 'Nui', 1, 218),
(3401, 'NFT', 'Nukufetau', 1, 218),
(3402, 'NLL', 'Nukulaelae', 1, 218),
(3403, 'VAI', 'Vaitupu', 1, 218),
(3404, 'KAL', 'Kalangala', 1, 219),
(3405, 'KMP', 'Kampala', 1, 219),
(3406, 'KAY', 'Kayunga', 1, 219),
(3407, 'KIB', 'Kiboga', 1, 219),
(3408, 'LUW', 'Luwero', 1, 219),
(3409, 'MAS', 'Masaka', 1, 219),
(3410, 'MPI', 'Mpigi', 1, 219),
(3411, 'MUB', 'Mubende', 1, 219),
(3412, 'MUK', 'Mukono', 1, 219),
(3413, 'NKS', 'Nakasongola', 1, 219),
(3414, 'RAK', 'Rakai', 1, 219),
(3415, 'SEM', 'Sembabule', 1, 219),
(3416, 'WAK', 'Wakiso', 1, 219),
(3417, 'BUG', 'Bugiri', 1, 219),
(3418, 'BUS', 'Busia', 1, 219),
(3419, 'IGA', 'Iganga', 1, 219),
(3420, 'JIN', 'Jinja', 1, 219),
(3421, 'KAB', 'Kaberamaido', 1, 219),
(3422, 'KML', 'Kamuli', 1, 219),
(3423, 'KPC', 'Kapchorwa', 1, 219),
(3424, 'KTK', 'Katakwi', 1, 219),
(3425, 'KUM', 'Kumi', 1, 219),
(3426, 'MAY', 'Mayuge', 1, 219),
(3427, 'MBA', 'Mbale', 1, 219),
(3428, 'PAL', 'Pallisa', 1, 219),
(3429, 'SIR', 'Sironko', 1, 219),
(3430, 'SOR', 'Soroti', 1, 219),
(3431, 'TOR', 'Tororo', 1, 219),
(3432, 'ADJ', 'Adjumani', 1, 219),
(3433, 'APC', 'Apac', 1, 219),
(3434, 'ARU', 'Arua', 1, 219),
(3435, 'GUL', 'Gulu', 1, 219),
(3436, 'KIT', 'Kitgum', 1, 219),
(3437, 'KOT', 'Kotido', 1, 219),
(3438, 'LIR', 'Lira', 1, 219),
(3439, 'MRT', 'Moroto', 1, 219),
(3440, 'MOY', 'Moyo', 1, 219),
(3441, 'NAK', 'Nakapiripirit', 1, 219),
(3442, 'NEB', 'Nebbi', 1, 219),
(3443, 'PAD', 'Pader', 1, 219),
(3444, 'YUM', 'Yumbe', 1, 219),
(3445, 'BUN', 'Bundibugyo', 1, 219),
(3446, 'BSH', 'Bushenyi', 1, 219),
(3447, 'HOI', 'Hoima', 1, 219),
(3448, 'KBL', 'Kabale', 1, 219),
(3449, 'KAR', 'Kabarole', 1, 219),
(3450, 'KAM', 'Kamwenge', 1, 219),
(3451, 'KAN', 'Kanungu', 1, 219),
(3452, 'KAS', 'Kasese', 1, 219),
(3453, 'KBA', 'Kibaale', 1, 219),
(3454, 'KIS', 'Kisoro', 1, 219),
(3455, 'KYE', 'Kyenjojo', 1, 219),
(3456, 'MSN', 'Masindi', 1, 219),
(3457, 'MBR', 'Mbarara', 1, 219),
(3458, 'NTU', 'Ntungamo', 1, 219),
(3459, 'RUK', 'Rukungiri', 1, 219),
(3460, 'CK', 'Cherkasy', 1, 220),
(3461, 'CH', 'Chernihiv', 1, 220),
(3462, 'CV', 'Chernivtsi', 1, 220),
(3463, 'CR', 'Crimea', 1, 220),
(3464, 'DN', 'Dnipropetrovs''k', 1, 220),
(3465, 'DO', 'Donets''k', 1, 220),
(3466, 'IV', 'Ivano-Frankivs''k', 1, 220),
(3467, 'KL', 'Kharkiv Kherson', 1, 220),
(3468, 'KM', 'Khmel''nyts''kyy', 1, 220),
(3469, 'KR', 'Kirovohrad', 1, 220),
(3470, 'KV', 'Kiev', 1, 220),
(3471, 'KY', 'Kyyiv', 1, 220),
(3472, 'LU', 'Luhans''k', 1, 220),
(3473, 'LV', 'L''viv', 1, 220),
(3474, 'MY', 'Mykolayiv', 1, 220),
(3475, 'OD', 'Odesa', 1, 220),
(3476, 'PO', 'Poltava', 1, 220),
(3477, 'RI', 'Rivne', 1, 220),
(3478, 'SE', 'Sevastopol', 1, 220),
(3479, 'SU', 'Sumy', 1, 220),
(3480, 'TE', 'Ternopil''', 1, 220),
(3481, 'VI', 'Vinnytsya', 1, 220),
(3482, 'VO', 'Volyn''', 1, 220),
(3483, 'ZK', 'Zakarpattya', 1, 220),
(3484, 'ZA', 'Zaporizhzhya', 1, 220),
(3485, 'ZH', 'Zhytomyr', 1, 220),
(3486, 'AZ', 'Abu Zaby', 1, 221),
(3487, 'AJ', '''Ajman', 1, 221),
(3488, 'FU', 'Al Fujayrah', 1, 221),
(3489, 'SH', 'Ash Shariqah', 1, 221),
(3490, 'DU', 'Dubayy', 1, 221),
(3491, 'RK', 'R''as al Khaymah', 1, 221),
(3492, 'UQ', 'Umm al Qaywayn', 1, 221),
(3493, 'ABN', 'Aberdeen', 1, 222),
(3494, 'ABNS', 'Aberdeenshire', 1, 222),
(3495, 'ANG', 'Anglesey', 1, 222),
(3496, 'AGS', 'Angus', 1, 222),
(3497, 'ARY', 'Argyll and Bute', 1, 222),
(3498, 'BEDS', 'Bedfordshire', 1, 222),
(3499, 'BERKS', 'Berkshire', 1, 222),
(3500, 'BLA', 'Blaenau Gwent', 1, 222),
(3501, 'BRI', 'Bridgend', 1, 222),
(3502, 'BSTL', 'Bristol', 1, 222),
(3503, 'BUCKS', 'Buckinghamshire', 1, 222),
(3504, 'CAE', 'Caerphilly', 1, 222),
(3505, 'CAMBS', 'Cambridgeshire', 1, 222),
(3506, 'CDF', 'Cardiff', 1, 222),
(3507, 'CARM', 'Carmarthenshire', 1, 222),
(3508, 'CDGN', 'Ceredigion', 1, 222),
(3509, 'CHES', 'Cheshire', 1, 222),
(3510, 'CLACK', 'Clackmannanshire', 1, 222),
(3511, 'CON', 'Conwy', 1, 222),
(3512, 'CORN', 'Cornwall', 1, 222),
(3513, 'DNBG', 'Denbighshire', 1, 222),
(3514, 'DERBY', 'Derbyshire', 1, 222),
(3515, 'DVN', 'Devon', 1, 222),
(3516, 'DOR', 'Dorset', 1, 222),
(3517, 'DGL', 'Dumfries and Galloway', 1, 222),
(3518, 'DUND', 'Dundee', 1, 222),
(3519, 'DHM', 'Durham', 1, 222),
(3520, 'ARYE', 'East Ayrshire', 1, 222),
(3521, 'DUNBE', 'East Dunbartonshire', 1, 222),
(3522, 'LOTE', 'East Lothian', 1, 222),
(3523, 'RENE', 'East Renfrewshire', 1, 222),
(3524, 'ERYS', 'East Riding of Yorkshire', 1, 222),
(3525, 'SXE', 'East Sussex', 1, 222),
(3526, 'EDIN', 'Edinburgh', 1, 222),
(3527, 'ESX', 'Essex', 1, 222),
(3528, 'FALK', 'Falkirk', 1, 222),
(3529, 'FFE', 'Fife', 1, 222),
(3530, 'FLINT', 'Flintshire', 1, 222),
(3531, 'GLAS', 'Glasgow', 1, 222),
(3532, 'GLOS', 'Gloucestershire', 1, 222),
(3533, 'LDN', 'Greater London', 1, 222),
(3534, 'MCH', 'Greater Manchester', 1, 222),
(3535, 'GDD', 'Gwynedd', 1, 222),
(3536, 'HANTS', 'Hampshire', 1, 222),
(3537, 'HWR', 'Herefordshire', 1, 222),
(3538, 'HERTS', 'Hertfordshire', 1, 222),
(3539, 'HLD', 'Highlands', 1, 222),
(3540, 'IVER', 'Inverclyde', 1, 222),
(3541, 'IOW', 'Isle of Wight', 1, 222),
(3542, 'KNT', 'Kent', 1, 222),
(3543, 'LANCS', 'Lancashire', 1, 222),
(3544, 'LEICS', 'Leicestershire', 1, 222),
(3545, 'LINCS', 'Lincolnshire', 1, 222),
(3546, 'MSY', 'Merseyside', 1, 222),
(3547, 'MERT', 'Merthyr Tydfil', 1, 222),
(3548, 'MLOT', 'Midlothian', 1, 222),
(3549, 'MMOUTH', 'Monmouthshire', 1, 222),
(3550, 'MORAY', 'Moray', 1, 222),
(3551, 'NPRTAL', 'Neath Port Talbot', 1, 222),
(3552, 'NEWPT', 'Newport', 1, 222),
(3553, 'NOR', 'Norfolk', 1, 222),
(3554, 'ARYN', 'North Ayrshire', 1, 222),
(3555, 'LANN', 'North Lanarkshire', 1, 222),
(3556, 'YSN', 'North Yorkshire', 1, 222),
(3557, 'NHM', 'Northamptonshire', 1, 222),
(3558, 'NLD', 'Northumberland', 1, 222),
(3559, 'NOT', 'Nottinghamshire', 1, 222),
(3560, 'ORK', 'Orkney Islands', 1, 222),
(3561, 'OFE', 'Oxfordshire', 1, 222),
(3562, 'PEM', 'Pembrokeshire', 1, 222),
(3563, 'PERTH', 'Perth and Kinross', 1, 222),
(3564, 'PWS', 'Powys', 1, 222),
(3565, 'REN', 'Renfrewshire', 1, 222),
(3566, 'RHON', 'Rhondda Cynon Taff', 1, 222),
(3567, 'RUT', 'Rutland', 1, 222),
(3568, 'BOR', 'Scottish Borders', 1, 222),
(3569, 'SHET', 'Shetland Islands', 1, 222),
(3570, 'SPE', 'Shropshire', 1, 222),
(3571, 'SOM', 'Somerset', 1, 222),
(3572, 'ARYS', 'South Ayrshire', 1, 222),
(3573, 'LANS', 'South Lanarkshire', 1, 222),
(3574, 'YSS', 'South Yorkshire', 1, 222),
(3575, 'SFD', 'Staffordshire', 1, 222),
(3576, 'STIR', 'Stirling', 1, 222),
(3577, 'SFK', 'Suffolk', 1, 222),
(3578, 'SRY', 'Surrey', 1, 222),
(3579, 'SWAN', 'Swansea', 1, 222),
(3580, 'TORF', 'Torfaen', 1, 222),
(3581, 'TWR', 'Tyne and Wear', 1, 222),
(3582, 'VGLAM', 'Vale of Glamorgan', 1, 222),
(3583, 'WARKS', 'Warwickshire', 1, 222),
(3584, 'WDUN', 'West Dunbartonshire', 1, 222),
(3585, 'WLOT', 'West Lothian', 1, 222),
(3586, 'WMD', 'West Midlands', 1, 222),
(3587, 'SXW', 'West Sussex', 1, 222),
(3588, 'YSW', 'West Yorkshire', 1, 222),
(3589, 'WIL', 'Western Isles', 1, 222),
(3590, 'WLT', 'Wiltshire', 1, 222),
(3591, 'WORCS', 'Worcestershire', 1, 222),
(3592, 'WRX', 'Wrexham', 1, 222),
(3593, 'AL', 'Alabama', 1, 223),
(3594, 'AK', 'Alaska', 1, 223),
(3595, 'AS', 'American Samoa', 1, 223),
(3596, 'AZ', 'Arizona', 1, 223),
(3597, 'AR', 'Arkansas', 1, 223),
(3598, 'AF', 'Armed Forces Africa', 1, 223),
(3599, 'AA', 'Armed Forces Americas', 1, 223),
(3600, 'AC', 'Armed Forces Canada', 1, 223),
(3601, 'AE', 'Armed Forces Europe', 1, 223),
(3602, 'AM', 'Armed Forces Middle East', 1, 223),
(3603, 'AP', 'Armed Forces Pacific', 1, 223),
(3604, 'CA', 'California', 1, 223),
(3605, 'CO', 'Colorado', 1, 223),
(3606, 'CT', 'Connecticut', 1, 223),
(3607, 'DE', 'Delaware', 1, 223),
(3608, 'DC', 'District of Columbia', 1, 223),
(3609, 'FM', 'Federated States Of Micronesia', 1, 223),
(3610, 'FL', 'Florida', 1, 223),
(3611, 'GA', 'Georgia', 1, 223),
(3612, 'GU', 'Guam', 1, 223),
(3613, 'HI', 'Hawaii', 1, 223),
(3614, 'ID', 'Idaho', 1, 223),
(3615, 'IL', 'Illinois', 1, 223),
(3616, 'IN', 'Indiana', 1, 223),
(3617, 'IA', 'Iowa', 1, 223),
(3618, 'KS', 'Kansas', 1, 223),
(3619, 'KY', 'Kentucky', 1, 223),
(3620, 'LA', 'Louisiana', 1, 223),
(3621, 'ME', 'Maine', 1, 223),
(3622, 'MH', 'Marshall Islands', 1, 223),
(3623, 'MD', 'Maryland', 1, 223),
(3624, 'MA', 'Massachusetts', 1, 223),
(3625, 'MI', 'Michigan', 1, 223),
(3626, 'MN', 'Minnesota', 1, 223),
(3627, 'MS', 'Mississippi', 1, 223),
(3628, 'MO', 'Missouri', 1, 223),
(3629, 'MT', 'Montana', 1, 223),
(3630, 'NE', 'Nebraska', 1, 223),
(3631, 'NV', 'Nevada', 1, 223),
(3632, 'NH', 'New Hampshire', 1, 223),
(3633, 'NJ', 'New Jersey', 1, 223),
(3634, 'NM', 'New Mexico', 1, 223),
(3635, 'NY', 'New York', 1, 223),
(3636, 'NC', 'North Carolina', 1, 223),
(3637, 'ND', 'North Dakota', 1, 223),
(3638, 'MP', 'Northern Mariana Islands', 1, 223),
(3639, 'OH', 'Ohio', 1, 223),
(3640, 'OK', 'Oklahoma', 1, 223),
(3641, 'OR', 'Oregon', 1, 223),
(3642, 'PW', 'Palau', 1, 223),
(3643, 'PA', 'Pennsylvania', 1, 223),
(3644, 'PR', 'Puerto Rico', 1, 223),
(3645, 'RI', 'Rhode Island', 1, 223),
(3646, 'SC', 'South Carolina', 1, 223),
(3647, 'SD', 'South Dakota', 1, 223),
(3648, 'TN', 'Tennessee', 1, 223),
(3649, 'TX', 'Texas', 1, 223),
(3650, 'UT', 'Utah', 1, 223),
(3651, 'VT', 'Vermont', 1, 223),
(3652, 'VI', 'Virgin Islands', 1, 223),
(3653, 'VA', 'Virginia', 1, 223),
(3654, 'WA', 'Washington', 1, 223),
(3655, 'WV', 'West Virginia', 1, 223),
(3656, 'WI', 'Wisconsin', 1, 223),
(3657, 'WY', 'Wyoming', 1, 223),
(3658, 'BI', 'Baker Island', 1, 224),
(3659, 'HI', 'Howland Island', 1, 224),
(3660, 'JI', 'Jarvis Island', 1, 224),
(3661, 'JA', 'Johnston Atoll', 1, 224),
(3662, 'KR', 'Kingman Reef', 1, 224),
(3663, 'MA', 'Midway Atoll', 1, 224),
(3664, 'NI', 'Navassa Island', 1, 224),
(3665, 'PA', 'Palmyra Atoll', 1, 224),
(3666, 'WI', 'Wake Island', 1, 224),
(3667, 'AR', 'Artigas', 1, 225),
(3668, 'CA', 'Canelones', 1, 225),
(3669, 'CL', 'Cerro Largo', 1, 225),
(3670, 'CO', 'Colonia', 1, 225),
(3671, 'DU', 'Durazno', 1, 225),
(3672, 'FS', 'Flores', 1, 225),
(3673, 'FA', 'Florida', 1, 225),
(3674, 'LA', 'Lavalleja', 1, 225),
(3675, 'MA', 'Maldonado', 1, 225),
(3676, 'MO', 'Montevideo', 1, 225),
(3677, 'PA', 'Paysandu', 1, 225),
(3678, 'RN', 'Rio Negro', 1, 225),
(3679, 'RV', 'Rivera', 1, 225),
(3680, 'RO', 'Rocha', 1, 225),
(3681, 'SL', 'Salto', 1, 225),
(3682, 'SJ', 'San Jose', 1, 225),
(3683, 'SO', 'Soriano', 1, 225),
(3684, 'TA', 'Tacuarembo', 1, 225),
(3685, 'TT', 'Treinta y Tres', 1, 225),
(3686, 'AN', 'Andijon', 1, 226),
(3687, 'BU', 'Buxoro', 1, 226),
(3688, 'FA', 'Farg''ona', 1, 226),
(3689, 'JI', 'Jizzax', 1, 226),
(3690, 'NG', 'Namangan', 1, 226),
(3691, 'NW', 'Navoiy', 1, 226),
(3692, 'QA', 'Qashqadaryo', 1, 226),
(3693, 'QR', 'Qoraqalpog''iston Republikasi', 1, 226),
(3694, 'SA', 'Samarqand', 1, 226),
(3695, 'SI', 'Sirdaryo', 1, 226),
(3696, 'SU', 'Surxondaryo', 1, 226),
(3697, 'TK', 'Toshkent City', 1, 226),
(3698, 'TO', 'Toshkent Region', 1, 226),
(3699, 'XO', 'Xorazm', 1, 226),
(3700, 'MA', 'Malampa', 1, 227),
(3701, 'PE', 'Penama', 1, 227),
(3702, 'SA', 'Sanma', 1, 227),
(3703, 'SH', 'Shefa', 1, 227),
(3704, 'TA', 'Tafea', 1, 227),
(3705, 'TO', 'Torba', 1, 227),
(3706, 'AM', 'Amazonas', 1, 229),
(3707, 'AN', 'Anzoategui', 1, 229),
(3708, 'AP', 'Apure', 1, 229),
(3709, 'AR', 'Aragua', 1, 229),
(3710, 'BA', 'Barinas', 1, 229),
(3711, 'BO', 'Bolivar', 1, 229),
(3712, 'CA', 'Carabobo', 1, 229),
(3713, 'CO', 'Cojedes', 1, 229),
(3714, 'DA', 'Delta Amacuro', 1, 229),
(3715, 'DF', 'Dependencias Federales', 1, 229),
(3716, 'DI', 'Distrito Federal', 1, 229),
(3717, 'FA', 'Falcon', 1, 229),
(3718, 'GU', 'Guarico', 1, 229),
(3719, 'LA', 'Lara', 1, 229),
(3720, 'ME', 'Merida', 1, 229),
(3721, 'MI', 'Miranda', 1, 229),
(3722, 'MO', 'Monagas', 1, 229),
(3723, 'NE', 'Nueva Esparta', 1, 229),
(3724, 'PO', 'Portuguesa', 1, 229),
(3725, 'SU', 'Sucre', 1, 229),
(3726, 'TA', 'Tachira', 1, 229),
(3727, 'TR', 'Trujillo', 1, 229),
(3728, 'VA', 'Vargas', 1, 229),
(3729, 'YA', 'Yaracuy', 1, 229),
(3730, 'ZU', 'Zulia', 1, 229),
(3731, 'AG', 'An Giang', 1, 230),
(3732, 'BG', 'Bac Giang', 1, 230),
(3733, 'BK', 'Bac Kan', 1, 230),
(3734, 'BL', 'Bac Lieu', 1, 230),
(3735, 'BC', 'Bac Ninh', 1, 230),
(3736, 'BR', 'Ba Ria-Vung Tau', 1, 230),
(3737, 'BN', 'Ben Tre', 1, 230),
(3738, 'BH', 'Binh Dinh', 1, 230),
(3739, 'BU', 'Binh Duong', 1, 230),
(3740, 'BP', 'Binh Phuoc', 1, 230),
(3741, 'BT', 'Binh Thuan', 1, 230),
(3742, 'CM', 'Ca Mau', 1, 230),
(3743, 'CT', 'Can Tho', 1, 230),
(3744, 'CB', 'Cao Bang', 1, 230),
(3745, 'DL', 'Dak Lak', 1, 230),
(3746, 'DG', 'Dak Nong', 1, 230),
(3747, 'DN', 'Da Nang', 1, 230),
(3748, 'DB', 'Dien Bien', 1, 230),
(3749, 'DI', 'Dong Nai', 1, 230),
(3750, 'DT', 'Dong Thap', 1, 230),
(3751, 'GL', 'Gia Lai', 1, 230),
(3752, 'HG', 'Ha Giang', 1, 230),
(3753, 'HD', 'Hai Duong', 1, 230),
(3754, 'HP', 'Hai Phong', 1, 230),
(3755, 'HM', 'Ha Nam', 1, 230),
(3756, 'HI', 'Ha Noi', 1, 230),
(3757, 'HT', 'Ha Tay', 1, 230),
(3758, 'HH', 'Ha Tinh', 1, 230),
(3759, 'HB', 'Hoa Binh', 1, 230),
(3760, 'HC', 'Ho Chi Minh City', 1, 230),
(3761, 'HU', 'Hau Giang', 1, 230),
(3762, 'HY', 'Hung Yen', 1, 230),
(3763, 'C', 'Saint Croix', 1, 232),
(3764, 'J', 'Saint John', 1, 232),
(3765, 'T', 'Saint Thomas', 1, 232),
(3766, 'A', 'Alo', 1, 233),
(3767, 'S', 'Sigave', 1, 233),
(3768, 'W', 'Wallis', 1, 233),
(3769, 'AB', 'Abyan', 1, 235),
(3770, 'AD', 'Adan', 1, 235),
(3771, 'AM', 'Amran', 1, 235),
(3772, 'BA', 'Al Bayda', 1, 235),
(3773, 'DA', 'Ad Dali', 1, 235),
(3774, 'DH', 'Dhamar', 1, 235),
(3775, 'HD', 'Hadramawt', 1, 235),
(3776, 'HJ', 'Hajjah', 1, 235),
(3777, 'HU', 'Al Hudaydah', 1, 235),
(3778, 'IB', 'Ibb', 1, 235),
(3779, 'JA', 'Al Jawf', 1, 235),
(3780, 'LA', 'Lahij', 1, 235),
(3781, 'MA', 'Ma''rib', 1, 235),
(3782, 'MR', 'Al Mahrah', 1, 235),
(3783, 'MW', 'Al Mahwit', 1, 235),
(3784, 'SD', 'Sa''dah', 1, 235),
(3785, 'SN', 'San''a', 1, 235),
(3786, 'SH', 'Shabwah', 1, 235),
(3787, 'TA', 'Ta''izz', 1, 235),
(3788, 'KOS', 'Kosovo', 1, 236),
(3789, 'MON', 'Montenegro', 1, 236),
(3790, 'SER', 'Serbia', 1, 236),
(3791, 'VOJ', 'Vojvodina', 1, 236),
(3792, 'BC', 'Bas-Congo', 1, 237),
(3793, 'BN', 'Bandundu', 1, 237),
(3794, 'EQ', 'Equateur', 1, 237),
(3795, 'KA', 'Katanga', 1, 237),
(3796, 'KE', 'Kasai-Oriental', 1, 237),
(3797, 'KN', 'Kinshasa', 1, 237),
(3798, 'KW', 'Kasai-Occidental', 1, 237),
(3799, 'MA', 'Maniema', 1, 237),
(3800, 'NK', 'Nord-Kivu', 1, 237),
(3801, 'OR', 'Orientale', 1, 237),
(3802, 'SK', 'Sud-Kivu', 1, 237),
(3803, 'CE', 'Central', 1, 238),
(3804, 'CB', 'Copperbelt', 1, 238),
(3805, 'EA', 'Eastern', 1, 238),
(3806, 'LP', 'Luapula', 1, 238),
(3807, 'LK', 'Lusaka', 1, 238),
(3808, 'NO', 'Northern', 1, 238),
(3809, 'NW', 'North-Western', 1, 238),
(3810, 'SO', 'Southern', 1, 238),
(3811, 'WE', 'Western', 1, 238),
(3812, 'BU', 'Bulawayo', 1, 239),
(3813, 'HA', 'Harare', 1, 239),
(3814, 'ML', 'Manicaland', 1, 239),
(3815, 'MC', 'Mashonaland Central', 1, 239),
(3816, 'ME', 'Mashonaland East', 1, 239),
(3817, 'MW', 'Mashonaland West', 1, 239),
(3818, 'MV', 'Masvingo', 1, 239),
(3819, 'MN', 'Matabeleland North', 1, 239),
(3820, 'MS', 'Matabeleland South', 1, 239),
(3821, 'MD', 'Midlands', 1, 239),
(3822, 'AG', 'Agrigento', 1, 105),
(3823, 'AL', 'Alessandria', 1, 105),
(3824, 'AN', 'Ancona', 1, 105),
(3825, 'AO', 'Aosta', 1, 105),
(3826, 'AR', 'Arezzo', 1, 105),
(3827, 'AP', 'Ascoli Piceno', 1, 105),
(3828, 'AT', 'Asti', 1, 105),
(3829, 'AV', 'Avellino', 1, 105),
(3830, 'BA', 'Bari', 1, 105),
(3831, 'BL', 'Belluno', 1, 105),
(3832, 'BN', 'Benevento', 1, 105),
(3833, 'BG', 'Bergamo', 1, 105),
(3834, 'BI', 'Biella', 1, 105),
(3835, 'BO', 'Bologna', 1, 105),
(3836, 'BZ', 'Bolzano', 1, 105),
(3837, 'BS', 'Brescia', 1, 105),
(3838, 'BR', 'Brindisi', 1, 105),
(3839, 'CA', 'Cagliari', 1, 105),
(3840, 'CL', 'Caltanissetta', 1, 105),
(3841, 'CB', 'Campobasso', 1, 105),
(3842, 'CI', 'Carbonia-Iglesias', 1, 105),
(3843, 'CE', 'Caserta', 1, 105),
(3844, 'CT', 'Catania', 1, 105),
(3845, 'CZ', 'Catanzaro', 1, 105),
(3846, 'CH', 'Chieti', 1, 105),
(3847, 'CO', 'Como', 1, 105),
(3848, 'CS', 'Cosenza', 1, 105),
(3849, 'CR', 'Cremona', 1, 105),
(3850, 'KR', 'Crotone', 1, 105),
(3851, 'CN', 'Cuneo', 1, 105),
(3852, 'EN', 'Enna', 1, 105),
(3853, 'FE', 'Ferrara', 1, 105),
(3854, 'FI', 'Firenze', 1, 105),
(3855, 'FG', 'Foggia', 1, 105),
(3856, 'FC', 'Forli-Cesena', 1, 105),
(3857, 'FR', 'Frosinone', 1, 105),
(3858, 'GE', 'Genova', 1, 105),
(3859, 'GO', 'Gorizia', 1, 105),
(3860, 'GR', 'Grosseto', 1, 105),
(3861, 'IM', 'Imperia', 1, 105),
(3862, 'IS', 'Isernia', 1, 105),
(3863, 'AQ', 'L&#39;Aquila', 1, 105),
(3864, 'SP', 'La Spezia', 1, 105),
(3865, 'LT', 'Latina', 1, 105),
(3866, 'LE', 'Lecce', 1, 105),
(3867, 'LC', 'Lecco', 1, 105),
(3868, 'LI', 'Livorno', 1, 105),
(3869, 'LO', 'Lodi', 1, 105),
(3870, 'LU', 'Lucca', 1, 105),
(3871, 'MC', 'Macerata', 1, 105),
(3872, 'MN', 'Mantova', 1, 105),
(3873, 'MS', 'Massa-Carrara', 1, 105),
(3874, 'MT', 'Matera', 1, 105),
(3875, 'VS', 'Medio Campidano', 1, 105),
(3876, 'ME', 'Messina', 1, 105),
(3877, 'MI', 'Milano', 1, 105),
(3878, 'MO', 'Modena', 1, 105),
(3879, 'NA', 'Napoli', 1, 105),
(3880, 'NO', 'Novara', 1, 105),
(3881, 'NU', 'Nuoro', 1, 105),
(3882, 'OG', 'Ogliastra', 1, 105),
(3883, 'OT', 'Olbia-Tempio', 1, 105),
(3884, 'OR', 'Oristano', 1, 105),
(3885, 'PD', 'Padova', 1, 105),
(3886, 'PA', 'Palermo', 1, 105),
(3887, 'PR', 'Parma', 1, 105),
(3888, 'PV', 'Pavia', 1, 105),
(3889, 'PG', 'Perugia', 1, 105),
(3890, 'PU', 'Pesaro e Urbino', 1, 105),
(3891, 'PE', 'Pescara', 1, 105),
(3892, 'PC', 'Piacenza', 1, 105),
(3893, 'PI', 'Pisa', 1, 105),
(3894, 'PT', 'Pistoia', 1, 105),
(3895, 'PN', 'Pordenone', 1, 105),
(3896, 'PZ', 'Potenza', 1, 105),
(3897, 'PO', 'Prato', 1, 105),
(3898, 'RG', 'Ragusa', 1, 105),
(3899, 'RA', 'Ravenna', 1, 105),
(3900, 'RC', 'Reggio Calabria', 1, 105),
(3901, 'RE', 'Reggio Emilia', 1, 105),
(3902, 'RI', 'Rieti', 1, 105),
(3903, 'RN', 'Rimini', 1, 105),
(3904, 'RM', 'Roma', 1, 105),
(3905, 'RO', 'Rovigo', 1, 105),
(3906, 'SA', 'Salerno', 1, 105),
(3907, 'SS', 'Sassari', 1, 105),
(3908, 'SV', 'Savona', 1, 105),
(3909, 'SI', 'Siena', 1, 105),
(3910, 'SR', 'Siracusa', 1, 105),
(3911, 'SO', 'Sondrio', 1, 105),
(3912, 'TA', 'Taranto', 1, 105),
(3913, 'TE', 'Teramo', 1, 105),
(3914, 'TR', 'Terni', 1, 105),
(3915, 'TO', 'Torino', 1, 105),
(3916, 'TP', 'Trapani', 1, 105),
(3917, 'TN', 'Trento', 1, 105),
(3918, 'TV', 'Treviso', 1, 105),
(3919, 'TS', 'Trieste', 1, 105),
(3920, 'UD', 'Udine', 1, 105),
(3921, 'VA', 'Varese', 1, 105),
(3922, 'VE', 'Venezia', 1, 105),
(3923, 'VB', 'Verbano-Cusio-Ossola', 1, 105),
(3924, 'VC', 'Vercelli', 1, 105),
(3925, 'VR', 'Verona', 1, 105),
(3926, 'VV', 'Vibo Valentia', 1, 105),
(3927, 'VI', 'Vicenza', 1, 105),
(3928, 'VT', 'Viterbo', 1, 105),
(3929, 'ANT', 'County Antrim', 1, 222),
(3930, 'ARM', 'County Armagh', 1, 222),
(3931, 'DOW', 'County Down', 1, 222),
(3932, 'FER', 'County Fermanagh', 1, 222),
(3933, 'LDY', 'County Londonderry', 1, 222),
(3934, 'TYR', 'County Tyrone', 1, 222),
(3935, 'CMA', 'Cumbria', 1, 222);

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `anggota_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `anggota_pengarah_id` smallint(5) NOT NULL,
  `anggota_presenter_id` smallint(5) NOT NULL,
  `anggota_alias` varchar(255) NOT NULL,
  `anggota_username` varchar(255) NOT NULL,
  `anggota_password` varchar(255) NOT NULL,
  `anggota_email` varchar(255) NOT NULL,
  `anggota_handphone` varchar(255) NOT NULL,
  `anggota_tanggal_aktif` datetime DEFAULT NULL,
  `anggota_tanggal_login` datetime DEFAULT NULL,
  `anggota_tanggal_daftar` datetime NOT NULL,
  `anggota_callname` varchar(255) NOT NULL,
  `anggota_realname` varchar(255) NOT NULL,
  `anggota_tanggal_lahir` date DEFAULT NULL,
  `anggota_kelamin` enum('PRIA','WANITA') NOT NULL,
  `anggota_poin` int(12) NOT NULL,
  `anggota_saldo` int(12) NOT NULL,
  `anggota_type_id` tinyint(1) NOT NULL,
  `anggota_level_id` tinyint(1) NOT NULL,
  `anggota_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`anggota_id`),
  KEY `fk_anggota_anggota_type_idx` (`anggota_type_id`),
  KEY `fk_anggota_anggota_level1_idx` (`anggota_level_id`),
  KEY `fk_anggota_anggota_status1_idx` (`anggota_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`anggota_id`, `anggota_pengarah_id`, `anggota_presenter_id`, `anggota_alias`, `anggota_username`, `anggota_password`, `anggota_email`, `anggota_handphone`, `anggota_tanggal_aktif`, `anggota_tanggal_login`, `anggota_tanggal_daftar`, `anggota_callname`, `anggota_realname`, `anggota_tanggal_lahir`, `anggota_kelamin`, `anggota_poin`, `anggota_saldo`, `anggota_type_id`, `anggota_level_id`, `anggota_status_id`) VALUES
(1, 0, 0, 'eboy', 'eboy', 'eboy', 'eboy_karya_amatir@yahoo.co.id', '08812785646', NULL, NULL, '2011-01-12 13:22:24', 'eboy', 'Dino Sukma Sarjito', NULL, '', 0, 0, 0, 0, 0),
(2, 0, 0, 'khalit', 'khalit', 'khalit', 'auracms@auracms.org', '08985057939', NULL, NULL, '2011-01-19 12:01:24', 'Khalit', 'Khalit', NULL, '', 0, 0, 0, 0, 0),
(3, 0, 0, 'aguestri', 'aguestri', 'aguestri', 'programer@yahoo.co.id', '089565', NULL, NULL, '2011-01-27 21:36:18', 'Tri', 'Aguestri', NULL, '', 0, 0, 0, 0, 0),
(4, 0, 0, 'dedi', 'dedi', 'dedi', 'aguestri@gmail.com', '087839183148', NULL, NULL, '2011-04-02 16:22:41', 'Prana', 'Prana', NULL, '', 0, 0, 0, 0, 0),
(5, 0, 0, 'almazari', 'almazari', 'almazari', 'eka.murdiono@yahoo.co.id', '085729711195', NULL, NULL, '2011-04-10 21:46:05', 'Almazari', 'Almazari', NULL, '', 0, 0, 0, 0, 0),
(6, 0, 0, 'lutfi', 'lutfi', 'lutfi', 'eboy_karya_amatir@yahoo.co.id', '08812785646', NULL, NULL, '2011-01-12 13:22:24', 'eboy', 'Dino Sukma Sarjito', NULL, '', 0, 0, 0, 0, 0),
(7, 0, 0, 'eka aji', 'eka aji', 'eka aji', 'auracms@auracms.org', '08985057939', NULL, NULL, '2011-01-19 12:01:24', 'Khalit', 'Khalit', NULL, '', 0, 0, 0, 0, 0),
(8, 0, 0, 'eka murdiono', 'eka murdiono', 'eka murdiono', 'programer@yahoo.co.id', '089565', NULL, NULL, '2011-01-27 21:36:18', 'Tri', 'Aguestri', NULL, '', 0, 0, 0, 0, 0),
(9, 0, 0, 'wens', 'wens', 'wens', 'aguestri@gmail.com', '087839183148', NULL, NULL, '2011-04-02 16:22:41', 'Prana', 'Prana', NULL, '', 0, 0, 0, 0, 0),
(10, 0, 0, 'roni', 'roni', 'roni', 'eka.murdiono@yahoo.co.id', '085729711195', NULL, NULL, '2011-04-10 21:46:05', 'Almazari', 'Almazari', NULL, '', 0, 0, 0, 0, 0),
(11, 0, 0, 'prana', 'prana', 'prana', 'eboy_karya_amatir@yahoo.co.id', '08812785646', NULL, NULL, '2011-01-12 13:22:24', 'eboy', 'Dino Sukma Sarjito', NULL, '', 0, 0, 0, 0, 0),
(12, 0, 0, 'ari', 'ari', 'ari', 'auracms@auracms.org', '08985057939', NULL, NULL, '2011-01-19 12:01:24', 'Khalit', 'Khalit', NULL, '', 0, 0, 0, 0, 0),
(13, 0, 0, 'ari', 'ari', 'ari', 'auracms@auracms.org', '08985057939', NULL, NULL, '2011-01-19 12:01:24', 'Khalit', 'Khalit', NULL, '', 0, 0, 0, 0, 0),
(14, 0, 0, 'ari', 'ari', 'ari', 'auracms@auracms.org', '08985057939', NULL, NULL, '2011-01-19 12:01:24', 'Khalit', 'Khalit', NULL, '', 0, 0, 0, 0, 0),
(15, 0, 0, 'ari', 'ari', 'ari', 'auracms@auracms.org', '08985057939', NULL, NULL, '2011-01-19 12:01:24', 'Khalit', 'Khalit', NULL, '', 0, 0, 0, 0, 0),
(25, 0, 0, 'auracms', 'auracms', 'admin', 'coba', '', NULL, NULL, '2011-06-24 10:03:13', 'Elda', 'Elda', NULL, 'PRIA', 0, 0, 0, 0, 0),
(26, 0, 0, 'lokomedia', 'lokomedia', 'lokomedia', 'lokomedia', '08985057939', NULL, NULL, '2011-06-27 00:09:21', 'LokoMedia', 'LokoMedia', NULL, 'PRIA', 0, 0, 0, 0, 0),
(28, 0, 0, 'nurul1405', 'nurul1405', 'sampit', 'nurul1405@gmail.com', '087839183148', NULL, NULL, '2011-06-27 04:33:01', 'nurul1405', 'nurul1405', NULL, 'PRIA', 0, 0, 0, 0, 0),
(29, 0, 0, 'bungas1405', 'bungas1405', 'sampit', 'aguestri@yahoo.co.id', '0852228687747', NULL, NULL, '2011-06-30 07:46:15', 'bungas1405', 'bungas1405', NULL, 'PRIA', 0, 0, 0, 0, 0),
(30, 0, 0, 'aura', 'aura', 'sampit', 'aura@aura.com', '087839183148', NULL, NULL, '2011-06-30 07:50:58', 'aura', 'aura', NULL, 'PRIA', 0, 0, 0, 0, 0),
(31, 0, 0, 'proyek_auracms', 'proyek_auracms', 'sampit', 'aguestri@gmail.com', '087839183148', NULL, NULL, '2011-07-07 13:19:20', 'proyek_auracms', 'proyek_auracms', NULL, 'PRIA', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_aplikasi`
--

CREATE TABLE IF NOT EXISTS `anggota_aplikasi` (
  `anggota_aplikasi_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `anggota_aplikasi_tanggal` datetime NOT NULL,
  `anggota_aplikasi_tanggal_mulai` datetime NOT NULL,
  `anggota_aplikasi_tanggal_selesai` datetime NOT NULL,
  `anggota_aplikasi_status` char(1) NOT NULL,
  `aplikasi_id` smallint(5) NOT NULL,
  `anggota_id` smallint(5) NOT NULL,
  PRIMARY KEY (`anggota_aplikasi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `anggota_aplikasi`
--

INSERT INTO `anggota_aplikasi` (`anggota_aplikasi_id`, `anggota_aplikasi_tanggal`, `anggota_aplikasi_tanggal_mulai`, `anggota_aplikasi_tanggal_selesai`, `anggota_aplikasi_status`, `aplikasi_id`, `anggota_id`) VALUES
(1, '2011-01-19 21:50:48', '2011-01-19 21:50:53', '2011-01-19 21:50:56', '1', 1, 1),
(2, '2011-01-19 21:51:29', '2011-01-19 21:51:32', '2011-01-19 21:51:35', '1', 2, 1),
(3, '2011-01-19 21:52:38', '2011-01-19 21:52:42', '2011-01-19 21:52:45', '1', 3, 1),
(4, '2011-01-19 21:53:13', '2011-01-19 21:53:17', '2011-01-19 21:53:21', '1', 4, 1),
(5, '2011-01-19 21:54:19', '2011-01-19 21:54:24', '2011-01-19 21:54:30', '1', 5, 1),
(6, '2011-01-19 21:57:33', '2011-01-19 21:57:36', '2011-01-19 21:57:38', '1', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_level`
--

CREATE TABLE IF NOT EXISTS `anggota_level` (
  `anggota_level_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `anggota_level_alias` varchar(15) NOT NULL,
  `anggota_level_nama` varchar(25) NOT NULL,
  PRIMARY KEY (`anggota_level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `anggota_level`
--

INSERT INTO `anggota_level` (`anggota_level_id`, `anggota_level_alias`, `anggota_level_nama`) VALUES
(1, 'admin', 'Administrator'),
(2, 'menejer', 'Menejer'),
(3, 'webmaster', 'Webmaster'),
(4, 'developer', 'Developer'),
(5, 'karyawan', 'Karyawan'),
(6, 'programmer', 'Programmer'),
(7, 'konsumen', 'Konsumen'),
(8, 'konstributor', 'Konstributor'),
(9, 'personal', 'Personal'),
(10, 'anggota', 'Anggota');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_relasi`
--

CREATE TABLE IF NOT EXISTS `anggota_relasi` (
  `anggota_relasi_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `anggota_relasi_tanggal_terima` datetime DEFAULT NULL,
  `anggota_relasi_tanggal_minta` datetime NOT NULL,
  `anggota_relasi_tipe` varchar(25) NOT NULL,
  `anggota_relasi_dengan_id` smallint(5) DEFAULT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`anggota_relasi_id`),
  KEY `fk_anggota_relasi_anggota1_idx` (`anggota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `anggota_relasi`
--

INSERT INTO `anggota_relasi` (`anggota_relasi_id`, `anggota_relasi_tanggal_terima`, `anggota_relasi_tanggal_minta`, `anggota_relasi_tipe`, `anggota_relasi_dengan_id`, `anggota_id`) VALUES
(1, NULL, '2011-01-23 01:43:25', 'framework', 5, 0),
(2, NULL, '2011-02-09 12:39:55', 'modul', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_status`
--

CREATE TABLE IF NOT EXISTS `anggota_status` (
  `anggota_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `anggota_status_judul` varchar(25) NOT NULL,
  PRIMARY KEY (`anggota_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `anggota_status`
--

INSERT INTO `anggota_status` (`anggota_status_id`, `anggota_status_judul`) VALUES
(1, 'PRIVASI'),
(2, 'PUBLIKASI');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_type`
--

CREATE TABLE IF NOT EXISTS `anggota_type` (
  `anggota_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `anggota_type_nama` varchar(25) NOT NULL,
  `anggota_type_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`anggota_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `anggota_type`
--

INSERT INTO `anggota_type` (`anggota_type_id`, `anggota_type_nama`, `anggota_type_status`) VALUES
(1, 'Aktif', 1),
(2, 'Blokir', 1),
(3, 'Berhenti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `authassignment`
--

CREATE TABLE IF NOT EXISTS `authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authassignment`
--

INSERT INTO `authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('admin', '5', NULL, ''),
('admin', '2', NULL, 'N;'),
('Anggota.Anggota.*', '1', NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitem`
--

CREATE TABLE IF NOT EXISTS `authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitem`
--

INSERT INTO `authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, NULL, NULL, 'N;'),
('Authenticated', 2, NULL, NULL, 'N;'),
('Guest', 2, NULL, NULL, 'N;'),
('Flowchart.*', 1, NULL, NULL, 'N;'),
('Site.*', 1, NULL, NULL, 'N;'),
('Alamat.Alamat.*', 1, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.*', 1, NULL, NULL, 'N;'),
('Alamat.AlamatKota.*', 1, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.*', 1, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.*', 1, NULL, NULL, 'N;'),
('Alamat.Default.*', 1, NULL, NULL, 'N;'),
('Anggota.Anggota.*', 1, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.*', 1, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.*', 1, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.*', 1, NULL, NULL, 'N;'),
('Anggota.AnggotaType.*', 1, NULL, NULL, 'N;'),
('Anggota.Default.*', 1, NULL, NULL, 'N;'),
('Flowchart.View', 0, NULL, NULL, 'N;'),
('Flowchart.Create', 0, NULL, NULL, 'N;'),
('Flowchart.Update', 0, NULL, NULL, 'N;'),
('Flowchart.Delete', 0, NULL, NULL, 'N;'),
('Flowchart.Index', 0, NULL, NULL, 'N;'),
('Flowchart.Admin', 0, NULL, NULL, 'N;'),
('Site.Index', 0, NULL, NULL, 'N;'),
('Site.BpmEditor', 0, NULL, NULL, 'N;'),
('Site.FlowchartEditor', 0, NULL, NULL, 'N;'),
('Site.Error', 0, NULL, NULL, 'N;'),
('Site.Contact', 0, NULL, NULL, 'N;'),
('Site.Login', 0, NULL, NULL, 'N;'),
('Site.Logout', 0, NULL, NULL, 'N;'),
('Alamat.Alamat.View', 0, NULL, NULL, 'N;'),
('Alamat.Alamat.Create', 0, NULL, NULL, 'N;'),
('Alamat.Alamat.Update', 0, NULL, NULL, 'N;'),
('Alamat.Alamat.Delete', 0, NULL, NULL, 'N;'),
('Alamat.Alamat.Index', 0, NULL, NULL, 'N;'),
('Alamat.Alamat.Admin', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.View', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.Create', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.Update', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.Delete', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.Index', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKodepos.Admin', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKota.View', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKota.Create', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKota.Update', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKota.Delete', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKota.Index', 0, NULL, NULL, 'N;'),
('Alamat.AlamatKota.Admin', 0, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.View', 0, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.Create', 0, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.Update', 0, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.Delete', 0, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.Index', 0, NULL, NULL, 'N;'),
('Alamat.AlamatNegara.Admin', 0, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.View', 0, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.Create', 0, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.Update', 0, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.Delete', 0, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.Index', 0, NULL, NULL, 'N;'),
('Alamat.AlamatPropinsi.Admin', 0, NULL, NULL, 'N;'),
('Alamat.Default.Index', 0, NULL, NULL, 'N;'),
('Anggota.Anggota.View', 0, NULL, NULL, 'N;'),
('Anggota.Anggota.Create', 0, NULL, NULL, 'N;'),
('Anggota.Anggota.Update', 0, NULL, NULL, 'N;'),
('Anggota.Anggota.Delete', 0, NULL, NULL, 'N;'),
('Anggota.Anggota.Index', 0, NULL, NULL, 'N;'),
('Anggota.Anggota.Admin', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.View', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.Create', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.Update', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.Delete', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.Index', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaLevel.Admin', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.View', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.Create', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.Update', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.Delete', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.Index', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaRelasi.Admin', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.View', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.Create', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.Update', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.Delete', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.Index', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaStatus.Admin', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaType.View', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaType.Create', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaType.Update', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaType.Delete', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaType.Index', 0, NULL, NULL, 'N;'),
('Anggota.AnggotaType.Admin', 0, NULL, NULL, 'N;'),
('Anggota.Default.Index', 0, NULL, NULL, 'N;'),
('PerusahaanStatus.*', 1, NULL, NULL, 'N;'),
('Perusahaan.Default.*', 1, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.*', 1, NULL, NULL, 'N;'),
('PerusahaanStatus.View', 0, NULL, NULL, 'N;'),
('PerusahaanStatus.Create', 0, NULL, NULL, 'N;'),
('PerusahaanStatus.Update', 0, NULL, NULL, 'N;'),
('PerusahaanStatus.Delete', 0, NULL, NULL, 'N;'),
('PerusahaanStatus.Index', 0, NULL, NULL, 'N;'),
('PerusahaanStatus.Admin', 0, NULL, NULL, 'N;'),
('Perusahaan.Default.Index', 0, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.View', 0, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.Create', 0, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.Update', 0, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.Delete', 0, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.Index', 0, NULL, NULL, 'N;'),
('Perusahaan.PerusahaanStatus.Admin', 0, NULL, NULL, 'N;');

-- --------------------------------------------------------

--
-- Table structure for table `authitemchild`
--

CREATE TABLE IF NOT EXISTS `authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authitemchild`
--


-- --------------------------------------------------------

--
-- Table structure for table `bpm`
--

CREATE TABLE IF NOT EXISTS `bpm` (
  `bpm_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_alias` varchar(32) NOT NULL,
  `bpm_nama` varchar(32) NOT NULL,
  `bpm_judul` varchar(32) NOT NULL,
  `bpm_deskripsi` varchar(255) NOT NULL,
  `bpm_tanggal` datetime NOT NULL COMMENT 'Tanggal pembuatan',
  `proyek_versi_id` int(9) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `bpm_status_id` int(2) NOT NULL,
  PRIMARY KEY (`bpm_id`),
  KEY `fk_bpm_proyek_versi1_idx` (`proyek_versi_id`),
  KEY `fk_bpm_anggota1_idx` (`anggota_id`),
  KEY `fk_bpm_bpm_status1_idx` (`bpm_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bpm`
--

INSERT INTO `bpm` (`bpm_id`, `bpm_alias`, `bpm_nama`, `bpm_judul`, `bpm_deskripsi`, `bpm_tanggal`, `proyek_versi_id`, `anggota_id`, `bpm_status_id`) VALUES
(1, 'senimandigital', 'senimandigital', 'Senimandigital', '<p>BPM Senimandigital</p>', '2011-09-20 10:15:05', 0, 0, 0),
(2, 'katingan', 'katingan', 'Katingan', 'Server sekolah kabupaten Katingan', '2011-09-20 10:05:02', 0, 0, 0),
(3, 'malldigital', 'malldigital', 'Mall Digital', 'BPM Mall Digital', '2011-09-20 10:15:25', 0, 0, 0),
(4, 'sman1kotabesi', 'sman1kotabesi', 'SMA Negeri 1 Kota Besi', 'BPM SMA Negeri 1 Kota Besi', '2011-09-20 10:16:04', 0, 0, 0),
(5, 'apotek', 'apotek', 'Apotek', 'BPM Apotek', '2011-09-20 10:16:58', 0, 0, 0),
(6, 'pramuka', 'pramuka`', 'Pramuka', 'BPM Pramuka', '2011-09-20 10:17:34', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_diagram`
--

CREATE TABLE IF NOT EXISTS `bpm_diagram` (
  `bpm_diagram_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_diagram_alias` varchar(32) NOT NULL,
  `bpm_diagram_nama` varchar(32) NOT NULL,
  `bpm_diagram_judul` varchar(21) NOT NULL,
  `bpm_diagram_deskripsi` varchar(255) NOT NULL,
  `bpm_diagram_keterangan_sebelum` text NOT NULL,
  `bpm_diagram_keterangan_sesudah` text NOT NULL,
  `bpm_diagram_tanggal` datetime NOT NULL,
  `bpm_diagram_urutan` smallint(5) NOT NULL,
  `bpm_id` int(9) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`bpm_diagram_id`),
  KEY `fk_bpm_diagram_bpm1_idx` (`bpm_id`),
  KEY `fk_bpm_diagram_anggota1_idx` (`anggota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bpm_diagram`
--

INSERT INTO `bpm_diagram` (`bpm_diagram_id`, `bpm_diagram_alias`, `bpm_diagram_nama`, `bpm_diagram_judul`, `bpm_diagram_deskripsi`, `bpm_diagram_keterangan_sebelum`, `bpm_diagram_keterangan_sesudah`, `bpm_diagram_tanggal`, `bpm_diagram_urutan`, `bpm_id`, `anggota_id`) VALUES
(1, 'anggota', 'anggota', 'Anggota', '<p>Diagram anggota server sekolah</p>', '<p>Sebagia mana gambar berikut</p>', '<p>sebagimana gambar diatas</p>', '2011-09-20 10:05:55', 1, 0, 0),
(2, 'pendaftaransekolah', 'pendaftaransekolah', 'Pendaftaran Sekolah', '<p>Diagram pendaftaran sekolah server Katingan</p>', '<p>Seperti pada gambar dibawah</p>', '<p>Seperti pada gambar diatas</p>', '2011-09-20 10:06:56', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_diagram_ke_proses`
--

CREATE TABLE IF NOT EXISTS `bpm_diagram_ke_proses` (
  `bpm_diagram_ke_proses_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_diagram_id` int(9) NOT NULL,
  `bpm_proses_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_diagram_ke_proses_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bpm_diagram_ke_proses`
--

INSERT INTO `bpm_diagram_ke_proses` (`bpm_diagram_ke_proses_id`, `bpm_diagram_id`, `bpm_proses_id`) VALUES
(6, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_divisi`
--

CREATE TABLE IF NOT EXISTS `bpm_divisi` (
  `bpm_divisi_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_divisi_upline` int(9) NOT NULL DEFAULT '0',
  `bpm_divisi_alias` varchar(32) NOT NULL,
  `bpm_divisi_nama` varchar(32) NOT NULL,
  `bpm_divisi_judul` varchar(32) NOT NULL,
  `bpm_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_divisi_id`),
  KEY `fk_bpm_divisi_bpm1_idx` (`bpm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Pengelompokan ditingkat server' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bpm_divisi`
--

INSERT INTO `bpm_divisi` (`bpm_divisi_id`, `bpm_divisi_upline`, `bpm_divisi_alias`, `bpm_divisi_nama`, `bpm_divisi_judul`, `bpm_id`) VALUES
(1, 0, 'server', 'server', 'Server', 0),
(2, 1, 'profil', 'profil', 'Profil', 0),
(3, 1, 'perusahaan', 'perusahaan', 'Perusahaan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_divisi_ke_diagram`
--

CREATE TABLE IF NOT EXISTS `bpm_divisi_ke_diagram` (
  `bpm_divisi_ke_diagram_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `bpm_divisi_ke_diagram_urutan` tinyint(3) NOT NULL,
  `bpm_divisi_id` int(9) NOT NULL,
  `bpm_diagram_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_divisi_ke_diagram_id`),
  KEY `fk_bpm_divisi_ke_diagram_bpm_divisi1_idx` (`bpm_divisi_id`),
  KEY `fk_bpm_divisi_ke_diagram_bpm_diagram1_idx` (`bpm_diagram_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `bpm_divisi_ke_diagram`
--

INSERT INTO `bpm_divisi_ke_diagram` (`bpm_divisi_ke_diagram_id`, `bpm_divisi_ke_diagram_urutan`, `bpm_divisi_id`, `bpm_diagram_id`) VALUES
(2, 2, 0, 0),
(3, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_entitas`
--

CREATE TABLE IF NOT EXISTS `bpm_entitas` (
  `bpm_entitas_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_entitas_upline` int(9) NOT NULL DEFAULT '0',
  `bpm_entitas_nama` varchar(32) NOT NULL,
  `bpm_entitas_judul` varchar(32) NOT NULL,
  `bpm_id` int(9) NOT NULL,
  `bpm_entitas_status_id` int(2) NOT NULL,
  PRIMARY KEY (`bpm_entitas_id`),
  KEY `fk_bpm_entitas_bpm1_idx` (`bpm_id`),
  KEY `fk_bpm_entitas_bpm_entitas_status1_idx` (`bpm_entitas_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Pelaku' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bpm_entitas`
--

INSERT INTO `bpm_entitas` (`bpm_entitas_id`, `bpm_entitas_upline`, `bpm_entitas_nama`, `bpm_entitas_judul`, `bpm_id`, `bpm_entitas_status_id`) VALUES
(1, 0, 'publik', 'Publik', 0, 0),
(2, 0, 'anggota', 'Anggota', 0, 0),
(3, 0, 'staff', 'Staff', 0, 0),
(4, 0, 'manajer', 'Manajer', 0, 0),
(5, 2, 'pemantau', 'Pemantau', 0, 0),
(6, 2, 'temandariteman', 'Teman dari teman', 0, 0),
(7, 2, 'teman', 'Teman', 0, 0),
(8, 2, 'orangtua', 'Orang Tua', 0, 0),
(9, 2, 'pemilik', 'Pemilik', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_entitas_ke_diagram`
--

CREATE TABLE IF NOT EXISTS `bpm_entitas_ke_diagram` (
  `bpm_entitas_ke_diagram_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_entitas_ke_diagram_urutan` tinyint(3) NOT NULL,
  `bpm_entitas_id` int(9) NOT NULL,
  `bpm_diagram_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_entitas_ke_diagram_id`),
  KEY `fk_bpm_entitas_ke_diagram_bpm_entitas1_idx` (`bpm_entitas_id`),
  KEY `fk_bpm_entitas_ke_diagram_bpm_diagram1_idx` (`bpm_diagram_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bpm_entitas_ke_diagram`
--

INSERT INTO `bpm_entitas_ke_diagram` (`bpm_entitas_ke_diagram_id`, `bpm_entitas_ke_diagram_urutan`, `bpm_entitas_id`, `bpm_diagram_id`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(3, 3, 0, 0),
(4, 4, 0, 0),
(5, 5, 0, 0),
(6, 6, 0, 0),
(7, 7, 0, 0),
(8, 8, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_entitas_ke_divisi`
--

CREATE TABLE IF NOT EXISTS `bpm_entitas_ke_divisi` (
  `bpm_entitas_ke_divisi_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_entitas_ke_divisi_nama` varchar(32) NOT NULL,
  `bpm_entitas_ke_divisi_judul` varchar(32) NOT NULL,
  `bpm_entitas_id` int(9) NOT NULL,
  `bpm_divisi_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_entitas_ke_divisi_id`),
  KEY `fk_bpm_entitas_ke_divisi_bpm_entitas1_idx` (`bpm_entitas_id`),
  KEY `fk_bpm_entitas_ke_divisi_bpm_divisi1_idx` (`bpm_divisi_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `bpm_entitas_ke_divisi`
--

INSERT INTO `bpm_entitas_ke_divisi` (`bpm_entitas_ke_divisi_id`, `bpm_entitas_ke_divisi_nama`, `bpm_entitas_ke_divisi_judul`, `bpm_entitas_id`, `bpm_divisi_id`) VALUES
(2, 'anggota', 'Anggota', 0, 0),
(3, 'staff', 'Staff', 0, 0),
(5, 'pemantau', 'Pemantau', 0, 0),
(6, 'temandarite,am', 'Teman dari teman', 0, 0),
(7, 'teman', 'Teman', 0, 0),
(8, 'orangtua', 'Orang Tua', 0, 0),
(9, 'pemilik', 'Pemilik', 0, 0),
(10, 'Anggota', 'Anggota', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_entitas_ke_entitas`
--

CREATE TABLE IF NOT EXISTS `bpm_entitas_ke_entitas` (
  `bpm_entitas_ke_entitas_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_entitas_ke_entitas_nama` varchar(32) NOT NULL,
  `bpm_entitas_ke_entitas_judul` varchar(32) NOT NULL,
  `bpm_entitas_ke_entitas_objek_satu` int(9) NOT NULL COMMENT 'relasi ke bpm_entitas_id',
  `bpm_entitas_ke_entitas_objek_satu_sifat` enum('1','M') NOT NULL,
  `bpm_entitas_ke_entitas_objek_dua` int(9) NOT NULL COMMENT 'relasi ke bpm_entitas_id',
  `bpm_entitas_ke_entitas_objek_dua_sifat` enum('1','M') NOT NULL,
  PRIMARY KEY (`bpm_entitas_ke_entitas_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Garis penghubung antar entitas' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bpm_entitas_ke_entitas`
--


-- --------------------------------------------------------

--
-- Table structure for table `bpm_entitas_status`
--

CREATE TABLE IF NOT EXISTS `bpm_entitas_status` (
  `bpm_entitas_status_id` int(2) NOT NULL,
  `bpm_entitas_status_nama` varchar(20) NOT NULL,
  PRIMARY KEY (`bpm_entitas_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bpm_entitas_status`
--

INSERT INTO `bpm_entitas_status` (`bpm_entitas_status_id`, `bpm_entitas_status_nama`) VALUES
(0, 'TIDAK AKTIF'),
(1, 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `bpm_proses`
--

CREATE TABLE IF NOT EXISTS `bpm_proses` (
  `bpm_proses_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_proses_upline` int(9) NOT NULL,
  `bpm_proses_alias` varchar(32) NOT NULL,
  `bpm_proses_nama` varchar(32) NOT NULL,
  `bpm_proses_judul` varchar(32) NOT NULL,
  `framework_fungsi_id` smallint(5) NOT NULL COMMENT 'bpm_proses_type',
  `bpm_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_proses_id`),
  KEY `fk_bpm_proses_bpm1_idx` (`bpm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bpm_proses`
--

INSERT INTO `bpm_proses` (`bpm_proses_id`, `bpm_proses_upline`, `bpm_proses_alias`, `bpm_proses_nama`, `bpm_proses_judul`, `framework_fungsi_id`, `bpm_id`) VALUES
(1, 0, 'registrasi', 'registrasi', 'Registrasi', 227, 0),
(2, 1, 'lupapassword', 'lupapassword', 'Lupa\\nPassword', 227, 0),
(3, 0, 'login', 'login', 'Login', 227, 0),
(4, 1, 'editprofile', 'editprofil', 'Edit\\nProfil', 227, 0),
(5, 4, 'tambahalamat', 'tambahalamat', 'Tambah\\nAlamat', 227, 0),
(6, 1, 'tambahteman', 'tambahteman', 'Tambah\\nTeman', 227, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_proses_ke_entitas`
--

CREATE TABLE IF NOT EXISTS `bpm_proses_ke_entitas` (
  `bpm_proses_ke_entitas_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_proses_ke_entitas_urutan` tinyint(3) NOT NULL,
  `bpm_proses_ke_entitas_posisi_atas` smallint(5) NOT NULL,
  `bpm_proses_ke_entitas_posisi_kiri` smallint(5) NOT NULL DEFAULT '15',
  `bpm_entitas_id` int(9) NOT NULL,
  `bpm_proses_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_proses_ke_entitas_id`),
  KEY `fk_bpm_proses_ke_entitas_bpm_entitas1_idx` (`bpm_entitas_id`),
  KEY `fk_bpm_proses_ke_entitas_bpm_proses1_idx` (`bpm_proses_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `bpm_proses_ke_entitas`
--

INSERT INTO `bpm_proses_ke_entitas` (`bpm_proses_ke_entitas_id`, `bpm_proses_ke_entitas_urutan`, `bpm_proses_ke_entitas_posisi_atas`, `bpm_proses_ke_entitas_posisi_kiri`, `bpm_entitas_id`, `bpm_proses_id`) VALUES
(4, 1, 35, 15, 0, 0),
(5, 2, 100, 15, 0, 0),
(6, 3, 165, 15, 0, 0),
(7, 3, 0, 15, 0, 0),
(8, 1, 0, 15, 0, 0),
(9, 2, 0, 15, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_proses_ke_proses`
--

CREATE TABLE IF NOT EXISTS `bpm_proses_ke_proses` (
  `bpm_proses_ke_proses_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `bpm_proses_ke_entitas_awal` smallint(5) NOT NULL,
  `bpm_proses_ke_entitas_akhir` smallint(5) NOT NULL,
  `bpm_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_proses_ke_proses_id`),
  KEY `fk_bpm_proses_ke_proses_bpm1_idx` (`bpm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Garis penghubung antar proses' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bpm_proses_ke_proses`
--

INSERT INTO `bpm_proses_ke_proses` (`bpm_proses_ke_proses_id`, `bpm_proses_ke_entitas_awal`, `bpm_proses_ke_entitas_akhir`, `bpm_id`) VALUES
(1, 1, 2, 0),
(2, 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_proses_ke_resource_data`
--

CREATE TABLE IF NOT EXISTS `bpm_proses_ke_resource_data` (
  `bpm_proses_ke_resource_data_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_proses_ke_resource_data_proses` enum('c','r','u','d') NOT NULL,
  `bpm_proses_ke_resource_data_urutan` tinyint(3) NOT NULL,
  `bpm_proses_id` int(9) NOT NULL,
  `bpm_resource_data_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_proses_ke_resource_data_id`),
  KEY `fk_bpm_proses_ke_resource_data_bpm_proses1_idx` (`bpm_proses_id`),
  KEY `fk_bpm_proses_ke_resource_data_bpm_resource_data1_idx` (`bpm_resource_data_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bpm_proses_ke_resource_data`
--

INSERT INTO `bpm_proses_ke_resource_data` (`bpm_proses_ke_resource_data_id`, `bpm_proses_ke_resource_data_proses`, `bpm_proses_ke_resource_data_urutan`, `bpm_proses_id`, `bpm_resource_data_id`) VALUES
(5, 'u', 3, 0, 0),
(6, 'u', 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_resource`
--

CREATE TABLE IF NOT EXISTS `bpm_resource` (
  `bpm_resource_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_resource_alias` varchar(32) NOT NULL,
  `bpm_resource_nama` varchar(32) NOT NULL,
  `bpm_resource_judul` varchar(32) NOT NULL,
  `bpm_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_resource_id`),
  KEY `fk_bpm_resource_bpm1_idx` (`bpm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `bpm_resource`
--

INSERT INTO `bpm_resource` (`bpm_resource_id`, `bpm_resource_alias`, `bpm_resource_nama`, `bpm_resource_judul`, `bpm_id`) VALUES
(1, 'eboy', 'eboy', 'eboy', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_resource_data`
--

CREATE TABLE IF NOT EXISTS `bpm_resource_data` (
  `bpm_resource_data_id` int(9) NOT NULL AUTO_INCREMENT,
  `bpm_resource_data_nama` varchar(32) NOT NULL,
  `bpm_resource_data_judul` varchar(32) NOT NULL,
  `bpm_resource_data_urutan` smallint(5) NOT NULL,
  `framework_fungsi_id` smallint(5) NOT NULL COMMENT 'sql_data_type',
  `bpm_resource_id` int(9) NOT NULL,
  PRIMARY KEY (`bpm_resource_data_id`),
  KEY `fk_bpm_resource_data_bpm_resource1_idx` (`bpm_resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `bpm_resource_data`
--

INSERT INTO `bpm_resource_data` (`bpm_resource_data_id`, `bpm_resource_data_nama`, `bpm_resource_data_judul`, `bpm_resource_data_urutan`, `framework_fungsi_id`, `bpm_resource_id`) VALUES
(1, 'eboy', 'eboy', 2, 168, 0),
(2, 'prana', 'prana', 1, 168, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bpm_status`
--

CREATE TABLE IF NOT EXISTS `bpm_status` (
  `bpm_status_id` int(2) NOT NULL,
  `bpm_status_nama` varchar(20) NOT NULL,
  PRIMARY KEY (`bpm_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bpm_status`
--

INSERT INTO `bpm_status` (`bpm_status_id`, `bpm_status_nama`) VALUES
(0, 'Privasi'),
(1, 'Opensource');

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE IF NOT EXISTS `developer` (
  `developer_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `developer_alias` char(25) NOT NULL,
  `developer_nama` char(25) NOT NULL,
  `developer_judul` char(25) NOT NULL,
  `developer_deskripsi` varchar(255) NOT NULL,
  `developer_tanggal` datetime NOT NULL,
  `developer_tanggal_berdiri` date NOT NULL,
  `developer_status_id` tinyint(1) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `developer_type_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`developer_id`),
  KEY `fk_developer_developer_status1_idx` (`developer_status_id`),
  KEY `fk_developer_anggota1_idx` (`anggota_id`),
  KEY `fk_developer_developer_type1_idx` (`developer_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`developer_id`, `developer_alias`, `developer_nama`, `developer_judul`, `developer_deskripsi`, `developer_tanggal`, `developer_tanggal_berdiri`, `developer_status_id`, `anggota_id`, `developer_type_id`) VALUES
(1, 'senimandigital', 'senimandigital', 'Senimandigital', 'Developer senimandigital generasi kedua', '2011-01-01 00:00:00', '2011-11-01', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_ke_perusahaan_cabang`
--

CREATE TABLE IF NOT EXISTS `developer_ke_perusahaan_cabang` (
  `developer_ke_perusahaan_cabang_id` int(9) NOT NULL AUTO_INCREMENT,
  `developer_ke_perusahaan_cabang_deskripsi` varchar(255) NOT NULL,
  `developer_ke_perusahaan_cabang_abstrak` text NOT NULL,
  `developer_ke_perusahaan_cabang_tanggal` datetime NOT NULL,
  `developer_id` smallint(5) unsigned NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `perusahaan_cabang_id` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`developer_ke_perusahaan_cabang_id`),
  KEY `fk_developer_ke_perusahaan_cabang_developer1_idx` (`developer_id`),
  KEY `fk_developer_ke_perusahaan_cabang_anggota1_idx` (`anggota_id`),
  KEY `fk_developer_ke_perusahaan_cabang_perusahaan_cabang1_idx` (`perusahaan_cabang_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer_ke_perusahaan_cabang`
--

INSERT INTO `developer_ke_perusahaan_cabang` (`developer_ke_perusahaan_cabang_id`, `developer_ke_perusahaan_cabang_deskripsi`, `developer_ke_perusahaan_cabang_abstrak`, `developer_ke_perusahaan_cabang_tanggal`, `developer_id`, `anggota_id`, `perusahaan_cabang_id`) VALUES
(1, 'Senimandigital cabang yogyakarta merupakan kantor pusat.', 'Abstrak oleh pendiri', '2011-01-01 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_manual`
--

CREATE TABLE IF NOT EXISTS `developer_manual` (
  `developer_manual_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `developer_manual_alias` char(255) NOT NULL,
  `developer_manual_judul` char(255) NOT NULL,
  `developer_manual_konten` text NOT NULL,
  `developer_manual_tanggal` datetime NOT NULL,
  `proyek_versi_id` int(9) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `developer_manual_kategori_id` smallint(5) NOT NULL,
  `developer_manual_status_id` int(2) NOT NULL,
  PRIMARY KEY (`developer_manual_id`),
  KEY `fk_developer_manual_proyek_versi1_idx` (`proyek_versi_id`),
  KEY `fk_developer_manual_anggota1_idx` (`anggota_id`),
  KEY `fk_developer_manual_developer_manual_kategori1_idx` (`developer_manual_kategori_id`),
  KEY `fk_developer_manual_developer_manual_status1_idx` (`developer_manual_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer_manual`
--

INSERT INTO `developer_manual` (`developer_manual_id`, `developer_manual_alias`, `developer_manual_judul`, `developer_manual_konten`, `developer_manual_tanggal`, `proyek_versi_id`, `anggota_id`, `developer_manual_kategori_id`, `developer_manual_status_id`) VALUES
(1, 'manual alias manual', 'manual judul', 'manual konten', '2011-12-11 18:16:20', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_manual_kategori`
--

CREATE TABLE IF NOT EXISTS `developer_manual_kategori` (
  `developer_manual_kategori_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `developer_manual_kategori_alias` char(255) NOT NULL,
  `developer_manual_kategori_judul` char(255) NOT NULL,
  `developer_manual_kategori_deskripsi` char(255) NOT NULL,
  `developer_manual_kategori_urutan` tinyint(3) NOT NULL,
  `developer_manual_kategori_status_id` tinyint(1) NOT NULL,
  `developer_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`developer_manual_kategori_id`),
  KEY `fk_developer_manual_kategori_developer_manual_kategori_stat_idx` (`developer_manual_kategori_status_id`),
  KEY `fk_developer_manual_kategori_developer1_idx` (`developer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer_manual_kategori`
--

INSERT INTO `developer_manual_kategori` (`developer_manual_kategori_id`, `developer_manual_kategori_alias`, `developer_manual_kategori_judul`, `developer_manual_kategori_deskripsi`, `developer_manual_kategori_urutan`, `developer_manual_kategori_status_id`, `developer_id`) VALUES
(1, 'kategori alias', 'kategori judul', '<p>kategori deskripsi</p>', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_manual_kategori_status`
--

CREATE TABLE IF NOT EXISTS `developer_manual_kategori_status` (
  `developer_manual_kategori_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `developer_manual_kategori_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`developer_manual_kategori_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `developer_manual_kategori_status`
--

INSERT INTO `developer_manual_kategori_status` (`developer_manual_kategori_status_id`, `developer_manual_kategori_status_nama`) VALUES
(1, 'Aktif'),
(3, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `developer_manual_ke_tag`
--

CREATE TABLE IF NOT EXISTS `developer_manual_ke_tag` (
  `developer_manual_ke_tag_id` smallint(5) NOT NULL,
  `developer_manual_id` smallint(5) NOT NULL,
  `developer_manual_tag_id` smallint(5) NOT NULL,
  KEY `fk_developer_manual_ke_tag_developer_manual1_idx` (`developer_manual_id`),
  KEY `fk_developer_manual_ke_tag_developer_manual_tag1_idx` (`developer_manual_tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `developer_manual_ke_tag`
--

INSERT INTO `developer_manual_ke_tag` (`developer_manual_ke_tag_id`, `developer_manual_id`, `developer_manual_tag_id`) VALUES
(0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_manual_status`
--

CREATE TABLE IF NOT EXISTS `developer_manual_status` (
  `developer_manual_status_id` int(2) NOT NULL AUTO_INCREMENT,
  `developer_manual_status_nama` varchar(20) NOT NULL,
  PRIMARY KEY (`developer_manual_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `developer_manual_status`
--

INSERT INTO `developer_manual_status` (`developer_manual_status_id`, `developer_manual_status_nama`) VALUES
(1, 'Aktif'),
(3, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `developer_manual_tag`
--

CREATE TABLE IF NOT EXISTS `developer_manual_tag` (
  `developer_manual_tag_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `developer_manual_tag_nilai` varchar(64) NOT NULL,
  `developer_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`developer_manual_tag_id`),
  KEY `fk_developer_manual_tag_developer1_idx` (`developer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `developer_manual_tag`
--

INSERT INTO `developer_manual_tag` (`developer_manual_tag_id`, `developer_manual_tag_nilai`, `developer_id`) VALUES
(1, 'Test', 0),
(2, 'Test2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah`
--

CREATE TABLE IF NOT EXISTS `developer_masalah` (
  `developer_masalah_id` int(11) NOT NULL AUTO_INCREMENT,
  `developer_masalah_konten` text NOT NULL,
  `developer_masalah_tanggal` datetime NOT NULL,
  `proyek_versi_id` int(9) NOT NULL,
  `developer_id` smallint(5) unsigned NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `developer_masalah_type_id` tinyint(3) NOT NULL,
  `developer_masalah_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`developer_masalah_id`),
  KEY `fk_developer_masalah_proyek_versi1_idx` (`proyek_versi_id`),
  KEY `fk_developer_masalah_developer1_idx` (`developer_id`),
  KEY `fk_developer_masalah_anggota1_idx` (`anggota_id`),
  KEY `fk_developer_masalah_developer_masalah_type1_idx` (`developer_masalah_type_id`),
  KEY `fk_developer_masalah_developer_masalah_status1_idx` (`developer_masalah_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer_masalah`
--

INSERT INTO `developer_masalah` (`developer_masalah_id`, `developer_masalah_konten`, `developer_masalah_tanggal`, `proyek_versi_id`, `developer_id`, `anggota_id`, `developer_masalah_type_id`, `developer_masalah_status_id`) VALUES
(1, 'konten masalah 1', '2011-12-19 11:12:28', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_ke_tag`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_ke_tag` (
  `developer_masalah_ke_tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `developer_masalah_id` int(11) NOT NULL,
  `developer_masalah_tag_id` smallint(5) NOT NULL,
  PRIMARY KEY (`developer_masalah_ke_tag_id`),
  KEY `fk_developer_masalah_ke_tag_developer_masalah1_idx` (`developer_masalah_id`),
  KEY `fk_developer_masalah_ke_tag_developer_masalah_tag1_idx` (`developer_masalah_tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `developer_masalah_ke_tag`
--

INSERT INTO `developer_masalah_ke_tag` (`developer_masalah_ke_tag_id`, `developer_masalah_id`, `developer_masalah_tag_id`) VALUES
(16, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_solusi`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_solusi` (
  `developer_masalah_solusi_id` int(11) NOT NULL AUTO_INCREMENT,
  `developer_masalah_solusi_konten` text NOT NULL,
  `developer_masalah_solusi_tanggal` datetime NOT NULL,
  `developer_masalah_id` int(11) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `developer_masalah_solusi_status_id` int(2) NOT NULL,
  `developer_masalah_solusi_type_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`developer_masalah_solusi_id`),
  KEY `fk_developer_masalah_solusi_developer_masalah1_idx` (`developer_masalah_id`),
  KEY `fk_developer_masalah_solusi_anggota1_idx` (`anggota_id`),
  KEY `fk_developer_masalah_solusi_developer_masalah_solusi_status_idx` (`developer_masalah_solusi_status_id`),
  KEY `fk_developer_masalah_solusi_developer_masalah_solusi_type1_idx` (`developer_masalah_solusi_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer_masalah_solusi`
--

INSERT INTO `developer_masalah_solusi` (`developer_masalah_solusi_id`, `developer_masalah_solusi_konten`, `developer_masalah_solusi_tanggal`, `developer_masalah_id`, `anggota_id`, `developer_masalah_solusi_status_id`, `developer_masalah_solusi_type_id`) VALUES
(1, 'solusi kontent', '2011-12-19 12:25:19', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_solusi_status`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_solusi_status` (
  `developer_masalah_solusi_status_id` int(2) NOT NULL AUTO_INCREMENT,
  `developer_masalah_solusi_status_nama` varchar(20) NOT NULL,
  PRIMARY KEY (`developer_masalah_solusi_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `developer_masalah_solusi_status`
--

INSERT INTO `developer_masalah_solusi_status` (`developer_masalah_solusi_status_id`, `developer_masalah_solusi_status_nama`) VALUES
(1, 'Aktif'),
(4, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_solusi_type`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_solusi_type` (
  `developer_masalah_solusi_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `developer_masalah_solusi_type_nama` varchar(255) NOT NULL,
  PRIMARY KEY (`developer_masalah_solusi_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `developer_masalah_solusi_type`
--

INSERT INTO `developer_masalah_solusi_type` (`developer_masalah_solusi_type_id`, `developer_masalah_solusi_type_nama`) VALUES
(1, 'type 1'),
(2, 'type 2');

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_status`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_status` (
  `developer_masalah_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `developer_masalah_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`developer_masalah_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `developer_masalah_status`
--

INSERT INTO `developer_masalah_status` (`developer_masalah_status_id`, `developer_masalah_status_nama`) VALUES
(1, 'Teratasi'),
(2, 'Belum Teratasi');

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_tag`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_tag` (
  `developer_masalah_tag_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `developer_masalah_tag_nilai` varchar(32) NOT NULL,
  `developer_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`developer_masalah_tag_id`),
  KEY `fk_developer_masalah_tag_developer1_idx` (`developer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `developer_masalah_tag`
--

INSERT INTO `developer_masalah_tag` (`developer_masalah_tag_id`, `developer_masalah_tag_nilai`, `developer_id`) VALUES
(1, 'tes masalah tag 1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_masalah_type`
--

CREATE TABLE IF NOT EXISTS `developer_masalah_type` (
  `developer_masalah_type_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `developer_masalah_type_nama` varchar(32) NOT NULL,
  `developer_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`developer_masalah_type_id`),
  KEY `fk_developer_masalah_type_developer1_idx` (`developer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `developer_masalah_type`
--

INSERT INTO `developer_masalah_type` (`developer_masalah_type_id`, `developer_masalah_type_nama`, `developer_id`) VALUES
(1, 'keamanan', 0),
(2, 'validasi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer_status`
--

CREATE TABLE IF NOT EXISTS `developer_status` (
  `developer_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `developer_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`developer_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `developer_status`
--

INSERT INTO `developer_status` (`developer_status_id`, `developer_status_nama`) VALUES
(1, 'Aktif'),
(2, 'Blokir'),
(3, 'Bubar'),
(4, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `developer_type`
--

CREATE TABLE IF NOT EXISTS `developer_type` (
  `developer_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `developer_type_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`developer_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `developer_type`
--

INSERT INTO `developer_type` (`developer_type_id`, `developer_type_nama`) VALUES
(1, 'Independen'),
(2, 'Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `erd`
--

CREATE TABLE IF NOT EXISTS `erd` (
  `erd_id` int(9) NOT NULL AUTO_INCREMENT,
  `erd_alias` varchar(32) NOT NULL,
  `erd_nama` varchar(32) NOT NULL,
  `erd_judul` varchar(32) NOT NULL,
  `erd_deskripsi` varchar(255) NOT NULL,
  `erd_tanggal` datetime NOT NULL,
  `proyek_versi_id` int(9) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `erd_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`erd_id`),
  KEY `fk_erd_proyek_versi1_idx` (`proyek_versi_id`),
  KEY `fk_erd_anggota1_idx` (`anggota_id`),
  KEY `fk_erd_erd_status1_idx` (`erd_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `erd`
--

INSERT INTO `erd` (`erd_id`, `erd_alias`, `erd_nama`, `erd_judul`, `erd_deskripsi`, `erd_tanggal`, `proyek_versi_id`, `anggota_id`, `erd_status_id`) VALUES
(1, 'katingan', 'katingan', 'Katingan', 'ERD Katingan', '2011-09-20 10:19:43', 0, 0, 0),
(2, 'senimandigital', 'senimandigital', 'Senimandigital', 'ERD Senimandigital', '2011-09-20 10:38:23', 0, 0, 0),
(3, 'malldigital', 'malldigital', 'Malldigital', 'Malldigital', '2011-09-20 10:38:57', 0, 0, 0),
(4, 'sman1kotabesi', 'sman1kotabesi', 'SMAN 1 KOTA BESI', 'SMAN 1 KOTA BESI', '2011-09-20 10:39:15', 0, 0, 0),
(5, 'apotek', 'apotek', 'Apotek', 'apotek', '2011-09-20 10:41:24', 0, 0, 0),
(6, 'pramuka', 'pramuka', 'Pramuka', 'pramuka', '2011-09-20 10:41:42', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `erd_diagram`
--

CREATE TABLE IF NOT EXISTS `erd_diagram` (
  `erd_diagram_id` int(9) NOT NULL AUTO_INCREMENT,
  `erd_diagram_alias` varchar(64) NOT NULL,
  `erd_diagram_nama` varchar(64) NOT NULL,
  `erd_diagram_judul` varchar(64) NOT NULL,
  `erd_diagram_deskrispsi` varchar(255) NOT NULL,
  `erd_diagram_keterangan_sebelum` text NOT NULL,
  `erd_diagram_keterangan_sesudah` text NOT NULL,
  `erd_id` int(9) NOT NULL,
  PRIMARY KEY (`erd_diagram_id`),
  KEY `fk_erd_diagram_erd1_idx` (`erd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `erd_diagram`
--

INSERT INTO `erd_diagram` (`erd_diagram_id`, `erd_diagram_alias`, `erd_diagram_nama`, `erd_diagram_judul`, `erd_diagram_deskrispsi`, `erd_diagram_keterangan_sebelum`, `erd_diagram_keterangan_sesudah`, `erd_id`) VALUES
(1, 'anggota', 'anggota', 'Anggota', '<p>Erd anggota pada website katingan</p>', '<p>Pada website katingan terdapat entitas anggota, anggota memiliki relasi dengan entitas-entitas lain dimana hubungan tersebut dapat dilihat melalui diagram relasi entitas berikut.</p>', '<p>Dari diagram diatas dapat diketahui :</p>\r\n<ul>\r\n<li>[Anggota] dapat mengisi daftar [Alamat].</li>\r\n<li>[Anggota] memilih satu [Alamat] dari daftar, sebagai alamat dirinya.</li>\r\n</ul>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `erd_entitas`
--

CREATE TABLE IF NOT EXISTS `erd_entitas` (
  `erd_entitas_id` int(9) NOT NULL AUTO_INCREMENT,
  `erd_entitas_upline` int(9) NOT NULL DEFAULT '0',
  `erd_entitas_nama` varchar(32) NOT NULL,
  `erd_entitas_judul` varchar(100) NOT NULL,
  `erd_id` int(9) NOT NULL,
  `erd_entitas_status_id` tinyint(1) NOT NULL,
  `erd_entitas_type_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`erd_entitas_id`),
  KEY `fk_erd_entitas_erd1_idx` (`erd_id`),
  KEY `fk_erd_entitas_erd_entitas_status1_idx` (`erd_entitas_status_id`),
  KEY `fk_erd_entitas_erd_entitas_type1_idx` (`erd_entitas_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `erd_entitas`
--

INSERT INTO `erd_entitas` (`erd_entitas_id`, `erd_entitas_upline`, `erd_entitas_nama`, `erd_entitas_judul`, `erd_id`, `erd_entitas_status_id`, `erd_entitas_type_id`) VALUES
(1, 0, 'anggota', 'Anggota', 0, 0, 0),
(2, 0, 'alamat', 'alamat', 0, 0, 0),
(3, 0, 'mengisi', 'Mengisi', 0, 0, 0),
(4, 0, 'anggota_alamat', 'Default', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `erd_entitas_ke_diagram`
--

CREATE TABLE IF NOT EXISTS `erd_entitas_ke_diagram` (
  `erd_entitas_ke_diagram_id` int(9) NOT NULL AUTO_INCREMENT,
  `erd_entitas_ke_diagram_posisi_atas` smallint(5) NOT NULL,
  `erd_entitas_ke_diagram_posisi_kiri` smallint(5) NOT NULL,
  `erd_entitas_id` int(9) NOT NULL,
  `erd_diagram_id` int(9) NOT NULL,
  `erd_id` int(9) NOT NULL,
  PRIMARY KEY (`erd_entitas_ke_diagram_id`),
  KEY `fk_erd_entitas_ke_diagram_erd_entitas1_idx` (`erd_entitas_id`),
  KEY `fk_erd_entitas_ke_diagram_erd_diagram1_idx` (`erd_diagram_id`),
  KEY `fk_erd_entitas_ke_diagram_erd1_idx` (`erd_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `erd_entitas_ke_diagram`
--

INSERT INTO `erd_entitas_ke_diagram` (`erd_entitas_ke_diagram_id`, `erd_entitas_ke_diagram_posisi_atas`, `erd_entitas_ke_diagram_posisi_kiri`, `erd_entitas_id`, `erd_diagram_id`, `erd_id`) VALUES
(1, 100, 85, 0, 0, 0),
(2, 100, 450, 0, 0, 0),
(3, 400, 450, 0, 0, 0),
(4, 400, 85, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `erd_entitas_ke_entitas`
--

CREATE TABLE IF NOT EXISTS `erd_entitas_ke_entitas` (
  `erd_entitas_ke_entitas_id` int(9) NOT NULL AUTO_INCREMENT,
  `erd_entitas_ke_entitas_nama` varchar(32) NOT NULL,
  `erd_entitas_ke_entitas_judul` varchar(32) NOT NULL,
  `erd_entitas_ke_entitas_objek_satu` int(9) NOT NULL COMMENT 'relasi ke erd_entitas_id',
  `erd_entitas_ke_entitas_objek_satu_sifat` enum('1','M') NOT NULL,
  `erd_entitas_ke_entitas_objek_dua` int(9) NOT NULL COMMENT 'relasi ke erd_entitas_id',
  `erd_entitas_ke_entitas_objek_dua_sifat` enum('1','M') NOT NULL,
  PRIMARY KEY (`erd_entitas_ke_entitas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Garis penghubung antar entitas' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `erd_entitas_ke_entitas`
--

INSERT INTO `erd_entitas_ke_entitas` (`erd_entitas_ke_entitas_id`, `erd_entitas_ke_entitas_nama`, `erd_entitas_ke_entitas_judul`, `erd_entitas_ke_entitas_objek_satu`, `erd_entitas_ke_entitas_objek_satu_sifat`, `erd_entitas_ke_entitas_objek_dua`, `erd_entitas_ke_entitas_objek_dua_sifat`) VALUES
(1, 'mengisi', 'Mengisi', 1, '1', 3, 'M'),
(2, '', '', 3, '1', 2, 'M'),
(3, '', '', 2, '', 4, ''),
(4, '', '', 4, '1', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `erd_entitas_status`
--

CREATE TABLE IF NOT EXISTS `erd_entitas_status` (
  `erd_entitas_status_id` tinyint(1) NOT NULL,
  `erd_entitas_status_nama` varchar(16) NOT NULL,
  PRIMARY KEY (`erd_entitas_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erd_entitas_status`
--

INSERT INTO `erd_entitas_status` (`erd_entitas_status_id`, `erd_entitas_status_nama`) VALUES
(0, 'Tidak Aktif'),
(1, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `erd_entitas_type`
--

CREATE TABLE IF NOT EXISTS `erd_entitas_type` (
  `erd_entitas_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `erd_entitas_type_nama` varchar(16) NOT NULL,
  PRIMARY KEY (`erd_entitas_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `erd_entitas_type`
--

INSERT INTO `erd_entitas_type` (`erd_entitas_type_id`, `erd_entitas_type_nama`) VALUES
(1, 'entitas'),
(2, 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `erd_resource`
--

CREATE TABLE IF NOT EXISTS `erd_resource` (
  `erd_resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `erd_resource_nama` varchar(32) NOT NULL,
  `erd_resource_judul` varchar(32) NOT NULL,
  `framework_fungsi_id` smallint(5) NOT NULL,
  `erd_resource_urutan` tinyint(3) NOT NULL,
  `erd_id` int(9) NOT NULL,
  `erd_entitas_id` int(9) NOT NULL,
  PRIMARY KEY (`erd_resource_id`),
  KEY `fk_erd_resource_erd1_idx` (`erd_id`),
  KEY `fk_erd_resource_erd_entitas1_idx` (`erd_entitas_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `erd_resource`
--

INSERT INTO `erd_resource` (`erd_resource_id`, `erd_resource_nama`, `erd_resource_judul`, `framework_fungsi_id`, `erd_resource_urutan`, `erd_id`, `erd_entitas_id`) VALUES
(1, 'anggota_alias', 'Alias', 0, 1, 0, 0),
(2, 'anggota_username', 'Username', 0, 2, 0, 0),
(3, 'anggota_password', 'Password', 1, 3, 0, 0),
(4, 'prana', 'prana', 170, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `erd_resource_ke_diagram`
--

CREATE TABLE IF NOT EXISTS `erd_resource_ke_diagram` (
  `erd_resource_ke_diagram_id` int(9) NOT NULL AUTO_INCREMENT,
  `erd_resource_ke_diagram_posisi_atas` smallint(5) NOT NULL,
  `erd_resource_ke_diagram_posisi_kiri` smallint(5) NOT NULL,
  `erd_resource_id` int(11) NOT NULL,
  `erd_id` int(9) NOT NULL,
  `erd_diagram_id` int(9) NOT NULL,
  PRIMARY KEY (`erd_resource_ke_diagram_id`),
  KEY `fk_erd_resource_ke_diagram_erd_resource1_idx` (`erd_resource_id`),
  KEY `fk_erd_resource_ke_diagram_erd1_idx` (`erd_id`),
  KEY `fk_erd_resource_ke_diagram_erd_diagram1_idx` (`erd_diagram_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `erd_resource_ke_diagram`
--

INSERT INTO `erd_resource_ke_diagram` (`erd_resource_ke_diagram_id`, `erd_resource_ke_diagram_posisi_atas`, `erd_resource_ke_diagram_posisi_kiri`, `erd_resource_id`, `erd_id`, `erd_diagram_id`) VALUES
(4, 3, 3, 0, 0, 0),
(5, 2, 2, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `erd_status`
--

CREATE TABLE IF NOT EXISTS `erd_status` (
  `erd_status_id` tinyint(1) NOT NULL,
  `erd_status_nama` varchar(16) NOT NULL,
  PRIMARY KEY (`erd_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `erd_status`
--

INSERT INTO `erd_status` (`erd_status_id`, `erd_status_nama`) VALUES
(0, 'PRIBADI'),
(1, 'DIPUBLIKASI');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan`
--

CREATE TABLE IF NOT EXISTS `perusahaan` (
  `perusahaan_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `perusahaan_alias` char(25) NOT NULL,
  `perusahaan_nama` char(25) NOT NULL,
  `perusahaan_deskripsi` varchar(255) NOT NULL,
  `perusahaan_icon` char(25) NOT NULL,
  `perusahaan_logo` char(25) NOT NULL,
  `perusahaan_visi` char(255) NOT NULL,
  `perusahaan_misi` char(255) NOT NULL,
  `perusahaan_sejarah` text NOT NULL,
  `perusahaan_strategi` text NOT NULL,
  `perusahaan_tanggal` datetime DEFAULT NULL,
  `perusahaan_tanggal_berdiri` date NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `alamat_kota_id` smallint(5) NOT NULL,
  `alamat_propinsi_id` smallint(5) NOT NULL,
  `perusahaan_status_id` tinyint(1) NOT NULL,
  `perusahaan_type_id` tinyint(3) NOT NULL,
  PRIMARY KEY (`perusahaan_id`),
  KEY `fk_perusahaan_anggota1_idx` (`anggota_id`),
  KEY `fk_perusahaan_alamat_kota1_idx` (`alamat_kota_id`),
  KEY `fk_perusahaan_alamat_propinsi1_idx` (`alamat_propinsi_id`),
  KEY `fk_perusahaan_perusahaan_status1_idx` (`perusahaan_status_id`),
  KEY `fk_perusahaan_perusahaan_type1_idx` (`perusahaan_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `perusahaan`
--

INSERT INTO `perusahaan` (`perusahaan_id`, `perusahaan_alias`, `perusahaan_nama`, `perusahaan_deskripsi`, `perusahaan_icon`, `perusahaan_logo`, `perusahaan_visi`, `perusahaan_misi`, `perusahaan_sejarah`, `perusahaan_strategi`, `perusahaan_tanggal`, `perusahaan_tanggal_berdiri`, `anggota_id`, `alamat_kota_id`, `alamat_propinsi_id`, `perusahaan_status_id`, `perusahaan_type_id`) VALUES
(1, 'senimandigital', 'senimandigital', 'perusahaan senimandigital berdiri diyogyakarta Memberikan penawaran da pelayanan terbaik dibidang jasa penyedia solusi teknologi informasi Menanggulangi krisis perangkat lunak Nasional perusahaan senimandigital berdiri diyogyakarta Memberikan penawaran da', '', '', 'Memberikan penawaran da pelayanan terbaik dibidang jasa penyedia solusi teknologi informasi', 'Menanggulangi krisis perangkat lunak Nasional', 'Bermula dengan memulai penelitian ditahun 2008.', 'Menjalankan konsep bisnis yang terakumilasi dan terbagi pada tujuh devisi pergerakan.', NULL, '2007-04-03', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang` (
  `perusahaan_cabang_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_alias` varchar(32) NOT NULL,
  `perusahaan_cabang_judul` varchar(32) NOT NULL,
  `perusahaan_cabang_deskripsi` varchar(255) NOT NULL,
  `perusahaan_cabang_tanggal` datetime DEFAULT NULL,
  `perusahaan_cabang_tanggal_berdiri` datetime DEFAULT NULL,
  `perusahaan_id` tinyint(3) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `alamat_kota_id` smallint(5) NOT NULL,
  `alamat_kodepos_id` smallint(5) NOT NULL,
  `alamat_propinsi_id` smallint(5) NOT NULL,
  `alamat_negara_id` int(9) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_id`),
  KEY `fk_perusahaan_cabang_perusahaan1_idx` (`perusahaan_id`),
  KEY `fk_perusahaan_cabang_anggota1_idx` (`anggota_id`),
  KEY `fk_perusahaan_cabang_alamat_kota1_idx` (`alamat_kota_id`),
  KEY `fk_perusahaan_cabang_alamat_kodepos1_idx` (`alamat_kodepos_id`),
  KEY `fk_perusahaan_cabang_alamat_propinsi1_idx` (`alamat_propinsi_id`),
  KEY `fk_perusahaan_cabang_alamat_negara1_idx` (`alamat_negara_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `perusahaan_cabang`
--

INSERT INTO `perusahaan_cabang` (`perusahaan_cabang_id`, `perusahaan_cabang_alias`, `perusahaan_cabang_judul`, `perusahaan_cabang_deskripsi`, `perusahaan_cabang_tanggal`, `perusahaan_cabang_tanggal_berdiri`, `perusahaan_id`, `anggota_id`, `alamat_kota_id`, `alamat_kodepos_id`, `alamat_propinsi_id`, `alamat_negara_id`) VALUES
(1, 'senimandigital', 'Senimandigital - Yogyakarta', 'Deskripsi cabang perusahaan senimandigital', NULL, NULL, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_developer_proyek`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_developer_proyek` (
  `perusahaan_cabang_developer_proyek_id` int(9) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_developer_proyek_tanggal` datetime NOT NULL,
  `perusahaan_cabang_developer_proyek_deskripsi` varchar(255) NOT NULL,
  `perusahaan_cabang_developer_proyek_abstrak` text NOT NULL,
  `proyek_ke_perusahaan_cabang_id` int(9) NOT NULL,
  `developer_ke_perusahaan_cabang_id` int(9) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_developer_proyek_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `perusahaan_cabang_developer_proyek`
--

INSERT INTO `perusahaan_cabang_developer_proyek` (`perusahaan_cabang_developer_proyek_id`, `perusahaan_cabang_developer_proyek_tanggal`, `perusahaan_cabang_developer_proyek_deskripsi`, `perusahaan_cabang_developer_proyek_abstrak`, `proyek_ke_perusahaan_cabang_id`, `developer_ke_perusahaan_cabang_id`) VALUES
(1, '2011-10-30 10:20:58', 'Menyelesaikan dalam waktu satu minggu', 'Tuga penting', 1, 1),
(2, '2011-11-07 23:59:30', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan` (
  `perusahaan_cabang_karyawan_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_karyawan_nama` varchar(32) NOT NULL,
  `perusahaan_cabang_karyawan_telepon` varchar(16) NOT NULL,
  `perusahaan_cabang_karyawan_catatan` varchar(255) NOT NULL,
  `perusahaan_cabang_karyawan_tanggal` datetime DEFAULT NULL,
  `perusahaan_cabang_karyawan_tanggal_mulai` date DEFAULT NULL,
  `perusahaan_cabang_karyawan_tanggal_berhenti` date DEFAULT NULL,
  `perusahaan_cabang_id` tinyint(3) unsigned NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `perusahaan_cabang_karyawan_level_id` tinyint(1) NOT NULL,
  `perusahaan_cabang_karyawan_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_id`),
  KEY `fk_perusahaan_cabang_karyawan_perusahaan_cabang1_idx` (`perusahaan_cabang_id`),
  KEY `fk_perusahaan_cabang_karyawan_anggota1_idx` (`anggota_id`),
  KEY `fk_perusahaan_cabang_karyawan_perusahaan_cabang_karyawan_le_idx` (`perusahaan_cabang_karyawan_level_id`),
  KEY `fk_perusahaan_cabang_karyawan_perusahaan_cabang_karyawan_st_idx` (`perusahaan_cabang_karyawan_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan`
--

INSERT INTO `perusahaan_cabang_karyawan` (`perusahaan_cabang_karyawan_id`, `perusahaan_cabang_karyawan_nama`, `perusahaan_cabang_karyawan_telepon`, `perusahaan_cabang_karyawan_catatan`, `perusahaan_cabang_karyawan_tanggal`, `perusahaan_cabang_karyawan_tanggal_mulai`, `perusahaan_cabang_karyawan_tanggal_berhenti`, `perusahaan_cabang_id`, `anggota_id`, `perusahaan_cabang_karyawan_level_id`, `perusahaan_cabang_karyawan_status_id`) VALUES
(1, 'Dino Sukma Sarjito', '08812789646', 'Catatan pemilik perusahaan', '2011-09-22 22:36:33', NULL, NULL, 0, 0, 0, 0),
(2, 'Khalit', '', '', '2011-09-22 22:55:26', NULL, NULL, 0, 0, 0, 0),
(3, 'Aguestri', '', '', '2011-09-23 09:13:46', NULL, NULL, 0, 0, 0, 0),
(4, 'Prana', '', '', '2011-09-23 09:14:41', NULL, NULL, 0, 0, 0, 0),
(5, 'Almazari', '', '', '2011-11-08 00:04:14', NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan_gajih`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan_gajih` (
  `perusahaan_cabang_karyawan_gajih_id` int(9) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_karyawan_gajih_nilai` int(11) NOT NULL,
  `perusahaan_cabang_karyawan_gajih_catatan` varchar(255) NOT NULL,
  `perusahaan_cabang_karyawan_gajih_tanggal` datetime NOT NULL,
  `perusahaan_cabang_karyawan_gajih_tanggal_terima` date NOT NULL,
  `perusahaan_cabang_karyawan_id` smallint(5) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `perusahaan_cabang_karyawan_gajih_type_id` tinyint(1) NOT NULL,
  `perusahaan_cabang_karyawan_gajih_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_gajih_id`),
  KEY `fk_perusahaan_cabang_karyawan_gajih_perusahaan_cabang_karya_idx` (`perusahaan_cabang_karyawan_id`),
  KEY `fk_perusahaan_cabang_karyawan_gajih_anggota1_idx` (`anggota_id`),
  KEY `fk_perusahaan_cabang_karyawan_gajih_perusahaan_cabang_karya_idx1` (`perusahaan_cabang_karyawan_gajih_type_id`),
  KEY `fk_perusahaan_cabang_karyawan_gajih_perusahaan_cabang_karya_idx2` (`perusahaan_cabang_karyawan_gajih_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan_gajih`
--

INSERT INTO `perusahaan_cabang_karyawan_gajih` (`perusahaan_cabang_karyawan_gajih_id`, `perusahaan_cabang_karyawan_gajih_nilai`, `perusahaan_cabang_karyawan_gajih_catatan`, `perusahaan_cabang_karyawan_gajih_tanggal`, `perusahaan_cabang_karyawan_gajih_tanggal_terima`, `perusahaan_cabang_karyawan_id`, `anggota_id`, `perusahaan_cabang_karyawan_gajih_type_id`, `perusahaan_cabang_karyawan_gajih_status_id`) VALUES
(1, 200000, 'Pembayaran gajih perdana', '2011-11-20 22:30:22', '2011-02-01', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan_gajih_status`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan_gajih_status` (
  `perusahaan_cabang_karyawan_gajih_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_karyawan_gajih_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_gajih_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan_gajih_status`
--

INSERT INTO `perusahaan_cabang_karyawan_gajih_status` (`perusahaan_cabang_karyawan_gajih_status_id`, `perusahaan_cabang_karyawan_gajih_status_nama`) VALUES
(1, 'Lunas'),
(2, 'Anggaran');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan_gajih_type`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan_gajih_type` (
  `perusahaan_cabang_karyawan_gajih_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_karyawan_gajih_type_nama` varchar(16) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_gajih_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan_gajih_type`
--

INSERT INTO `perusahaan_cabang_karyawan_gajih_type` (`perusahaan_cabang_karyawan_gajih_type_id`, `perusahaan_cabang_karyawan_gajih_type_nama`) VALUES
(1, 'Pokok'),
(2, 'Proyek'),
(3, 'Lembur'),
(4, 'Bonus');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan_ke_developer`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan_ke_developer` (
  `perusahaan_cabang_karyawan_ke_developer_id` int(9) NOT NULL AUTO_INCREMENT,
  `developer_id` int(9) NOT NULL,
  `perusahaan_cabang_karyawan_id` int(9) NOT NULL,
  `perusahaan_cabang_karyawan_ke_developer_tanggal_mulai` date DEFAULT NULL,
  `perusahaan_cabang_karyawan_ke_developer_tanggal_selesai` date DEFAULT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_ke_developer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan_ke_developer`
--

INSERT INTO `perusahaan_cabang_karyawan_ke_developer` (`perusahaan_cabang_karyawan_ke_developer_id`, `developer_id`, `perusahaan_cabang_karyawan_id`, `perusahaan_cabang_karyawan_ke_developer_tanggal_mulai`, `perusahaan_cabang_karyawan_ke_developer_tanggal_selesai`) VALUES
(1, 1, 3, NULL, NULL),
(2, 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan_level`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan_level` (
  `perusahaan_cabang_karyawan_level_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_karyawan_level_nama` varchar(32) NOT NULL,
  `perusahaan_cabang_karyawan_level_deskripsi` varchar(255) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_level_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan_level`
--

INSERT INTO `perusahaan_cabang_karyawan_level` (`perusahaan_cabang_karyawan_level_id`, `perusahaan_cabang_karyawan_level_nama`, `perusahaan_cabang_karyawan_level_deskripsi`) VALUES
(1, 'Manajer', 'Bertangung jawab terhadap semua aspek'),
(2, 'Marketing', 'Bertanggung jawab terhadap penjualan'),
(3, 'Programmer', 'Bertanggung jawab terhadap implementasi sistem');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_karyawan_status`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_karyawan_status` (
  `perusahaan_cabang_karyawan_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_karyawan_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_karyawan_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `perusahaan_cabang_karyawan_status`
--

INSERT INTO `perusahaan_cabang_karyawan_status` (`perusahaan_cabang_karyawan_status_id`, `perusahaan_cabang_karyawan_status_nama`) VALUES
(1, 'Aktif'),
(2, 'Pelamar');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_konsumen`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_konsumen` (
  `perusahaan_cabang_konsumen_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_konsumen_nama` char(35) NOT NULL,
  `perusahaan_cabang_konsumen_handphone` varchar(16) NOT NULL,
  `perusahaan_cabang_konsumen_alamat` char(255) NOT NULL,
  `perusahaan_cabang_konsumen_tanggal` datetime DEFAULT NULL,
  `perusahaan_cabang_id` tinyint(3) unsigned NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `perusahaan_cabang_karyawan_id` smallint(5) NOT NULL,
  `perusahaan_cabang_konsumen_type_id` tinyint(1) NOT NULL,
  `perusahaan_cabang_konsumen_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_konsumen_id`),
  KEY `fk_perusahaan_cabang_konsumen_perusahaan_cabang1_idx` (`perusahaan_cabang_id`),
  KEY `fk_perusahaan_cabang_konsumen_anggota1_idx` (`anggota_id`),
  KEY `fk_perusahaan_cabang_konsumen_perusahaan_cabang_karyawan1_idx` (`perusahaan_cabang_karyawan_id`),
  KEY `fk_perusahaan_cabang_konsumen_perusahaan_cabang_konsumen_ty_idx` (`perusahaan_cabang_konsumen_type_id`),
  KEY `fk_perusahaan_cabang_konsumen_perusahaan_cabang_konsumen_st_idx` (`perusahaan_cabang_konsumen_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `perusahaan_cabang_konsumen`
--

INSERT INTO `perusahaan_cabang_konsumen` (`perusahaan_cabang_konsumen_id`, `perusahaan_cabang_konsumen_nama`, `perusahaan_cabang_konsumen_handphone`, `perusahaan_cabang_konsumen_alamat`, `perusahaan_cabang_konsumen_tanggal`, `perusahaan_cabang_id`, `anggota_id`, `perusahaan_cabang_karyawan_id`, `perusahaan_cabang_konsumen_type_id`, `perusahaan_cabang_konsumen_status_id`) VALUES
(1, 'Dino Sukma Sarjito', '08985057939', 'Yogyakarta', NULL, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_konsumen_status`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_konsumen_status` (
  `perusahaan_cabang_konsumen_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_konsumen_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_konsumen_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `perusahaan_cabang_konsumen_status`
--

INSERT INTO `perusahaan_cabang_konsumen_status` (`perusahaan_cabang_konsumen_status_id`, `perusahaan_cabang_konsumen_status_nama`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_cabang_konsumen_type`
--

CREATE TABLE IF NOT EXISTS `perusahaan_cabang_konsumen_type` (
  `perusahaan_cabang_konsumen_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_cabang_konsumen_type_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`perusahaan_cabang_konsumen_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `perusahaan_cabang_konsumen_type`
--

INSERT INTO `perusahaan_cabang_konsumen_type` (`perusahaan_cabang_konsumen_type_id`, `perusahaan_cabang_konsumen_type_nama`) VALUES
(1, 'Konsumen'),
(2, 'Maintenance'),
(3, 'Putus'),
(4, 'Prospek');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_profile`
--

CREATE TABLE IF NOT EXISTS `perusahaan_profile` (
  `perusahaan_profile_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `perusahaan_profile_alias` varchar(32) NOT NULL,
  `perusahaan_profile_judul` varchar(64) NOT NULL,
  `perusahaan_profile_halaman` text NOT NULL,
  `perusahaan_profile_urutan` tinyint(3) unsigned NOT NULL,
  `perusahaan_id` tinyint(3) NOT NULL,
  PRIMARY KEY (`perusahaan_profile_id`),
  KEY `fk_perusahaan_profile_perusahaan1_idx` (`perusahaan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `perusahaan_profile`
--


-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_status`
--

CREATE TABLE IF NOT EXISTS `perusahaan_status` (
  `perusahaan_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_status_nama` varchar(16) NOT NULL,
  PRIMARY KEY (`perusahaan_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `perusahaan_status`
--

INSERT INTO `perusahaan_status` (`perusahaan_status_id`, `perusahaan_status_nama`) VALUES
(1, 'AKTIF'),
(3, 'Tidak Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_type`
--

CREATE TABLE IF NOT EXISTS `perusahaan_type` (
  `perusahaan_type_id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `perusahaan_type_nama` varchar(8) NOT NULL,
  `perusahaan_type_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`perusahaan_type_id`),
  KEY `fk_perusahaan_type_perusahaan_type_status1_idx` (`perusahaan_type_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `perusahaan_type`
--

INSERT INTO `perusahaan_type` (`perusahaan_type_id`, `perusahaan_type_nama`, `perusahaan_type_status_id`) VALUES
(1, 'TIM', 0),
(2, 'CV', 0),
(3, 'PT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `perusahaan_type_status`
--

CREATE TABLE IF NOT EXISTS `perusahaan_type_status` (
  `perusahaan_type_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `perusahaan_type_status_nama` varchar(16) NOT NULL,
  PRIMARY KEY (`perusahaan_type_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `perusahaan_type_status`
--

INSERT INTO `perusahaan_type_status` (`perusahaan_type_status_id`, `perusahaan_type_status_nama`) VALUES
(3, 'Tidak Aktif'),
(1, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `proyek`
--

CREATE TABLE IF NOT EXISTS `proyek` (
  `proyek_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `proyek_alias` varchar(32) NOT NULL,
  `proyek_judul` varchar(32) NOT NULL,
  `proyek_deskripsi` varchar(255) NOT NULL,
  `proyek_abstrak` varchar(2000) NOT NULL,
  `proyek_tanggal` datetime NOT NULL,
  `proyek_tanggal_mulai` datetime DEFAULT NULL,
  `proyek_tanggal_target` datetime DEFAULT NULL,
  `proyek_tanggal_selesai` datetime DEFAULT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `proyek_type_id` tinyint(1) NOT NULL,
  `proyek_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`proyek_id`),
  KEY `fk_proyek_anggota1_idx` (`anggota_id`),
  KEY `fk_proyek_proyek_type1_idx` (`proyek_type_id`),
  KEY `fk_proyek_proyek_status1_idx` (`proyek_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `proyek`
--

INSERT INTO `proyek` (`proyek_id`, `proyek_alias`, `proyek_judul`, `proyek_deskripsi`, `proyek_abstrak`, `proyek_tanggal`, `proyek_tanggal_mulai`, `proyek_tanggal_target`, `proyek_tanggal_selesai`, `anggota_id`, `proyek_type_id`, `proyek_status_id`) VALUES
(1, 'phpmyadmin', 'phpMyadmin', '<p>phpMyadmin deskripsi</p>', '<p>phpMyadmin abstrak</p>', '2011-01-18 18:48:28', NULL, NULL, NULL, 0, 0, 0),
(2, 'dreamweaver', 'dreamweaver', 'dreamweaver deskripai', 'dreamweaver abstrak', '2011-09-23 01:07:06', NULL, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyek_error_lapor`
--

CREATE TABLE IF NOT EXISTS `proyek_error_lapor` (
  `proyek_error_lapor_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `proyek_error_lapor_judul` varchar(32) NOT NULL,
  `proyek_error_lapor_tanggal` datetime NOT NULL,
  `proyek_error_lapor_konten` text NOT NULL,
  `proyek_error_lapor_status` varchar(32) NOT NULL,
  `proyek_sub_id` smallint(5) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`proyek_error_lapor_id`),
  KEY `fk_proyek_error_lapor_proyek_sub1_idx` (`proyek_sub_id`),
  KEY `fk_proyek_error_lapor_anggota1_idx` (`anggota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `proyek_error_lapor`
--

INSERT INTO `proyek_error_lapor` (`proyek_error_lapor_id`, `proyek_error_lapor_judul`, `proyek_error_lapor_tanggal`, `proyek_error_lapor_konten`, `proyek_error_lapor_status`, `proyek_sub_id`, `anggota_id`) VALUES
(1, 'Tes Error', '2011-11-13 21:48:14', '<p>Tes Error</p>', 'Tes Error', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyek_hasil`
--

CREATE TABLE IF NOT EXISTS `proyek_hasil` (
  `proyek_hasil_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `proyek_hasil_judul` varchar(64) NOT NULL,
  `proyek_hasil_catatan` char(255) NOT NULL,
  `proyek_hasil_pencapaian` char(255) NOT NULL,
  `proyek_hasil_tanggal` datetime NOT NULL,
  `proyek_sub_id` smallint(5) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`proyek_hasil_id`),
  KEY `fk_proyek_hasil_proyek_sub1_idx` (`proyek_sub_id`),
  KEY `fk_proyek_hasil_anggota1_idx` (`anggota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `proyek_hasil`
--

INSERT INTO `proyek_hasil` (`proyek_hasil_id`, `proyek_hasil_judul`, `proyek_hasil_catatan`, `proyek_hasil_pencapaian`, `proyek_hasil_tanggal`, `proyek_sub_id`, `anggota_id`) VALUES
(1, '', 'Pengunjung bisa mendaftar pada website', '1', '2011-01-01 07:11:29', 0, 0),
(2, '', 'Anggota Bisa Login', '1', '2011-01-01 07:11:45', 0, 0),
(3, '', 'Anggota bisa mengedit informasi akun', '1', '2011-01-01 07:14:50', 0, 0),
(4, '', 'Anggota Bisa Membuat Modul', '1', '2011-01-01 09:18:08', 0, 0),
(5, '', 'Anggota bisa membuat database', '1', '2011-01-01 10:10:36', 0, 0),
(6, '', 'Anggota bisa membuat hak akses', '1', '2011-01-01 12:22:36', 0, 0),
(7, '', 'Anggota bisa logout dari sistem', 'Tadinya sempat ingin mengesampingkan fitur login dan log out, namun setelah dipertimbangkan ternyata alangkah baiknya jika fitur ini memang sudah tersedia sejak awal agar bisa memantau sistem dari presfektif yang lebih luas', '2011-01-01 13:47:49', 0, 0),
(8, '', 'Anggota bisa memanajemen modul', '1', '2011-01-02 00:24:39', 0, 0),
(9, '', 'Anggota bisa melihat daftar modul yang sudah dibuat', '1', '2011-01-02 00:26:14', 0, 0),
(10, '', 'Anggota bisa mengedit informasi modul', '1', '2011-01-02 00:27:44', 0, 0),
(11, '', 'Anggota bisa melihat framework yang sudah terdaftar', '1', '2011-01-02 00:29:57', 0, 0),
(12, '', 'Anggota bisa menambah daftar framework', '1', '2011-01-02 00:30:25', 0, 0),
(13, '', 'Anggota bisa mengedit framework', '1', '2011-01-02 00:30:59', 0, 0),
(14, '', 'Anggota bisa melihat informasi framework', '1', '2011-01-02 00:32:50', 0, 0),
(15, '', 'Anggota bisa memanajemen fungsi framework', '1', '2011-01-02 00:36:58', 0, 0),
(16, '', 'Anggota bisa menambahkan pencapaian proyek', '1', '2011-01-03 00:40:46', 0, 0),
(17, '', 'Anggota bisa melihat daftar proyek, dan daftar pencapaian proyek', 'Dikamar saya saat ini sudah banyak berserakan kertas-kertas berisi gambaran kerja yang tidak ter manajemen dengan baik sehingga membuat daftar penyelesaian yang terintergasi dengan sistem utama seniman digital. walau sederhana mungkin nantinya akan sangat', '2011-01-03 00:44:34', 0, 0),
(18, '', 'Anggota bisa melihat daftar modul melalui halaman utama modul', '1', '2011-01-04 00:54:06', 0, 0),
(19, '', 'Anggota bisa melihat halaman profilnya sendiri', '1', '2011-01-04 00:54:48', 0, 0),
(20, '', 'Anggota bisa melihat daftar aksi untuk modul yang sudah dibuatnya', '1', '2011-01-05 01:04:48', 0, 0),
(21, '', 'Anggota bisa mengedit aksi dari modul yang ada', '1', '2011-01-05 01:05:37', 0, 0),
(22, '', 'Anggota bisa melihat daftar form, frame dan kontrol dari sebuah aksi', '1', '2011-01-05 01:06:33', 0, 0),
(23, '', 'Anggota bisa ngedit informasi form', '1', '2011-01-05 01:08:13', 0, 0),
(24, '', 'anggota bisa mengedit informasi frame', '1', '2011-01-05 01:08:25', 0, 0),
(25, '', 'Anggota bisa mengedit informasi kontrol', '1', '2011-01-05 01:08:40', 0, 0),
(26, '', 'Mengubah sistem pengalamatan *.httaccess', '1', '2011-01-06 01:13:23', 0, 0),
(27, '', 'Mengubah sistem pengalamatan framework mengikuti aturan *.httaccess', '1', '2011-01-06 01:14:59', 0, 0),
(28, '', 'Mengubah sistem pengalamatan *.httaccess', '1', '2011-01-06 01:16:00', 0, 0),
(29, '', 'Memisahkan antara keanggotaan website dengan ke anggotaan modul', 'Pemisahan ini dilakukan secara mendadak, dengan tujuan agar kedepanya komponen selain komponen utama website diasumsikan sebagai aplikasi yang bisa di install dan di uninstall oleh anggota', '2011-01-07 01:19:58', 0, 0),
(30, '', 'Menambahkan database anggota dan database download modul agar terpisah dari keanggotaan pada website', '1', '2011-01-07 01:22:10', 0, 0),
(31, '', 'Menambahkan perintah auto install modul, pada saat registasi', '1', '2011-01-07 01:26:38', 0, 0),
(32, '', 'Saat registrasi maka keanggotaan pada penggunaan modul dimulai', '1', '2011-01-07 01:27:28', 0, 0),
(33, '', 'Masa keanggotaan standar penggunaan modul ialah satu tahun', '1', '2011-01-07 01:28:22', 0, 0),
(34, '', 'Menetapkan level "Anggota" sebagai level default modul', '1', '2011-01-07 01:29:40', 0, 0),
(35, '', 'Menetapkan hak download anggota default adalah 5 Download', '1', '2011-01-07 01:30:37', 0, 0),
(36, '', 'Membuat menu berbasis javascript untuk level "Personal", "Pogramer" dan "Developer"', '1', '2011-01-08 01:34:02', 0, 0),
(37, '', 'Membuat halaman penawaran yang berisi daftar mahar penggunaan layanan', '1', '2011-01-09 01:36:39', 0, 0),
(38, '', 'Anggota bisa melihat penawaran bagi hasil', '1', '2011-01-09 01:37:25', 0, 0),
(39, '', 'Anggota bisa melihat aturan download modul', '1', '2011-01-09 01:38:03', 0, 0),
(40, '', 'Mencoba menginstalasikan modul pada website, dan memperbaiki link yang tak mau bekerja', '1', '2011-01-10 01:40:53', 0, 0),
(41, '', 'Menginstall modul anggota pada website', 'Ternyata banyak sekali yang tidak sinkron antara dilokal dan di hosting terutama disisi pengalamatan, sehingga butuh seharian untuk membuatnya mau bekerja sebagaimana mestinya', '2011-01-10 01:42:47', 0, 0),
(42, '', 'Mempersiapakan kerja tim, dengan mencoba membagi tugas-tugas input data', '1', '2011-01-11 07:47:02', 0, 0),
(43, '', 'Memeriksa hal-hal kecil, memberikan perbaikan saat menemukan kekuranganya', '1', '2011-01-12 01:51:09', 0, 0),
(44, '', 'Menambahkan daftar framework yang sekiranya akan digunakan nanti', '1', '2011-01-13 01:52:40', 0, 0),
(45, '', 'Sukses menampilkan Cek INPUT\r\n', '1', '2011-01-14 22:19:51', 0, 0),
(46, '', 'Anggota tidak bisa membuat modul dengan nama yang sama', '1', '2011-01-14 23:58:10', 0, 0),
(47, '', 'Anggota tidak bisa membuat modul lebih dari tiga', '1', '2011-01-14 23:58:53', 0, 0),
(48, '', 'Anggota hanya berhak membuat satu tabel database untuk satu modulnya', '1', '2011-01-14 23:59:36', 0, 0),
(49, '', 'Anggota bisa memperbaharui informasi dan status publikasi modul', '1', '2011-01-15 08:54:02', 0, 0),
(50, '', 'Anggota bisa melihat daftar Tabel Database sebuah Modul', '1', '2011-01-15 10:27:03', 0, 0),
(51, '', 'Anggota bisa melihat relasi form kontrol dengan field database', '1', '2011-01-15 12:57:37', 0, 0),
(52, '', 'Anggota yang sudah terdaftar bisa LogIn', '1', '2011-01-16 00:04:05', 0, 0),
(53, '', 'Anggota yang sudah LogIn Bisa LogOut', '1', '2011-01-16 00:09:11', 0, 0),
(54, '', 'Pengunjung bisa mengakses form registrasi anggota', '1', '2011-01-16 00:26:29', 0, 0),
(55, '', 'Anggota bisa melihat daftar modul yang sudah dibuat', '1', '2011-01-16 10:18:01', 0, 0),
(56, '', 'Anggota bisa melihat detail modul', '1', '2011-01-16 12:03:54', 0, 0),
(57, '', 'Membuat modul manajemen, untuk pengelola website', 'Dengan adanya modul ini aturan-aturan dasar dan fital tersimpan pada database sehingga saya sebagai programmer tidak perlu harus mengingatnya sehingga bisa mengurangi ancaman kanker otak karena harus terlalu berfikir yang sebetulnya sangat tidak perlu.', '2011-01-16 15:50:48', 0, 0),
(58, '', 'Pihak manajemen dapat menambahkan aturan-aturan dasar framework', '1', '2011-01-16 15:51:55', 0, 0),
(59, '', 'Pihak manajemen bisa membuat aturan baru', '1', '2011-01-16 15:52:08', 0, 0),
(60, '', 'Anggota bisa membuat class perdana', '1', '2011-01-17 15:08:34', 0, 0),
(61, '', 'Anggota bisa menambah class baru', '1', '2011-01-17 15:08:59', 0, 0),
(62, '', 'Anggota yang menyumbangkan class terdata, termasuk waktu pembuatan', '1', '2011-01-17 23:28:28', 0, 0),
(63, '', 'Anggota yang menyumbangkan fungsi terdata, termasuk waktu pembuatan', '1', '2011-01-17 23:39:12', 0, 0),
(64, '', 'Saat logout semua data session anggota bersangkutan terhapus dari session', '1', '2011-01-18 13:39:50', 0, 0),
(65, '', 'Login dari halaman utama, akan tercatat di databases session', '1', '2011-01-18 17:54:07', 0, 0),
(66, '', 'Melalui halaman utama pengunjung bisa menemukan link cms, yang di tampilkan secara random', '1', '2011-01-19 00:01:29', 0, 0),
(67, '', 'Pengunjung bisa melihat halaman depan framework', '1', '2011-01-19 00:02:35', 0, 0),
(68, '', 'Anggota bisa melihat daftar type form kontrol dasar', '1', '2011-01-19 01:28:11', 0, 0),
(69, '', 'Pihak manajemen bisa melihat daftar framework yang ada', '1', '2011-01-19 11:31:18', 0, 0),
(70, '', 'Anggota bisa melihat daftar framework yang berada dibawah pengelolaanya', '1', '2011-01-19 12:08:06', 0, 0),
(71, '', 'Anggota bisa melihat daftar aplikasi yang sudah diinstalnya', '1', '2011-01-19 22:01:34', 0, 0),
(72, '', 'Anggota bisa melihat daftar type input, atau cek input dengan javascript', '1', '2011-01-19 22:20:01', 0, 0),
(73, '', 'Anggota bisa melihat daftar analisis database', '1', '2011-01-19 22:58:09', 0, 0),
(74, '', 'Anggota bisa melihat daftar filter', '1', '2011-01-19 22:58:33', 0, 0),
(75, '', 'Publik bisa mengakses halaman utama modul', '1', '2011-01-20 18:24:04', 0, 0),
(76, '', 'Publik bisa mengakses halaman utama pengguna lain, untuk melihat daftar modul yang sudah dibuat', '1', '2011-01-20 18:24:39', 0, 0),
(77, '', 'Pengunjung bisa mengetahui untuk cms apa saja seseorang telah membuat modul', '1', '2011-01-20 22:18:51', 0, 0),
(78, '', 'Pengunjung dapat melihat detail modul', '1', '2011-01-20 22:19:55', 0, 0),
(79, '', 'Menambahkan tabel sub proyek, untuk mengelompokan pencapaian', 'Awalnya database hanya terdiri dari satu tabel yaitu tabel pencapaian proyek, namun hal tersebut membuat daftar menjadi terlalu panjang untuk dilihat sehingga dipecah lagi ke dalam kelompok proyek agar daftar menjadi lebih padat serta mudah untuk dipantau', '2011-01-20 23:10:23', 0, 0),
(80, '', 'Hanya Penemu yang dapat mengedit informasi utama framework', '1', '2011-01-21 10:53:29', 0, 0),
(81, '', 'Anggota selaku pengelola framework bisa membuat folder', '1', '2011-01-22 13:12:00', 0, 0),
(82, '', 'Anggota selaku pengelola framework bisa membuat file', '1', '2011-01-22 13:12:28', 0, 0),
(83, '', 'Anggota bisa menambahkan class pada file', '1', '2011-01-22 13:50:38', 0, 0),
(84, '', 'Anggota bisa memantau perkembangan framework', '1', '2011-01-23 01:46:56', 0, 0),
(85, '', 'Publik bisa melihat halaman utama, mendapati daftar 15 pengembang 15 framework', '1', '2011-01-23 11:21:29', 0, 0),
(86, '', 'Publik bisa melihat halaman utama anggota lain', '1', '2011-01-23 11:23:44', 0, 0),
(87, '', 'Anggota yang sudah terdaftar bisa logout', '1', '2011-01-23 11:48:07', 0, 0),
(88, '', 'Anggota yang sudah login bisa logout', '1', '2011-01-23 11:48:41', 0, 0),
(89, '', 'Anggota yang sudah login bisa mengunjungi halaman orang lain', '1', '2011-01-23 11:51:38', 0, 0),
(90, '', 'Anggota bisa melihat daftar framework yang disuka orang lain dengan mengunjungi profilnya', '1', '2011-01-23 12:46:34', 0, 0),
(91, '', 'Anggota bisa melihat SQL Output data format', '1', '2011-01-23 22:37:59', 0, 0),
(92, '', 'Anggota bisa melihat daftar bantuan input dengan javascript', '1', '2011-01-23 23:21:49', 0, 0),
(93, '', 'Publik bisa melihat profile anggota', '1', '2011-01-25 10:31:47', 0, 0),
(94, '', 'Hanya pemilik modul yang dapat memperbaharui informasi modul', '1', '2011-01-27 23:23:21', 0, 0),
(95, '', 'Anggota kini bisa menggunakan text editor dalam memformat deskripsi dan abstrak modul', '1', '2011-01-28 12:06:18', 0, 0),
(96, '', 'Kini manajemen modul dapat dilakukan hanya dalam satu halaman', '1', '2011-01-30 09:30:25', 0, 0),
(97, '', 'Anggota tidak perlu lagi merename judul kontrol secara manual', '1', '2011-01-30 12:56:05', 0, 0),
(98, '', 'Anggota kini dipermudah dengan pengaturan hak akses yang lebih otomatis', '<p>Pada tahapan ini yang tercapai ialah :</p>\r\n<ul>\r\n<li>Field database yang dianalisis menjadi judul akan otomatis terkonfigurasi sebagai judul pada data view Administrator.</li>\r\n<li>Administrator dapat menambahkan semua data pada field, selain field id', '2011-01-31 08:10:47', 0, 0),
(99, '', '<p>Anggota dapat menambah dokumentasi framework</p>', '<p>1</p>', '2011-02-01 00:41:17', 0, 0),
(100, '', '<p>Anggota dapat menambah kategori dokumentasi framework</p>', '<p>1</p>', '2011-02-01 00:41:48', 0, 0),
(101, '', '<p>Anggota dapat melihat daftar dokumentasi framework yang telah tersedia</p>', '<p>1</p>', '2011-02-01 00:42:13', 0, 0),
(102, '', '<p>menambahkan database tabel framework level akses</p>', '<p>1</p>', '2011-02-06 22:19:32', 0, 0),
(103, '', '<p>Anggota bisa menambah level akses</p>', '<p>1</p>', '2011-02-07 02:30:39', 0, 0),
(104, '', '<p>Anggota bisa membuat proyek baru</p>', '<p>1</p>', '2011-03-25 14:05:00', 0, 0),
(105, '', '<p>Anggota bisa membuat modul untuk proyek terpilih</p>', '<p>1</p>', '2011-03-25 14:09:17', 0, 0),
(106, '', '<p>Anggota bisa menambah option value database</p>', '<p>1</p>', '2011-06-25 08:37:29', 0, 0),
(107, '', '<p>Anggota bisa menambah option label database</p>', '<p>1</p>', '2011-06-25 08:37:52', 0, 0),
(108, '', '<p>Anggota bisa mengupdate option value database</p>', '<p>1</p>', '2011-06-25 08:38:15', 0, 0),
(109, '', '<p>anggota bisa mengupdate option label database</p>', '<p>1</p>', '2011-06-25 08:38:48', 0, 0),
(110, '', '<p>Anggota bisa menghapus option value database</p>', '<p>1</p>', '2011-06-25 08:40:33', 0, 0),
(111, '', '<p>Anggota bisa menghapus option label database</p>', '<p>1</p>', '2011-06-25 08:40:52', 0, 0),
(112, 'Tes Hasil', 'Tes Hasil', 'Tes Hasil', '2011-11-13 21:56:03', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyek_ke_perusahaan_cabang`
--

CREATE TABLE IF NOT EXISTS `proyek_ke_perusahaan_cabang` (
  `proyek_ke_perusahaan_cabang_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `proyek_ke_perusahaan_cabang_domain_alamat` varchar(32) NOT NULL,
  `proyek_ke_perusahaan_cabang_domain_kontrak` varchar(16) NOT NULL,
  `proyek_ke_perusahaan_cabang_hosting_kapasitas` varchar(16) NOT NULL,
  `proyek_ke_perusahaan_cabang_hosting_kontrak` varchar(32) NOT NULL,
  `proyek_ke_perusahaan_cabang_budged` float NOT NULL,
  `proyek_ke_perusahaan_cabang_catatan` text NOT NULL,
  `proyek_ke_perusahaan_cabang_type_id` tinyint(1) NOT NULL,
  `proyek_id` smallint(5) NOT NULL,
  `perusahaan_cabang_id` tinyint(3) unsigned NOT NULL,
  `perusahaan_cabang_konsumen_id` smallint(5) NOT NULL,
  `perusahaan_cabang_karyawan_id` smallint(5) NOT NULL,
  `proyek_ke_perusahaan_cabang_tanggal_kontrak` date DEFAULT NULL,
  `proyek_ke_perusahaan_cabang_tanggal_kerja` datetime DEFAULT NULL,
  `proyek_ke_perusahaan_cabang_tanggal_beta` datetime DEFAULT NULL,
  `proyek_ke_perusahaan_cabang_tanggal_release` datetime DEFAULT NULL,
  `proyek_ke_perusahaan_cabang_tanggal_selesai` datetime DEFAULT NULL,
  `proyek_ke_perusahaan_cabang_tanggal_putus` datetime DEFAULT NULL,
  PRIMARY KEY (`proyek_ke_perusahaan_cabang_id`),
  KEY `fk_proyek_ke_perusahaan_cabang_proyek_ke_perusahaan_cabang__idx` (`proyek_ke_perusahaan_cabang_type_id`),
  KEY `fk_proyek_ke_perusahaan_cabang_proyek1_idx` (`proyek_id`),
  KEY `fk_proyek_ke_perusahaan_cabang_perusahaan_cabang1_idx` (`perusahaan_cabang_id`),
  KEY `fk_proyek_ke_perusahaan_cabang_perusahaan_cabang_konsumen1_idx` (`perusahaan_cabang_konsumen_id`),
  KEY `fk_proyek_ke_perusahaan_cabang_perusahaan_cabang_karyawan1_idx` (`perusahaan_cabang_karyawan_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `proyek_ke_perusahaan_cabang`
--

INSERT INTO `proyek_ke_perusahaan_cabang` (`proyek_ke_perusahaan_cabang_id`, `proyek_ke_perusahaan_cabang_domain_alamat`, `proyek_ke_perusahaan_cabang_domain_kontrak`, `proyek_ke_perusahaan_cabang_hosting_kapasitas`, `proyek_ke_perusahaan_cabang_hosting_kontrak`, `proyek_ke_perusahaan_cabang_budged`, `proyek_ke_perusahaan_cabang_catatan`, `proyek_ke_perusahaan_cabang_type_id`, `proyek_id`, `perusahaan_cabang_id`, `perusahaan_cabang_konsumen_id`, `perusahaan_cabang_karyawan_id`, `proyek_ke_perusahaan_cabang_tanggal_kontrak`, `proyek_ke_perusahaan_cabang_tanggal_kerja`, `proyek_ke_perusahaan_cabang_tanggal_beta`, `proyek_ke_perusahaan_cabang_tanggal_release`, `proyek_ke_perusahaan_cabang_tanggal_selesai`, `proyek_ke_perusahaan_cabang_tanggal_putus`) VALUES
(1, 'http://www.sman1kotabesi.com/', '1 Tahun', '250 MB', '1 Tahun', 0, 'Keterangan', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', '', '', '', 0, '', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'http://www.auracms.org/', '5 Tahun', '500 MB', '5 Tahun', 0, 'Tidak ada catatan', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'http://www.endonesia.org', '5 Tahun', '500 MB', '5 Tahun', 0, '', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `proyek_ke_perusahaan_cabang_type`
--

CREATE TABLE IF NOT EXISTS `proyek_ke_perusahaan_cabang_type` (
  `proyek_ke_perusahaan_cabang_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `proyek_ke_perusahaan_cabang_type_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`proyek_ke_perusahaan_cabang_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `proyek_ke_perusahaan_cabang_type`
--

INSERT INTO `proyek_ke_perusahaan_cabang_type` (`proyek_ke_perusahaan_cabang_type_id`, `proyek_ke_perusahaan_cabang_type_nama`) VALUES
(1, 'Proses'),
(2, 'Selesai'),
(3, 'Prospek');

-- --------------------------------------------------------

--
-- Table structure for table `proyek_status`
--

CREATE TABLE IF NOT EXISTS `proyek_status` (
  `proyek_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `proyek_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`proyek_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `proyek_status`
--

INSERT INTO `proyek_status` (`proyek_status_id`, `proyek_status_nama`) VALUES
(1, 'Opensource'),
(2, 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `proyek_sub`
--

CREATE TABLE IF NOT EXISTS `proyek_sub` (
  `proyek_sub_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `proyek_sub_alias` char(255) NOT NULL,
  `proyek_sub_judul` char(255) NOT NULL,
  `proyek_sub_deskripsi` char(255) NOT NULL,
  `proyek_sub_abstrak` text NOT NULL,
  `proyek_sub_tanggal_mulai` datetime NOT NULL,
  `proyek_sub_tanggal_selesai` datetime DEFAULT NULL,
  `proyek_sub_tanggal_target` datetime NOT NULL,
  `proyek_versi_id` int(9) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`proyek_sub_id`),
  KEY `fk_proyek_sub_proyek_versi1_idx` (`proyek_versi_id`),
  KEY `fk_proyek_sub_anggota1_idx` (`anggota_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `proyek_sub`
--

INSERT INTO `proyek_sub` (`proyek_sub_id`, `proyek_sub_alias`, `proyek_sub_judul`, `proyek_sub_deskripsi`, `proyek_sub_abstrak`, `proyek_sub_tanggal_mulai`, `proyek_sub_tanggal_selesai`, `proyek_sub_tanggal_target`, `proyek_versi_id`, `anggota_id`) VALUES
(1, 'anggota', 'Anggota', 'Subdomain Anggota', '', '2011-01-01 21:18:59', NULL, '2011-02-28 21:19:08', 0, 0),
(2, 'framework', 'Framework', 'Sub Domain Framework', '', '2011-01-01 21:21:09', NULL, '2011-02-28 21:21:13', 0, 0),
(3, 'modul', 'Modul', 'Subdomain Modul', '', '2011-01-01 21:22:44', NULL, '2011-02-28 21:22:49', 0, 0),
(4, 'source', 'Source', 'Subdomain Source', '', '2011-01-01 21:23:49', NULL, '2011-01-01 21:23:53', 0, 0),
(5, 'profile', 'Profile', 'profile', '', '2011-01-01 21:24:48', NULL, '2011-02-28 21:24:54', 0, 0),
(6, 'proyek', 'Proyek', 'Proyek', '', '2011-01-14 21:25:55', NULL, '2011-02-28 21:26:06', 0, 0),
(7, 'catatan', 'Catatan', 'catatan', 'hanya catatan samping perjalanan proyek', '2011-01-11 07:45:27', NULL, '2011-02-28 01:45:48', 0, 0),
(8, 'manajemen', 'Manajemen', 'Fitur manajemen untuk pengelola website senimandigital', '', '2011-01-16 15:47:28', NULL, '2011-02-28 15:47:32', 0, 0),
(9, 'utama', 'Utama', 'Modul Halaman Utama', '', '2011-01-18 17:51:57', NULL, '2011-02-28 17:52:00', 0, 0),
(10, 'tes sub', 'tes sub', 'tes sub', 'tes sub', '2011-11-14 00:00:00', NULL, '2011-11-14 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyek_type`
--

CREATE TABLE IF NOT EXISTS `proyek_type` (
  `proyek_type_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `proyek_type_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`proyek_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='Tingkatan pembuat' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `proyek_type`
--

INSERT INTO `proyek_type` (`proyek_type_id`, `proyek_type_nama`) VALUES
(1, 'Personal'),
(2, 'Developer'),
(3, 'Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `proyek_versi`
--

CREATE TABLE IF NOT EXISTS `proyek_versi` (
  `proyek_versi_id` int(9) NOT NULL AUTO_INCREMENT,
  `proyek_versi_kode` varchar(8) NOT NULL,
  `proyek_id` smallint(5) NOT NULL,
  `anggota_id` smallint(5) unsigned NOT NULL,
  `proyek_versi_status_id` tinyint(1) NOT NULL,
  PRIMARY KEY (`proyek_versi_id`),
  KEY `fk_proyek_versi_proyek1_idx` (`proyek_id`),
  KEY `fk_proyek_versi_anggota1_idx` (`anggota_id`),
  KEY `fk_proyek_versi_proyek_versi_status1_idx` (`proyek_versi_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `proyek_versi`
--

INSERT INTO `proyek_versi` (`proyek_versi_id`, `proyek_versi_kode`, `proyek_id`, `anggota_id`, `proyek_versi_status_id`) VALUES
(1, '1.0.0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `proyek_versi_status`
--

CREATE TABLE IF NOT EXISTS `proyek_versi_status` (
  `proyek_versi_status_id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `proyek_versi_status_nama` varchar(32) NOT NULL,
  PRIMARY KEY (`proyek_versi_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `proyek_versi_status`
--

INSERT INTO `proyek_versi_status` (`proyek_versi_status_id`, `proyek_versi_status_nama`) VALUES
(1, 'Opensource'),
(2, 'Private');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE IF NOT EXISTS `rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rights`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `fk_alamat_alamat_kodepos1` FOREIGN KEY (`alamat_kodepos_id`) REFERENCES `alamat_kodepos` (`alamat_kodepos_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alamat_alamat_kota1` FOREIGN KEY (`alamat_kota_id`) REFERENCES `alamat_kota` (`alamat_kota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alamat_alamat_negara1` FOREIGN KEY (`alamat_negara_id`) REFERENCES `alamat_negara` (`alamat_negara_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alamat_alamat_propinsi1` FOREIGN KEY (`alamat_propinsi_id`) REFERENCES `alamat_propinsi` (`alamat_propinsi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `alamat_anggota`
--
ALTER TABLE `alamat_anggota`
  ADD CONSTRAINT `fk_alamat_anggota_alamat1` FOREIGN KEY (`alamat_id`) REFERENCES `alamat` (`alamat_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alamat_anggota_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `fk_anggota_anggota_level1` FOREIGN KEY (`anggota_level_id`) REFERENCES `anggota_level` (`anggota_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anggota_anggota_status1` FOREIGN KEY (`anggota_status_id`) REFERENCES `anggota_status` (`anggota_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_anggota_anggota_type` FOREIGN KEY (`anggota_type_id`) REFERENCES `anggota_type` (`anggota_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `anggota_relasi`
--
ALTER TABLE `anggota_relasi`
  ADD CONSTRAINT `fk_anggota_relasi_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm`
--
ALTER TABLE `bpm`
  ADD CONSTRAINT `fk_bpm_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_bpm_status1` FOREIGN KEY (`bpm_status_id`) REFERENCES `bpm_status` (`bpm_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_proyek_versi1` FOREIGN KEY (`proyek_versi_id`) REFERENCES `proyek_versi` (`proyek_versi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_diagram`
--
ALTER TABLE `bpm_diagram`
  ADD CONSTRAINT `fk_bpm_diagram_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_diagram_bpm1` FOREIGN KEY (`bpm_id`) REFERENCES `bpm` (`bpm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_divisi`
--
ALTER TABLE `bpm_divisi`
  ADD CONSTRAINT `fk_bpm_divisi_bpm1` FOREIGN KEY (`bpm_id`) REFERENCES `bpm` (`bpm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_divisi_ke_diagram`
--
ALTER TABLE `bpm_divisi_ke_diagram`
  ADD CONSTRAINT `fk_bpm_divisi_ke_diagram_bpm_diagram1` FOREIGN KEY (`bpm_diagram_id`) REFERENCES `bpm_diagram` (`bpm_diagram_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_divisi_ke_diagram_bpm_divisi1` FOREIGN KEY (`bpm_divisi_id`) REFERENCES `bpm_divisi` (`bpm_divisi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_entitas`
--
ALTER TABLE `bpm_entitas`
  ADD CONSTRAINT `fk_bpm_entitas_bpm1` FOREIGN KEY (`bpm_id`) REFERENCES `bpm` (`bpm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_entitas_bpm_entitas_status1` FOREIGN KEY (`bpm_entitas_status_id`) REFERENCES `bpm_entitas_status` (`bpm_entitas_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_entitas_ke_diagram`
--
ALTER TABLE `bpm_entitas_ke_diagram`
  ADD CONSTRAINT `fk_bpm_entitas_ke_diagram_bpm_diagram1` FOREIGN KEY (`bpm_diagram_id`) REFERENCES `bpm_diagram` (`bpm_diagram_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_entitas_ke_diagram_bpm_entitas1` FOREIGN KEY (`bpm_entitas_id`) REFERENCES `bpm_entitas` (`bpm_entitas_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_entitas_ke_divisi`
--
ALTER TABLE `bpm_entitas_ke_divisi`
  ADD CONSTRAINT `fk_bpm_entitas_ke_divisi_bpm_divisi1` FOREIGN KEY (`bpm_divisi_id`) REFERENCES `bpm_divisi` (`bpm_divisi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_entitas_ke_divisi_bpm_entitas1` FOREIGN KEY (`bpm_entitas_id`) REFERENCES `bpm_entitas` (`bpm_entitas_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_proses`
--
ALTER TABLE `bpm_proses`
  ADD CONSTRAINT `fk_bpm_proses_bpm1` FOREIGN KEY (`bpm_id`) REFERENCES `bpm` (`bpm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_proses_ke_entitas`
--
ALTER TABLE `bpm_proses_ke_entitas`
  ADD CONSTRAINT `fk_bpm_proses_ke_entitas_bpm_entitas1` FOREIGN KEY (`bpm_entitas_id`) REFERENCES `bpm_entitas` (`bpm_entitas_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_proses_ke_entitas_bpm_proses1` FOREIGN KEY (`bpm_proses_id`) REFERENCES `bpm_proses` (`bpm_proses_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_proses_ke_proses`
--
ALTER TABLE `bpm_proses_ke_proses`
  ADD CONSTRAINT `fk_bpm_proses_ke_proses_bpm1` FOREIGN KEY (`bpm_id`) REFERENCES `bpm` (`bpm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_proses_ke_resource_data`
--
ALTER TABLE `bpm_proses_ke_resource_data`
  ADD CONSTRAINT `fk_bpm_proses_ke_resource_data_bpm_proses1` FOREIGN KEY (`bpm_proses_id`) REFERENCES `bpm_proses` (`bpm_proses_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bpm_proses_ke_resource_data_bpm_resource_data1` FOREIGN KEY (`bpm_resource_data_id`) REFERENCES `bpm_resource_data` (`bpm_resource_data_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_resource`
--
ALTER TABLE `bpm_resource`
  ADD CONSTRAINT `fk_bpm_resource_bpm1` FOREIGN KEY (`bpm_id`) REFERENCES `bpm` (`bpm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `bpm_resource_data`
--
ALTER TABLE `bpm_resource_data`
  ADD CONSTRAINT `fk_bpm_resource_data_bpm_resource1` FOREIGN KEY (`bpm_resource_id`) REFERENCES `bpm_resource` (`bpm_resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `fk_developer_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_developer_status1` FOREIGN KEY (`developer_status_id`) REFERENCES `developer_status` (`developer_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_developer_type1` FOREIGN KEY (`developer_type_id`) REFERENCES `developer_type` (`developer_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_manual`
--
ALTER TABLE `developer_manual`
  ADD CONSTRAINT `fk_developer_manual_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_manual_developer_manual_kategori1` FOREIGN KEY (`developer_manual_kategori_id`) REFERENCES `developer_manual_kategori` (`developer_manual_kategori_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_manual_developer_manual_status1` FOREIGN KEY (`developer_manual_status_id`) REFERENCES `developer_manual_status` (`developer_manual_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_manual_proyek_versi1` FOREIGN KEY (`proyek_versi_id`) REFERENCES `proyek_versi` (`proyek_versi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_manual_kategori`
--
ALTER TABLE `developer_manual_kategori`
  ADD CONSTRAINT `fk_developer_manual_kategori_developer1` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_manual_kategori_developer_manual_kategori_status1` FOREIGN KEY (`developer_manual_kategori_status_id`) REFERENCES `developer_manual_kategori_status` (`developer_manual_kategori_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_manual_ke_tag`
--
ALTER TABLE `developer_manual_ke_tag`
  ADD CONSTRAINT `fk_developer_manual_ke_tag_developer_manual1` FOREIGN KEY (`developer_manual_id`) REFERENCES `developer_manual` (`developer_manual_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_manual_ke_tag_developer_manual_tag1` FOREIGN KEY (`developer_manual_tag_id`) REFERENCES `developer_manual_tag` (`developer_manual_tag_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_manual_tag`
--
ALTER TABLE `developer_manual_tag`
  ADD CONSTRAINT `fk_developer_manual_tag_developer1` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_masalah`
--
ALTER TABLE `developer_masalah`
  ADD CONSTRAINT `fk_developer_masalah_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_developer1` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_developer_masalah_status1` FOREIGN KEY (`developer_masalah_status_id`) REFERENCES `developer_masalah_status` (`developer_masalah_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_developer_masalah_type1` FOREIGN KEY (`developer_masalah_type_id`) REFERENCES `developer_masalah_type` (`developer_masalah_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_proyek_versi1` FOREIGN KEY (`proyek_versi_id`) REFERENCES `proyek_versi` (`proyek_versi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_masalah_ke_tag`
--
ALTER TABLE `developer_masalah_ke_tag`
  ADD CONSTRAINT `fk_developer_masalah_ke_tag_developer_masalah1` FOREIGN KEY (`developer_masalah_id`) REFERENCES `developer_masalah` (`developer_masalah_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_ke_tag_developer_masalah_tag1` FOREIGN KEY (`developer_masalah_tag_id`) REFERENCES `developer_masalah_tag` (`developer_masalah_tag_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_masalah_solusi`
--
ALTER TABLE `developer_masalah_solusi`
  ADD CONSTRAINT `fk_developer_masalah_solusi_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_solusi_developer_masalah1` FOREIGN KEY (`developer_masalah_id`) REFERENCES `developer_masalah` (`developer_masalah_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_solusi_developer_masalah_solusi_status1` FOREIGN KEY (`developer_masalah_solusi_status_id`) REFERENCES `developer_masalah_solusi_status` (`developer_masalah_solusi_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_developer_masalah_solusi_developer_masalah_solusi_type1` FOREIGN KEY (`developer_masalah_solusi_type_id`) REFERENCES `developer_masalah_solusi_type` (`developer_masalah_solusi_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_masalah_tag`
--
ALTER TABLE `developer_masalah_tag`
  ADD CONSTRAINT `fk_developer_masalah_tag_developer1` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `developer_masalah_type`
--
ALTER TABLE `developer_masalah_type`
  ADD CONSTRAINT `fk_developer_masalah_type_developer1` FOREIGN KEY (`developer_id`) REFERENCES `developer` (`developer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `erd`
--
ALTER TABLE `erd`
  ADD CONSTRAINT `fk_erd_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_erd_status1` FOREIGN KEY (`erd_status_id`) REFERENCES `erd_status` (`erd_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_proyek_versi1` FOREIGN KEY (`proyek_versi_id`) REFERENCES `proyek_versi` (`proyek_versi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `erd_diagram`
--
ALTER TABLE `erd_diagram`
  ADD CONSTRAINT `fk_erd_diagram_erd1` FOREIGN KEY (`erd_id`) REFERENCES `erd` (`erd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `erd_entitas`
--
ALTER TABLE `erd_entitas`
  ADD CONSTRAINT `fk_erd_entitas_erd1` FOREIGN KEY (`erd_id`) REFERENCES `erd` (`erd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_entitas_erd_entitas_status1` FOREIGN KEY (`erd_entitas_status_id`) REFERENCES `erd_entitas_status` (`erd_entitas_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_entitas_erd_entitas_type1` FOREIGN KEY (`erd_entitas_type_id`) REFERENCES `erd_entitas_type` (`erd_entitas_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `erd_entitas_ke_diagram`
--
ALTER TABLE `erd_entitas_ke_diagram`
  ADD CONSTRAINT `fk_erd_entitas_ke_diagram_erd1` FOREIGN KEY (`erd_id`) REFERENCES `erd` (`erd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_entitas_ke_diagram_erd_diagram1` FOREIGN KEY (`erd_diagram_id`) REFERENCES `erd_diagram` (`erd_diagram_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_entitas_ke_diagram_erd_entitas1` FOREIGN KEY (`erd_entitas_id`) REFERENCES `erd_entitas` (`erd_entitas_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `erd_resource`
--
ALTER TABLE `erd_resource`
  ADD CONSTRAINT `fk_erd_resource_erd1` FOREIGN KEY (`erd_id`) REFERENCES `erd` (`erd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_resource_erd_entitas1` FOREIGN KEY (`erd_entitas_id`) REFERENCES `erd_entitas` (`erd_entitas_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `erd_resource_ke_diagram`
--
ALTER TABLE `erd_resource_ke_diagram`
  ADD CONSTRAINT `fk_erd_resource_ke_diagram_erd1` FOREIGN KEY (`erd_id`) REFERENCES `erd` (`erd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_resource_ke_diagram_erd_diagram1` FOREIGN KEY (`erd_diagram_id`) REFERENCES `erd_diagram` (`erd_diagram_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_erd_resource_ke_diagram_erd_resource1` FOREIGN KEY (`erd_resource_id`) REFERENCES `erd_resource` (`erd_resource_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD CONSTRAINT `fk_perusahaan_alamat_kota1` FOREIGN KEY (`alamat_kota_id`) REFERENCES `alamat_kota` (`alamat_kota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_alamat_propinsi1` FOREIGN KEY (`alamat_propinsi_id`) REFERENCES `alamat_propinsi` (`alamat_propinsi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_perusahaan_status1` FOREIGN KEY (`perusahaan_status_id`) REFERENCES `perusahaan_status` (`perusahaan_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_perusahaan_type1` FOREIGN KEY (`perusahaan_type_id`) REFERENCES `perusahaan_type` (`perusahaan_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan_cabang`
--
ALTER TABLE `perusahaan_cabang`
  ADD CONSTRAINT `fk_perusahaan_cabang_alamat_kodepos1` FOREIGN KEY (`alamat_kodepos_id`) REFERENCES `alamat_kodepos` (`alamat_kodepos_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_alamat_kota1` FOREIGN KEY (`alamat_kota_id`) REFERENCES `alamat_kota` (`alamat_kota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_alamat_negara1` FOREIGN KEY (`alamat_negara_id`) REFERENCES `alamat_negara` (`alamat_negara_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_alamat_propinsi1` FOREIGN KEY (`alamat_propinsi_id`) REFERENCES `alamat_propinsi` (`alamat_propinsi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_perusahaan1` FOREIGN KEY (`perusahaan_id`) REFERENCES `perusahaan` (`perusahaan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan_cabang_karyawan`
--
ALTER TABLE `perusahaan_cabang_karyawan`
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_perusahaan_cabang1` FOREIGN KEY (`perusahaan_cabang_id`) REFERENCES `perusahaan_cabang` (`perusahaan_cabang_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_perusahaan_cabang_karyawan_level1` FOREIGN KEY (`perusahaan_cabang_karyawan_level_id`) REFERENCES `perusahaan_cabang_karyawan_level` (`perusahaan_cabang_karyawan_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_perusahaan_cabang_karyawan_stat1` FOREIGN KEY (`perusahaan_cabang_karyawan_status_id`) REFERENCES `perusahaan_cabang_karyawan_status` (`perusahaan_cabang_karyawan_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan_cabang_karyawan_gajih`
--
ALTER TABLE `perusahaan_cabang_karyawan_gajih`
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_gajih_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_gajih_perusahaan_cabang_karyawa1` FOREIGN KEY (`perusahaan_cabang_karyawan_gajih_type_id`) REFERENCES `perusahaan_cabang_karyawan_gajih_type` (`perusahaan_cabang_karyawan_gajih_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_gajih_perusahaan_cabang_karyawa2` FOREIGN KEY (`perusahaan_cabang_karyawan_gajih_status_id`) REFERENCES `perusahaan_cabang_karyawan_gajih_status` (`perusahaan_cabang_karyawan_gajih_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_karyawan_gajih_perusahaan_cabang_karyawan1` FOREIGN KEY (`perusahaan_cabang_karyawan_id`) REFERENCES `perusahaan_cabang_karyawan` (`perusahaan_cabang_karyawan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan_cabang_konsumen`
--
ALTER TABLE `perusahaan_cabang_konsumen`
  ADD CONSTRAINT `fk_perusahaan_cabang_konsumen_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_konsumen_perusahaan_cabang1` FOREIGN KEY (`perusahaan_cabang_id`) REFERENCES `perusahaan_cabang` (`perusahaan_cabang_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_konsumen_perusahaan_cabang_karyawan1` FOREIGN KEY (`perusahaan_cabang_karyawan_id`) REFERENCES `perusahaan_cabang_karyawan` (`perusahaan_cabang_karyawan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_konsumen_perusahaan_cabang_konsumen_stat1` FOREIGN KEY (`perusahaan_cabang_konsumen_status_id`) REFERENCES `perusahaan_cabang_konsumen_status` (`perusahaan_cabang_konsumen_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perusahaan_cabang_konsumen_perusahaan_cabang_konsumen_type1` FOREIGN KEY (`perusahaan_cabang_konsumen_type_id`) REFERENCES `perusahaan_cabang_konsumen_type` (`perusahaan_cabang_konsumen_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan_profile`
--
ALTER TABLE `perusahaan_profile`
  ADD CONSTRAINT `fk_perusahaan_profile_perusahaan1` FOREIGN KEY (`perusahaan_id`) REFERENCES `perusahaan` (`perusahaan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perusahaan_type`
--
ALTER TABLE `perusahaan_type`
  ADD CONSTRAINT `fk_perusahaan_type_perusahaan_type_status1` FOREIGN KEY (`perusahaan_type_status_id`) REFERENCES `perusahaan_type_status` (`perusahaan_type_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyek`
--
ALTER TABLE `proyek`
  ADD CONSTRAINT `fk_proyek_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_proyek_status1` FOREIGN KEY (`proyek_status_id`) REFERENCES `proyek_status` (`proyek_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_proyek_type1` FOREIGN KEY (`proyek_type_id`) REFERENCES `proyek_type` (`proyek_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyek_error_lapor`
--
ALTER TABLE `proyek_error_lapor`
  ADD CONSTRAINT `fk_proyek_error_lapor_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_error_lapor_proyek_sub1` FOREIGN KEY (`proyek_sub_id`) REFERENCES `proyek_sub` (`proyek_sub_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyek_hasil`
--
ALTER TABLE `proyek_hasil`
  ADD CONSTRAINT `fk_proyek_hasil_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_hasil_proyek_sub1` FOREIGN KEY (`proyek_sub_id`) REFERENCES `proyek_sub` (`proyek_sub_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyek_ke_perusahaan_cabang`
--
ALTER TABLE `proyek_ke_perusahaan_cabang`
  ADD CONSTRAINT `fk_proyek_ke_perusahaan_cabang_perusahaan_cabang1` FOREIGN KEY (`perusahaan_cabang_id`) REFERENCES `perusahaan_cabang` (`perusahaan_cabang_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_ke_perusahaan_cabang_perusahaan_cabang_karyawan1` FOREIGN KEY (`perusahaan_cabang_karyawan_id`) REFERENCES `perusahaan_cabang_karyawan` (`perusahaan_cabang_karyawan_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_ke_perusahaan_cabang_perusahaan_cabang_konsumen1` FOREIGN KEY (`perusahaan_cabang_konsumen_id`) REFERENCES `perusahaan_cabang_konsumen` (`perusahaan_cabang_konsumen_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_ke_perusahaan_cabang_proyek1` FOREIGN KEY (`proyek_id`) REFERENCES `proyek` (`proyek_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_ke_perusahaan_cabang_proyek_ke_perusahaan_cabang_ty1` FOREIGN KEY (`proyek_ke_perusahaan_cabang_type_id`) REFERENCES `proyek_ke_perusahaan_cabang_type` (`proyek_ke_perusahaan_cabang_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyek_sub`
--
ALTER TABLE `proyek_sub`
  ADD CONSTRAINT `fk_proyek_sub_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_sub_proyek_versi1` FOREIGN KEY (`proyek_versi_id`) REFERENCES `proyek_versi` (`proyek_versi_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `proyek_versi`
--
ALTER TABLE `proyek_versi`
  ADD CONSTRAINT `fk_proyek_versi_anggota1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`anggota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_versi_proyek1` FOREIGN KEY (`proyek_id`) REFERENCES `proyek` (`proyek_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_proyek_versi_proyek_versi_status1` FOREIGN KEY (`proyek_versi_status_id`) REFERENCES `proyek_versi_status` (`proyek_versi_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
