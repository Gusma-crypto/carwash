-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jan 2024 pada 01.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_carwash`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(10) UNSIGNED NOT NULL,
  `no_rekening` varchar(50) DEFAULT NULL,
  `atas_nama` varchar(255) DEFAULT NULL,
  `jenis_bank` enum('BCA','BRI','Mandiri','Permata','BNI') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `ringkasan` varchar(500) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `slug_berita`, `judul_berita`, `ringkasan`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(1, 1, 5, 'pembuatan-website-profil', 'Pembuatan Website Profil', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', '<h3><strong>Tujuan</strong></h3>\r\n<p>Website perusahaan dibangun sebagai:</p>\r\n<ul>\r\n<li>Sarana komunikasi resmi perusahaan dengan pelanggan</li>\r\n<li>Menyediakan informasi resmi perusahaan</li>\r\n<li>Menyajikan informasi produk dan layanan yang dimiliki</li>\r\n<li>Sebagai media pemasaran bagi perusahaan</li>\r\n</ul>\r\n<h3><strong>Fitur-fitur utama</strong></h3>\r\n<p>Website perusahaan ini menyediakan fitur-fitur sebagai berikut (disesuaikan dengan paket yang dipilih):</p>\r\n<ol>\r\n<li>Modul Berita untuk mengelola dan menampilkan berita</li>\r\n<li>Modul Profil untuk mengelola dan menampilkan profil perusahaan</li>\r\n<li>Modul Staff untuk mengelola dan menampilkan data staff/personil perusahaan</li>\r\n<li>Modul Galeri untuk mengelola galeri foto dan menampilkannya</li>\r\n<li>Modul Video berfungsi untuk mempublikasikan video sebagai sarana komunikasi</li>\r\n<li>Modul Agenda/Event untuk menampilkan event-event atau agenda yang ada di perusahaan</li>\r\n<li>Modul Produk dan layanan untuk mengelola dan menampilkan produk/layanan yang dipasarkan</li>\r\n<li>Modul Kontak untuk mengelola komunikasi pelanggan/customer dengan perusahaan</li>\r\n<li>Modul SEO untuk membantu hasil pencarian di Google</li>\r\n<li>Integrasi dengan jejaring sosial yang dimiliki</li>\r\n<li>Dan fitur-fitur lainnya</li>\r\n</ol>\r\n<h3>Paket Dasar</h3>\r\n<table class=\"table table-bordered table-stripped table-hover tiny-table\" border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>Website UKM Dasar</td>\r\n<td>Hosting 250MB<br />Bandwidth Unlimited</td>\r\n<td>Rp. 1.500.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td>Website Perusahaan Kecil</td>\r\n<td>Hosting dan bandwidth unlimeted<br />Fully responsive web design</td>\r\n<td>Rp. 3.000.000&nbsp;<sup class=\"text-danger\">*</sup></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\"><span class=\"text-danger\">* Harga dasar dengan syarat tertentu</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'Publish', 'Berita', 'Pastikan perusahaan Anda bisa diakses secara online sehingga meningkatkan brand image perusahaan yang akhirnya meningkatkan omset usaha.', 'website-perusahaan-company-profile-web-javawebmedia1.jpg', '', 5, '2019-05-13 15:51:51', '2019-05-13 15:51:36', '2021-04-24 03:01:11'),
(2, 1, 5, 'kursus-statistik', 'Kursus Statistik', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.', '<p>Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.</p>\r\n<p>Materi Kursus:</p>\r\n<ul>\r\n<ul>\r\n<li>Pengantar manajemen dan analisis data</li>\r\n<li>Transfer data, Entry data dan Cleaning Data</li>\r\n<li>Transformasi data (select cases, recode, split, dll)</li>\r\n<li>Statistik deskriptif untuk data numeric (mean, median, standar deviasi, varians, percentile dll) dan data kategorik (proporsi/persentase)</li>\r\n<li>Penyajian data (Box Plot, Bar Diagram, Pie, Histogram, dll)</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Bonus: Uji Validitas dan Reliabilitas Instrumen, durasi 1 jam</strong></p>\r\n<h3><strong>Paket In house Training</strong></h3>\r\n<p>Paket in house training ini dilakukan sesuai kebutuhan institusi atau personal. Untuk materi dan biaya akan kami ajukan melalui proposal.</p>', 'Publish', 'Layanan', 'Tujuan dari kursus ini adalah mampu melakukan manajemen dan analisis data dengan SPSS/Stata dan melakukan analisis deskriptif dan penyajian data serta intrepretasinya.sdf', 'instagram-kursus-statistik-javawebmedia.png', 'fa fa-chart-bar', 7, '2019-05-17 04:15:33', '2019-05-17 04:06:00', '2023-12-11 22:16:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jenis_client` enum('Perorangan','Perusahaan','Organisasi') NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pimpinan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `isi_testimoni` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_client` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `client`
--

INSERT INTO `client` (`id_client`, `id_user`, `jenis_client`, `nama`, `pimpinan`, `alamat`, `telepon`, `website`, `email`, `isi_testimoni`, `gambar`, `status_client`, `tempat_lahir`, `tanggal_lahir`, `tanggal_post`, `tanggal`) VALUES
(2, 1, 'Perorangan', 'AWS Indonesia', 'Uli Handayani', 'Jalan Lapangan Banteng Barat No. 3-4\r\nTromol Pos 3500', '', 'https://awsindonesia.org', 'javawebmedia@gmail.com', 'Website Yayasan AWS Indonesia saat ini sudah aktif dan bisa diakses tepat pada waktunya. Semoga selalu sukses ya.', 'Powered-by-Yayasan-AWS-Indonesia---SQUARE-2.png', 'Publish', 'JAKARTA', '1962-01-02', '0000-00-00 00:00:00', '2021-04-24 05:14:19'),
(3, 1, 'Perusahaan', 'Pemprov DKI Jakarta', 'Suprianto', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'http://bkddki.jakarta.go.id', 'lalu-kekah@bkkbn.go.id', 'Sebelumnya kami menggunakan website berbasis CMS Joomla. Saat ini website sudah diupdate dan berfungsi dengan baik sekali.', '5a1d2cd419e0c365574115.png', 'Publish', 'Depok', '2020-03-02', '0000-00-00 00:00:00', '2021-04-24 05:21:38'),
(5, 1, 'Perusahaan', 'Hotel Bumi Wiyata', 'Winda', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://hotelbumiwiyata.com', 'javawebmedia@gmail.com', 'Java Web Media sangat membantu proses pengembangan website kami. Menyediakan dan mempersiapkan konten mulai dari gambar hingga copy writing. Terimakasih', 'b7630a2a75006840b351bde15efe52be.jpg', 'Publish', 'Blora', '1983-02-22', '2021-04-24 07:34:12', '2021-04-24 05:21:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `id_kategori_download`, `id_user`, `judul_download`, `jenis_download`, `isi`, `gambar`, `website`, `hits`, `tanggal_post`, `tanggal`) VALUES
(3, 2, 1, 'Paket Harga Kursus Desain dan Programming Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Desain dan Programming Java Web Media 2020</p>', 'Daftar_Harga_Kursus_2020_v2.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:27'),
(4, 1, 1, 'Formulir Pendaftaran Siswa Kursus', 'Download', '<p>Formulir Pendaftaran Siswa Kursus</p>', 'FORMULIR_PENDAFTARAN_SISWA_KURSUS.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:10'),
(5, 2, 1, 'Paket Harga Kursus Statistik Java Web Media 2020', 'Download', '<p>Paket Harga Kursus Statistik Java Web Media 2020</p>', 'KURSUS_STATISTIK.pdf', '', 0, '0000-00-00 00:00:00', '2020-02-13 00:50:48'),
(6, 2, 1, 'Panduan Untuk Admin Engineering Utama aaa', 'Download', '<p>Panduan Untuk Admin Engineering Utama</p>', '010-Undangan-Workshop-Rekonsiliasi-Feb-2021.pdf', '', 0, '2021-04-23 20:06:25', '2021-04-24 01:27:48'),
(7, 2, 1, 'Panduan Untuk Admin Engineeringa', 'Panduan', '', 'SURAT-TUGAS-BOGOR-27-29-NOVEMBER-2019.pdf', '', 0, '2021-04-24 02:31:13', '2021-04-24 01:26:00'),
(8, 2, 1, 'Panduan Website', 'Download', '<p>Panduan Website</p>', 'RENCANA-JADWAL-MAS-FAISAL-BSM.pdf', '', 4, '2021-04-24 08:20:48', '2021-04-24 03:51:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal_post` datetime DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `status_text`, `tanggal_post`, `tanggal`) VALUES
(4, 5, 1, 'Kursus di Java Web Media', 'Homepage', '<div class=\"align-items-center d-none d-md-flex\">Pusat Kursus Private Web Programming, Mobile Programming, Graphic Design dan Statistik. Anda dapat memilih program kursus sesuai kebutuhan.</div>\r\n<div class=\"d-flex align-items-center\">&nbsp;</div>', 'DESAIN-AWS-1980-x-1080.jpg', 'http://javawebmedia.com', NULL, 'Ya', NULL, '2021-04-24 05:46:34'),
(5, 5, 1, 'Kursus Codeigniter di Java Web Media', 'Homepage', '<p>Anda akan belajar membangun website profil perusahaan dengan bootstrap, framework JavaScript, PHP framework Codeigniter / Laravel dan database MySQL.</p>', '5.jpg', 'https://javawebmedia.com', NULL, 'Ya', NULL, '2021-04-24 05:45:51'),
(7, 5, 1, 'Kursus Web Development Java Web Media', 'Galeri', '<p>Kursus Web Development Java Web Media</p>', 'web-development-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-13 00:52:02'),
(8, 5, 1, 'Web Application Java Web Media', 'Galeri', '<p>Web Application Java Web Media</p>', 'web-application-pendaftaran-online-javawebmedia1.jpg', '', NULL, 'Ya', NULL, '2020-02-13 00:52:18'),
(9, 5, 1, 'Kursus Statistik di Java Web Media', 'Galeri', '<p>Kursus Statistik di Java Web Media</p>', 'instagram-kursus-statistik-javawebmedia1.png', '', NULL, 'Ya', NULL, '2020-02-13 00:53:55'),
(10, 5, 1, 'Web Development Java Web Media', 'Galeri', '<p>Web Development Java Web Media</p>', 'website-perusahaan-company-profile-web-javawebmedia12.jpg', '', NULL, 'Ya', NULL, '2020-02-13 00:54:28'),
(12, 6, 1, 'Festival Kabupaten Lestari 2019', 'Galeri', '<p>Festival Kabupaten Lestari 2019</p>', '1.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 02:45:16', '2021-04-24 05:27:53'),
(13, 6, 1, 'Welcome to Java Web Media', 'Galeri', '<p>Welcome to Java Web Media</p>', 'Kursus-Banner-02.jpg', 'http://javawebmedia.com', NULL, 'Ya', '2021-04-24 08:13:13', '2021-04-24 01:13:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenislayanan`
--

CREATE TABLE `jenislayanan` (
  `id_jenis_layanan` int(11) NOT NULL,
  `nama_layanan` varchar(255) DEFAULT NULL,
  `slug_jenislayanan` varchar(255) DEFAULT NULL,
  `deskripsi_layanan` text DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenislayanan`
--

INSERT INTO `jenislayanan` (`id_jenis_layanan`, `nama_layanan`, `slug_jenislayanan`, `deskripsi_layanan`, `harga`, `gambar`, `id_user`, `created_at`) VALUES
(1, 'Cuci Mobil Biasa', 'cuci-mobil-biasa', '<p>Mencuci mobil menggunakan sabun dan air bersih</p>', 50000.00, '4.jpg', 1, '2023-12-11 22:31:56'),
(2, 'Cuci Mobil Premium', 'cuci-mobil-premium', '<p>Mencuci mobil dengan tambahan wax dan poles</p>', 100000.00, '6.jpg', 1, '2023-12-11 22:31:48'),
(3, 'Vacuum Interior', 'vacuum-interior', '<p>Membersihkan interior mobil dengan vacuum</p>', 80000.00, '6.jpg', 1, '2023-12-11 22:31:39'),
(4, 'Perawatan Roda', 'perawatan-roda', '<p>Membersihkan dan mengkilapkan velg dan ban</p>', 20000.00, '4.jpg', 1, '2023-12-11 22:26:34'),
(6, 'Premi Utama mampu', 'premi-utama-mampu', '<p>layanan premi utama berkualitas test</p>', 50000.00, 'images-(1).jpg', 1, '2023-12-11 22:26:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(1, 1, 'web-design', 'Web Design', 1, 0, '2021-04-20 22:20:49'),
(2, 1, 'berita', 'Berita', 2, 0, '2021-04-20 22:20:57'),
(3, 1, 'java-web-media', 'Java Web Media', 3, 0, '2021-04-20 22:21:06'),
(4, 1, 'updates', 'Updates', 4, 0, '2021-04-20 22:26:59'),
(5, 1, 'web-programming', 'Web Programming', 5, 8, '2021-05-03 01:17:08'),
(6, 1, 'kursus-web', 'Kursus Web', 2, 3, '2021-04-24 23:10:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `id_user`, `slug_kategori_download`, `nama_kategori_download`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'formulir-pendaftaran', 'Formulir Pendaftaran', 1, 0, '2021-04-21 00:37:58'),
(2, 1, 'promosi-java-web-media-2021', 'Promosi Java Web Media 2021', 2, 0, '2021-04-21 01:08:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `id_user`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`, `hits`, `tanggal`) VALUES
(4, 0, 'kegiatan', 'Kegiatan', 4, 0, '2021-04-21 00:38:46'),
(5, 0, 'banner-website', 'Banner Website', 4, 0, '2021-04-21 00:38:46'),
(6, 1, 'family-gathering', 'Family gathering', 2, 0, '2021-04-21 00:40:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_staff`
--

CREATE TABLE `kategori_staff` (
  `id_kategori_staff` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori_staff` varchar(255) NOT NULL,
  `nama_kategori_staff` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori_staff`
--

INSERT INTO `kategori_staff` (`id_kategori_staff`, `id_user`, `slug_kategori_staff`, `nama_kategori_staff`, `urutan`, `hits`, `tanggal`) VALUES
(1, 0, 'pejabat-eselon-1', 'Pejabat Eselon 1', 1, 0, '2021-04-21 00:44:24'),
(2, 0, 'pejabat-struktural', 'Pejabat Struktural', 2, 0, '2021-04-21 00:44:24'),
(3, 1, 'team-inti', 'Team Inti', 2, 0, '2021-04-21 01:54:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) DEFAULT NULL,
  `nama_twitter` varchar(255) DEFAULT NULL,
  `nama_instagram` varchar(255) DEFAULT NULL,
  `nama_youtube` varchar(255) DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `protocol` varchar(255) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_timeout` int(11) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_pass` varchar(255) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `id_user`, `namaweb`, `singkatan`, `tagline`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `youtube`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_youtube`, `google_map`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `tanggal`) VALUES
(1, 1, 'Carwash', 'Cuci Mobil Paket lengkap', 'cucimobil', '<p><em><strong>PT Javawebmedia Edukasi Indonesia</strong></em>&nbsp;atau Java Web Media berdiri pada tanggal 26 April 2010, berawal dari garasi rumah ukuran 3x4 meter. Java Web Media awalnya hanya bergerak di bidang pembuatan dan pengembangan website serta agensi desain grafis. Awal tahun 2011, perusahaan ini kemudian mulai bergerak di bidang pengembangan sumber daya manusia, khususnya di bidang keahlian computer&nbsp;<em>Graphic Design</em>,&nbsp;<em>Web Design</em>&nbsp;dan&nbsp;<em>Web Development.</em></p>\r\n<p>Lalu pada tahun 2014 Java Web Media resmi menjadi sebuah perusahaan yang terdaftar. Pada tahun 2014 itu pula kami membuka layanan kursus statistik.</p>\r\n<p>Java Web Media adalah lembaga kursus yang bergerak di bidang pendidikan khususnya kursus website, digital marketing, desain grafis dan statistik. Sampai saat ini Java Web Media sudah memiliki lulusan lebih dari 1200 orang dari berbagai status dan profesi mulai dari pelajar sekolah, mahasiswa, guru, dosen, staff profesional, freelancer, dll. Lulusan tidak hanya dari Indonesia tapi juga dari beberapa negara tetangga seperti New Zealand, Timor Leste dan Malaysia.</p>\r\n<p>Java Web Media membuka cabang pertamanya pada tahun 2014. Hingga tahun 2020 ini, Java Web Media telah memiliki 2 cabang yang berlokasi di kota Depok.</p>\r\n<p>Selain bergerak di bidang pendidikan Java Web Media juga memiliki layanan di bidang perencanaan strategis sistem informasi, pengembangan aplikasi berbasis web dan berbasis mobile (Android dan IOS/Apple).</p>', 'Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik', 'Way halim bandar Lampung', 'carwash@gmail.com', 'carwash@gmail.com', '<p><strong>Java Web Media</strong><br />MALL DEPOK TOWN SQUARE<br />Lantai 2 Unit SS No. 5-7<br />(Samping Gerai Samsung)<br />Jl. Margonda Raya No 1<br />Kemiri Muka, Kecamatan Beji, Kota Depok, Jawa Barat 16424<br />Telepon: 085715100485<br />Whatsapp: +6281210697841<br />Email: contact@javawebmedia.co.id</p>', '+6285715100485', '+6281210697841', 'logo-java-web-media-01-01.png', 'cw.png', 'Java Web Media adalah Pusat Kursus Private dan Reguler bidang Desain Grafis, Web Programming, Mobile Application dan Statistik\r\n', 'adada', 'https://www.facebook.com/carwash', 'http://twitter.com/carwash', 'https://instagram.com/carwash', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'carwash', 'carwasg', 'carwash', 'carwasg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.1145209004862!2d106.82752101476999!3d-6.379215695384046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ec0869e31b4f%3A0xaa40278d69385917!2sHotel+Bumi+Wiyata!5e0!3m2!1sid!2sid!4v1532643481549\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'smtp', 'ssl://mail.websitemu.com', 465, 7, 'contact@websitemu.com', 'muhammad', '2023-12-10 16:24:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `loket`
--

CREATE TABLE `loket` (
  `id_loket` int(11) UNSIGNED NOT NULL,
  `namaloket` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `loket`
--

INSERT INTO `loket` (`id_loket`, `namaloket`, `deskripsi`) VALUES
(1, 'Loket A', 'khusus Untuk Booking online'),
(2, 'Loket B', 'Khusus Untuk yang datang langsung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telpon` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_user`, `nama`, `alamat`, `no_telpon`, `email`, `gambar`, `password`, `token`, `created_at`) VALUES
(1, 3, 'aryan', 'lampung', '085769881454', 'arryan@gmail.com', NULL, NULL, NULL, '2023-12-10 17:55:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendarftaran` int(11) UNSIGNED NOT NULL,
  `noantrian` varchar(20) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `jeniskendaraan` varchar(250) DEFAULT NULL,
  `merek` varchar(50) DEFAULT NULL,
  `no_plat` varchar(50) DEFAULT NULL,
  `warna` int(11) DEFAULT NULL,
  `id_jenislayanan` int(11) DEFAULT NULL,
  `id_loket` int(11) DEFAULT NULL,
  `tgl_pendaftaran` datetime DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` enum('1','2','3') DEFAULT '1',
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendarftaran`, `noantrian`, `id_user`, `jeniskendaraan`, `merek`, `no_plat`, `warna`, `id_jenislayanan`, `id_loket`, `tgl_pendaftaran`, `keterangan`, `status`, `created_at`) VALUES
(1, 'A-001', NULL, '1', NULL, NULL, NULL, 1, 1, '2023-12-11 00:00:00', NULL, '1', '2023-12-30 13:55:51'),
(2, 'B-001', NULL, '2', NULL, NULL, NULL, 1, 2, '2023-12-11 00:00:00', NULL, '1', '2023-12-30 13:55:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id_staff` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_kategori_staff` int(11) DEFAULT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jabatan` varchar(200) DEFAULT NULL,
  `keahlian` text DEFAULT NULL,
  `gambar` varchar(200) DEFAULT NULL,
  `status_staff` varchar(20) NOT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id_staff`, `id_user`, `id_kategori_staff`, `nama`, `alamat`, `telepon`, `website`, `email`, `jabatan`, `keahlian`, `gambar`, `status_staff`, `tempat_lahir`, `tanggal_lahir`, `tanggal`) VALUES
(9, 1, 3, 'Andoyo Cakep', 'Jl Permata No 1, Halim Perdanakusuma', '0813 8841 0829', 'https://sidatablkbogorkab.com', 'lalu-kekah@bkkbn.go.id', 'Direktur', 'ada', '6.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 01:51:22'),
(10, 1, 3, 'Andoyo Cakep', 'Depok Town Square Lantai 2 Unit SS 5-7\r\nJl. Margonda Raya Kota Depok', '+6285715100485', 'https://javawebmedia.com', 'javawebmedia@gmail.com', 'Graphic Designer', '', '4.jpg', 'Publish', 'Depok', '1983-02-22', '2021-04-24 01:50:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_konfirmasi`
--

CREATE TABLE `transaksi_konfirmasi` (
  `id_konfirmasi` int(11) UNSIGNED NOT NULL,
  `id_bank_penerima` int(11) DEFAULT NULL,
  `jumlah_tf` decimal(10,2) DEFAULT NULL,
  `bank_tf` varchar(255) DEFAULT NULL,
  `no_rek` varchar(20) DEFAULT NULL,
  `bukti_pembayaran` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tgl_tf` date DEFAULT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_konfirmasi`
--

INSERT INTO `transaksi_konfirmasi` (`id_konfirmasi`, `id_bank_penerima`, `jumlah_tf`, `bank_tf`, `no_rek`, `bukti_pembayaran`, `keterangan`, `tgl_tf`, `id_pelanggan`, `created_at`) VALUES
(1, 1, 85000.00, 'Mandiri', '765756756', 'abc.jpg', 'Untuk Pembayaran cuci 2 mobil', '2023-12-11', NULL, '2023-12-10 17:57:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `keterangan`, `tanggal_post`, `tanggal`) VALUES
(1, 'Admin carwash', 'admin@gmail.com', 'admin', 'dc28d4424ece38803650f440d7eb1cb2b3fb6651', 'Admin', NULL, '1702225568_90de684482674516148f.jpg', '', '2019-10-12 15:50:21', '2023-12-30 12:35:02'),
(2, 'Rayyan', 'andoyoandoyo@gmail.com', 'rayyan', 'acc5d43e0936dbf3f27b906891aaafdf9ede4508', 'User', NULL, NULL, '', '2019-04-24 17:21:18', '2019-04-24 10:21:18'),
(3, 'Kheira Alexandrina', 'andoyoandoyo@gmail.com', 'diana', '6a90af129eeefc2f6e6a38746a2b33cb04c2c632', 'User', NULL, NULL, '<p>adada</p>', '2019-10-12 14:10:05', '2021-04-21 01:07:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_logs`
--

CREATE TABLE `user_logs` (
  `id_user_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tanggal_updates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user_logs`
--

INSERT INTO `user_logs` (`id_user_log`, `id_user`, `ip_address`, `username`, `url`, `tanggal_updates`) VALUES
(1, 1, '::1', 'javawebmedia', 'http://localhost/webci4/admin/dasbor', '2021-05-03 01:19:34'),
(2, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:37:55'),
(3, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:37:59'),
(4, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 15:38:01'),
(5, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 15:38:18'),
(6, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:38:21'),
(7, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:47:45'),
(8, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:49:51'),
(9, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:50:06'),
(10, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:51:35'),
(11, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:52:50'),
(12, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:53:00'),
(13, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:53:23'),
(14, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:53:27'),
(15, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 15:59:47'),
(16, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 16:00:01'),
(17, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 16:00:16'),
(18, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/download', '2023-12-08 16:01:14'),
(19, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/download', '2023-12-08 16:02:39'),
(20, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/download', '2023-12-08 16:04:02'),
(21, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/download', '2023-12-08 16:06:05'),
(22, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/download', '2023-12-08 16:07:53'),
(23, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 16:08:26'),
(24, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:08:29'),
(25, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:08:48'),
(26, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:09:34'),
(27, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:10:04'),
(28, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:10:28'),
(29, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/tambah', '2023-12-08 16:10:43'),
(30, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/tambah', '2023-12-08 16:11:07'),
(31, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/tambah', '2023-12-08 16:11:10'),
(32, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/tambah', '2023-12-08 16:11:24'),
(33, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:11:27'),
(34, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/24', '2023-12-08 16:11:49'),
(35, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:11:49'),
(36, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/23', '2023-12-08 16:11:54'),
(37, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:11:54'),
(38, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/22', '2023-12-08 16:11:58'),
(39, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:11:58'),
(40, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/21', '2023-12-08 16:12:02'),
(41, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:02'),
(42, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/7', '2023-12-08 16:12:05'),
(43, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:06'),
(44, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/6', '2023-12-08 16:12:09'),
(45, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:09'),
(46, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/4', '2023-12-08 16:12:15'),
(47, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:15'),
(48, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/delete/3', '2023-12-08 16:12:18'),
(49, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:18'),
(50, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 16:12:27'),
(51, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:40'),
(52, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:49'),
(53, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/tambah', '2023-12-08 16:12:51'),
(54, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:12:55'),
(55, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/download/tambah', '2023-12-08 16:12:57'),
(56, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 16:13:00'),
(57, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-08 16:13:03'),
(58, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi', '2023-12-08 16:13:12'),
(59, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/akun', '2023-12-08 16:13:46'),
(60, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-08 16:14:03'),
(61, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-09 08:30:30'),
(62, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:16:02'),
(63, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:18:36'),
(64, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:19:47'),
(65, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:20:28'),
(66, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:20:53'),
(67, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:21:02'),
(68, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:21:13'),
(69, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita/tambah', '2023-12-10 16:21:29'),
(70, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/video', '2023-12-10 16:21:32'),
(71, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/galeri', '2023-12-10 16:21:39'),
(72, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/berita', '2023-12-10 16:21:41'),
(73, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi', '2023-12-10 16:22:29'),
(74, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi', '2023-12-10 16:23:49'),
(75, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi', '2023-12-10 16:23:49'),
(76, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi', '2023-12-10 16:24:12'),
(77, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi', '2023-12-10 16:24:12'),
(78, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi/icon', '2023-12-10 16:24:16'),
(79, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi/icon', '2023-12-10 16:24:28'),
(80, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/konfigurasi/icon', '2023-12-10 16:24:29'),
(81, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user', '2023-12-10 16:24:39'),
(82, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user/edit/3', '2023-12-10 16:24:43'),
(83, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user', '2023-12-10 16:24:54'),
(84, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user/edit/1', '2023-12-10 16:24:57'),
(85, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user/edit/1', '2023-12-10 16:25:18'),
(86, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user', '2023-12-10 16:25:18'),
(87, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user', '2023-12-10 16:25:41'),
(88, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user', '2023-12-10 16:25:48'),
(89, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user/edit/3', '2023-12-10 16:25:49'),
(90, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user', '2023-12-10 16:25:54'),
(91, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/user/edit/1', '2023-12-10 16:25:56'),
(92, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/akun', '2023-12-10 16:25:59'),
(93, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/akun', '2023-12-10 16:26:08'),
(94, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/akun', '2023-12-10 16:26:08'),
(95, 1, '::1', 'javawebmedia', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:26:11'),
(96, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:27:25'),
(97, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:27:29'),
(98, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:27:35'),
(99, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:27:35'),
(100, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:27:49'),
(101, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:27:56'),
(102, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:28:09'),
(103, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:28:09'),
(104, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:28:18'),
(105, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:28:22'),
(106, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-10 16:28:28'),
(107, 1, '::1', 'admin', 'http://localhost/carwash/admin/akun', '2023-12-10 16:28:30'),
(108, 1, '::1', 'admin', 'http://localhost/carwash/admin/konfigurasi/icon', '2023-12-10 16:28:35'),
(109, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-10 16:28:37'),
(110, 1, '::1', 'admin', 'http://localhost/carwash/admin/user/edit/1', '2023-12-10 16:28:39'),
(111, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita', '2023-12-10 16:28:43'),
(112, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-10 18:13:22'),
(113, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita', '2023-12-10 18:13:29'),
(114, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:13:49'),
(115, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita', '2023-12-10 18:14:01'),
(116, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:14:11'),
(117, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita', '2023-12-10 18:14:18'),
(118, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:28:08'),
(119, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:28:49'),
(120, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:31:32'),
(121, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:33:16'),
(122, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:33:40'),
(123, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:34:37'),
(124, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:35:10'),
(125, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:35:46'),
(126, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:37:18'),
(127, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:39:32'),
(128, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:41:26'),
(129, 1, '::1', 'admin', 'http://localhost/carwash/admin/kategori_download', '2023-12-10 18:41:29'),
(130, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:41:40'),
(131, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:41:50'),
(132, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:42:23'),
(133, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:42:34'),
(134, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:42:37'),
(135, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:42:39'),
(136, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:43:04'),
(137, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:48:46'),
(138, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:51:43'),
(139, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:52:09'),
(140, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:52:21'),
(141, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:52:23'),
(142, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:53:44'),
(143, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:53:47'),
(144, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:53:48'),
(145, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:53:55'),
(146, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:55:15'),
(147, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:55:17'),
(148, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:55:23'),
(149, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:56:03'),
(150, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:56:26'),
(151, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:56:26'),
(152, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:59:12'),
(153, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/delete/5', '2023-12-10 18:59:15'),
(154, 1, '::1', 'admin', 'http://localhost/carwash/admin/download', '2023-12-10 18:59:15'),
(155, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 18:59:42'),
(156, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 18:59:45'),
(157, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:00:36'),
(158, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:00:43'),
(159, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:01:37'),
(160, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:01:40'),
(161, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:01:45'),
(162, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:01:50'),
(163, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:02:36'),
(164, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:02:45'),
(165, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:03:38'),
(166, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:03:41'),
(167, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:04:58'),
(168, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-10 19:05:04'),
(169, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 19:05:04'),
(170, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 19:05:15'),
(171, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:15:47'),
(172, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:17:36'),
(173, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:18:05'),
(174, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:18:23'),
(175, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:18:33'),
(176, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:18:58'),
(177, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:19:55'),
(178, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:20:08'),
(179, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:20:17'),
(180, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:22:19'),
(181, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:22:24'),
(182, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:23:36'),
(183, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 19:23:36'),
(184, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:23:40'),
(185, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:23:43'),
(186, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:25:00'),
(187, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-10 19:25:05'),
(188, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-10 19:26:24'),
(189, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-11 22:13:10'),
(190, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:13:21'),
(191, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:13:31'),
(192, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:13:36'),
(193, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita', '2023-12-11 22:16:38'),
(194, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita/edit/2', '2023-12-11 22:16:41'),
(195, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita/edit/2', '2023-12-11 22:16:47'),
(196, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita/jenis_berita/Layanan', '2023-12-11 22:16:47'),
(197, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita/jenis_berita/Layanan', '2023-12-11 22:19:16'),
(198, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:19:19'),
(199, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:19:22'),
(200, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:21:01'),
(201, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:21:05'),
(202, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:21:41'),
(203, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:23:17'),
(204, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/4', '2023-12-11 22:23:26'),
(205, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:23:33'),
(206, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:24:06'),
(207, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:24:07'),
(208, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:24:14'),
(209, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:25:26'),
(210, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:25:29'),
(211, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:25:35'),
(212, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:25:37'),
(213, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:25:57'),
(214, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:25:58'),
(215, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:26:03'),
(216, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-11 22:26:20'),
(217, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:26:20'),
(218, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/4', '2023-12-11 22:26:28'),
(219, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/4', '2023-12-11 22:26:34'),
(220, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:26:34'),
(221, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:31:20'),
(222, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/3', '2023-12-11 22:31:35'),
(223, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/3', '2023-12-11 22:31:39'),
(224, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:31:40'),
(225, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/2', '2023-12-11 22:31:44'),
(226, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/2', '2023-12-11 22:31:48'),
(227, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:31:48'),
(228, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/1', '2023-12-11 22:31:52'),
(229, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/1', '2023-12-11 22:31:56'),
(230, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:31:56'),
(231, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:32:01'),
(232, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:33:30'),
(233, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:33:58'),
(234, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:34:29'),
(235, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:35:56'),
(236, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:36:01'),
(237, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:37:10'),
(238, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:38:42'),
(239, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:39:10'),
(240, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:39:16'),
(241, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:39:19'),
(242, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:39:28'),
(243, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-11 22:39:29'),
(244, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:39:32'),
(245, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:40:00'),
(246, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:40:09'),
(247, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:40:37'),
(248, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:40:47'),
(249, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:41:59'),
(250, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:42:08'),
(251, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:42:18'),
(252, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:46:10'),
(253, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:46:33'),
(254, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:50:51'),
(255, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:51:55'),
(256, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:52:45'),
(257, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:53:24'),
(258, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:53:46'),
(259, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:54:46'),
(260, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:56:33'),
(261, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 22:59:40'),
(262, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 23:01:04'),
(263, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 23:01:17'),
(264, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 23:02:26'),
(265, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 23:02:50'),
(266, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 23:03:19'),
(267, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-11 23:03:29'),
(268, 1, '::1', 'admin', 'http://localhost/carwash/admin/video', '2023-12-11 23:07:15'),
(269, 1, '::1', 'admin', 'http://localhost/carwash/admin/video', '2023-12-11 23:08:42'),
(270, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:08:51'),
(271, 1, '::1', 'admin', 'http://localhost/carwash/admin/user/edit/3', '2023-12-11 23:08:55'),
(272, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:08:59'),
(273, 1, '::1', 'admin', 'http://localhost/carwash/admin/staff', '2023-12-11 23:09:16'),
(274, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:09:19'),
(275, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:10:53'),
(276, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:12:55'),
(277, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:13:23'),
(278, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:14:27'),
(279, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:20:23'),
(280, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:21:02'),
(281, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:21:28'),
(282, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:22:04'),
(283, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:23:38'),
(284, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:24:33'),
(285, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:24:45'),
(286, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:31:22'),
(287, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-11 23:31:27'),
(288, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-11 23:32:30'),
(289, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-11 23:32:53'),
(290, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-11 23:32:54'),
(291, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-11 23:32:57'),
(292, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-11 23:33:18'),
(293, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-11 23:35:40'),
(294, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 12:35:10'),
(295, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:35:20'),
(296, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/edit/6', '2023-12-30 12:35:27'),
(297, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:35:35'),
(298, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:35:43'),
(299, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-30 12:36:35'),
(300, 1, '::1', 'admin', 'http://localhost/carwash/admin/user', '2023-12-30 12:36:51'),
(301, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:36:57'),
(302, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:37:16'),
(303, 1, '::1', 'admin', 'http://localhost/carwash/admin/staff', '2023-12-30 12:37:20'),
(304, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:37:22'),
(305, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:37:25'),
(306, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:41:43'),
(307, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:42:42'),
(308, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:42:46'),
(309, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:42:57'),
(310, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:43:00'),
(311, 1, '::1', 'admin', 'http://localhost/carwash/admin/transaksi', '2023-12-30 12:46:10'),
(312, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:46:30'),
(313, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:47:19'),
(314, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:47:58'),
(315, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:48:17'),
(316, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:49:20'),
(317, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 12:49:45'),
(318, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:49:47'),
(319, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:50:32'),
(320, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:51:22'),
(321, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:52:00'),
(322, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:55:34'),
(323, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:55:48'),
(324, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:56:28'),
(325, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:57:47'),
(326, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:59:06'),
(327, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 12:59:24'),
(328, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 13:00:17'),
(329, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 13:19:14'),
(330, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 13:27:55'),
(331, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 13:32:43'),
(332, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 13:32:46'),
(333, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 13:32:54'),
(334, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan', '2023-12-30 13:32:56'),
(335, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 13:32:59'),
(336, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 13:33:08'),
(337, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 13:34:13'),
(338, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 13:42:07'),
(339, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 13:56:05'),
(340, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 13:56:25'),
(341, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 13:56:56'),
(342, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 13:57:09'),
(343, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 13:59:38'),
(344, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 13:59:57'),
(345, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:01:44'),
(346, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:01:56'),
(347, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:01:58'),
(348, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:02:49'),
(349, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:02:51'),
(350, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:04:03'),
(351, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:04:06'),
(352, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:05:17'),
(353, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:07:23'),
(354, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:08:20'),
(355, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:11:26'),
(356, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:12:12'),
(357, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:12:22'),
(358, 1, '::1', 'admin', 'http://localhost/carwash/admin/jenislayanan/tambah', '2023-12-30 14:12:27'),
(359, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:12:31'),
(360, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:12:41'),
(361, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:12:45'),
(362, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:14:25'),
(363, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:14:32'),
(364, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:20:25'),
(365, 1, '::1', 'admin', 'http://localhost/carwash/admin/services', '2023-12-30 14:21:55'),
(366, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:31:49'),
(367, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:31:51'),
(368, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:31:54'),
(369, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:31:56'),
(370, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:33:32'),
(371, 1, '::1', 'admin', 'http://localhost/carwash/admin/services/invoice', '2023-12-30 14:34:31'),
(372, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 14:35:24'),
(373, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 14:36:09'),
(374, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 14:40:17'),
(375, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 14:40:51'),
(376, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 14:40:54'),
(377, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2023-12-30 14:40:58'),
(378, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:04:51'),
(379, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:04:59'),
(380, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:05:02'),
(381, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:05:06'),
(382, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:05:29'),
(383, 1, '::1', 'admin', 'http://localhost/carwash/admin/berita', '2024-01-21 18:05:58'),
(384, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:06:02'),
(385, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:06:07'),
(386, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:09:04'),
(387, 1, '::1', 'admin', 'http://localhost/carwash/admin/konfigurasi', '2024-01-21 18:09:08'),
(388, 1, '::1', 'admin', 'http://localhost/carwash/admin/konfigurasi', '2024-01-21 18:09:16'),
(389, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:10:38'),
(390, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:10:42'),
(391, 1, '::1', 'admin', 'http://localhost/carwash/admin/dasbor', '2024-01-21 18:13:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_user`, `judul`, `keterangan`, `video`, `tanggal_post`, `tanggal`) VALUES
(1, 1, 'INSTALASI XAMPP DAN SUBLIME TEXT', 'INSTALASI XAMPP DAN SUBLIME TEXT', 'A66PiaPuTZs', '0000-00-00 00:00:00', '2020-02-13 00:48:03'),
(2, 1, 'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View', 'Sesi 2 Konfigurasi, Halaman Login, Belajar Controller dan View', 'kFfAir_JgIU', '0000-00-00 00:00:00', '2020-02-13 00:48:31'),
(3, 1, 'Makan bersama dengan Bunda', 'Makan bersama dengan Bunda', 'jVr6CYLhjQo', '0000-00-00 00:00:00', '2021-04-23 20:49:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `jenislayanan`
--
ALTER TABLE `jenislayanan`
  ADD PRIMARY KEY (`id_jenis_layanan`) USING BTREE;

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indeks untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `kategori_staff`
--
ALTER TABLE `kategori_staff`
  ADD PRIMARY KEY (`id_kategori_staff`) USING BTREE;

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `loket`
--
ALTER TABLE `loket`
  ADD PRIMARY KEY (`id_loket`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE,
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendarftaran`) USING BTREE,
  ADD KEY `ID_Mobil` (`jeniskendaraan`) USING BTREE;

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_staff`) USING BTREE;

--
-- Indeks untuk tabel `transaksi_konfirmasi`
--
ALTER TABLE `transaksi_konfirmasi`
  ADD PRIMARY KEY (`id_konfirmasi`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id_user_log`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `jenislayanan`
--
ALTER TABLE `jenislayanan`
  MODIFY `id_jenis_layanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kategori_staff`
--
ALTER TABLE `kategori_staff`
  MODIFY `id_kategori_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `loket`
--
ALTER TABLE `loket`
  MODIFY `id_loket` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendarftaran` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi_konfirmasi`
--
ALTER TABLE `transaksi_konfirmasi`
  MODIFY `id_konfirmasi` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id_user_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
