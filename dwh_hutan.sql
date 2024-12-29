-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 09:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dwh_hutan`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_hutan`
--

CREATE TABLE `dim_hutan` (
  `sk_hutan` int(11) NOT NULL,
  `hutan_lindung` decimal(10,2) DEFAULT NULL,
  `hutan_produksi_terbatas` decimal(10,2) DEFAULT NULL,
  `hutan_produksi_tetap` decimal(10,2) DEFAULT NULL,
  `hutan_produksi_dapat_dikonversi` decimal(10,2) DEFAULT NULL,
  `jumlah_luas_daratan` decimal(10,2) DEFAULT NULL,
  `luas_rehabilitasi` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_hutan`
--

INSERT INTO `dim_hutan` (`sk_hutan`, `hutan_lindung`, `hutan_produksi_terbatas`, `hutan_produksi_tetap`, `hutan_produksi_dapat_dikonversi`, `jumlah_luas_daratan`, `luas_rehabilitasi`) VALUES
(1001, 1781677.92, 145178.34, 549794.88, 15374.69, 2492025.83, 4314.00),
(1002, 1206881.00, 641769.00, 704452.00, 75684.00, 3055795.00, 20429.00),
(1003, 791671.00, 233211.00, 360608.00, 187629.00, 2342894.00, 7648.00),
(1004, 233910.00, 1017318.00, 2339578.00, 1185433.00, 5406992.00, 4396.00),
(1005, 179588.00, 258285.00, 963792.00, 11399.00, 2098535.00, 4208.00),
(1006, 578279.00, 213918.00, 1712819.00, 160996.00, 3407693.00, 14289.00),
(1007, 250750.00, 173280.00, 25873.00, 11763.00, 924631.00, 5238.00),
(1008, 317615.00, 33358.00, 191732.00, 0.00, 1004735.00, 11363.00),
(1009, 166371.00, 0.00, 442051.00, 693.00, 643615.00, 2874.00),
(1010, 97362.65, 118832.99, 78830.62, 82071.11, 381832.10, 2060.00),
(1011, 44.76, 0.00, 158.35, 0.00, 475.45, 0.00),
(1012, 291306.00, 190152.00, 202965.00, 0.00, 816603.00, 39374.00),
(1013, 84430.00, 183930.00, 362360.00, 0.00, 647133.00, 11546.00),
(1014, 2057.90, 0.00, 13851.28, 0.00, 16819.52, 3028.00),
(1015, 344742.00, 0.00, 782772.00, 0.00, 1357640.00, 9099.00),
(1016, 12359.00, 49439.00, 26998.00, 0.00, 201787.00, 929.00),
(1017, 95766.06, 6719.26, 1907.10, 0.00, 127271.01, 2710.00),
(1018, 430485.00, 286700.00, 150740.00, 0.00, 1035838.00, 13001.00),
(1019, 684572.00, 169707.00, 288214.00, 78494.00, 1485917.00, 15611.00),
(1020, 2310874.00, 2132398.00, 2123714.50, 197918.00, 8195005.50, 5146.00),
(1021, 1346066.00, 3317461.00, 3881817.00, 2543535.00, 12697165.00, 5586.00),
(1022, 526425.00, 126660.00, 762188.00, 151424.00, 1779982.00, 8275.00),
(1023, 2848243.00, 5045164.45, 4022075.55, 211575.88, 13831724.88, 18682.00),
(1024, 161784.00, 208927.00, 64367.00, 14696.00, 694939.00, 6898.00),
(1025, 1258081.00, 1421375.00, 418489.00, 170505.00, 3914598.00, 5037.00),
(1026, 1162498.00, 479518.00, 140036.00, 16412.00, 2029493.00, 13191.00),
(1027, 1081489.00, 466854.00, 401581.00, 93571.00, 2326419.00, 3532.00),
(1028, 204608.00, 251097.00, 89879.00, 82431.00, 824668.00, 4934.00),
(1029, 452030.00, 330700.00, 71859.00, 22597.00, 1092376.00, 3225.00),
(1030, 627256.00, 894258.00, 643699.00, 1324866.00, 3910409.00, 3949.00),
(1031, 584058.00, 666851.00, 481730.00, 564082.00, 2515220.00, 3616.00),
(1032, 1631589.00, 1778480.00, 2188160.00, 1474650.00, 8784787.00, 1550.00),
(1033, 7815283.00, 5961240.00, 4739327.00, 4116365.00, 29368482.00, 3319.00);

-- --------------------------------------------------------

--
-- Table structure for table `dim_industri_kehutanan`
--

CREATE TABLE `dim_industri_kehutanan` (
  `sk_industri_kehutanan` int(11) NOT NULL,
  `volume_kayu_bulat` decimal(10,2) DEFAULT NULL,
  `luas_perkebunan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_industri_kehutanan`
--

INSERT INTO `dim_industri_kehutanan` (`sk_industri_kehutanan`, `volume_kayu_bulat`, `luas_perkebunan`) VALUES
(3001, 13700.00, 265744.00),
(3002, 2018014.00, 143581.00),
(3003, 136710.00, 169756.00),
(3004, 24816051.00, 1590335.00),
(3005, 5626065.00, 349237.00),
(3006, 10803024.00, 367438.00),
(3007, 3178.00, 57581.00),
(3008, 89123.00, 59959.00),
(3009, 4094.00, 0.00),
(3010, 27192.00, 65028.00),
(3011, 0.00, 0.00),
(3012, 1574009.00, 0.00),
(3013, 2293392.00, 0.00),
(3014, 94230.00, 0.00),
(3015, 4205410.00, 0.00),
(3016, 12780.00, 0.00),
(3017, 0.00, 0.00),
(3018, 25297.00, 847.00),
(3019, 0.00, 0.00),
(3020, 1264696.00, 278699.00),
(3021, 3478263.00, 1321447.00),
(3022, 18151.00, 229328.00),
(3023, 6278916.00, 522113.00),
(3024, 1042.00, 2000.00),
(3025, 99193.00, 88497.00),
(3026, 43320.00, 5453.00),
(3027, 61809.00, 42608.00),
(3028, 26156.00, 62830.00),
(3029, 990.00, 103777.00),
(3030, 277851.00, 13044.00),
(3031, 192087.00, 59949.00),
(3032, 602043.00, 460889.00),
(3033, 565775.00, 1102994.00);

-- --------------------------------------------------------

--
-- Table structure for table `dim_kerusakan_hutan`
--

CREATE TABLE `dim_kerusakan_hutan` (
  `sk_kerusakan_hutan` int(11) NOT NULL,
  `luas_kebakaran` decimal(10,2) DEFAULT NULL,
  `luas_deforestasi` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_kerusakan_hutan`
--

INSERT INTO `dim_kerusakan_hutan` (`sk_kerusakan_hutan`, `luas_kebakaran`, `luas_deforestasi`) VALUES
(5001, 3716.00, 5367.10),
(5002, 7516.00, 5598.90),
(5003, 9832.00, 5817.50),
(5004, 4915.00, 9254.80),
(5005, 918.00, 5466.70),
(5006, 3723.00, 403.90),
(5007, 1620.00, 4762.30),
(5008, 7989.00, 623.70),
(5009, 328.00, 2215.10),
(5010, 23.00, 389.90),
(5011, 0.00, 0.00),
(5012, 2005.00, 230.20),
(5013, 107.00, -375.20),
(5014, 0.00, 12.90),
(5015, 2380.00, 69.80),
(5016, 0.00, -23.90),
(5017, 0.00, 53.20),
(5018, 30567.00, 6411.20),
(5019, 70637.00, 3944.80),
(5020, 21836.00, 7845.70),
(5021, 1554.00, 11564.40),
(5022, 429.00, 134.90),
(5023, 743.00, 13758.80),
(5024, 469.00, 384.60),
(5025, 3704.00, 5760.50),
(5026, 997.00, 1080.20),
(5027, 3098.00, 3617.30),
(5028, 101.00, 337.50),
(5029, 488.00, 405.70),
(5030, 14954.00, 1463.20),
(5031, 171.00, 2665.70),
(5032, 1738.00, 259.20),
(5033, 8336.00, 4531.90);

-- --------------------------------------------------------

--
-- Table structure for table `dim_penggunaan_lahan`
--

CREATE TABLE `dim_penggunaan_lahan` (
  `sk_penggunaan_lahan` int(11) NOT NULL,
  `luas_permukiman` decimal(10,2) DEFAULT NULL,
  `luas_tambang` decimal(10,2) DEFAULT NULL,
  `luas_nontambang` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_penggunaan_lahan`
--

INSERT INTO `dim_penggunaan_lahan` (`sk_penggunaan_lahan`, `luas_permukiman`, `luas_tambang`, `luas_nontambang`) VALUES
(7001, 39377.00, 0.00, 2900.00),
(7002, 28530.00, 0.00, 53200.00),
(7003, 18335.00, 0.00, 6500.00),
(7004, 68813.00, 144500.00, 9100.00),
(7005, 78413.00, 42400.00, 0.00),
(7006, 122141.00, 172900.00, 21000.00),
(7007, 14327.00, 40900.00, 0.00),
(7008, 134147.00, 0.00, 6400.00),
(7009, 0.00, 20400.00, 300.00),
(7010, 7530.00, 107800.00, 1100.00),
(7011, 0.00, 0.00, 1000.00),
(7012, 0.00, 31600.00, 152100.00),
(7013, 0.00, 16600.00, 22500.00),
(7014, 0.00, 0.00, 33000.00),
(7015, 0.00, 44800.00, 65600.00),
(7016, 0.00, 0.00, 100.00),
(7017, 0.00, 0.00, 0.00),
(7018, 2950.00, 116000.00, 0.00),
(7019, 1137.00, 500.00, 0.00),
(7020, 49199.00, 475200.00, 4700.00),
(7021, 72583.00, 2811500.00, 70700.00),
(7022, 43502.00, 2769000.00, 32200.00),
(7023, 43182.00, 4395400.00, 66800.00),
(7024, 0.00, 41100.00, 51700.00),
(7025, 37841.00, 2098100.00, 15400.00),
(7026, 7448.00, 200.00, 3900.00),
(7027, 54446.00, 563300.00, 5800.00),
(7028, 5661.00, 122800.00, 2800.00),
(7029, 5190.00, 0.00, 1800.00),
(7030, 5665.00, 2100.00, 102300.00),
(7031, 22667.00, 809900.00, 0.00),
(7032, 25969.00, 380900.00, 7700.00),
(7033, 92533.00, 107800.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `fakta_hutan`
--

CREATE TABLE `fakta_hutan` (
  `id_hutan` int(11) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `sk_hutan` int(11) DEFAULT NULL,
  `sk_kerusakan_hutan` int(11) DEFAULT NULL,
  `sk_penggunaan_lahan` int(11) DEFAULT NULL,
  `sk_industri_kehutanan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fakta_hutan`
--

INSERT INTO `fakta_hutan` (`id_hutan`, `provinsi`, `sk_hutan`, `sk_kerusakan_hutan`, `sk_penggunaan_lahan`, `sk_industri_kehutanan`) VALUES
(133, 'ACEH', 1001, 5001, 7001, 3001),
(134, 'SUMATERA UTARA', 1002, 5002, 7002, 3002),
(135, 'SUMATERA BARAT', 1003, 5003, 7003, 3003),
(136, 'RIAU', 1004, 5004, 7004, 3004),
(137, 'JAMBI', 1005, 5005, 7005, 3005),
(138, 'SUMATERA SELATAN', 1006, 5006, 7006, 3006),
(139, 'BENGKULU', 1007, 5007, 7007, 3007),
(140, 'LAMPUNG', 1008, 5008, 7008, 3008),
(141, 'KEP. BANGKA BELITUNG', 1009, 5009, 7009, 3009),
(142, 'KEPULAUAN RIAU', 1010, 5010, 7010, 3010),
(143, 'DKI JAKARTA', 1011, 5011, 7011, 3011),
(144, 'JAWA BARAT', 1012, 5012, 7012, 3012),
(145, 'JAWA TENGAH', 1013, 5013, 7013, 3013),
(146, 'D.I YOGYAKARTA', 1014, 5014, 7014, 3014),
(147, 'JAWA TIMUR', 1015, 5015, 7015, 3015),
(148, 'BANTEN', 1016, 5016, 7016, 3016),
(149, 'BALI', 1017, 5017, 7017, 3017),
(150, 'NUSA TENGGARA BARAT', 1018, 5018, 7018, 3018),
(151, 'NUSA TENGGARA TIMUR', 1019, 5019, 7019, 3019),
(152, 'KALIMANTAN BARAT', 1020, 5020, 7020, 3020),
(153, 'KALIMANTAN TENGAH', 1021, 5021, 7021, 3021),
(154, 'KALIMANTAN SELATAN', 1022, 5022, 7022, 3022),
(155, 'KALIMANTAN TIMUR DAN KALIMANTAN UTARA', 1023, 5023, 7023, 3023),
(156, 'SULAWESI UTARA', 1024, 5024, 7024, 3024),
(157, 'SULAWESI TENGAH', 1025, 5025, 7025, 3025),
(158, 'SULAWESI SELATAN', 1026, 5026, 7026, 3026),
(159, 'SULAWESI TENGGARA', 1027, 5027, 7027, 3027),
(160, 'GORONTALO', 1028, 5028, 7028, 3028),
(161, 'SULAWESI BARAT', 1029, 5029, 7029, 3029),
(162, 'MALUKU', 1030, 5030, 7030, 3030),
(163, 'MALUKU UTARA', 1031, 5031, 7031, 3031),
(164, 'PAPUA BARAT', 1032, 5032, 7032, 3032),
(165, 'PAPUA', 1033, 5033, 7033, 3033);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_hutan`
--
ALTER TABLE `dim_hutan`
  ADD PRIMARY KEY (`sk_hutan`);

--
-- Indexes for table `dim_industri_kehutanan`
--
ALTER TABLE `dim_industri_kehutanan`
  ADD PRIMARY KEY (`sk_industri_kehutanan`);

--
-- Indexes for table `dim_kerusakan_hutan`
--
ALTER TABLE `dim_kerusakan_hutan`
  ADD PRIMARY KEY (`sk_kerusakan_hutan`);

--
-- Indexes for table `dim_penggunaan_lahan`
--
ALTER TABLE `dim_penggunaan_lahan`
  ADD PRIMARY KEY (`sk_penggunaan_lahan`);

--
-- Indexes for table `fakta_hutan`
--
ALTER TABLE `fakta_hutan`
  ADD PRIMARY KEY (`id_hutan`),
  ADD KEY `sk_hutan` (`sk_hutan`),
  ADD KEY `sk_kerusakan_hutan` (`sk_kerusakan_hutan`),
  ADD KEY `sk_penggunaan_lahan` (`sk_penggunaan_lahan`),
  ADD KEY `sk_industri_kehutanan` (`sk_industri_kehutanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_hutan`
--
ALTER TABLE `dim_hutan`
  MODIFY `sk_hutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9979;

--
-- AUTO_INCREMENT for table `dim_industri_kehutanan`
--
ALTER TABLE `dim_industri_kehutanan`
  MODIFY `sk_industri_kehutanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9779;

--
-- AUTO_INCREMENT for table `dim_kerusakan_hutan`
--
ALTER TABLE `dim_kerusakan_hutan`
  MODIFY `sk_kerusakan_hutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9949;

--
-- AUTO_INCREMENT for table `dim_penggunaan_lahan`
--
ALTER TABLE `dim_penggunaan_lahan`
  MODIFY `sk_penggunaan_lahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9376;

--
-- AUTO_INCREMENT for table `fakta_hutan`
--
ALTER TABLE `fakta_hutan`
  MODIFY `id_hutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fakta_hutan`
--
ALTER TABLE `fakta_hutan`
  ADD CONSTRAINT `fakta_hutan_ibfk_1` FOREIGN KEY (`sk_hutan`) REFERENCES `dim_hutan` (`sk_hutan`),
  ADD CONSTRAINT `fakta_hutan_ibfk_2` FOREIGN KEY (`sk_kerusakan_hutan`) REFERENCES `dim_kerusakan_hutan` (`sk_kerusakan_hutan`),
  ADD CONSTRAINT `fakta_hutan_ibfk_3` FOREIGN KEY (`sk_penggunaan_lahan`) REFERENCES `dim_penggunaan_lahan` (`sk_penggunaan_lahan`),
  ADD CONSTRAINT `fakta_hutan_ibfk_4` FOREIGN KEY (`sk_industri_kehutanan`) REFERENCES `dim_industri_kehutanan` (`sk_industri_kehutanan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
