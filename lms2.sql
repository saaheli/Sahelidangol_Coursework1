-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2025 at 06:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(111) NOT NULL,
  `username` varchar(111) NOT NULL,
  `fullname` varchar(111) NOT NULL,
  `adminemail` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `fullname`, `adminemail`, `password`, `pic`) VALUES
(1, 'admin', 'Saheli', 'saheli@gmail.com', 'admin', 'user2.png');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(111) NOT NULL,
  `authorname` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `authorname`) VALUES
(9, 'Bjarne Stroustrup'),
(11, 'Anthony Brun'),
(14, 'E. Balagurusamy'),
(15, 'Ken Liu'),
(16, 'A.G Riddle'),
(17, 'Rakib Hassan'),
(18, 'Rob Boffard'),
(19, 'Khaled Hosseini'),
(20, 'Sandra Block'),
(21, 'J.R.R. Tolkien'),
(22, 'William Goldman'),
(24, 'Md. Zafar Iqbal Hassan'),
(29, 'James Patterson');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(100) NOT NULL,
  `bookpic` varchar(500) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `authorid` int(100) NOT NULL,
  `categoryid` int(100) NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `bookpic`, `bookname`, `authorid`, `categoryid`, `ISBN`, `price`, `quantity`, `status`) VALUES
(20, 'cplus.jpg', 'C++', 11, 2, '27899', 200, 2, 'Available'),
(22, 'python2.jpg', 'Python Programming', 11, 2, '2456', 600, 5, 'Available'),
(28, 'c.jpg', 'C Programming in ANSI', 14, 2, '24512', 200, 8, 'Available'),
(29, 'sf1.jpg', 'Borken Stars', 15, 1, '2487', 300, 7, 'Available'),
(30, 'sf2.jpg', 'The Solar War', 16, 1, '27899', 200, 6, 'Available'),
(32, 'sf4.jpg', 'Adrift', 18, 1, '24569', 500, 8, 'Available'),
(33, 'nv1.jpg', 'The Kite Runner', 19, 3, '23658', 600, 8, 'Available'),
(34, 'nv2.jpg', 'The Girl Without a Name', 20, 3, '21569', 300, 7, 'Available'),
(35, 'nv3.jpg', 'The Hobbit', 21, 3, '21569', 600, 9, 'Available'),
(36, 'nv4.jpg', 'The Princess Bride', 22, 3, '21456', 500, 5, 'Available'),
(40, 'java.jpg', 'Java', 29, 2, '24512', 500, 8, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(111) NOT NULL,
  `categoryname` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(1, 'Science FIction'),
(2, 'Computer Programming'),
(3, 'Novel'),
(4, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `stdid` int(100) NOT NULL,
  `rating` int(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`stdid`, `rating`, `comment`, `date`) VALUES
(1, 5, 'I just love it', '2021-04-23'),
(3, 4, 'I just like it', '2021-04-23'),
(4, 3, 'It is awesome. Overall good', '2021-04-23'),
(23, 5, 'love it', '2025-02-04'),
(24, 5, 'I just love the books.', '2025-02-04'),
(25, 4, 'Just....woww', '2025-02-04'),
(27, 5, 'Just love it', '2025-02-04'),
(28, 5, 'Love it', '2025-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `issueinfo`
--

CREATE TABLE `issueinfo` (
  `studentid` int(100) NOT NULL,
  `bookid` int(100) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL,
  `approve` varchar(200) NOT NULL,
  `fine` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueinfo`
--

INSERT INTO `issueinfo` (`studentid`, `bookid`, `issuedate`, `returndate`, `approve`, `fine`) VALUES
(3, 20, '2025-02-04', '2025-02-05', '', 0),
(23, 22, '2025-02-04', '2025-02-05', 'Approve', 0),
(23, 20, '2025-02-04', '2025-02-05', 'Approve', 0),
(26, 20, '0000-00-00', '0000-00-00', '', 0),
(27, 20, '2025-02-04', '2025-02-06', 'Approve', 0),
(23, 20, '2025-02-04', '2025-02-05', 'Approve', 0),
(23, 20, '2025-02-04', '2025-02-06', 'Approve', 0),
(27, 20, '2025-02-04', '2025-02-07', 'Approve', 0),
(27, 20, '2025-02-04', '2025-02-07', 'Approve', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `username`, `message`, `status`, `sender`, `date`) VALUES
(13, 'Neha', 'hello', 'yes', 'student', '02/04/2025 Tuesday, 11:17 AM'),
(14, 'Neha', 'hii\r\n', 'yes', 'admin', '02/04/2025 Tuesday, 01:04 PM'),
(15, 'Rita', 'helloo! Can i get information about the latest books?', 'yes', 'student', '02/04/2025 Tuesday, 02:26 PM'),
(16, 'Rita', 'yes of course', 'yes', 'admin', '02/04/2025 Tuesday, 02:28 PM'),
(17, 'Mira', 'Heello! Can i have latest books?', 'yes', 'student', '02/04/2025 Tuesday, 03:02 PM'),
(18, 'Mira', 'Yes ofcourse..', 'yes', 'admin', '02/04/2025 Tuesday, 03:03 PM'),
(19, 'Gita', 'Can i have new Books?', 'no', 'student', '02/04/2025 Tuesday, 05:38 PM');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(111) NOT NULL,
  `student_username` varchar(111) NOT NULL,
  `FullName` varchar(111) NOT NULL,
  `Email` varchar(111) NOT NULL,
  `Password` varchar(111) NOT NULL,
  `PhoneNumber` varchar(111) NOT NULL,
  `studentpic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `student_username`, `FullName`, `Email`, `Password`, `PhoneNumber`, `studentpic`) VALUES
(23, 'Neha', 'Neha Shrestha', 'neha@gmail.com', '1', '9876567987', 'user2.png'),
(24, 'Aaysha', 'Aaysha Timalsina', 'aaysha@gmail.com', '2', '9867575432', '6b6b865020afec86333af5a78069c069.jpg'),
(25, 'Lina', 'Lina Shrestha', 'lina@gmail.com', '3', '9876585894', 'user2.png'),
(26, 'Rita', 'Rita Thapa', 'Rita@gmail.com', 'rita', '9876567845', 'user2.png'),
(27, 'Mira', 'Mira Shrestha ', 'Mira@gmail.com', '5', '9876564763', 'user2.png'),
(28, 'Gita', 'Gita Maharjan', 'gita@gmai.com', '7', '9876567895', 'user2.png');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `stdid` int(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`stdid`, `bid`, `date`) VALUES
(23, 22, '2025-02-04 02:03:00'),
(3, 20, '1970-01-01 01:00:00'),
(3, 20, '1970-01-01 01:00:00'),
(3, 20, '2025-02-04 01:48:00'),
(23, 20, '2025-02-04 18:17:00'),
(23, 20, '2025-02-04 21:06:00'),
(23, 20, '2025-02-04 22:41:00'),
(27, 20, '2025-02-06 23:43:00'),
(27, 20, '2025-02-04 22:48:00'),
(27, 20, '2025-02-07 23:53:00');

-- --------------------------------------------------------

--
-- Table structure for table `trendingbook`
--

CREATE TABLE `trendingbook` (
  `bookid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trendingbook`
--

INSERT INTO `trendingbook` (`bookid`) VALUES
(22),
(20),
(33),
(28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
