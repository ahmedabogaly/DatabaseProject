-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2020 at 03:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarymanagementsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_title` varchar(255) NOT NULL,
  `book_auther` varchar(255) NOT NULL,
  `book_description` varchar(255) DEFAULT NULL,
  `book_year` year(4) DEFAULT NULL,
  `book_price` double DEFAULT NULL,
  `book_available` tinyint(1) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_title`, `book_auther`, `book_description`, `book_year`, `book_price`, `book_available`, `category_id`, `publisher_id`) VALUES
(1, 'Before you start programming', 'Bunbari Ayoub', 'Important fundamentals of programming', 2019, 20, 1, 1, 1),
(2, 'The Ottoman Safavid Conflict', 'Mohammad Jamal Barot', 'Political conflicts over the Ottoman Empire', 2018, 7, 1, 2, 1),
(3, 'Criminal Protection from Cyber ​​Crime', 'Nader AlGhazwani', 'Hackers penal laws on the Internet', 2017, 75.5, 0, 3, 1),
(4, 'Sports, health and the environment', 'Youssef Lazim Kamash', 'the definition of health and what is meant by it', 2016, 6.75, 1, 4, 2),
(5, 'E-Learning', 'Maher Hassan Rabah', 'How to use internet technology in our society', 2014, 50.25, 0, 5, 3),
(6, 'The dominance of eternity', 'Muhammad Qurt Al-Jazmi', 'With the passage of time and decades and generations succession, discoveries increase, science develops and spreads', 2015, 11.25, 0, 6, 1),
(7, 'Clinical pharmacology', 'Maysoon Al-Fakhoury', 'The effect of medications on the functions of body organs', 2016, 9.5, 1, 7, 3),
(8, 'Suspended dream', 'Ibrahim the bridegroom', 'Someone wants to reach a dream, but it is very difficult', 2013, 33.4, 0, 8, 4),
(9, 'Language teaching', 'Mohamed Ali El-Khouly', 'Learn about your language and its cases and comments', 2009, 18.8, 0, 9, 5),
(10, 'Basics in general sciences', 'Siham Mahmoud Khasawneh', 'Learn the basics of Chemistry, physics, geology, and biology', 2014, 15, 0, 9, 3),
(11, 'Football fitness rules', 'Munther Al-Khatib', 'The steps involved to be physically fit to play soccer professionally', 2016, 13, 1, 4, 3),
(12, 'Islam and Western civilization', 'Mohamed Ali El-Khouly', 'The comparison between Islamic civilization and Western civilizations in different eras', 2001, 30, 1, 2, 5),
(13, 'Blogs Napoleons campaign on Egypt', 'Hala Suleiman', 'He described the situation of Egypt and its people during the Napoleonic campaign', 2012, 6.3, 0, 2, 4),
(14, 'Learning Disabilities', 'Iman Abbas pumice', 'Problems and difficulties facing children during the learning stage', 2015, 15.5, 1, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_description`) VALUES
(1, 'Programming', 'Learn programming easy'),
(2, 'History', 'Learn about the events in the past'),
(3, 'Law', 'Learn about the laws and the solving of crimes'),
(4, 'Sports', 'Learn about sports sorts and laws'),
(5, 'Technology', 'Learn how to use technological tools and devices'),
(6, 'Science Fiction', 'Learn about the different science fiction storys'),
(7, 'Medicine', 'Learn about medicines and treatment of various diseases'),
(8, 'Arts', 'Learn about the various types of arts'),
(9, 'Education', 'Learn about teaching methods and topics');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL,
  `mem_name` varchar(255) NOT NULL,
  `mem_type` enum('Librarian','customer') DEFAULT NULL,
  `mem_address` varchar(255) DEFAULT NULL,
  `mem_phone` char(11) DEFAULT NULL,
  `mem_email` varchar(255) NOT NULL,
  `mem_password` varchar(255) NOT NULL,
  `mem_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mem_id`, `mem_name`, `mem_type`, `mem_address`, `mem_phone`, `mem_email`, `mem_password`, `mem_date`) VALUES
(1, 'Ahmed Ali', 'Librarian', 'Abu Qir Street Sidi Jaber Alexandria', '01013461234', 'AhmedAli12@mail.com', 'Achmk12354@s', '2019-11-01'),
(2, 'Osama Amr', 'Librarian', 'Sharawy Street Tanta', '01122552147', 'OsamaAmr22@mail.com', 'ertyuioiiuyu', '2019-12-10'),
(3, 'Hamed Abdo', 'customer', 'Elgesh Street Kafr El Zayat', NULL, 'HamedAbdo29@mail.com', 'qazxswed3458', '2019-12-18'),
(4, 'Mostafa Ahmed', 'customer', 'Elnozha Naser City Cairo', '01549734863', 'MostafaAhmed654@mail.com', 'rfvbgtyh5678', '2020-01-11'),
(5, 'Nagy Abdel Samie', 'Librarian', 'Bahr Street Mahalla', '01258825772', 'NagyAbdelSamie65@mail.com', 'tgbnhyujm987', '2020-01-18'),
(6, 'Abdul Rahman Ali', 'customer', 'Abbas el Akkad Naser City Cairo', '01267916689', 'AbdulRahmanAli53@mail.com', 'mkiujnhj1245', '2020-01-20'),
(7, 'Mansour Zaher', 'Librarian', 'Kobry Square Banha', NULL, 'MansourZaher765@mail.com', 'poiuyuhjnm23', '2020-01-27'),
(8, 'Ehab Osama', 'customer', 'ElBekbash ElEsawy Miami Alexandria', '01085288418', 'EhabOsama654@mail.com', 'xcvbn456rg5h', '2020-03-20'),
(9, 'Hisham Hassen', 'customer', 'Ahmed Orabi Street Suez', NULL, 'HishamHassen23456@mail.com', 'ukjdbkjwiwow', '2020-04-09'),
(10, 'Ashraf Habashi', 'customer', 'Tenth of Ramadan Qalyoub', '01113461236', 'AshrafHabashi76@mail.com', '6t387y98hddv', '2020-04-22'),
(11, 'Hazem Rafeeq', 'Librarian', 'AlGalaa Street Victoria Alexandria', '01022552145', 'HazemRafeeq987@mail.com', 'uhqwe8ypuoi3', '2020-05-05'),
(12, 'Tawfik Mohammed', 'customer', 'Elgomherya Street Port Said', NULL, 'TawfikMohammed6332@mail.com', 'oui3hy98ufid', '2020-05-14'),
(13, 'Islam Hosni', 'Librarian', 'Television Street Luxor city', '01249734863', 'IslamHosni2345@mail.com', '4987yuoiudnv', '2020-05-30'),
(14, 'Attia Amr', 'customer', 'Elmarghany Helioplis Cairo', '01058825772', 'AttiaAmr98@mail.com', '6789u2h3iref', '2020-06-01');

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `oper_type` enum('Borrow a book','Return a book') DEFAULT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `member_id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`oper_type`, `borrow_date`, `return_date`, `member_id`, `books_id`) VALUES
('Borrow a book', '2020-06-01', '2020-07-10', 1, 3),
('Return a book', '2020-06-04', '2020-07-13', 2, 5),
('Return a book', '2020-06-05', '2020-07-15', 4, 6),
('Return a book', '2020-06-07', '2020-07-16', 5, 7),
('Borrow a book', '2020-06-09', '2020-07-18', 6, 9),
('Return a book', '2020-06-10', '2020-07-20', 8, 10),
('Return a book', '2020-06-13', '2020-07-25', 9, 11),
('Borrow a book', '2020-06-14', '2020-07-29', 10, 12),
('Borrow a book', '2020-06-15', '2020-08-01', 11, 13),
('Borrow a book', '2020-06-16', '2020-08-08', 13, 14);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `pub_id` int(11) NOT NULL,
  `pub_name` varchar(255) NOT NULL,
  `pub_address` varchar(255) DEFAULT NULL,
  `pub_phone` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`pub_id`, `pub_name`, `pub_address`, `pub_phone`) VALUES
