-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 29, 2024 at 03:52 PM
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
-- Struktura tabeli dla tabeli `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `surname`) VALUES
(1, 'Danielle ', 'Steel'),
(2, 'Nora', 'Roberts'),
(3, 'Nicholas', 'Sparks'),
(4, 'Stephen', ' King'),
(5, 'Agatha ', 'Christie'),
(6, 'J.K. ', 'Rowling'),
(7, 'William', 'Shakespeare'),
(8, 'Charles', 'Dickens'),
(9, 'Dante', 'Alighieri'),
(10, 'Fiodor', 'Dostojewski'),
(11, 'Colleen', 'Hoover'),
(12, 'J. R. R. ', 'Tolkien'),
(13, 'Joseph ', 'Murphy'),
(14, 'Henryk ', 'Sienkiewicz'),
(15, 'Olga ', 'Tokarczuk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_name` varchar(60) NOT NULL,
  `authors_id` int(5) NOT NULL,
  `photo_name` varchar(40) NOT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_name`, `authors_id`, `photo_name`, `add_date`) VALUES
(1, 'Resurrection', 1, './books/resurrection.jpg', '2018-08-09'),
(2, 'Never Too Late', 1, './books/never.jpg', '2016-06-14'),
(3, 'Zoja', 1, './books/zoja.jpg', '2020-06-07'),
(4, 'Identity', 2, './books/identity.jpg', '2015-06-12'),
(5, 'Mind games', 2, './books/mindgames.jpg', '2018-08-10'),
(6, 'The choice', 3, './books/choice.jpg', '2019-11-08'),
(7, 'It', 4, './books/it.jpg', '2015-03-16'),
(8, 'Holly', 4, './books/holly.jpg', '2017-01-11'),
(9, 'Murder on the orient express', 5, './books/murder.jpg', '2023-10-19'),
(10, 'Death on the nile', 5, './books/death.jpg', '2022-06-14'),
(11, 'Harry Potter and the Philosopher\'s Stone', 6, './books/harrypotter.jpg', '2017-08-04'),
(12, 'The running grave', 6, './books/therunning.jpg', '2020-12-11'),
(13, 'Hamlet', 7, './books/hamlet.jpg', '2018-04-17'),
(14, 'Macbeth', 7, './books/macbeth.jpg', '2023-01-12'),
(15, 'A Christmas Carol', 8, './books/christmas.jpg', '2019-02-01'),
(16, 'David Copperfield', 8, './books/dawid.jpg', '2013-06-13'),
(17, 'Inferno', 9, './books/inferno.jpg', '2015-06-18'),
(18, 'The divine comedy', 9, './books/comedy.jpg', '2018-08-10'),
(19, 'Crime and punishment', 10, './books/crime.jpg', '2016-05-10'),
(20, 'White nights', 10, './books/whitenights.jpg', '2021-06-17'),
(21, 'It Ends with Us', 11, './books/itends.jpg', '2015-08-07'),
(22, 'Verity', 11, './books/verity.jpg', '2014-04-21'),
(23, 'The Hobbit: Or There and Back Again', 12, './books/thehobbit.jpg', '2016-04-21'),
(24, 'The Lord of the Rings', 12, './books/thelord.jpg', '2017-08-17'),
(25, 'Power of subconsciousness', 13, './books/power.jpg', '2023-07-06'),
(26, 'Quo Vadis', 14, './books/quovadis.jpg', '2016-04-19'),
(27, 'In Desert and Wilderness', 14, './books/indesert.jpg', '2019-07-26'),
(28, 'Professor Andrews Goes to Warsaw', 15, './books/profesor.jpg', '2017-04-11'),
(29, 'The Books of Jacob', 15, './books/thebooks.jpg', '2024-06-11');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `borrowed`
--

CREATE TABLE `borrowed` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed`
--

INSERT INTO `borrowed` (`id`, `client_id`, `book_id`) VALUES
(1, 1, 1),
(2, 1, 25),
(3, 2, 12),
(4, 2, 22),
(6, 3, 10),
(5, 3, 19),
(7, 3, 28),
(9, 4, 19),
(8, 4, 26),
(10, 5, 10),
(11, 5, 22),
(50, 5, 25),
(12, 6, 1),
(15, 6, 24),
(14, 6, 25),
(13, 6, 27),
(16, 7, 5),
(17, 7, 11),
(18, 8, 27),
(20, 9, 4),
(22, 9, 10),
(23, 9, 16),
(47, 9, 20),
(19, 9, 26),
(21, 9, 28),
(24, 10, 26),
(25, 11, 27),
(27, 12, 17),
(26, 12, 21),
(48, 12, 25),
(29, 13, 11),
(28, 13, 28),
(30, 14, 3),
(31, 14, 12),
(32, 15, 2),
(33, 15, 26),
(49, 15, 26),
(34, 16, 11),
(36, 17, 10),
(35, 17, 24),
(37, 18, 18),
(38, 18, 22),
(39, 19, 16),
(41, 20, 5),
(40, 20, 28),
(45, 21, 5),
(42, 21, 12),
(44, 21, 12),
(46, 21, 13),
(43, 21, 22);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `surname` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `surname`) VALUES
(1, 'Jolanta', 'Baranowicz'),
(2, 'Roman', 'Cupiał'),
(3, 'Bogumiła', 'Świć'),
(4, 'Łukasz', 'Garbiec'),
(5, 'Zenon', 'Zybura'),
(6, 'Piotr', 'Szpyra'),
(7, 'Martin', 'Davies'),
(8, 'Iga ', 'Potocka'),
(9, 'Julia', 'Gapińska'),
(10, 'Dawid', 'Burkiewicz'),
(11, 'Cezary', 'Lisiak'),
(12, 'Ireneusz', 'Król'),
(13, 'Waldemar', 'Jankiewicz'),
(14, 'Leszek ', 'Wiciak'),
(15, 'Jacek', 'Zelewski'),
(16, 'Barbara', 'Twaróg'),
(17, 'Malwina', 'Wasińska'),
(18, 'Anita ', 'Woszczyna'),
(19, 'Weronika', 'Machała'),
(20, 'Magdalena', 'Żebracki'),
(21, 'Jerzy', 'Kutera');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_id` (`authors_id`);

--
-- Indeksy dla tabeli `borrowed`
--
ALTER TABLE `borrowed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`,`book_id`);

--
-- Indeksy dla tabeli `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `borrowed`
--
ALTER TABLE `borrowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD CONSTRAINT `borrowed_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `borrowed_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
