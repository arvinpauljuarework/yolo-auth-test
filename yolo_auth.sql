-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 07, 2019 at 07:30 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yolo_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_08_07_072938_create_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('37593ce99c026a179b3bb2cf893e279026e86a9c569eafe44ca7063614d4d83f7c6cb640fb9770ee', 1, 2, NULL, '[]', 1, '2019-08-07 15:26:55', '2019-08-07 15:26:55', '2020-08-07 15:26:55'),
('3db534e4c76e959e66e73fadc9af94471480251914aab34622447f349378c52208b1b0446202e649', 1, 2, NULL, '[]', 1, '2019-08-07 15:37:29', '2019-08-07 15:37:29', '2020-08-07 15:37:29'),
('3f6b81571bfa9d8e3950d5a7bb4e8488857a2f0029523905aa04fcb66866d105ae4ec88c0b97ffec', 3, 2, NULL, '[]', 0, '2019-08-07 16:58:47', '2019-08-07 16:58:47', '2020-08-07 16:58:47'),
('3f79e8b1d3546720c3237a744f65855bbfde12799b4180f82da2d79e7d7526285e6beba3c723f1bf', 1, 2, NULL, '[]', 1, '2019-08-07 15:18:56', '2019-08-07 15:18:56', '2020-08-07 15:18:56'),
('4555e58f2a79fa55c4d96025ae5c0daf3f24f020e9a70a15bad71a49f7edf4c07da5167e0afdcfe9', 1, 2, NULL, '[]', 1, '2019-08-07 15:13:09', '2019-08-07 15:13:09', '2020-08-07 15:13:09'),
('45d9b03b59c052e39e026330d9b9c8e45b3efc2cba99a6391f623edd6906746527b173aaeca0b4a8', 1, 2, NULL, '[]', 1, '2019-08-07 15:10:55', '2019-08-07 15:10:55', '2020-08-07 15:10:55'),
('5bc26ef58376bda21d385b1c9367ba26b1a8dc58f776eaa860d561ed5faab493a5d195b3b88108ef', 1, 2, NULL, '[]', 1, '2019-08-07 15:26:42', '2019-08-07 15:26:42', '2020-08-07 15:26:42'),
('6602bc06811f5101aaf848f6c4dc6041a8fb3ee94f7835d0c91e6dc8a45cefd440c302c88f76df45', 1, 2, NULL, '[]', 1, '2019-08-07 16:27:22', '2019-08-07 16:27:22', '2020-08-07 16:27:22'),
('6ee3b86b94386215ac4639af528e9f556d12bfa78bd843ce7fea83067ee6c0c1f77074b394984f47', 1, 2, NULL, '[]', 1, '2019-08-07 15:08:38', '2019-08-07 15:08:38', '2020-08-07 15:08:38'),
('77f46b99aad96c83d62a6f3cb72625a8efb25a1e9737c4e330c9f1891a7aecc2a13ffd1c7c5002c1', 1, 2, NULL, '[]', 1, '2019-08-07 15:27:34', '2019-08-07 15:27:34', '2020-08-07 15:27:34'),
('8547a57cf6b0b2a7a026491d88ab304527a18d652f01924fcf061d125675e90924f6f8825e476c25', 1, 2, NULL, '[]', 1, '2019-08-07 15:26:20', '2019-08-07 15:26:20', '2020-08-07 15:26:20'),
('903e23c7bff622b92017e24333c095729fe8e0d5887d7f306c8585b395b21a47b4d9ca01ddead9b6', 1, 2, NULL, '[]', 1, '2019-08-07 15:11:47', '2019-08-07 15:11:47', '2020-08-07 15:11:47'),
('90781de30dd5f1b2e3661d475adbc7d78236cae6195e8adc0aa01fd88f48d2ecc3dbb85ebec1b192', 1, 2, NULL, '[]', 1, '2019-08-07 15:04:32', '2019-08-07 15:04:32', '2020-08-07 15:04:32'),
('9867fd70f9ca6476bc8868a630a4147f7ae03fe8eb6962b37826b7183eaf0aceab0251dacbe468be', 1, 2, NULL, '[]', 1, '2019-08-07 15:12:39', '2019-08-07 15:12:39', '2020-08-07 15:12:39'),
('99a49253fde9983ed027d358825e5891e726263d8f5669907dd82bfdd419110c65b9e3dd03eefef4', 1, 2, NULL, '[]', 1, '2019-08-07 15:18:24', '2019-08-07 15:18:24', '2020-08-07 15:18:24'),
('9f46c3a4b2b404821a96c3bd57cac0a1a44f1918533d68ce04d1135b55c12725b3701f486cbe3969', 1, 2, NULL, '[]', 1, '2019-08-07 15:23:34', '2019-08-07 15:23:34', '2020-08-07 15:23:34'),
('a53a7ffdbb6539f5dd67f63d244e1aaedbbd1e8832aac8238c29cce0777dc8ffdbc67f7d4d306449', 1, 2, NULL, '[]', 1, '2019-08-07 15:13:32', '2019-08-07 15:13:32', '2020-08-07 15:13:32'),
('ac255ebc783e693aa60a3a41bf8f4b7cf63ed703a4af46915e6714d3f5c8fbfb25e1a16d9dd0334f', 1, 2, NULL, '[]', 1, '2019-08-07 15:24:27', '2019-08-07 15:24:27', '2020-08-07 15:24:27'),
('af5243fcaa082e1f5fad72e7901f033c788757e794065070fd1eaa6e0c6ac6c04d0411512167db56', 1, 2, NULL, '[]', 1, '2019-08-07 15:03:35', '2019-08-07 15:03:35', '2020-08-07 15:03:35'),
('c5293d04e0e4370982019d81644d4d5880db993976f73f2efa130953d49aa675e88a47a0de2e9618', 1, 2, NULL, '[]', 0, '2019-08-07 16:40:37', '2019-08-07 16:40:37', '2020-08-07 16:40:37'),
('d8020c7914e1541cb1b1b5c847d7abe168fd6b75cef3331ce87f1e243a126f207844cc4655708fc0', 1, 2, NULL, '[]', 1, '2019-08-07 15:09:01', '2019-08-07 15:09:01', '2020-08-07 15:09:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, ' Personal Access Client', 'yqJGv0Iy1l4iaEL4PDrVD6WEbF2iagYFgOq32cG3', 'http://localhost', 1, 0, 0, '2019-08-07 04:49:54', '2019-08-07 04:49:54'),
(2, NULL, ' Password Grant Client', 'IBQUZPpE8yydFJIgyi4NI1zcN1JD30JeseVcx3HI', 'http://localhost', 0, 1, 0, '2019-08-07 04:49:54', '2019-08-07 04:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('00f771f6b3bf9e9a8c4c08ca33c184cb8d8325dacf252d3400c1dbaf2a6a5ec064d942d96b4630c7', '99a49253fde9983ed027d358825e5891e726263d8f5669907dd82bfdd419110c65b9e3dd03eefef4', 0, '2020-08-07 15:18:24'),
('17f71b7a2bf95b6490a3d35c7e8c03c75965c45c9fe2817073c4f45faa2560f42801d007d93df8f2', '6602bc06811f5101aaf848f6c4dc6041a8fb3ee94f7835d0c91e6dc8a45cefd440c302c88f76df45', 0, '2020-08-07 16:27:23'),
('305175561697f04ca79ae3fc27018cebc299ad4b9ea38035ec3a84ca3870b9ac1c3f3de28b4f5d6d', '5bc26ef58376bda21d385b1c9367ba26b1a8dc58f776eaa860d561ed5faab493a5d195b3b88108ef', 0, '2020-08-07 15:26:42'),
('305eb2b47d1b22a8b768c528668c072701aae9d7080e3322f479a071351b47ea60dcf8d81c9db3a2', '903e23c7bff622b92017e24333c095729fe8e0d5887d7f306c8585b395b21a47b4d9ca01ddead9b6', 0, '2020-08-07 15:11:47'),
('32d6780fab250662bc79a94001c1b240832e1b19e4077de24c61cad96623e1a3bd5b6dee613e63f0', 'a53a7ffdbb6539f5dd67f63d244e1aaedbbd1e8832aac8238c29cce0777dc8ffdbc67f7d4d306449', 0, '2020-08-07 15:13:32'),
('43bf5a1f89211cb2e8574a22e3387f2fb2904a38408fbb3953de98f24df503ebdda0ca5192e21a22', '9867fd70f9ca6476bc8868a630a4147f7ae03fe8eb6962b37826b7183eaf0aceab0251dacbe468be', 0, '2020-08-07 15:12:39'),
('5f15e18f8547b82a027a146baf5d368b6c3f43add95d87e21fc66d915cfcae1fd1c586a33ce29c86', '77f46b99aad96c83d62a6f3cb72625a8efb25a1e9737c4e330c9f1891a7aecc2a13ffd1c7c5002c1', 0, '2020-08-07 15:27:34'),
('6615b721ad6ee6ff003a67e95d5dc44c4e90032c2c4ea8f9733550da8b6a1c6f5b01163e93f7ea66', '3db534e4c76e959e66e73fadc9af94471480251914aab34622447f349378c52208b1b0446202e649', 0, '2020-08-07 15:37:29'),
('8196edb837503596c67cbf4c4b59ecd109a1fa9a6e98e72d82f8ced40b6ffbd824f12065b2481c1d', '6ee3b86b94386215ac4639af528e9f556d12bfa78bd843ce7fea83067ee6c0c1f77074b394984f47', 0, '2020-08-07 15:08:38'),
('8d945092c22f3838f5a51f67176d6b1660fb6243ce33b48b4d360cc54e9f60031fe5da76288afd34', '3f79e8b1d3546720c3237a744f65855bbfde12799b4180f82da2d79e7d7526285e6beba3c723f1bf', 0, '2020-08-07 15:18:56'),
('8e7acfcb6d9e1502204f8610b83d8c900b1ed8c64ee165ba19143019986b42838d0ff36106c786e4', '9f46c3a4b2b404821a96c3bd57cac0a1a44f1918533d68ce04d1135b55c12725b3701f486cbe3969', 0, '2020-08-07 15:23:34'),
('935e875a165e82834eabfe6e16c49606709d0ba1abdd9155fd2a8b5d95fadc6fee12d16bb29db6e0', '37593ce99c026a179b3bb2cf893e279026e86a9c569eafe44ca7063614d4d83f7c6cb640fb9770ee', 0, '2020-08-07 15:26:55'),
('9b758bdef71f347a60c0e95321fb38607149c06960f35c02ec292629d0a14fd2477d7bc00eec5a09', 'af5243fcaa082e1f5fad72e7901f033c788757e794065070fd1eaa6e0c6ac6c04d0411512167db56', 0, '2020-08-07 15:03:35'),
('9eccc26df6e48a2afca515f6bb1d21a404807c3410e5a153eb705094420a9500456d7ed4154b3093', 'c5293d04e0e4370982019d81644d4d5880db993976f73f2efa130953d49aa675e88a47a0de2e9618', 0, '2020-08-07 16:40:37'),
('a91654d527967336b844f416153f305177c446c2eec994cb5942aab72fe4a220f58678f0c17f95ad', '45d9b03b59c052e39e026330d9b9c8e45b3efc2cba99a6391f623edd6906746527b173aaeca0b4a8', 0, '2020-08-07 15:10:55'),
('b446296bb07dab0263b12576cdc488199163a123116b55375700eca01dd999758b2631d0e1d82a2b', '3f6b81571bfa9d8e3950d5a7bb4e8488857a2f0029523905aa04fcb66866d105ae4ec88c0b97ffec', 0, '2020-08-07 16:58:47'),
('b54b206fed950295603bc02b8093938a3ed5c25de996fa497cb3b23f581e884abfd6f81dd58a3002', 'ac255ebc783e693aa60a3a41bf8f4b7cf63ed703a4af46915e6714d3f5c8fbfb25e1a16d9dd0334f', 0, '2020-08-07 15:24:28'),
('c5dc1431b227d28e338d78029839d4eb09c4983754ab0495ca7d3f01a5adace8eab18f38561cede9', 'd8020c7914e1541cb1b1b5c847d7abe168fd6b75cef3331ce87f1e243a126f207844cc4655708fc0', 0, '2020-08-07 15:09:01'),
('c5f34c74bbac5a92a02b4273f3149fe810fd31804be664cdba6b849a51550ab582ebbcab3ba38f8f', '90781de30dd5f1b2e3661d475adbc7d78236cae6195e8adc0aa01fd88f48d2ecc3dbb85ebec1b192', 0, '2020-08-07 15:04:32'),
('d4db6032245f3dbec3b774f46db9bdb7b2b6cadb40adaf5ef49c875d0309c7508c43547acb0b17b9', '4555e58f2a79fa55c4d96025ae5c0daf3f24f020e9a70a15bad71a49f7edf4c07da5167e0afdcfe9', 0, '2020-08-07 15:13:09'),
('eb1d4485b09b61bc9bda8b4231f5b825d9f64fb01fe929ed39914114680e18692844555cf10f9785', '8547a57cf6b0b2a7a026491d88ab304527a18d652f01924fcf061d125675e90924f6f8825e476c25', 0, '2020-08-07 15:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'arvin', 'arvin-paul.ond.juare@dxc.com', '$2y$10$eGyRUQ0vhT8OlqLJY70ple1WoLaPVWIeEeIEUBMlF6AtkSqMdBfBq', '2019-08-07 07:31:17', '2019-08-07 07:31:17'),
(3, 'Arvin Paul Juare', 'arvinpauljuarework@gmail.com', '$2y$10$Bv2yKkXYSnuIP9Glk0J3W.3XkWWAuONULeTfbC41FAvaU069YfY7K', '2019-08-07 16:52:05', '2019-08-07 16:52:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
