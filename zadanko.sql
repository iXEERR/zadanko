-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Maj 2020, 11:20
-- Wersja serwera: 10.4.8-MariaDB
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `zadanko`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezyser`
--

CREATE TABLE `rezyser` (
  `id_rezysera` int(11) NOT NULL,
  `imie_nazwisko` varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
  `rok_urodzenia` varchar(11) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `rezyser`
--

INSERT INTO `rezyser` (`id_rezysera`, `imie_nazwisko`, `rok_urodzenia`) VALUES
(1, 'James_Cameron', '1954'),
(2, 'Steven_Spielberg', '1946'),
(3, 'Clint_Eastwood', '1930');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `film`
--

CREATE TABLE `film` (
  `id_rezysera` int(11) NOT NULL,
  `nazwa_filmu` varchar(15) COLLATE utf8_polish_ci DEFAULT NULL,
  `rok_wydania` varchar(4) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `film`
--

INSERT INTO `film` (`id_rezysera`, `nazwa_filmu`, `rok_wydania`) VALUES
(1, 'Avatar', '2009'),
(3, 'Bird', '2988'),
(2, 'E.T.', '1982');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `rezyser`
--
ALTER TABLE `rezyser`
  ADD PRIMARY KEY (`id_rezysera`);

--
-- Indeksy dla tabeli `film`
--
ALTER TABLE `film`
  ADD KEY `id_rezysera` (`id_rezysera`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `film`
--
ALTER TABLE `rezyser`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_rezysera`) REFERENCES `film` (`id_rezysera`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
