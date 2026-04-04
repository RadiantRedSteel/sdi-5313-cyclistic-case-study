-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2026 at 10:45 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyclistic_2022`
--

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ride_id` char(16) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `rideable_type` enum('classic_bike','docked_bike','electric_bike') NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime NOT NULL,
  `start_station_name` varchar(64) DEFAULT NULL,
  `start_station_id` varchar(44) DEFAULT NULL,
  `end_station_name` varchar(64) DEFAULT NULL,
  `end_station_id` varchar(44) DEFAULT NULL,
  `start_lat` decimal(9,6) NOT NULL,
  `start_lng` decimal(9,6) NOT NULL,
  `end_lat` decimal(9,6) DEFAULT NULL,
  `end_lng` decimal(9,6) DEFAULT NULL,
  `member_casual` enum('casual','member') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
PARTITION BY RANGE (to_days(`started_at`))
(
PARTITION p_2022_01 VALUES LESS THAN (738552) ENGINE=InnoDB,
PARTITION p_2022_02 VALUES LESS THAN (738580) ENGINE=InnoDB,
PARTITION p_2022_03 VALUES LESS THAN (738611) ENGINE=InnoDB,
PARTITION p_2022_04 VALUES LESS THAN (738641) ENGINE=InnoDB,
PARTITION p_2022_05 VALUES LESS THAN (738672) ENGINE=InnoDB,
PARTITION p_2022_06 VALUES LESS THAN (738702) ENGINE=InnoDB,
PARTITION p_2022_07 VALUES LESS THAN (738733) ENGINE=InnoDB,
PARTITION p_2022_08 VALUES LESS THAN (738764) ENGINE=InnoDB,
PARTITION p_2022_09 VALUES LESS THAN (738794) ENGINE=InnoDB,
PARTITION p_2022_10 VALUES LESS THAN (738825) ENGINE=InnoDB,
PARTITION p_2022_11 VALUES LESS THAN (738855) ENGINE=InnoDB,
PARTITION p_2022_12 VALUES LESS THAN (738886) ENGINE=InnoDB,
PARTITION p_max VALUES LESS THAN MAXVALUE ENGINE=InnoDB
);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`id`,`started_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
