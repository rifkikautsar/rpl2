-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 05:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `batik`
--

CREATE TABLE `batik` (
  `id_batik` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `kabupaten_kota_id` int(10) UNSIGNED NOT NULL,
  `nama_batik` varchar(40) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `last_modified` date DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batik`
--

INSERT INTO `batik` (`id_batik`, `id_user`, `provinsi_id`, `kabupaten_kota_id`, `nama_batik`, `deskripsi`, `excerpt`, `created_at`, `last_modified`, `status`, `gambar`) VALUES
(11, 9, 10, 104, 'Batik Priangan', 'Batik A', 'Batik B', '2022-02-11', '2022-02-14', '1', '103-Batik Priangan.jpg'),
(14, 8, 1, 16, 'BBBBBB', 'BBBBBBBBBBBBBBB', 'BBBBBBBBB', '2022-02-12', '2022-02-12', '1', '16-BBBBBB.jpg'),
(17, 9, 10, 105, 'Batik Naon we', 'AAAAAAAAAAAAAAAAAAAA', 'AAAAAAAAAA', '2022-02-14', '2022-02-14', '1', '105-Batik Naon we.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten_kota`
--

CREATE TABLE `kabupaten_kota` (
  `kabupaten_kota_id` int(10) UNSIGNED NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kabupaten_kota`
--

INSERT INTO `kabupaten_kota` (`kabupaten_kota_id`, `provinsi_id`, `nama_kab`) VALUES
(1, 1, 'Kabupaten Aceh Barat'),
(2, 1, 'Kabupaten Aceh Barat Daya'),
(3, 1, 'Kabupaten Aceh Besar'),
(4, 1, 'Kabupaten Aceh Jaya'),
(5, 1, 'Kabupaten Aceh Selatan'),
(6, 1, 'Kabupaten Aceh Singkil'),
(7, 1, 'Kabupaten Aceh Tamiang'),
(8, 1, 'Kabupaten Aceh Tengah'),
(9, 1, 'Kabupaten Aceh Tenggara'),
(10, 1, 'Kabupaten Aceh Timur'),
(11, 1, 'Kabupaten Aceh Utara'),
(12, 1, 'Kabupaten Bener Meriah'),
(13, 1, 'Kabupaten Bireuen'),
(14, 1, 'Kabupaten Gayo Lues'),
(15, 1, 'Kabupaten Nagan Raya'),
(16, 1, 'Kabupaten Pidie'),
(17, 1, 'Kabupaten Pidie Jaya'),
(18, 1, 'Kabupaten Simeulue'),
(19, 1, 'Kota Banda Aceh'),
(20, 1, 'Kota Langsa'),
(21, 1, 'Kota Lhokseumawe'),
(22, 1, 'Kota Sabang'),
(23, 1, 'Kota Subulussalam'),
(24, 2, 'Kabupaten Badung'),
(25, 2, 'Kabupaten Bangli'),
(26, 2, 'Kabupaten Buleleng'),
(27, 2, 'Kabupaten Gianyar'),
(28, 2, 'Kabupaten Jembrana'),
(29, 2, 'Kabupaten Karangasem'),
(30, 2, 'Kabupaten Klungkung'),
(31, 2, 'Kabupaten Tabanan'),
(32, 2, 'Kota Denpasar'),
(33, 3, 'Kabupaten Bangka'),
(34, 3, 'Kabupaten Bangka Barat'),
(35, 3, 'Kabupaten Bangka Selatan'),
(36, 3, 'Kabupaten Bangka Tengah'),
(37, 3, 'Kabupaten Belitung'),
(38, 3, 'Kabupaten Belitung Timur'),
(39, 3, 'Kota Pangkal Pinang'),
(40, 4, 'Kabupaten Lebak'),
(41, 4, 'Kabupaten Pandeglang'),
(42, 4, 'Kabupaten Serang'),
(43, 4, 'Kabupaten Tangerang'),
(44, 4, 'Kota Cilegon'),
(45, 4, 'Kota Serang'),
(46, 4, 'Kota Tangerang'),
(47, 4, 'Kota Tangerang Selatan'),
(48, 5, 'Kabupaten Bengkulu Selatan'),
(49, 5, 'Kabupaten Bengkulu Tengah'),
(50, 5, 'Kabupaten Bengkulu Utara'),
(51, 5, 'Kabupaten Kaur'),
(52, 5, 'Kabupaten Kepahiang'),
(53, 5, 'Kabupaten Lebong'),
(54, 5, 'Kabupaten Mukomuko'),
(55, 5, 'Kabupaten Rejang Lebong'),
(56, 5, 'Kabupaten Seluma'),
(57, 5, 'Kota Bengkulu'),
(58, 6, 'Kabupaten Bantul'),
(59, 6, 'Kabupaten Gunung Kidul'),
(60, 6, 'Kabupaten Kulon Progo'),
(61, 6, 'Kabupaten Sleman'),
(62, 6, 'Kota Yogyakarta'),
(63, 7, 'Kabupaten Kepulauan Seribu'),
(64, 7, 'Kota Jakarta Barat'),
(65, 7, 'Kota Jakarta Pusat'),
(66, 7, 'Kota Jakarta Selatan'),
(67, 7, 'Kota Jakarta Timur'),
(68, 7, 'Kota Jakarta Utara'),
(69, 8, 'Kabupaten Boalemo'),
(70, 8, 'Kabupaten Bone Bolango'),
(71, 8, 'Kabupaten Gorontalo'),
(72, 8, 'Kabupaten Gorontalo Utara'),
(73, 8, 'Kabupaten Pohuwato'),
(74, 8, 'Kota Gorontalo'),
(75, 9, 'Kabupaten Batanghari'),
(76, 9, 'Kabupaten Bungo'),
(77, 9, 'Kabupaten Kerinci'),
(78, 9, 'Kabupaten Merangin'),
(79, 9, 'Kabupaten Muaro Jambi'),
(80, 9, 'Kabupaten Sarolangun'),
(81, 9, 'Kabupaten Tanjung Jabung Barat'),
(82, 9, 'Kabupaten Tanjung Jabung Timur'),
(83, 9, 'Kabupaten Tebo'),
(84, 9, 'Kota Jambi'),
(85, 9, 'Kota Sungaipenuh'),
(86, 10, 'Kabupaten Bandung'),
(87, 10, 'Kabupaten Bandung Barat'),
(88, 10, 'Kabupaten Bekasi'),
(89, 10, 'Kabupaten Bogor'),
(90, 10, 'Kabupaten Ciamis'),
(91, 10, 'Kabupaten Cianjur'),
(92, 10, 'Kabupaten Cirebon'),
(93, 10, 'Kabupaten Garut'),
(94, 10, 'Kabupaten Indramayu'),
(95, 10, 'Kabupaten Karawang'),
(96, 10, 'Kabupaten Kuningan'),
(97, 10, 'Kabupaten Majalengka'),
(98, 10, 'Kabupaten Pangandaran'),
(99, 10, 'Kabupaten Purwakarta'),
(100, 10, 'Kabupaten Subang'),
(101, 10, 'Kabupaten Sukabumi'),
(102, 10, 'Kabupaten Sumedang'),
(103, 10, 'Kabupaten Tasikmalaya'),
(104, 10, 'Kota Bandung'),
(105, 10, 'Kota Banjar'),
(106, 10, 'Kota Bekasi'),
(107, 10, 'Kota Bogor'),
(108, 10, 'Kota Cimahi'),
(109, 10, 'Kota Cirebon'),
(110, 10, 'Kota Depok'),
(111, 10, 'Kota Sukabumi'),
(112, 10, 'Kota Tasikmalaya'),
(113, 11, 'Kabupaten Banjarnegara'),
(114, 11, 'Kabupaten Banyumas'),
(115, 11, 'Kabupaten Batang'),
(116, 11, 'Kabupaten Blora'),
(117, 11, 'Kabupaten Boyolali'),
(118, 11, 'Kabupaten Brebes'),
(119, 11, 'Kabupaten Cilacap'),
(120, 11, 'Kabupaten Demak'),
(121, 11, 'Kabupaten Grobogan'),
(122, 11, 'Kabupaten Jepara'),
(123, 11, 'Kabupaten Karanganyar'),
(124, 11, 'Kabupaten Kebumen'),
(125, 11, 'Kabupaten Kendal'),
(126, 11, 'Kabupaten Klaten'),
(127, 11, 'Kabupaten Kudus'),
(128, 11, 'Kabupaten Magelang'),
(129, 11, 'Kabupaten Pati'),
(130, 11, 'Kabupaten Pekalongan'),
(131, 11, 'Kabupaten Pemalang'),
(132, 11, 'Kabupaten Purbalingga'),
(133, 11, 'Kabupaten Purworejo'),
(134, 11, 'Kabupaten Rembang'),
(135, 11, 'Kabupaten Semarang'),
(136, 11, 'Kabupaten Sragen'),
(137, 11, 'Kabupaten Sukoharjo'),
(138, 11, 'Kabupaten Tegal'),
(139, 11, 'Kabupaten Temanggung'),
(140, 11, 'Kabupaten Wonogiri'),
(141, 11, 'Kabupaten Wonosobo'),
(142, 11, 'Kota Magelang'),
(143, 11, 'Kota Pekalongan'),
(144, 11, 'Kota Salatiga'),
(145, 11, 'Kota Semarang'),
(146, 11, 'Kota Surakarta'),
(147, 11, 'Kota Tegal'),
(148, 12, 'Kabupaten Bangkalan'),
(149, 12, 'Kabupaten Banyuwangi'),
(150, 12, 'Kabupaten Blitar'),
(151, 12, 'Kabupaten Bojonegoro'),
(152, 12, 'Kabupaten Bondowoso'),
(153, 12, 'Kabupaten Gresik'),
(154, 12, 'Kabupaten Jember'),
(155, 12, 'Kabupaten Jombang'),
(156, 12, 'Kabupaten Kediri'),
(157, 12, 'Kabupaten Lamongan'),
(158, 12, 'Kabupaten Lumajang'),
(159, 12, 'Kabupaten Madiun'),
(160, 12, 'Kabupaten Magetan'),
(161, 12, 'Kabupaten Malang'),
(162, 12, 'Kabupaten Mojokerto'),
(163, 12, 'Kabupaten Nganjuk'),
(164, 12, 'Kabupaten Ngawi'),
(165, 12, 'Kabupaten Pacitan'),
(166, 12, 'Kabupaten Pamekasan'),
(167, 12, 'Kabupaten Pasuruan'),
(168, 12, 'Kabupaten Ponorogo'),
(169, 12, 'Kabupaten Probolinggo'),
(170, 12, 'Kabupaten Sampang'),
(171, 12, 'Kabupaten Sidoarjo'),
(172, 12, 'Kabupaten Situbondo'),
(173, 12, 'Kabupaten Sumenep'),
(174, 12, 'Kabupaten Trenggalek'),
(175, 12, 'Kabupaten Tuban'),
(176, 12, 'Kabupaten Tulungagung'),
(177, 12, 'Kota Batu'),
(178, 12, 'Kota Blitar'),
(179, 12, 'Kota Kediri'),
(180, 12, 'Kota Madiun'),
(181, 12, 'Kota Malang'),
(182, 12, 'Kota Mojokerto'),
(183, 12, 'Kota Pasuruan'),
(184, 12, 'Kota Probolinggo'),
(185, 12, 'Kota Surabaya'),
(186, 13, 'Kabupaten Bengkayang'),
(187, 13, 'Kabupaten Kapuas Hulu'),
(188, 13, 'Kabupaten Kayong Utara'),
(189, 13, 'Kabupaten Ketapang'),
(190, 13, 'Kabupaten Kubu Raya'),
(191, 13, 'Kabupaten Landak'),
(192, 13, 'Kabupaten Melawi'),
(193, 13, 'Kabupaten Mempawah'),
(194, 13, 'Kabupaten Sambas'),
(195, 13, 'Kabupaten Sanggau'),
(196, 13, 'Kabupaten Sekadau'),
(197, 13, 'Kabupaten Sintang'),
(198, 13, 'Kota Pontianak'),
(199, 13, 'Kota Singkawang'),
(200, 14, 'Kabupaten Balangan'),
(201, 14, 'Kabupaten Banjar'),
(202, 14, 'Kabupaten Barito Kuala'),
(203, 14, 'Kabupaten Hulu Sungai Selatan'),
(204, 14, 'Kabupaten Hulu Sungai Tengah'),
(205, 14, 'Kabupaten Hulu Sungai Utara'),
(206, 14, 'Kabupaten Kotabaru'),
(207, 14, 'Kabupaten Tabalong'),
(208, 14, 'Kabupaten Tanah Bumbu'),
(209, 14, 'Kabupaten Tanah Laut'),
(210, 14, 'Kabupaten Tapin'),
(211, 14, 'Kota Banjarbaru'),
(212, 14, 'Kota Banjarmasin'),
(213, 15, 'Kabupaten Barito Selatan'),
(214, 15, 'Kabupaten Barito Timur'),
(215, 15, 'Kabupaten Barito Utara'),
(216, 15, 'Kabupaten Gunung Mas'),
(217, 15, 'Kabupaten Kapuas'),
(218, 15, 'Kabupaten Katingan'),
(219, 15, 'Kabupaten Kotawaringin Barat'),
(220, 15, 'Kabupaten Kotawaringin Timur'),
(221, 15, 'Kabupaten Lamandau'),
(222, 15, 'Kabupaten Murung Raya'),
(223, 15, 'Kabupaten Pulang Pisau'),
(224, 15, 'Kabupaten Seruyan'),
(225, 15, 'Kabupaten Sukamara'),
(226, 15, 'Kota Palangka Raya'),
(227, 16, 'Kabupaten Berau'),
(228, 16, 'Kabupaten Kutai Barat'),
(229, 16, 'Kabupaten Kutai Kartanegara'),
(230, 16, 'Kabupaten Kutai Timur'),
(231, 16, 'Kabupaten Mahakam Ulu'),
(232, 16, 'Kabupaten Paser'),
(233, 16, 'Kabupaten Penajam Paser Utara'),
(234, 16, 'Kota Balikpapan'),
(235, 16, 'Kota Bontang'),
(236, 16, 'Kota Samarinda'),
(237, 17, 'Kabupaten Bulungan'),
(238, 17, 'Kabupaten Malinau'),
(239, 17, 'Kabupaten Nunukan'),
(240, 17, 'Kabupaten Tana Tidung'),
(241, 17, 'Kota Tarakan'),
(242, 18, 'Kabupaten Bintan'),
(243, 18, 'Kabupaten Karimun'),
(244, 18, 'Kabupaten Kepulauan Anambas'),
(245, 18, 'Kabupaten Lingga'),
(246, 18, 'Kabupaten Natuna'),
(247, 18, 'Kota Batam'),
(248, 18, 'Kota Tanjung Pinang'),
(249, 19, 'Kabupaten Lampung Barat'),
(250, 19, 'Kabupaten Lampung Selatan'),
(251, 19, 'Kabupaten Lampung Tengah'),
(252, 19, 'Kabupaten Lampung Timur'),
(253, 19, 'Kabupaten Lampung Utara'),
(254, 19, 'Kabupaten Mesuji'),
(255, 19, 'Kabupaten Pesawaran'),
(256, 19, 'Kabupaten Pesisir Barat'),
(257, 19, 'Kabupaten Pringsewu'),
(258, 19, 'Kabupaten Tanggamus'),
(259, 19, 'Kabupaten Tulang Bawang'),
(260, 19, 'Kabupaten Tulang Bawang Barat'),
(261, 19, 'Kabupaten Way Kanan'),
(262, 19, 'Kota Bandar Lampung'),
(263, 19, 'Kota Metro'),
(264, 20, 'Kabupaten Buru'),
(265, 20, 'Kabupaten Buru Selatan'),
(266, 20, 'Kabupaten Kepulauan Aru'),
(267, 20, 'Kabupaten Maluku Barat Daya'),
(268, 20, 'Kabupaten Maluku Tengah'),
(269, 20, 'Kabupaten Maluku Tenggara'),
(270, 20, 'Kabupaten Maluku Tenggara Barat'),
(271, 20, 'Kabupaten Seram Bagian Barat'),
(272, 20, 'Kabupaten Seram Bagian Timur'),
(273, 20, 'Kota Ambon'),
(274, 20, 'Kota Tual'),
(275, 21, 'Kabupaten Halmahera Barat'),
(276, 21, 'Kabupaten Halmahera Selatan'),
(277, 21, 'Kabupaten Halmahera Tengah'),
(278, 21, 'Kabupaten Halmahera Timur'),
(279, 21, 'Kabupaten Halmahera Utara'),
(280, 21, 'Kabupaten Kepulauan Sula'),
(281, 21, 'Kabupaten Pulau Morotai'),
(282, 21, 'Kabupaten Pulau Taliabu'),
(283, 21, 'Kota Ternate'),
(284, 21, 'Kota Tidore Kepulauan'),
(285, 22, 'Kabupaten Bima'),
(286, 22, 'Kabupaten Dompu'),
(287, 22, 'Kabupaten Lombok Barat'),
(288, 22, 'Kabupaten Lombok Tengah'),
(289, 22, 'Kabupaten Lombok Timur'),
(290, 22, 'Kabupaten Lombok Utara'),
(291, 22, 'Kabupaten Sumbawa'),
(292, 22, 'Kabupaten Sumbawa Barat'),
(293, 22, 'Kota Bima'),
(294, 22, 'Kota Mataram'),
(295, 23, 'Kabupaten Alor'),
(296, 23, 'Kabupaten Belu'),
(297, 23, 'Kabupaten Ende'),
(298, 23, 'Kabupaten Flores Timur'),
(299, 23, 'Kabupaten Kupang'),
(300, 23, 'Kabupaten Lembata'),
(301, 23, 'Kabupaten Malaka'),
(302, 23, 'Kabupaten Manggarai'),
(303, 23, 'Kabupaten Manggarai Barat'),
(304, 23, 'Kabupaten Manggarai Timur'),
(305, 23, 'Kabupaten Nagekeo'),
(306, 23, 'Kabupaten Ngada'),
(307, 23, 'Kabupaten Rote Ndao'),
(308, 23, 'Kabupaten Sabu Raijua'),
(309, 23, 'Kabupaten Sikka'),
(310, 23, 'Kabupaten Sumba Barat'),
(311, 23, 'Kabupaten Sumba Barat Daya'),
(312, 23, 'Kabupaten Sumba Tengah'),
(313, 23, 'Kabupaten Sumba Timur'),
(314, 23, 'Kabupaten Timor Tengah Selatan'),
(315, 23, 'Kabupaten Timor Tengah Utara'),
(316, 23, 'Kota Kupang'),
(317, 24, 'Kabupaten Asmat'),
(318, 24, 'Kabupaten Biak Numfor'),
(319, 24, 'Kabupaten Boven Digoel'),
(320, 24, 'Kabupaten Deiyai'),
(321, 24, 'Kabupaten Dogiyai'),
(322, 24, 'Kabupaten Intan Jaya'),
(323, 24, 'Kabupaten Jayapura'),
(324, 24, 'Kabupaten Jayawijaya'),
(325, 24, 'Kabupaten Keerom'),
(326, 24, 'Kabupaten Kepulauan Yapen'),
(327, 24, 'Kabupaten Lanny Jaya'),
(328, 24, 'Kabupaten Mamberamo Raya'),
(329, 24, 'Kabupaten Mamberamo Tengah'),
(330, 24, 'Kabupaten Mappi'),
(331, 24, 'Kabupaten Merauke'),
(332, 24, 'Kabupaten Mimika'),
(333, 24, 'Kabupaten Nabire'),
(334, 24, 'Kabupaten Nduga'),
(335, 24, 'Kabupaten Paniai'),
(336, 24, 'Kabupaten Pegunungan Bintang'),
(337, 24, 'Kabupaten Puncak'),
(338, 24, 'Kabupaten Puncak Jaya'),
(339, 24, 'Kabupaten Sarmi'),
(340, 24, 'Kabupaten Supiori'),
(341, 24, 'Kabupaten Tolikara'),
(342, 24, 'Kabupaten Waropen'),
(343, 24, 'Kabupaten Yahukimo'),
(344, 24, 'Kabupaten Yalimo'),
(345, 24, 'Kota Jayapura'),
(346, 25, 'Kabupaten Fakfak'),
(347, 25, 'Kabupaten Kaimana'),
(348, 25, 'Kabupaten Manokwari'),
(349, 25, 'Kabupaten Manokwari Selatan'),
(350, 25, 'Kabupaten Maybrat'),
(351, 25, 'Kabupaten Pegunungan Arfak'),
(352, 25, 'Kabupaten Raja Ampat'),
(353, 25, 'Kabupaten Sorong'),
(354, 25, 'Kabupaten Sorong Selatan'),
(355, 25, 'Kabupaten Tambrauw'),
(356, 25, 'Kabupaten Teluk Bintuni'),
(357, 25, 'Kabupaten Teluk Wondama'),
(358, 25, 'Kota Sorong'),
(359, 26, 'Kabupaten Bengkalis'),
(360, 26, 'Kabupaten Indragiri Hilir'),
(361, 26, 'Kabupaten Indragiri Hulu'),
(362, 26, 'Kabupaten Kampar'),
(363, 26, 'Kabupaten Kepulauan Meranti'),
(364, 26, 'Kabupaten Kuantan Singingi'),
(365, 26, 'Kabupaten Pelalawan'),
(366, 26, 'Kabupaten Rokan Hilir'),
(367, 26, 'Kabupaten Rokan Hulu'),
(368, 26, 'Kabupaten Siak'),
(369, 26, 'Kota Dumai'),
(370, 26, 'Kota Pekanbaru'),
(371, 27, 'Kabupaten Majene'),
(372, 27, 'Kabupaten Mamasa'),
(373, 27, 'Kabupaten Mamuju'),
(374, 27, 'Kabupaten Mamuju Tengah'),
(375, 27, 'Kabupaten Mamuju Utara'),
(376, 27, 'Kabupaten Polewali Mandar'),
(377, 28, 'Kabupaten Bantaeng'),
(378, 28, 'Kabupaten Barru'),
(379, 28, 'Kabupaten Bone'),
(380, 28, 'Kabupaten Bulukumba'),
(381, 28, 'Kabupaten Enrekang'),
(382, 28, 'Kabupaten Gowa'),
(383, 28, 'Kabupaten Jeneponto'),
(384, 28, 'Kabupaten Kepulauan Selayar'),
(385, 28, 'Kabupaten Luwu'),
(386, 28, 'Kabupaten Luwu Timur'),
(387, 28, 'Kabupaten Luwu Utara'),
(388, 28, 'Kabupaten Maros'),
(389, 28, 'Kabupaten Pangkajene dan Kepulauan'),
(390, 28, 'Kabupaten Pinrang'),
(391, 28, 'Kabupaten Sidenreng Rappang'),
(392, 28, 'Kabupaten Sinjai'),
(393, 28, 'Kabupaten Soppeng'),
(394, 28, 'Kabupaten Takalar'),
(395, 28, 'Kabupaten Tana Toraja'),
(396, 28, 'Kabupaten Toraja Utara'),
(397, 28, 'Kabupaten Wajo'),
(398, 28, 'Kota Makassar'),
(399, 28, 'Kota Palopo'),
(400, 28, 'Kota Parepare'),
(401, 29, 'Kabupaten Banggai'),
(402, 29, 'Kabupaten Banggai Kepulauan'),
(403, 29, 'Kabupaten Banggai Laut'),
(404, 29, 'Kabupaten Buol'),
(405, 29, 'Kabupaten Donggala'),
(406, 29, 'Kabupaten Morowali'),
(407, 29, 'Kabupaten Morowali Utara'),
(408, 29, 'Kabupaten Parigi Moutong'),
(409, 29, 'Kabupaten Poso'),
(410, 29, 'Kabupaten Sigi'),
(411, 29, 'Kabupaten Tojo Una-Una'),
(412, 29, 'Kabupaten Toli-Toli'),
(413, 29, 'Kota Palu'),
(414, 30, 'Kabupaten Bombana'),
(415, 30, 'Kabupaten Buton'),
(416, 30, 'Kabupaten Buton Selatan'),
(417, 30, 'Kabupaten Buton Tengah'),
(418, 30, 'Kabupaten Buton Utara'),
(419, 30, 'Kabupaten Kolaka'),
(420, 30, 'Kabupaten Kolaka Timur'),
(421, 30, 'Kabupaten Kolaka Utara'),
(422, 30, 'Kabupaten Konawe'),
(423, 30, 'Kabupaten Konawe Kepulauan'),
(424, 30, 'Kabupaten Konawe Selatan'),
(425, 30, 'Kabupaten Konawe Utara'),
(426, 30, 'Kabupaten Muna'),
(427, 30, 'Kabupaten Muna Barat'),
(428, 30, 'Kabupaten Wakatobi'),
(429, 30, 'Kota Bau-Bau'),
(430, 30, 'Kota Kendari'),
(431, 31, 'Kabupaten Bolaang Mongondow'),
(432, 31, 'Kabupaten Bolaang Mongondow Selatan'),
(433, 31, 'Kabupaten Bolaang Mongondow Timur'),
(434, 31, 'Kabupaten Bolaang Mongondow Utara'),
(435, 31, 'Kabupaten Kepulauan Sangihe'),
(436, 31, 'Kabupaten Kepulauan Siau Tagulandang Biaro'),
(437, 31, 'Kabupaten Kepulauan Talaud'),
(438, 31, 'Kabupaten Minahasa'),
(439, 31, 'Kabupaten Minahasa Selatan'),
(440, 31, 'Kabupaten Minahasa Tenggara'),
(441, 31, 'Kabupaten Minahasa Utara'),
(442, 31, 'Kota Bitung'),
(443, 31, 'Kota Kotamobagu'),
(444, 31, 'Kota Manado'),
(445, 31, 'Kota Tomohon'),
(446, 32, 'Kabupaten Agam'),
(447, 32, 'Kabupaten Dharmasraya'),
(448, 32, 'Kabupaten Kepulauan Mentawai'),
(449, 32, 'Kabupaten Lima Puluh Kota'),
(450, 32, 'Kabupaten Padang Pariaman'),
(451, 32, 'Kabupaten Pasaman'),
(452, 32, 'Kabupaten Pasaman Barat'),
(453, 32, 'Kabupaten Pesisir Selatan'),
(454, 32, 'Kabupaten Sijunjung'),
(455, 32, 'Kabupaten Solok'),
(456, 32, 'Kabupaten Solok Selatan'),
(457, 32, 'Kabupaten Tanah Datar'),
(458, 32, 'Kota Bukittinggi'),
(459, 32, 'Kota Padang'),
(460, 32, 'Kota Padang Panjang'),
(461, 32, 'Kota Pariaman'),
(462, 32, 'Kota Payakumbuh'),
(463, 32, 'Kota Sawahlunto'),
(464, 32, 'Kota Solok'),
(465, 33, 'Kabupaten Banyuasin'),
(466, 33, 'Kabupaten Empat Lawang'),
(467, 33, 'Kabupaten Lahat'),
(468, 33, 'Kabupaten Muara Enim'),
(469, 33, 'Kabupaten Musi Banyuasin'),
(470, 33, 'Kabupaten Musi Rawas'),
(471, 33, 'Kabupaten Musi Rawas Utara'),
(472, 33, 'Kabupaten Ogan Ilir'),
(473, 33, 'Kabupaten Ogan Komering Ilir'),
(474, 33, 'Kabupaten Ogan Komering Ulu'),
(475, 33, 'Kabupaten Ogan Komering Ulu Selatan'),
(476, 33, 'Kabupaten Ogan Komering Ulu Timur'),
(477, 33, 'Kabupaten Penukal Abab Lematang Ilir'),
(478, 33, 'Kota Lubuklinggau'),
(479, 33, 'Kota Pagar Alam'),
(480, 33, 'Kota Palembang'),
(481, 33, 'Kota Prabumulih'),
(482, 34, 'Kabupaten Asahan'),
(483, 34, 'Kabupaten Batu Bara'),
(484, 34, 'Kabupaten Dairi'),
(485, 34, 'Kabupaten Deli Serdang'),
(486, 34, 'Kabupaten Humbang Hasundutan'),
(487, 34, 'Kabupaten Karo'),
(488, 34, 'Kabupaten Labuhanbatu'),
(489, 34, 'Kabupaten Labuhanbatu Selatan'),
(490, 34, 'Kabupaten Labuhanbatu Utara'),
(491, 34, 'Kabupaten Langkat'),
(492, 34, 'Kabupaten Mandailing Natal'),
(493, 34, 'Kabupaten Nias'),
(494, 34, 'Kabupaten Nias Barat'),
(495, 34, 'Kabupaten Nias Selatan'),
(496, 34, 'Kabupaten Nias Utara'),
(497, 34, 'Kabupaten Padang Lawas'),
(498, 34, 'Kabupaten Padang Lawas Utara'),
(499, 34, 'Kabupaten Pakpak Bharat'),
(500, 34, 'Kabupaten Samosir'),
(501, 34, 'Kabupaten Serdang Bedagai'),
(502, 34, 'Kabupaten Simalungun'),
(503, 34, 'Kabupaten Tapanuli Selatan'),
(504, 34, 'Kabupaten Tapanuli Tengah'),
(505, 34, 'Kabupaten Tapanuli Utara'),
(506, 34, 'Kabupaten Toba Samosir'),
(507, 34, 'Kota Binjai'),
(508, 34, 'Kota Gunungsitoli'),
(509, 34, 'Kota Medan'),
(510, 34, 'Kota Padang Sidempuan'),
(511, 34, 'Kota Pematangsiantar'),
(512, 34, 'Kota Sibolga'),
(513, 34, 'Kota Tanjungbalai'),
(514, 34, 'Kota Tebing Tinggi');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama_prov` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`provinsi_id`, `nama_prov`) VALUES
(1, 'Aceh'),
(2, 'Bali'),
(3, 'Bangka Belitung'),
(4, 'Banten'),
(5, 'Bengkulu'),
(6, 'DI Yogyakarta'),
(7, 'DKI Jakarta'),
(8, 'Gorontalo'),
(9, 'Jambi'),
(10, 'Jawa Barat'),
(11, 'Jawa Tengah'),
(12, 'Jawa Timur'),
(13, 'Kalimantan Barat'),
(14, 'Kalimantan Selatan'),
(15, 'Kalimantan Tengah'),
(16, 'Kalimantan Timur'),
(17, 'Kalimantan Utara'),
(18, 'Kepulauan Riau'),
(19, 'Lampung'),
(20, 'Maluku'),
(21, 'Maluku Utara'),
(22, 'Nusa Tenggara Barat'),
(23, 'Nusa Tenggara Timur'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id_temp` int(11) NOT NULL,
  `id_batik` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `provinsi_id` int(10) UNSIGNED DEFAULT NULL,
  `kabupaten_kota_id` int(10) UNSIGNED DEFAULT NULL,
  `nama_batik` varchar(40) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `last_modified` date DEFAULT NULL,
  `status` enum('1','0') DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id_temp`, `id_batik`, `id_user`, `provinsi_id`, `kabupaten_kota_id`, `nama_batik`, `deskripsi`, `excerpt`, `last_modified`, `status`, `gambar`) VALUES
(13, 11, 8, 1, 3, 'Batik ACBD', 'VVVVVVVVVVVVVVVVVVVVVV', 'CCCCCCCCCCCCCC', '2022-02-12', '1', '16-AAAA.jpg'),
(14, 11, 8, 1, 3, 'Batik Cecep', 'VVVVVVVVVVVVVVVVVVVVVV', 'CCCCCCCCCCCCCC', '2022-02-12', '1', '16-AAAA.jpg'),
(15, 11, 8, 1, 3, 'Batik Aceh', 'Dari Sabang sampai merauke', 'CCCCCCCCCCCCCC', '2022-02-12', '1', '16-AAAA.jpg'),
(16, 11, 8, 10, 103, 'Batik Priangan', 'Batik Khas Rajapolah lalalalalal', 'Rajapolah', '2022-02-13', '1', '103-Batik Priangan.jpg'),
(17, 11, 9, 10, 104, 'Batik Priangan', 'Batik A', 'Batik B', '2022-02-14', '1', '103-Batik Priangan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `hakAkses` enum('admin','member') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `profil` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `password`, `hakAkses`, `tgl_lahir`, `jk`, `profil`) VALUES
(3, 'Irina Sayk', 'rifkikautsar1@gmail.com', '$2y$10$n8hRB7EO9QCkWDjVEzcsHexewRF2F.G5L7fX5ztDtbrM5VRDbGSr.', 'admin', '1999-03-17', 'P', '3.jpg'),
(8, 'Cecep', 'cecep@email.com', '$2y$10$nuFaL6ckatzrZSnZWt5eA.p.4Cep5X7rNqMUG4fEk/tGpRAxhQFbO', 'member', '2022-02-11', 'L', '8.jpeg'),
(9, 'Dadang Gorbachev', 'dadang@gmail.com', '$2y$10$ZNgK/Y.wqPbSlciliprDJetdGNpZV5Ctc/nJS/PnNHSrSSAZmgGO2', 'member', '2022-02-14', 'L', '9.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batik`
--
ALTER TABLE `batik`
  ADD PRIMARY KEY (`id_batik`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `provinsi_id` (`provinsi_id`),
  ADD KEY `kabupaten_kota_id` (`kabupaten_kota_id`);

--
-- Indexes for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  ADD PRIMARY KEY (`kabupaten_kota_id`),
  ADD KEY `kabupaten_kota_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id_temp`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `provinsi_id` (`provinsi_id`),
  ADD KEY `kabupaten_kota_id` (`kabupaten_kota_id`),
  ADD KEY `id_batik` (`id_batik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batik`
--
ALTER TABLE `batik`
  MODIFY `id_batik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  MODIFY `kabupaten_kota_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `provinsi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `batik`
--
ALTER TABLE `batik`
  ADD CONSTRAINT `batik_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batik_ibfk_2` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`provinsi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `batik_ibfk_3` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kabupaten_kota`
--
ALTER TABLE `kabupaten_kota`
  ADD CONSTRAINT `kabupaten_kota_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`provinsi_id`) ON UPDATE CASCADE;

--
-- Constraints for table `temp`
--
ALTER TABLE `temp`
  ADD CONSTRAINT `temp_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `temp_ibfk_2` FOREIGN KEY (`id_batik`) REFERENCES `batik` (`id_batik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `temp_ibfk_3` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsi` (`provinsi_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `temp_ibfk_4` FOREIGN KEY (`kabupaten_kota_id`) REFERENCES `kabupaten_kota` (`kabupaten_kota_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
