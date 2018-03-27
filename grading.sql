-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-03-27 05:34
-- 서버 버전: 5.7.21-0ubuntu0.16.04.1
-- PHP 버전: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `grading`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `class`
--

CREATE TABLE `class` (
  `id` int(9) NOT NULL,
  `course` varchar(255) NOT NULL,
  `year` char(4) NOT NULL,
  `section` char(2) NOT NULL,
  `sem` char(10) NOT NULL,
  `teacher` char(3) NOT NULL,
  `subject` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='class Table';

-- --------------------------------------------------------

--
-- 테이블 구조 `student`
--

CREATE TABLE `student` (
  `id` int(9) NOT NULL,
  `studid` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='student Table';

-- --------------------------------------------------------

--
-- 테이블 구조 `studentsubject`
--

CREATE TABLE `studentsubject` (
  `id` int(9) NOT NULL,
  `studid` varchar(3) NOT NULL,
  `classid` varchar(3) NOT NULL,
  `att1` varchar(3) NOT NULL DEFAULT '0',
  `att2` varchar(3) NOT NULL DEFAULT '0',
  `att3` varchar(3) NOT NULL DEFAULT '0',
  `exam1` varchar(3) NOT NULL DEFAULT '0',
  `exam2` varchar(3) NOT NULL DEFAULT '0',
  `exam3` varchar(3) NOT NULL DEFAULT '0',
  `quiz1` varchar(3) NOT NULL DEFAULT '0',
  `quiz2` varchar(3) NOT NULL DEFAULT '0',
  `quiz3` varchar(3) NOT NULL DEFAULT '0',
  `project1` varchar(3) NOT NULL DEFAULT '0',
  `project2` varchar(3) NOT NULL DEFAULT '0',
  `project3` varchar(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `subject`
--

CREATE TABLE `subject` (
  `id` int(9) NOT NULL,
  `code` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='subject Table';

-- --------------------------------------------------------

--
-- 테이블 구조 `teacher`
--

CREATE TABLE `teacher` (
  `id` int(9) NOT NULL,
  `teachid` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='teacher Table';

-- --------------------------------------------------------

--
-- 테이블 구조 `userdata`
--

CREATE TABLE `userdata` (
  `id` int(9) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='user Table';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
