-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 06:46 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcaiwl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 3, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Table structure for table `tblexercise`
--

CREATE TABLE `tblexercise` (
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180001, 7, 'Ce este un echipament periferic?', 'Compunenta externa a calculatorului', 'HDD', 'Procesor', 'Placa de baza', 'Compunenta externa a calculatorului', '0000-00-00'),
(20180002, 6, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tbllesson`
--

CREATE TABLE `tbllesson` (
  `LessonID` int(11) NOT NULL,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(6, 'video', 'video', 'files/Deploy Laravel To Shared Hosting The Easy Way - YouTube.MP4', 'Video'),
(7, 'test', 'test', 'files/s.pdf', 'Docs');

-- --------------------------------------------------------

--
-- Table structure for table `tblscore`
--

CREATE TABLE `tblscore` (
  `ScoreID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT '1',
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1),
(11, 7, 20180001, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(1, 'a', 'a', 'a', '21', 'a', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8'),
(2, 'sd', 'sad', 'sad', '231', 'a', 'a0f1490a20d0211c997b44bc357e1972deab8ae3'),
(3, 'Claudia', 'Ciontu', 'A. I. Cuza, 13 , room 229', '+4076332219', 'test@yahoo.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'),
(4, '', '', '', '', '', 'cc4e039056295d07ed27616955333364e4336b56'),
(5, '', '', '', '', '', '568095ee7b98b0afceb32540a1ca5540eaa72666');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudentquestion`
--

CREATE TABLE `tblstudentquestion` (
  `SQID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'Admin', 'test@yahoo.com', 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3\r\n\r\n\r\n', 'Administrator'),
(2, 'admistrator', 'garmani', 'e697685f5c303e7c72f3a7144dbf40ccc8fbac57', 'Administrator'),
(3, 'Tiberiu', 'tibi', 'cc4e039056295d07ed27616955333364e4336b56', 'Administrator'),
(4, 'Ciontu Claudia', 'claudia', '568095ee7b98b0afceb32540a1ca5540eaa72666', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblexercise`
--
ALTER TABLE `tblexercise`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Indexes for table `tbllesson`
--
ALTER TABLE `tbllesson`
  ADD PRIMARY KEY (`LessonID`);

--
-- Indexes for table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`ScoreID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`StudentID`) USING BTREE;

--
-- Indexes for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  ADD PRIMARY KEY (`SQID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblexercise`
--
ALTER TABLE `tblexercise`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20180003;

--
-- AUTO_INCREMENT for table `tbllesson`
--
ALTER TABLE `tbllesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `ScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  MODIFY `SQID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
