-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220508.7aa512c357
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 01:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_if21d`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `pwd` varchar(255) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(255) CHARACTER SET latin1 NOT NULL,
  `role_id` int(3) NOT NULL,
  `bagian` varchar(255) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_db`
--

INSERT INTO `user_db` (`id`, `uid`, `email`, `pwd`, `nama`, `role_id`, `bagian`, `foto`) VALUES
(1, 'aef', 'aefbahri@if21dofficial.id', 'ubp2022', 'aef saepul bahri', 2, 'anggota', ''),
(2, 'ahmad', 'ahmadlutfiansyah@if21dofficial.id', 'ubp2022', 'ahmad lutfiansyah', 2, 'anggota', ''),
(3, 'rizki', 'ahmadrizki@if21dofficial.id', 'ubp2022', 'ahmad rizki', 2, 'developer', ''),
(4, 'ajay', 'ajayjaelani@if21dofficial.id', 'ubp2022', 'ajay jaelani', 2, 'anggota', ''),
(5, 'alfathir', 'alfathirjanuar@if21dofficial.id', 'ubp2022', 'al fathir rizal januar', 2, 'anggota', ''),
(6, 'alif', 'alifbadarudien@if21dofficial.id', 'ubp2022', 'alif akbar badarudien', 2, 'anggota', ''),
(7, 'ayoga', 'ayogapratama@if21dofficial.id', 'ubp2022', 'ayoga putra pratama', 2, 'anggota', ''),
(8, 'bintang', 'bintangmaulana@if21dofficial.id', 'ubp2022', 'bintang adhiyaksa maulana', 2, 'pengurus', ''),
(9, 'daffa', 'daffaabyansyah@if21dofficial.id', 'ubp2022', 'daffa rifqi abyansyah', 2, 'anggota', ''),
(10, 'daras', 'darasfebrianyah@if21dofficial.id', 'ubp2022', 'daras febriansyah', 2, 'pengurus', ''),
(11, 'davian', 'davianfaisal@if21dofficial.id', 'ubp2022', 'davian ahmad faisal', 2, 'anggota', ''),
(12, 'dendi', 'dendisaputra@if21dofficial.id', 'ubp2022', 'dendi dejan saputra', 2, 'anggota', ''),
(13, 'febrian', 'febrianazhari@if21dofficial.id', 'ubp2022', 'febrian akbar azhari', 2, 'anggota', ''),
(14, 'firmansyah', 'firmansyah@if21dofficial.id', 'ubp2022', 'firmansyah', 2, 'anggota', ''),
(15, 'ihsan', 'muhammadihsan@if21dofficial.id', 'ubp2022', 'muhammad ihsan', 2, 'developer', ''),
(16, 'ilham', 'muhamadrizki@if21dofficial.id', 'ubp2022', 'muhamad ilham rizki', 2, 'anggota', ''),
(17, 'irsyad', 'muhammadiskandar@if21dofficial.id', 'ubp2022', 'muhammad irsyad iskandar', 2, 'anggota', ''),
(18, 'nurryan', 'muhammadakbar@if21dofficial.id', 'ubp2022', 'muhammad nurryan akbar', 2, 'developer', ''),
(19, 'najma', 'najmatulnurfajrin@if21dofficial.id', 'ubp2022', 'najmatul laila nurfajrin', 2, 'pengurus', ''),
(20, 'naomi', 'naomimeylica@if21dofficial.id', 'ubp2022', 'naomi nova meylica butar butar', 2, 'anggota', ''),
(21, 'naufal', 'naufalramadhani@if21dofficial.id', 'ubp2022', 'naufal ramadhani', 2, 'anggota', ''),
(22, 'nikko', 'nikkoprabowo@if21dofficial.id', 'ubp2022', 'nikko bagus prabowo', 2, 'anggota', ''),
(23, 'nurapriani', 'nuraprianisistiarum@if21dofficial.id', 'ubp2022', 'nurapriani sistiarum', 2, 'anggota', ''),
(24, 'nurhabibah', 'nurhabibah@if21dofficial.id', 'ubp2022', 'nur habibah', 2, 'pengurus', ''),
(25, 'putri', 'putrimeriyana@if21dofficial.id', 'ubp2022', 'putri meriyana', 2, 'pengurus', ''),
(26, 'raditya', 'radityayoviandika@if21dofficial.id', 'ubp2022', 'radiya pratama yoviandika', 2, 'anggota', ''),
(27, 'rages', 'ragesdayana@if21dofficial.id', 'ubp2022', 'rages putra dayana', 2, 'anggota', ''),
(28, 'rai ', 'raialmusayyid@if21dofficial.id', 'ubp2022', 'rai malik al musayyid', 2, 'developer', ''),
(29, 'rifqi', 'rifqifauzi@if21dofficial.id', 'ubp2022', 'rifqi arul fauzi', 2, 'anggota', ''),
(30, 'rifky', 'rifkyalfiansyah@if21dofficial.id', 'ubp2022', 'rifky dwi alfiansyah', 2, 'anggota', ''),
(31, 'rija', 'rijahijriyya@if21dofficial.id', 'ubp2022', 'rija nur hijriyya', 2, 'developer', ''),
(32, 'rissa', 'rissaagustin@if21dofficial.id', 'ubp2022', 'rissa ilmia agustin', 2, 'anggota', ''),
(33, 'ryan', 'ryanmaulana@if21dofficial.id', 'ubp2022', 'ryan syah maulana', 2, 'anggota', ''),
(34, 'siti ', 'sitiazhaar@if21dofficial.id', 'ubp2022', 'siti alia azhaar', 2, 'pengurus', ''),
(35, 'vito', 'vitokurniawan@if21dofficial.id', 'ubp2022', 'vito jian kurniawan', 2, 'anggota', ''),
(36, 'wildan', 'wildanwiharja@if21dofficial.id', 'ubp2022', 'wildan amin wiharja', 2, 'anggota', ''),
(37, 'yoga', 'yogaharyanto@if21dofficial.id', 'ubp2022', 'yoga tri haryanto', 2, 'anggota', ''),
(38, 'yudha', 'yudhaardiansyach@if21dofficial.id', 'ubp2022', 'yudha ardiansyach', 2, 'developer', ''),
(39, 'najma', 'najmatulnurfajrin@if21dofficial.id', 'admin', 'najma', 1, 'pengurus', ''),
(40, 'daras', 'darasfebriansyah@if21dofficial.id', 'admin', 'daras', 1, 'pengurus', ''),
(41, 'bintang', 'bintangmaulana@if21dofficial.id', 'admin', 'bintang', 1, 'pengurus', ''),
(42, 'putri', 'putrimeriyana@if21dofficial.id', 'admin', 'putri', 1, 'pengurus', ''),
(43, 'siti', 'sitiazhaar@if21dofficial.id', 'admin', 'siti', 1, 'pengurus', ''),
(44, 'nurhabibah', 'nurhabibah@if21dofficial.id', 'admin', 'nurhabibah', 1, 'pengurus', ''),
(45, 'nurryan', 'muhammadakbar@if21dofficial.id', 'admin', 'muhammad nurryan akbar', 1, 'developer', ''),
(46, 'sumarli', 'sumarli@if21dofficial.id', 'admin', 'sumarli', 1, 'developer', ''),
(47, 'ihsan', 'muhammadihsan@if21dofficial.id', 'admin', 'muhammad ihsan', 1, 'developer', ''),
(48, 'rai', 'raialmusayyid@if21dofficial.id', 'admin', 'rai malik al musayyid', 1, 'developer', ''),
(49, 'rija', 'rijahijriyya@if21dofficial.id', 'admin', 'rija nur hijriyya', 1, 'developer', ''),
(50, 'yudha', 'yudhaardiansyach@if21dofficial.id', 'admin', 'yudha ardiansyach', 1, 'developer', ''),
(51, 'fauzan', 'fauzan@if21dofficial.id', 'admin', 'fauzan', 1, 'developer', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_db`
--
ALTER TABLE `user_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_db`
--
ALTER TABLE `user_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



