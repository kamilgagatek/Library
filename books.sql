-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 09:10 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(60) NOT NULL,
  `authors_id` int(5) NOT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `authors_id`, `add_date`) VALUES
(1, 'Resurrection', 1, '2018-08-09'),
(2, 'Never Too Late', 1, '2016-06-14'),
(3, 'Zoja', 1, '2020-06-07'),
(4, 'Identity', 2, '2015-06-12'),
(5, 'Mind games', 2, '2018-08-10'),
(6, 'The choice', 3, '2019-11-08'),
(7, 'It', 4, '2015-03-16'),
(8, 'Holly', 4, '2017-01-11'),
(9, 'Murder on the orient express', 5, '2023-10-19'),
(10, 'Death on the nile', 5, '2022-06-14'),
(11, 'Harry Potter and the Philosopher\'s Stone', 6, '2017-08-04'),
(12, 'The running grave', 6, '2020-12-11'),
(13, 'Hamlet', 7, '2018-04-17'),
(14, 'Macbeth', 7, '2023-01-12'),
(15, 'A Christmas Carol', 8, '2019-02-01'),
(16, 'David Copperfield', 8, '2013-06-13'),
(17, 'Inferno', 9, '2015-06-18'),
(18, 'The divine comedy', 9, '2018-08-10'),
(19, 'Crime and punishment', 10, '2016-05-10'),
(20, 'White nights', 10, '2021-06-17'),
(21, 'It Ends with Us', 11, '2015-08-07'),
(22, 'Verity', 11, '2014-04-21'),
(23, 'The Hobbit: Or There and Back Again', 12, '2016-04-21'),
(24, 'The Lord of the Rings', 12, '2017-08-17'),
(25, 'Power of subconsciousness', 13, '2023-07-06'),
(26, 'Quo Vadis', 14, '2016-04-19'),
(27, 'In Desert and Wilderness', 14, '2019-07-26'),
(28, 'Professor Andrews Goes to Warsaw', 15, '2017-04-11'),
(29, 'The Books of Jacob', 15, '2024-06-11');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_id` (`authors_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
