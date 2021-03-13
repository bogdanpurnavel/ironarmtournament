-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2021 at 06:52 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bracket`
--

-- --------------------------------------------------------

--
-- Table structure for table `nms_bracket`
--

CREATE TABLE `nms_bracket` (
  `bracket_id` int(11) NOT NULL,
  `bracket_seed` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nms_bracket`
--

INSERT INTO `nms_bracket` (`bracket_id`, `bracket_seed`) VALUES
(1, '0'),
(2, 'a:9:{s:7:\"round_1\";a:1:{s:14:\"winner_bracket\";a:9:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:7:\"Allison\";s:8:\"player_1\";s:6:\"Arthur\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"Ana\";s:8:\"player_1\";s:4:\"Alex\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:6:\"Arlene\";s:8:\"player_1\";s:7:\"Alberto\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:6:\"Bertha\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:6:\"Bertha\";s:8:\"player_1\";s:4:\"ARss\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:7:\"Allison\";s:6:\"winner\";N;}s:7:\"match_7\";a:3:{s:8:\"player_0\";s:6:\"Arthur\";s:8:\"player_1\";s:3:\"Ana\";s:6:\"winner\";N;}s:7:\"match_8\";a:3:{s:8:\"player_0\";s:4:\"Alex\";s:8:\"player_1\";s:6:\"Arlene\";s:6:\"winner\";N;}s:7:\"match_9\";a:3:{s:8:\"player_0\";s:7:\"Alberto\";s:8:\"player_1\";s:5:\"Empty\";s:6:\"winner\";i:0;}}}s:7:\"round_2\";a:2:{s:14:\"winner_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_3\";a:2:{s:14:\"winner_bracket\";a:3:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:6:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_4\";a:2:{s:14:\"winner_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_5\";a:2:{s:14:\"winner_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:4:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_6\";a:1:{s:14:\"looser_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_7\";a:1:{s:14:\"looser_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_8\";a:1:{s:10:\"semi_final\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_9\";a:2:{s:7:\"final_1\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:7:\"final_2\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}}'),
(3, 'a:9:{s:7:\"round_1\";a:1:{s:14:\"winner_bracket\";a:9:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:7:\"Allison\";s:8:\"player_1\";s:6:\"Arthur\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"Ana\";s:8:\"player_1\";s:4:\"Alex\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:6:\"Arlene\";s:8:\"player_1\";s:7:\"Alberto\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:6:\"Bertha\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:6:\"Bertha\";s:8:\"player_1\";s:4:\"ARss\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:7:\"Allison\";s:6:\"winner\";N;}s:7:\"match_7\";a:3:{s:8:\"player_0\";s:6:\"Arthur\";s:8:\"player_1\";s:3:\"Ana\";s:6:\"winner\";N;}s:7:\"match_8\";a:3:{s:8:\"player_0\";s:4:\"Alex\";s:8:\"player_1\";s:6:\"Arlene\";s:6:\"winner\";N;}s:7:\"match_9\";a:3:{s:8:\"player_0\";s:7:\"Alberto\";s:8:\"player_1\";s:5:\"Empty\";s:6:\"winner\";i:0;}}}s:7:\"round_2\";a:2:{s:14:\"winner_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_3\";a:2:{s:14:\"winner_bracket\";a:3:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:6:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_4\";a:2:{s:14:\"winner_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_5\";a:2:{s:14:\"winner_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:4:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_6\";a:1:{s:14:\"looser_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_7\";a:1:{s:14:\"looser_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_8\";a:1:{s:10:\"semi_final\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_9\";a:2:{s:7:\"final_1\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:7:\"final_2\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}}'),
(4, 'a:9:{s:7:\"round_1\";a:1:{s:14:\"winner_bracket\";a:9:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:7:\"Allison\";s:8:\"player_1\";s:6:\"Arthur\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"Ana\";s:8:\"player_1\";s:4:\"Alex\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:6:\"Arlene\";s:8:\"player_1\";s:7:\"Alberto\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:6:\"Bertha\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:6:\"Bertha\";s:8:\"player_1\";s:4:\"ARss\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:7:\"Allison\";s:6:\"winner\";N;}s:7:\"match_7\";a:3:{s:8:\"player_0\";s:6:\"Arthur\";s:8:\"player_1\";s:3:\"Ana\";s:6:\"winner\";N;}s:7:\"match_8\";a:3:{s:8:\"player_0\";s:4:\"Alex\";s:8:\"player_1\";s:6:\"Arlene\";s:6:\"winner\";N;}s:7:\"match_9\";a:3:{s:8:\"player_0\";s:7:\"Alberto\";s:8:\"player_1\";s:5:\"Empty\";s:6:\"winner\";i:0;}}}s:7:\"round_2\";a:2:{s:14:\"winner_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_3\";a:2:{s:14:\"winner_bracket\";a:3:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:6:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_4\";a:2:{s:14:\"winner_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_5\";a:2:{s:14:\"winner_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:4:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_6\";a:1:{s:14:\"looser_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_7\";a:1:{s:14:\"looser_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_8\";a:1:{s:10:\"semi_final\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_9\";a:2:{s:7:\"final_1\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:7:\"final_2\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}}'),
(5, 'a:9:{s:7:\"round_1\";a:1:{s:14:\"winner_bracket\";a:9:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:7:\"Allison\";s:8:\"player_1\";s:6:\"Arthur\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"Ana\";s:8:\"player_1\";s:4:\"Alex\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:6:\"Arlene\";s:8:\"player_1\";s:7:\"Alberto\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:6:\"Bertha\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:6:\"Bertha\";s:8:\"player_1\";s:4:\"ARss\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:7:\"Allison\";s:6:\"winner\";N;}s:7:\"match_7\";a:3:{s:8:\"player_0\";s:6:\"Arthur\";s:8:\"player_1\";s:3:\"Ana\";s:6:\"winner\";N;}s:7:\"match_8\";a:3:{s:8:\"player_0\";s:4:\"Alex\";s:8:\"player_1\";s:6:\"Arlene\";s:6:\"winner\";N;}s:7:\"match_9\";a:3:{s:8:\"player_0\";s:7:\"Alberto\";s:8:\"player_1\";s:5:\"Empty\";s:6:\"winner\";i:0;}}}s:7:\"round_2\";a:2:{s:14:\"winner_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_3\";a:2:{s:14:\"winner_bracket\";a:3:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:6:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_4\";a:2:{s:14:\"winner_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_5\";a:2:{s:14:\"winner_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:4:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_6\";a:1:{s:14:\"looser_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_7\";a:1:{s:14:\"looser_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_8\";a:1:{s:10:\"semi_final\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_9\";a:2:{s:7:\"final_1\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:7:\"final_2\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}}'),
(6, 'a:9:{s:7:\"round_1\";a:1:{s:14:\"winner_bracket\";a:9:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:7:\"Allison\";s:8:\"player_1\";s:6:\"Arthur\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"Ana\";s:8:\"player_1\";s:4:\"Alex\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:6:\"Arlene\";s:8:\"player_1\";s:7:\"Alberto\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:6:\"Bertha\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:6:\"Bertha\";s:8:\"player_1\";s:4:\"ARss\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:5:\"Barry\";s:8:\"player_1\";s:7:\"Allison\";s:6:\"winner\";N;}s:7:\"match_7\";a:3:{s:8:\"player_0\";s:6:\"Arthur\";s:8:\"player_1\";s:3:\"Ana\";s:6:\"winner\";N;}s:7:\"match_8\";a:3:{s:8:\"player_0\";s:4:\"Alex\";s:8:\"player_1\";s:6:\"Arlene\";s:6:\"winner\";N;}s:7:\"match_9\";a:3:{s:8:\"player_0\";s:7:\"Alberto\";s:8:\"player_1\";s:5:\"Empty\";s:6:\"winner\";i:0;}}}s:7:\"round_2\";a:2:{s:14:\"winner_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_3\";a:2:{s:14:\"winner_bracket\";a:3:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:6:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_6\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_4\";a:2:{s:14:\"winner_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:5:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_5\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_5\";a:2:{s:14:\"winner_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:14:\"looser_bracket\";a:4:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_3\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_4\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_6\";a:1:{s:14:\"looser_bracket\";a:2:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}s:7:\"match_2\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_7\";a:1:{s:14:\"looser_bracket\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_8\";a:1:{s:10:\"semi_final\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}s:7:\"round_9\";a:2:{s:7:\"final_1\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}s:7:\"final_2\";a:1:{s:7:\"match_1\";a:3:{s:8:\"player_0\";s:3:\"BYE\";s:8:\"player_1\";s:3:\"BYE\";s:6:\"winner\";N;}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `nms_bracket_seed`
--

CREATE TABLE `nms_bracket_seed` (
  `bracket_seed_id` int(11) NOT NULL,
  `bracket_seed_round` int(11) NOT NULL,
  `bracket_seed_type` int(11) NOT NULL,
  `bracket_seed_match` int(11) NOT NULL,
  `bracket_seed_match_status` int(11) NOT NULL,
  `bracket_seed_match_player_id` int(11) NOT NULL,
  `bracket_seed_bracket_id` int(11) NOT NULL,
  `bracket_seed_added` datetime NOT NULL,
  `bracket_seed_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nms_players`
--

CREATE TABLE `nms_players` (
  `player_id` int(11) NOT NULL,
  `player_name` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nms_players`
--

INSERT INTO `nms_players` (`player_id`, `player_name`) VALUES
(1, 'Allison'),
(2, 'Arthur'),
(3, 'Ana'),
(4, 'Alex'),
(5, 'Arlene'),
(6, 'Alberto'),
(7, 'Barry'),
(8, 'Bertha'),
(9, 'Bertha'),
(10, 'ARss'),
(11, 'Barry'),
(12, 'Allison'),
(13, 'Arthur'),
(14, 'Ana'),
(15, 'Alex'),
(16, 'Arlene'),
(17, 'Alberto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nms_bracket`
--
ALTER TABLE `nms_bracket`
  ADD PRIMARY KEY (`bracket_id`);

--
-- Indexes for table `nms_bracket_seed`
--
ALTER TABLE `nms_bracket_seed`
  ADD PRIMARY KEY (`bracket_seed_id`);

--
-- Indexes for table `nms_players`
--
ALTER TABLE `nms_players`
  ADD PRIMARY KEY (`player_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nms_bracket`
--
ALTER TABLE `nms_bracket`
  MODIFY `bracket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nms_bracket_seed`
--
ALTER TABLE `nms_bracket_seed`
  MODIFY `bracket_seed_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nms_players`
--
ALTER TABLE `nms_players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
