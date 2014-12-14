-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Des 2014 pada 17.15
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `human_resources`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `benefit_type`
--

CREATE TABLE IF NOT EXISTS `benefit_type` (
  `benefit_type_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `employee_paid_percentage` int(11) NOT NULL,
  PRIMARY KEY (`benefit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `budget_item`
--

CREATE TABLE IF NOT EXISTS `budget_item` (
  `budget_item_seq_id` int(5) NOT NULL,
  `amount` int(11) NOT NULL,
  `pupose` text NOT NULL,
  `justification` text NOT NULL,
  PRIMARY KEY (`budget_item_seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employment_application`
--

CREATE TABLE IF NOT EXISTS `employment_application` (
  `application_id` int(11) NOT NULL,
  `application_date` date NOT NULL,
  `employment_app_status_type` varchar(10) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employment_application_source_type`
--

CREATE TABLE IF NOT EXISTS `employment_application_source_type` (
  `employment_app_source_type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`employment_app_source_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party`
--

CREATE TABLE IF NOT EXISTS `party` (
  `party_id` int(11) NOT NULL,
  `credit_rating` int(11) NOT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_benefit`
--

CREATE TABLE IF NOT EXISTS `party_benefit` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `cost` int(11) NOT NULL,
  `actual_employee_paid_percent` int(11) NOT NULL,
  `available_time` int(11) NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_qualification`
--

CREATE TABLE IF NOT EXISTS `party_qualification` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_relationship`
--

CREATE TABLE IF NOT EXISTS `party_relationship` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comment` int(11) NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_role`
--

CREATE TABLE IF NOT EXISTS `party_role` (
  `party_id` int(11) NOT NULL,
  `party_role_id` int(11) NOT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `party_skill`
--

CREATE TABLE IF NOT EXISTS `party_skill` (
  `started_using_date` date NOT NULL,
  `years_experience` int(11) NOT NULL,
  `skill_level` int(11) NOT NULL,
  PRIMARY KEY (`started_using_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL,
  `effective_date` date NOT NULL,
  `payment_ref_num` date NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_method_type`
--

CREATE TABLE IF NOT EXISTS `payment_method_type` (
  `payment_method_type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`payment_method_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payroll_preference`
--

CREATE TABLE IF NOT EXISTS `payroll_preference` (
  `payroll_pref_seq_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `percentage` int(11) NOT NULL,
  `flat_amount` int(11) NOT NULL,
  `routing_number` int(11) NOT NULL,
  `account_number` int(11) NOT NULL,
  `bank_name` text NOT NULL,
  PRIMARY KEY (`payroll_pref_seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pay_grade`
--

CREATE TABLE IF NOT EXISTS `pay_grade` (
  `pay_grade_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`pay_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pay_history`
--

CREATE TABLE IF NOT EXISTS `pay_history` (
  `from_date` date NOT NULL,
  `thru_date` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_note`
--

CREATE TABLE IF NOT EXISTS `performance_note` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `communication_date` date NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_review`
--

CREATE TABLE IF NOT EXISTS `performance_review` (
  `perf_review_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comments` text NOT NULL,
  PRIMARY KEY (`perf_review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `performance_review_item`
--

CREATE TABLE IF NOT EXISTS `performance_review_item` (
  `perf_review_seq_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`perf_review_seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `perf_review_item_type`
--

CREATE TABLE IF NOT EXISTS `perf_review_item_type` (
  `perf_review_type_id` int(11) NOT NULL,
  `perf_desc` text NOT NULL,
  PRIMARY KEY (`perf_review_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `period_type`
--

CREATE TABLE IF NOT EXISTS `period_type` (
  `period_type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`period_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `current_last_name` text NOT NULL,
  `current_first_name` text NOT NULL,
  `current_mid_name` text NOT NULL,
  `current_personal_title` text NOT NULL,
  `current_suffix` text NOT NULL,
  `current_nickname` text NOT NULL,
  `gender` varchar(7) NOT NULL,
  `birth_date` date NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `mother_maiden_name` text NOT NULL,
  `marital_status` text NOT NULL,
  `social_security_id` int(11) NOT NULL,
  `current_passport_num` int(11) NOT NULL,
  `current_passport_exipre_date` date NOT NULL,
  `total_years_work_exp` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `person_training`
--

CREATE TABLE IF NOT EXISTS `person_training` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE IF NOT EXISTS `position` (
  `position_id` varchar(3) NOT NULL,
  `estimated_from_date` date NOT NULL,
  `estimated_thru_date` date NOT NULL,
  `salary_flag` int(11) NOT NULL,
  `exempt_flag` varchar(10) NOT NULL,
  `fulltime_flag` varchar(10) NOT NULL,
  `temp_flag` varchar(10) NOT NULL,
  `actual_from_date` date NOT NULL,
  `actual_thru_date` date NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_classification_type`
--

CREATE TABLE IF NOT EXISTS `position_classification_type` (
  `pos_class_type` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`pos_class_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_fulfillment`
--

CREATE TABLE IF NOT EXISTS `position_fulfillment` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_reporting_structure`
--

CREATE TABLE IF NOT EXISTS `position_reporting_structure` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comment` text NOT NULL,
  `primary_flag` varchar(10) NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_responsibility`
--

CREATE TABLE IF NOT EXISTS `position_responsibility` (
  `thru_date` date NOT NULL,
  `from_date` date NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_type`
--

CREATE TABLE IF NOT EXISTS `position_type` (
  `positiontype_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `title` text NOT NULL,
  `benefit_percent` int(100) NOT NULL,
  PRIMARY KEY (`positiontype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_type_class`
--

CREATE TABLE IF NOT EXISTS `position_type_class` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `standard_hours` int(11) NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position_type_rate`
--

CREATE TABLE IF NOT EXISTS `position_type_rate` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `rate` varchar(11) NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `qualification_type`
--

CREATE TABLE IF NOT EXISTS `qualification_type` (
  `qual_type_id` int(11) NOT NULL,
  `qual_type_desc` text NOT NULL,
  PRIMARY KEY (`qual_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rate_type`
--

CREATE TABLE IF NOT EXISTS `rate_type` (
  `rate_type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`rate_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating_type`
--

CREATE TABLE IF NOT EXISTS `rating_type` (
  `rating_type_id` int(11) NOT NULL,
  `rating_type_desc` text NOT NULL,
  PRIMARY KEY (`rating_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `responsibility_type`
--

CREATE TABLE IF NOT EXISTS `responsibility_type` (
  `responsibility_type_id` int(5) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `resume_id` int(11) NOT NULL,
  `resume_date` date NOT NULL,
  `resume_text` text NOT NULL,
  PRIMARY KEY (`resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary_step`
--

CREATE TABLE IF NOT EXISTS `salary_step` (
  `salary_step_seq_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date_modified` date NOT NULL,
  PRIMARY KEY (`salary_step_seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skill_type`
--

CREATE TABLE IF NOT EXISTS `skill_type` (
  `skill_type_id` int(11) NOT NULL,
  `skill_type_desc` text NOT NULL,
  PRIMARY KEY (`skill_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `termination_reason`
--

CREATE TABLE IF NOT EXISTS `termination_reason` (
  `termination_reason_id` int(11) NOT NULL,
  `termination_reason_description` text NOT NULL,
  PRIMARY KEY (`termination_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `termination_type`
--

CREATE TABLE IF NOT EXISTS `termination_type` (
  `termination_type_id` int(11) NOT NULL,
  `termination_type_description` text NOT NULL,
  PRIMARY KEY (`termination_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `training_class_type`
--

CREATE TABLE IF NOT EXISTS `training_class_type` (
  `training_class_type_id` int(11) NOT NULL,
  `training_class_type_desc` text NOT NULL,
  PRIMARY KEY (`training_class_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `unemployment_claim`
--

CREATE TABLE IF NOT EXISTS `unemployment_claim` (
  `unemployment_claim_ID` int(11) NOT NULL,
  `unemployment_claim_date` date NOT NULL,
  `unemployment_claim_description` text NOT NULL,
  PRIMARY KEY (`unemployment_claim_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `valid_responsibility`
--

CREATE TABLE IF NOT EXISTS `valid_responsibility` (
  `from_date` date NOT NULL,
  `thru_date` date NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
