-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 09:15 PM
-- Server version: 8.0.45
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barbershop`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `accountId` varchar(255) NOT NULL,
  `providerId` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `createdAt` varchar(255) NOT NULL,
  `updatedAt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `userId`, `accountId`, `providerId`, `password`, `createdAt`, `updatedAt`) VALUES
('kBxuG1AyyhIvWyk911rll0KQmLfI2YFb', 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', 'credential', '2e8dbb82ff3bf57c3fe72a6fc95cfb01:b5319eb686e531343fa70eca99fd11b117a83c1f6d3a611a209e095c231a168d1874e88ae659bcce5869501ac7638f6409586c0756d0cd5d165dd3ae91a0b087', '2026-02-25 10:55:04.381', '2026-02-25 10:55:04.381'),
('6vEKC8uKoaAvGsE51O1lOAuKQCtvsnqm', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'credential', '79bac3a0cc5bddaab378981f2e3aef72:60e36017169f9c4a84a0a423b4ed8057be2756fb79a05810f077b0607e7b3b57d17c1f2acd127d250a1ced5543d1a4beadd8523414eb3802b2b58668adc1fd66', '2026-02-25 08:11:03.510', '2026-02-25 08:11:03.510');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `services` json NOT NULL,
  `barberId` varchar(255) NOT NULL,
  `barber` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `contact` tinyint(1) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completedAt` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int NOT NULL,
  `icon` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `name`, `description`, `price`, `createdAt`, `updatedAt`) VALUES
(10, 'Haircut', 'Haircut', 'Make your style feel cool again.', 16, '2026-02-26 14:28:38', '2026-02-26 14:28:38'),
(11, 'Beard Trim', 'Beard Trim', 'Get that bush styled for cool looking.', 8, '2026-02-26 14:29:36', '2026-02-26 14:29:36'),
(12, 'Haircut & Beard Trim', 'Full General', 'Restore the full potential of your head.', 19.5, '2026-02-26 14:30:24', '2026-02-26 14:30:24'),
(13, 'Child Haircut', 'Kid\'s Haircut', 'Bring in your boy and leave with a man.', 10, '2026-02-26 14:30:56', '2026-02-26 14:30:56'),
(14, 'Son & Dad Haircut', 'Father & Children Haircut', 'Do you know a good family program? I do.', 25.7, '2026-02-26 14:32:04', '2026-02-26 14:32:04'),
(15, 'Haircut for Length', 'Woman\'s Dream', 'Come and let\'s see the princess leave the shop together.', 100.7, '2026-02-26 14:32:54', '2026-02-26 14:32:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `userAgent` varchar(255) NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `expiresAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `userId`, `userAgent`, `ipAddress`, `token`, `createdAt`, `updatedAt`, `expiresAt`) VALUES
('48LTxx12o3xvDqfKjTC1ebnbB9X7NUph', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '', 'mWUrk6SAputGGbh9ddQbpNSztSk7ivEP', '2026-02-25 09:23:08', '2026-02-25 09:23:08', '2026-02-25 09:23:18'),
('4VaReiCOOCok6TtanY8QrTeaKYBQiJUm', 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'smy1rnTpPVoIiSDuy9vgSUSESEKIodCm', '2026-02-26 14:52:27', '2026-02-26 14:52:27', '2026-02-26 14:52:37'),
('5b2kTzHP6C9CH57W6ycrwKm8C5yqsCPa', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'SAoTE1MHhgh1F1XVfGxQSsUMncO9DneM', '2026-02-25 09:52:09', '2026-02-25 09:52:09', '2026-02-25 09:52:19'),
('6oaEy1nQzevE3ZuZ2SveyFZ74mU2kMys', 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'dRETWsuhOJbIHXJAx3y48QvEssU9Psxd', '2026-02-25 10:55:11', '2026-02-25 10:55:11', '2026-02-25 10:55:21'),
('7AT0VRUWESsCMcDm3iiFSJGClmI2ycd5', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '', 'IQmt5MvKTVdmnUyawiKFhnooumLtDnRe', '2026-02-25 09:12:11', '2026-02-25 09:12:11', '2026-02-25 09:12:12'),
('7dSOzocsQavIsjixyVKYxGOLH19KpFJH', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'cFyMjfPfITbDWbgnOaKc0Q76NYm0JETg', '2026-02-25 10:55:26', '2026-02-25 10:55:26', '2026-02-25 10:55:36'),
('8XIsRKdPGlbwXY4MdAGjDh6se1xkbijO', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '', 'WzfpsTisBbxxSYaKvYVg26Rc5yTjYvuX', '2026-02-25 09:15:35', '2026-02-25 09:15:35', '2026-02-25 09:15:36'),
('HQYfFB0cjoqpflDrSxHL2cgh984wF2pL', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'U10Mxff7iSspMC3VjMhCr0egbggmQ2Vq', '2026-02-27 15:49:19', '2026-02-27 15:49:19', '2026-02-27 15:49:29'),
('jHIEV3zOuGBfGJSZKDhPpLFuyHueibC7', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '', 'zIYird4RDzAxJpo9WVZDxs1jK0uutbKU', '2026-02-25 09:16:24', '2026-02-25 09:16:24', '2026-02-25 09:16:34'),
('KWbuege2HtbScgecat2T5dG0BxDgu8wP', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'FPmQi8OVaSHSiXQNd2lL5pXYytHx7CZ4', '2026-02-26 15:26:16', '2026-02-26 15:26:16', '2026-02-26 15:26:26'),
('n5ue3Jyr0yaIH7jjlw11X0Cp6OppfKQx', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '', 'jtvVPuf8CimRwX8Yismc55PqD7qJpVPW', '2026-02-25 09:21:01', '2026-02-25 09:21:01', '2026-02-25 09:21:11'),
('OWSCmyOVzZ9svMRpYl0wQUjswguGrHFk', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '', 'qSNNW3LPTndCFv4UcJ8OMRGTgZyhDq9w', '2026-03-10 11:22:38', '2026-03-10 11:22:38', '2026-03-10 11:22:48'),
('q12NBu4JoTqqXPWKVqmYAmFGg1INZP1X', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '', 'YZEjhlTVRzSd3scR7VMzJkldU48AURLN', '2026-03-09 14:03:21', '2026-03-09 14:03:21', '2026-03-09 14:03:31'),
('rNj4mQ04nVHiPpdq2EuuANC0qi9zPxTS', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', '', 'HItnbRt8fRqDinnFbKqLWpOKGIS4fMiV', '2026-02-25 09:15:58', '2026-02-25 09:15:58', '2026-02-25 09:16:08'),
('UNDcHcMD7dPW9Qal6VLqGZG2H5lCj5on', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Mobile Safari/537.36', '', 'eh6Rwl9EqoWCr30HsxULnKRT3d6GCGUA', '2026-02-25 09:46:48', '2026-02-25 09:46:48', '2026-02-25 09:46:58'),
('YeSQfinGzeZo2XZ7WDG63MUNBXO5YwL4', 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', '', 'UI06gBCFKNnG6zDnl9srPD7W3WVTsBZY', '2026-03-02 13:25:43', '2026-03-02 13:25:43', '2026-03-02 13:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `emailVerified` tinyint(1) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `permission` int NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `emailVerified`, `phone`, `permission`, `createdAt`, `updatedAt`) VALUES
('LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', 'Viktor Nagy', 'nagy.viktordp@gmail.com', 0, '0918 226 875', 0, '2026-02-25 10:55:04', '2026-02-26 14:26:48'),
('xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', 'Dominik Kürti', 'xdominik.kurti@gmail.com', 1, '0918 042 985', 2, '2026-02-25 08:11:03', '2026-02-25 08:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `workhours`
--

CREATE TABLE `workhours` (
  `id` int NOT NULL,
  `userId` varchar(255) NOT NULL,
  `week` date NOT NULL,
  `day` varchar(255) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `duration` time NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `workhours`
--

INSERT INTO `workhours` (`id`, `userId`, `week`, `day`, `start`, `finish`, `duration`, `createdAt`, `updatedAt`) VALUES
(386, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Monday', '08:00:00', '18:00:00', '10:00:00', '2026-03-10 14:20:46', '2026-03-10 15:03:36'),
(387, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:46', '2026-03-10 14:20:46'),
(388, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:46', '2026-03-10 14:20:46'),
(389, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:46', '2026-03-10 14:20:46'),
(390, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:46', '2026-03-10 14:20:46'),
(391, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:46', '2026-03-10 14:20:46'),
(392, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-09', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:46', '2026-03-10 14:20:46'),
(393, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Monday', '08:00:00', '13:30:00', '05:30:00', '2026-03-10 14:20:47', '2026-03-10 14:41:02'),
(394, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:47', '2026-03-10 14:20:47'),
(395, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:47', '2026-03-10 14:20:47'),
(396, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:47', '2026-03-10 14:20:47'),
(397, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:47', '2026-03-10 14:20:47'),
(398, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:47', '2026-03-10 14:20:47'),
(399, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-09', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:47', '2026-03-10 14:20:47'),
(400, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(401, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(402, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(403, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(404, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(405, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(406, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-16', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(407, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(408, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(409, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(410, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(411, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(412, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(413, 'LzEqyb6sbe6w9nZuvcwFMmM27yqOc4tN', '2026-03-23', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:20:50', '2026-03-10 14:20:50'),
(414, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(415, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(416, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(417, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(418, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(419, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(420, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-16', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:45', '2026-03-10 14:51:45'),
(421, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(422, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(423, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(424, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(425, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(426, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(427, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-23', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:47', '2026-03-10 14:51:47'),
(428, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(429, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(430, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(431, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(432, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(433, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(434, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-03-02', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(435, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(436, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(437, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(438, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(439, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(440, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(441, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-23', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(442, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(443, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(444, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(445, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(446, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(447, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(448, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-16', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(449, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(450, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(451, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(452, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(453, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(454, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(455, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-09', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:49', '2026-03-10 14:51:49'),
(456, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(457, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(458, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(459, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(460, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(461, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(462, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-02-02', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(463, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(464, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(465, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(466, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(467, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(468, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(469, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-26', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(470, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(471, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(472, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(473, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(474, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(475, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(476, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-19', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(477, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(478, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(479, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(480, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(481, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(482, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(483, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-12', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(484, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(485, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(486, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(487, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(488, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(489, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(490, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2026-01-05', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(491, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(492, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(493, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(494, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(495, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(496, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(497, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-29', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:50', '2026-03-10 14:51:50'),
(498, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Monday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51'),
(499, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Tuesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51'),
(500, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Wednesday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51'),
(501, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Thursday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51'),
(502, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Friday', '08:00:00', '16:00:00', '08:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51'),
(503, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Saturday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51'),
(504, 'xzJi4CghoKSgBew8Z08cAQHBNIXP6Up2', '2025-12-22', 'Sunday', '00:00:00', '00:00:00', '00:00:00', '2026-03-10 14:51:51', '2026-03-10 14:51:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD UNIQUE KEY `USER` (`userId`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `USER` (`barberId`) USING BTREE;

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USER` (`id`);

--
-- Indexes for table `workhours`
--
ALTER TABLE `workhours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `USER` (`userId`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `workhours`
--
ALTER TABLE `workhours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`barberId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `workhours`
--
ALTER TABLE `workhours`
  ADD CONSTRAINT `workhours_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
