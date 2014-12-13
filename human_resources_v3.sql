-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Des 2014 pada 00.10
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
-- Struktur dari tabel `alasan_pemberhentian`
--

CREATE TABLE IF NOT EXISTS `alasan_pemberhentian` (
  `id_alasan_pemberhentian` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_alasan_pemberhentian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `benefit_type`
--

CREATE TABLE IF NOT EXISTS `benefit_type` (
  `benefit_type_id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`benefit_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `budget_item`
--

CREATE TABLE IF NOT EXISTS `budget_item` (
  `budget_item_id` int(5) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tujuan` text NOT NULL,
  `justifikasi` text NOT NULL,
  PRIMARY KEY (`budget_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan_performansi`
--

CREATE TABLE IF NOT EXISTS `catatan_performansi` (
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `tanggal_komunikasi` date NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`sejak_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `class_jenis_jabatan`
--

CREATE TABLE IF NOT EXISTS `class_jenis_jabatan` (
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `jumlah_jam_kerja` int(11) NOT NULL,
  PRIMARY KEY (`sejak_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_penggajian`
--

CREATE TABLE IF NOT EXISTS `history_penggajian` (
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`sejak_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` varchar(3) NOT NULL,
  `perkiraan_sejak_tanggal` date NOT NULL,
  `perkiraan_sampai_tanggal` date NOT NULL,
  `flag_penggajian` int(11) NOT NULL,
  `flag_pembebasan` varchar(10) NOT NULL,
  `flag_pegawai_tetap` varchar(10) NOT NULL,
  `flag_pegawai_kontrak` varchar(10) NOT NULL,
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_jabatan`
--

CREATE TABLE IF NOT EXISTS `jenis_jabatan` (
  `id_jenis_jabatan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gelar` text NOT NULL,
  `benefit` int(100) NOT NULL,
  PRIMARY KEY (`id_jenis_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kualifikasi`
--

CREATE TABLE IF NOT EXISTS `jenis_kualifikasi` (
  `jenis_kualifikasi` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`jenis_kualifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_pemberhentian`
--

CREATE TABLE IF NOT EXISTS `jenis_pemberhentian` (
  `id_jenis_pemberhentian` int(11) NOT NULL,
  `dekripsi` text NOT NULL,
  PRIMARY KEY (`id_jenis_pemberhentian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_periode`
--

CREATE TABLE IF NOT EXISTS `jenis_periode` (
  `id_jenis_periode` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_jenis_periode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_rate`
--

CREATE TABLE IF NOT EXISTS `jenis_rate` (
  `id_jenis_rate` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_jenis_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_rating`
--

CREATE TABLE IF NOT EXISTS `jenis_rating` (
  `id_jenis_rating` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_jenis_rating`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_skill`
--

CREATE TABLE IF NOT EXISTS `jenis_skill` (
  `id_jenis_skill` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_jenis_skill`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `klaim_pemecatan`
--

CREATE TABLE IF NOT EXISTS `klaim_pemecatan` (
  `klaim_pemecatan_id` int(11) NOT NULL,
  `tanggal_klaim_pemecatan` date NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`klaim_pemecatan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `langkah_penggajian`
--

CREATE TABLE IF NOT EXISTS `langkah_penggajian` (
  `id_langkah_penggajian` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_perubahan` date NOT NULL,
  PRIMARY KEY (`id_langkah_penggajian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_penggajian`
--

CREATE TABLE IF NOT EXISTS `metode_penggajian` (
  `id_metode_penggajian` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  PRIMARY KEY (`id_metode_penggajian`)
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
-- Struktur dari tabel `party_kualifikasi`
--

CREATE TABLE IF NOT EXISTS `party_kualifikasi` (
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
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `nama_belakang` text NOT NULL,
  `nama_awal` text NOT NULL,
  `nama_tengah` text NOT NULL,
  `nama_panggilan` text NOT NULL,
  `jenis_kelamin` varchar(7) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `status` text NOT NULL,
  `no_passport` int(11) NOT NULL,
  `tanggal_exp_passport` date NOT NULL,
  `lama_pengalaman_kerja` int(11) NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`no_passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penempatan_jabatan`
--

CREATE TABLE IF NOT EXISTS `penempatan_jabatan` (
  `sejak_tanggal` date NOT NULL,
  `hingga_tanggal` date NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`sejak_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggajian`
--

CREATE TABLE IF NOT EXISTS `penggajian` (
  `id_penggajian` int(11) NOT NULL,
  `tanggal_efektif` date NOT NULL,
  `no_penggajian` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`id_penggajian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peringkat_jenis_jabatan`
--

CREATE TABLE IF NOT EXISTS `peringkat_jenis_jabatan` (
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `peringkat` varchar(11) NOT NULL,
  PRIMARY KEY (`sejak_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `preferensi_penggajian`
--

CREATE TABLE IF NOT EXISTS `preferensi_penggajian` (
  `id_pref_penggajian` int(11) NOT NULL,
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `presentase` int(11) NOT NULL,
  `no_rekening` int(11) NOT NULL,
  `nama_bank` text NOT NULL,
  PRIMARY KEY (`id_pref_penggajian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `resume`
--

CREATE TABLE IF NOT EXISTS `resume` (
  `id_resume` int(11) NOT NULL,
  `tanggal_resume` date NOT NULL,
  `isi_resume` text NOT NULL,
  PRIMARY KEY (`id_resume`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `review_performansi`
--

CREATE TABLE IF NOT EXISTS `review_performansi` (
  `id_review_performansi` int(11) NOT NULL,
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `komentar` text NOT NULL,
  PRIMARY KEY (`id_review_performansi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `training_pegawai`
--

CREATE TABLE IF NOT EXISTS `training_pegawai` (
  `sejak_tanggal` date NOT NULL,
  `sampai_tanggal` date NOT NULL,
  PRIMARY KEY (`sejak_tanggal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
