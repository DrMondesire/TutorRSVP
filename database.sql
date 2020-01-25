-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql208.byetcluster.com
-- Generation Time: Jan 25, 2020 at 12:02 PM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_24508084_easyappointments`
--

-- --------------------------------------------------------

--
-- Table structure for table `ea_appointments`
--

CREATE TABLE `ea_appointments` (
  `id` int(11) NOT NULL,
  `book_datetime` datetime DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `notes` text,
  `hash` text,
  `is_unavailable` tinyint(4) DEFAULT '0',
  `id_users_provider` int(11) DEFAULT NULL,
  `id_users_customer` int(11) DEFAULT NULL,
  `id_services` int(11) DEFAULT NULL,
  `id_google_calendar` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_appointments`
--

INSERT INTO `ea_appointments` (`id`, `book_datetime`, `start_datetime`, `end_datetime`, `notes`, `hash`, `is_unavailable`, `id_users_provider`, `id_users_customer`, `id_services`, `id_google_calendar`) VALUES
(1, '2020-01-24 23:23:46', '2020-01-28 09:45:00', '2020-01-28 10:00:00', 'Help with Cplus', '8c543aa680bdd629f6d13e656487fc36', 0, 3, 4, 18, NULL),
(2, '2020-01-24 23:45:00', '2020-01-29 17:45:00', '2020-01-29 18:00:00', '', '88f42924cfe4f9516caed765b58fc2da', 0, 3, 4, 19, NULL),
(3, '2020-01-25 00:34:07', '2020-01-27 09:30:00', '2020-01-27 09:45:00', 'Testing some stfuff', '3e2284fa49da26ba030984f41b067ef0', 0, 3, 5, 19, NULL),
(4, '2020-01-25 01:08:40', '2020-01-27 09:00:00', '2020-01-27 09:15:00', 'sdfsdf', '1359f7a1a405a95284dd99148d9ac056', 0, 3, 10, 18, NULL),
(5, '2020-01-25 01:27:56', '2020-01-27 09:45:00', '2020-01-27 10:00:00', 'Need a lot of help reading stuff in a test.', 'febd05d4304dbca53bfc7200d5329a7a', 0, 3, 10, 18, NULL),
(6, '2020-01-25 01:35:18', '2020-01-27 09:15:00', '2020-01-27 09:30:00', 'Help me help you!', '1839b5324bef77201aa18d615327a6fd', 0, 3, 10, 19, NULL),
(7, '2020-01-25 01:52:43', '2020-01-28 09:00:00', '2020-01-28 09:15:00', 'Some details', 'f9a70d478b0d1fbfc2090fe85f3c189e', 0, 3, 10, 18, NULL),
(8, '2020-01-25 01:55:45', '2020-01-28 09:15:00', '2020-01-28 09:30:00', 'cxvxcv', 'e58799137b20db03668b0aff77d56653', 0, 3, 10, 18, NULL),
(9, '2020-01-25 02:02:34', '2020-01-27 10:00:00', '2020-01-27 10:15:00', 'adasdasda', '268dc26bf90627215d29a07529862da0', 0, 3, 10, 18, NULL),
(10, '2020-01-25 03:20:57', '2020-01-20 09:30:00', '2020-01-22 04:30:00', '', NULL, 1, 3, NULL, NULL, NULL),
(11, '2020-01-25 03:37:15', '2020-01-27 08:00:00', '2020-01-27 08:15:00', 'Some notes.', 'ba9de7f8ebeb1db0eca8f8773050a3ff', 0, 11, 10, 18, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ea_consents`
--

CREATE TABLE `ea_consents` (
  `id` int(11) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(256) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `ip` varchar(256) DEFAULT NULL,
  `type` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ea_migrations`
--

CREATE TABLE `ea_migrations` (
  `version` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_migrations`
--

INSERT INTO `ea_migrations` (`version`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `ea_roles`
--

CREATE TABLE `ea_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `is_admin` tinyint(4) DEFAULT NULL,
  `appointments` int(11) DEFAULT NULL,
  `customers` int(11) DEFAULT NULL,
  `services` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL,
  `system_settings` int(11) DEFAULT NULL,
  `user_settings` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_roles`
--

INSERT INTO `ea_roles` (`id`, `name`, `slug`, `is_admin`, `appointments`, `customers`, `services`, `users`, `system_settings`, `user_settings`) VALUES
(1, 'Administrator', 'admin', 1, 15, 15, 15, 15, 15, 15),
(2, 'Provider', 'provider', 0, 15, 15, 0, 0, 0, 15),
(3, 'Customer', 'customer', 0, 0, 0, 0, 0, 0, 0),
(4, 'Secretary', 'secretary', 0, 15, 15, 0, 0, 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ea_secretaries_providers`
--

CREATE TABLE `ea_secretaries_providers` (
  `id_users_secretary` int(11) NOT NULL,
  `id_users_provider` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ea_services`
--

CREATE TABLE `ea_services` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency` varchar(32) DEFAULT NULL,
  `description` text,
  `availabilities_type` varchar(32) DEFAULT 'flexible',
  `attendants_number` int(11) DEFAULT '1',
  `id_service_categories` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_services`
--

INSERT INTO `ea_services` (`id`, `name`, `duration`, `price`, `currency`, `description`, `availabilities_type`, `attendants_number`, `id_service_categories`) VALUES
(3, 'Biology 1', 15, '0.00', '', '', 'flexible', 1, 5),
(4, 'Biology 2', 15, '0.00', '', '', 'flexible', 1, 5),
(2, 'Anatomy and Physiology', 15, '0.00', '', '', 'flexible', 1, 4),
(5, 'Chemistry 1', 15, '0.00', '', '', 'flexible', 1, 6),
(6, 'Chemistry 2', 15, '0.00', '', '', 'flexible', 1, 6),
(7, 'Organic Chemistry 1', 15, '0.00', '', '', 'flexible', 1, 6),
(8, 'Organic Chemistry 2', 15, '0.00', '', '', 'flexible', 1, 6),
(9, 'General Biology', 15, '0.00', '', '', 'flexible', 1, 5),
(10, 'Algebra', 15, '0.00', '', '', 'flexible', 1, 8),
(11, 'Pre-calculus', 15, '0.00', '', '', 'flexible', 1, 8),
(12, 'Calculus 1', 15, '0.00', '', '', 'flexible', 1, 8),
(13, 'Calculus 2', 15, '0.00', '', '', 'flexible', 1, 8),
(14, 'Calculus 3', 15, '0.00', '', '', 'flexible', 1, 8),
(15, 'Applied Statistics', 15, '0.00', '', '', 'flexible', 1, 8),
(16, 'Advanced Statistics', 15, '0.00', '', '', 'flexible', 1, 8),
(17, 'Data Science and Analytics', 15, '0.00', '', '', 'flexible', 1, 8),
(18, 'C++', 15, '0.00', '', '', 'flexible', 1, 7),
(19, 'Java', 15, '0.00', '', '', 'flexible', 1, 7),
(20, 'Physics 1', 15, '0.00', '', '', 'flexible', 1, 9),
(21, 'Physics 2', 15, '0.00', '', '', 'flexible', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `ea_services_providers`
--

CREATE TABLE `ea_services_providers` (
  `id_users` int(11) NOT NULL,
  `id_services` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_services_providers`
--

INSERT INTO `ea_services_providers` (`id_users`, `id_services`) VALUES
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 15),
(3, 17),
(3, 18),
(3, 19),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(7, 8),
(7, 9),
(8, 10),
(8, 11),
(8, 12),
(8, 13),
(8, 14),
(8, 15),
(8, 16),
(8, 17),
(8, 20),
(8, 21),
(9, 5),
(9, 10),
(9, 11),
(9, 12),
(9, 15),
(9, 17),
(9, 20),
(11, 12),
(11, 18),
(11, 19);

-- --------------------------------------------------------

--
-- Table structure for table `ea_service_categories`
--

CREATE TABLE `ea_service_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_service_categories`
--

INSERT INTO `ea_service_categories` (`id`, `name`, `description`) VALUES
(4, 'Anatomy and Physiology', ''),
(5, 'Biology', ''),
(6, 'Chemistry', ''),
(7, 'Computer Science', ''),
(8, 'Math and Statistics', ''),
(9, 'Physics', '');

-- --------------------------------------------------------

--
-- Table structure for table `ea_settings`
--

CREATE TABLE `ea_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_settings`
--

INSERT INTO `ea_settings` (`id`, `name`, `value`) VALUES
(1, 'company_working_plan', '{\"sunday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"monday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"tuesday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"wednesday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"thursday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"friday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"saturday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]}}'),
(2, 'book_advance_timeout', '15'),
(3, 'google_analytics_code', ''),
(4, 'customer_notifications', '1'),
(5, 'date_format', 'MDY'),
(6, 'time_format', 'regular'),
(7, 'require_captcha', '0'),
(8, 'display_cookie_notice', '0'),
(9, 'cookie_notice_content', 'Cookie notice content.'),
(10, 'display_terms_and_conditions', '0'),
(11, 'terms_and_conditions_content', 'Terms and conditions content.'),
(12, 'display_privacy_policy', '0'),
(13, 'privacy_policy_content', 'Privacy policy content.'),
(14, 'company_name', 'STU Tutoring Reservations'),
(15, 'company_email', 'smondesire@stu.edu'),
(16, 'company_link', 'www.stu.edu');

-- --------------------------------------------------------

--
-- Table structure for table `ea_users`
--

CREATE TABLE `ea_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(256) DEFAULT NULL,
  `last_name` varchar(512) DEFAULT NULL,
  `email` varchar(512) DEFAULT NULL,
  `mobile_number` varchar(128) DEFAULT NULL,
  `phone_number` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `city` varchar(256) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `zip_code` varchar(64) DEFAULT NULL,
  `notes` text,
  `id_roles` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_users`
--

INSERT INTO `ea_users` (`id`, `first_name`, `last_name`, `email`, `mobile_number`, `phone_number`, `address`, `city`, `state`, `zip_code`, `notes`, `id_roles`) VALUES
(1, 'S', 'Mondesire', 'smondesire@stu.edu', NULL, '3054746075', NULL, NULL, NULL, NULL, NULL, 1),
(6, 'Sandy', 'Benito', 'sbenito@stu.edu', '', 'sbenito@stu.edu', '', '', '', '', '', 2),
(11, 'Sean', 'Mondesire', 'mondesire@gmail.com', '', '32452342', '', '', '', '', 'Hi!', 2),
(10, 'Test', 'Test', 'mondesire.sean@gmail.com', NULL, '11111', 'Me', 'You', NULL, 'Ch', NULL, 3),
(7, 'Raeden', 'Gray', 'rgray@stu.edu', '', 'rgray@stu.edu', '', '', '', '', '', 2),
(8, 'Sierra', 'Hawthorne', 'shawthorne@stu.edu', '', 'shawthorne@stu.edu', '', '', '', '', '', 2),
(9, 'Claudio', 'Lupi', 'clupi@stu.edu', '', 'clupi@stu.edu', '', '', '', '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `ea_user_settings`
--

CREATE TABLE `ea_user_settings` (
  `id_users` int(11) NOT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `salt` varchar(512) DEFAULT NULL,
  `working_plan` text,
  `notifications` tinyint(4) DEFAULT '0',
  `google_sync` tinyint(4) DEFAULT '0',
  `google_token` text,
  `google_calendar` varchar(128) DEFAULT NULL,
  `sync_past_days` int(11) DEFAULT '5',
  `sync_future_days` int(11) DEFAULT '5',
  `calendar_view` varchar(32) DEFAULT 'default'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ea_user_settings`
--

INSERT INTO `ea_user_settings` (`id_users`, `username`, `password`, `salt`, `working_plan`, `notifications`, `google_sync`, `google_token`, `google_calendar`, `sync_past_days`, `sync_future_days`, `calendar_view`) VALUES
(1, 'smondesire', '9ba67a7f50ab5072cb33c8f205401db42e28789123acffbb6f8da773ad859590', '12e99b7c299eca906b5efbf3151cf4ede103bdf6bdb3daf0cd56c16ae094ade1', NULL, 0, 0, NULL, NULL, 5, 5, 'default'),
(2, 'johndoe', '154e230dc875c9f6d76463093a9b5565467bbd55844665037052c260973e6da0', '9bb3c0c8f4bdd3a669aabf9f15adc6430890c231aa95bbbef445f2d4d3ea4728', '{\"sunday\":null,\"monday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"tuesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"wednesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"thursday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"friday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"saturday\":null}', 0, 0, NULL, NULL, 5, 5, 'default'),
(3, 'seantrashbox', '2a5648a9e490334cd905ac8337f6277300edc1686d36451b5d64e0a85ef81e34', 'f5df3f8f235f1033f9a6146996364cdf880855850c8876f4db47e3d35ddbf33a', '{\"sunday\":null,\"monday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"tuesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"wednesday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"thursday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"friday\":{\"start\":\"09:00\",\"end\":\"18:00\",\"breaks\":[{\"start\":\"11:20\",\"end\":\"11:30\"},{\"start\":\"14:30\",\"end\":\"15:00\"}]},\"saturday\":null}', 1, 0, NULL, NULL, 5, 5, 'default'),
(6, 'sbenito@stu.edu', 'ad97ba423d6a9da583daf2acb1c841d479d99d09c50571a62724db1e1d68bf6c', '95295bf72a3cebeb28095965896e64fa4e41f16798eb29c449105e4180c5ea9c', '{\"sunday\":null,\"monday\":null,\"tuesday\":{\"start\":\"09:00\",\"end\":\"20:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"18:00\"}]},\"wednesday\":{\"start\":\"17:00\",\"end\":\"20:00\",\"breaks\":[]},\"thursday\":{\"start\":\"09:00\",\"end\":\"20:00\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"18:00\"}]},\"friday\":{\"start\":\"13:00\",\"end\":\"15:00\",\"breaks\":[]},\"saturday\":null}', 1, 0, NULL, NULL, 5, 5, 'default'),
(7, 'rgray@stu.edu', '2a8d9f8d538cc6c4cfad5671291bd994d15d8dac09c8103baa0a9ab133562d8a', '2f4272254091ef54d807aa5edc31aeb02895f06d8c633042d729783da05136e1', '{\"sunday\":{\"start\":\"18:00\",\"end\":\"22:00\",\"breaks\":[]},\"monday\":{\"start\":\"19:00\",\"end\":\"23:59\",\"breaks\":[]},\"tuesday\":null,\"wednesday\":{\"start\":\"19:00\",\"end\":\"23:59\",\"breaks\":[]},\"thursday\":{\"start\":\"18:00\",\"end\":\"22:00\",\"breaks\":[]},\"friday\":null,\"saturday\":null}', 1, 0, NULL, NULL, 5, 5, 'default'),
(8, 'shawthorne@stu.edu', 'b9c8313e27a785e314e1ae8d0575eed79a6d994638a19b654014344052c0466c', 'ff27f2b1dedc35e4eea4846939011a42790d5ae64b47dd43e32aa635dcbf02ac', '{\"sunday\":null,\"monday\":{\"start\":\"11:00\",\"end\":\"14:00\",\"breaks\":[]},\"tuesday\":null,\"wednesday\":{\"start\":\"10:00\",\"end\":\"14:00\",\"breaks\":[]},\"thursday\":null,\"friday\":{\"start\":\"10:00\",\"end\":\"13:00\",\"breaks\":[]},\"saturday\":null}', 1, 0, NULL, NULL, 5, 5, 'default'),
(11, 'mondesire@gmail.com', '96a2096ba04c188a788f5acfca6b6bcc70b52ff0db94a6c6277bc3c4761df613', 'a24aec8faa1c61dd67f638fc576e03fd000bd0e557ec33ce0ebf817eb3fad4d8', '{\"sunday\":null,\"monday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"tuesday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"wednesday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"thursday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"friday\":{\"start\":\"08:00\",\"end\":\"23:59\",\"breaks\":[]},\"saturday\":null}', 1, 0, NULL, NULL, 5, 5, 'default'),
(9, 'clupi@stu.edu', '3a87f236020c4a36a56682ab48f2e7f8d60d91f4808a49ea5149fa447094386f', '6b5097b78e93e875cd523d2fa041e88621de9ccd590de919e7071529bfe0b807', '{\"sunday\":null,\"monday\":{\"start\":\"14:00\",\"end\":\"17:00\",\"breaks\":[]},\"tuesday\":{\"start\":\"10:00\",\"end\":\"12:30\",\"breaks\":[]},\"wednesday\":{\"start\":\"14:00\",\"end\":\"17:00\",\"breaks\":[]},\"thursday\":{\"start\":\"10:00\",\"end\":\"15:30\",\"breaks\":[{\"start\":\"12:00\",\"end\":\"13:00\"}]},\"friday\":{\"start\":\"13:00\",\"end\":\"15:00\",\"breaks\":[]},\"saturday\":null}', 1, 0, NULL, NULL, 5, 5, 'default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ea_appointments`
--
ALTER TABLE `ea_appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_users_customer` (`id_users_customer`),
  ADD KEY `id_services` (`id_services`),
  ADD KEY `id_users_provider` (`id_users_provider`);

--
-- Indexes for table `ea_consents`
--
ALTER TABLE `ea_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_roles`
--
ALTER TABLE `ea_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_secretaries_providers`
--
ALTER TABLE `ea_secretaries_providers`
  ADD PRIMARY KEY (`id_users_secretary`,`id_users_provider`),
  ADD KEY `id_users_secretary` (`id_users_secretary`),
  ADD KEY `id_users_provider` (`id_users_provider`);

--
-- Indexes for table `ea_services`
--
ALTER TABLE `ea_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_service_categories` (`id_service_categories`);

--
-- Indexes for table `ea_services_providers`
--
ALTER TABLE `ea_services_providers`
  ADD PRIMARY KEY (`id_users`,`id_services`),
  ADD KEY `id_services` (`id_services`);

--
-- Indexes for table `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_settings`
--
ALTER TABLE `ea_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ea_users`
--
ALTER TABLE `ea_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_roles` (`id_roles`);

--
-- Indexes for table `ea_user_settings`
--
ALTER TABLE `ea_user_settings`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ea_appointments`
--
ALTER TABLE `ea_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ea_consents`
--
ALTER TABLE `ea_consents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ea_roles`
--
ALTER TABLE `ea_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ea_services`
--
ALTER TABLE `ea_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ea_service_categories`
--
ALTER TABLE `ea_service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ea_settings`
--
ALTER TABLE `ea_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ea_users`
--
ALTER TABLE `ea_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
