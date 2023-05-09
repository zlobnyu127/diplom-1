-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2023 at 02:49 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `b_id` int(11) NOT NULL,
  `b_fio` varchar(100) DEFAULT NULL,
  `b_pasp` varchar(32) DEFAULT NULL,
  `b_phone` varchar(32) DEFAULT NULL,
  `b_cid` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`b_id`, `b_fio`, `b_pasp`, `b_phone`, `b_cid`) VALUES
(1, 'Иванов Иван Иванович', '9215264325', '89123127689', '5'),
(3, 'Антонов Лобан Вахитович', '9215456324', '89456127689', '6'),
(4, 'Евтушенко Дмитрий Валидович', '9248664325', '89677732568', '7'),
(6, 'Ангиньев Богдан', '9217564387', '89174065432', '4');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `c_id` int(11) NOT NULL,
  `c_model` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `c_color` varchar(32) NOT NULL,
  `c_type` varchar(32) NOT NULL,
  `c_power` varchar(32) NOT NULL,
  `c_complectation` varchar(32) NOT NULL,
  `c_availability` varchar(4) NOT NULL,
  `c_price` int(11) DEFAULT NULL,
  `pr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`c_id`, `c_model`, `c_color`, `c_type`, `c_power`, `c_complectation`, `c_availability`, `c_price`, `pr_id`) VALUES
(1, '2114', 'Черный', 'Хэтчбек', '86', 'Люкс', 'Есть', 250000, 1),
(2, '2114', 'Черный', 'Седан', '86', 'Базовая', 'Есть', 180000, 1),
(4, '2112', 'Черный', 'Хэтчбек', '84', 'Базовая', 'нет', 170000, 1),
(5, '2107', 'Белый', 'Седан', '82', 'Люкс', 'нет', 123212, 1),
(6, '2105', 'Серый', 'Седан', '64', 'Базовая', 'нет', 120000, 2),
(7, 'Granta', 'Черный', 'Седан', '88', 'Люкс', 'нет', 350000, 2),
(8, 'Priora', 'Черный', 'Хэтчбек', '88', 'Базовая', 'Есть', 280000, 2),
(9, 'Vesta', 'Красный', 'Кроссовер', '98', 'Люкс', 'Есть', 700000, 2),
(11, '2115', 'Красный', 'Седан', '79', 'Стандартная', 'Есть', 210000, 2),
(12, '2115', 'Черный', 'Седан', '78', 'Стандартная', 'Есть', 210000, 2),
(13, '2105', 'Белый', 'Хэтчбек', '66', 'Базовая', 'Есть', 90000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `e_id` int(11) NOT NULL,
  `e_FIO` varchar(64) NOT NULL,
  `e_pasp` varchar(255) NOT NULL,
  `e_gender` varchar(32) NOT NULL,
  `e_post` varchar(32) NOT NULL,
  `e_edu` varchar(32) NOT NULL,
  `e_adres` varchar(32) NOT NULL,
  `e_phone` varchar(255) NOT NULL,
  `e_sal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`e_id`, `e_FIO`, `e_pasp`, `e_gender`, `e_post`, `e_edu`, `e_adres`, `e_phone`, `e_sal`) VALUES
(1, 'Сайфуллин Ирек Рустемович', '92787456', 'Мужской', 'Директор', 'Высшее', 'Мавлютова. д 23', '89677758965', 140000),
(2, 'Носенко Альфред', '131231312', 'Мужской', 'Продавец', 'Среднее', 'Рыбная д 28', '8932713711', 25000),
(5, 'Алиев Адель', '9217132675', 'Мужской', 'Менеджер', 'Высшее', 'Карбышева 28', '89173876543', 80000);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `p_id` int(11) NOT NULL,
  `p_phone` varchar(11) DEFAULT NULL,
  `p_adres` varchar(64) DEFAULT NULL,
  `p_name` varchar(32) DEFAULT NULL,
  `p_surname` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`p_id`, `p_phone`, `p_adres`, `p_name`, `p_surname`) VALUES
(1, '89137432611', 'г. Казань улица Космонавтова дом 101', 'Альфред', 'Газов'),
(2, '89312345789', 'Можайского,12', 'Антон', 'Ингушин');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(100) NOT NULL,
  `pass` varchar(32) NOT NULL,
  `u_dolgnoct` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `u_dolgnoct`) VALUES
(1, 'admin', '123', 'Админ'),
(2, 'manager', '345', 'Менеджер'),
(3, 'saler', '456', 'Менеджер');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `pr_id` (`pr_id`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `p_id_2` (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `b_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