(1, 'Dar Al Tanweer', '19 El Basateen St. Cairo, Floor 8 Flat 82 Egypt', '00202277389'),
(2, 'Dar Al Khaleej', 'Abdali near the Ministry of Industry and Trade Circle Signal of Chicago Complex Amman', '00962464755'),
(3, 'Dar Al-Manhaj', 'King Hussein Street United Insurance Company Building Amman', '00962465062'),
(4, 'Dar Al-Farabi', 'Wata Al-Musaytbeh Jabal Al Arab Street New TV Building Beirut Lebanon', '00961130146'),
(5, 'Dar Al-Falah', 'Amman Medical City Street King Abdullah II Street Jordan', '00962654115');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `book_title` (`book_title`),
  ADD KEY `a` (`category_id`),
  ADD KEY `b` (`publisher_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`),
  ADD UNIQUE KEY `mem_name` (`mem_name`),
  ADD UNIQUE KEY `mem_email` (`mem_email`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD KEY `c` (`member_id`),
  ADD KEY `d` (`books_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`pub_id`),
  ADD UNIQUE KEY `pub_name` (`pub_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `a` FOREIGN KEY (`category_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `b` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`pub_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
  ADD CONSTRAINT `c` FOREIGN KEY (`member_id`) REFERENCES `member` (`mem_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `d` FOREIGN KEY (`books_id`) REFERENCES `book` (`book_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
