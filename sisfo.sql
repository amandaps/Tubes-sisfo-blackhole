-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Des 2014 pada 17.07
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sisfo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `budget_item`
--

CREATE TABLE IF NOT EXISTS `budget_item` (
  `budget_item_seq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_qualification`
--

CREATE TABLE IF NOT EXISTS `party_qualification` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_relationship`
--

CREATE TABLE IF NOT EXISTS `party_relationship` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_role`
--

CREATE TABLE IF NOT EXISTS `party_role` (
  `party_id` int(11) NOT NULL,
  `party_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_skill`
--

CREATE TABLE IF NOT EXISTS `party_skill` (
  `started_using_date` date NOT NULL,
  `years_experience` int(11) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pay_grade`
--

CREATE TABLE IF NOT EXISTS `pay_grade` (
  `pay_grade_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pay_history`
--

CREATE TABLE IF NOT EXISTS `pay_history` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_note`
--

CREATE TABLE IF NOT EXISTS `performance_note` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `communication_date` date NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_review`
--

CREATE TABLE IF NOT EXISTS `performance_review` (
  `perf_review_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_review_item`
--

CREATE TABLE IF NOT EXISTS `performance_review_item` (
  `perf_review_seq_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_review_item_type`
--

CREATE TABLE IF NOT EXISTS `perf_review_item_type` (
  `perf_review_type_id` int(11) NOT NULL,
  `perf_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person_training`
--

CREATE TABLE IF NOT EXISTS `person_training` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_responsibility`
--

CREATE TABLE IF NOT EXISTS `position_responsibility` (
  `from_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_type`
--

CREATE TABLE IF NOT EXISTS `position_type` (
  `position_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_type_class`
--

CREATE TABLE IF NOT EXISTS `position_type_class` (
  `from_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `qualification_type`
--

CREATE TABLE IF NOT EXISTS `qualification_type` (
  `qual_type_id` int(11) NOT NULL,
  `qual_type_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_type`
--

CREATE TABLE IF NOT EXISTS `rating_type` (
  `rating_type_id` int(11) NOT NULL,
  `rating_type_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `responsibility_type`
--

CREATE TABLE IF NOT EXISTS `responsibility_type` (
  `responsibily_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `resume_id` int(11) NOT NULL,
  `resume_date` date NOT NULL,
  `resume_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary_step`
--

CREATE TABLE IF NOT EXISTS `salary_step` (
  `salary_step_seq_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill_type`
--

CREATE TABLE IF NOT EXISTS `skill_type` (
  `skill_type_id` int(11) NOT NULL,
  `skill_type_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `termination_reason`
--

CREATE TABLE IF NOT EXISTS `termination_reason` (
  `termination_reason_id` int(11) NOT NULL,
  `termination_reason_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `termination_type`
--

CREATE TABLE IF NOT EXISTS `termination_type` (
  `termination_type_id` int(11) NOT NULL,
  `termination_type_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `training_class_tye`
--

CREATE TABLE IF NOT EXISTS `training_class_tye` (
  `training_class_type_id` int(11) NOT NULL,
  `training_class_type_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unemployment_claim`
--

CREATE TABLE IF NOT EXISTS `unemployment_claim` (
  `unemployment_claim_ID` int(11) NOT NULL,
  `unemployment_claim_date` date NOT NULL,
  `unemployment_claim_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `valid_responsibility`
--

CREATE TABLE IF NOT EXISTS `valid_responsibility` (
  `from_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
