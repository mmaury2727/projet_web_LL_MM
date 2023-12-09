-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 09, 2023 at 02:38 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hendektracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `hnouches`
--

CREATE TABLE `hnouches` (
  `id` int(11) NOT NULL,
  `station` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hnouches`
--

INSERT INTO `hnouches` (`id`, `station`, `author`, `date`) VALUES
(3, 41, 1, '2023-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `name`, `longitude`, `latitude`, `type`) VALUES
(2, 'Abbesses', '48.8843091', '2.3387397', 'metro'),
(3, 'Alésia', '48.8279667', '2.3263892', 'metro'),
(4, 'Alexandre Dumas', '48.8563342', '2.3944206', 'metro'),
(5, 'Alma-Marceau', '48.8644455', '2.300643', 'metro'),
(6, 'Anvers', '48.8828912', '2.3440843', 'metro'),
(7, 'Argentine', '48.8757746', '2.2893645', 'metro'),
(8, 'Arts et Métiers', '48.8666646', '2.3572703', 'metro'),
(9, 'Assemblée Nationale', '48.86190329999999', '2.3186484', 'metro'),
(10, 'Auber', '48.8724115', '2.3294978', 'metro'),
(11, 'Aubervilliers-Pantin-Quatre Chemins', '48.9040085', '2.392438', 'metro'),
(12, 'Avenue Émile Zola', '48.8465793', '2.2866627', 'metro'),
(13, 'Avron', '48.851307', '2.398311', 'metro'),
(14, 'Barbès-Rochechouart', '48.8837595', '2.349456', 'metro'),
(15, 'Basilique de Saint-Denis', '48.9354278', '2.3598393', 'metro'),
(16, 'Bastille', '48.8532607', '2.3696995', 'metro'),
(17, 'Bercy', '48.835455', '2.3856832', 'metro'),
(18, 'Bir-Hakeim', '48.853918', '2.2893696', 'metro'),
(19, 'Blanche', '48.8803754', '2.3314177', 'metro'),
(20, 'Bobigny-Pablo Picasso', '48.90676999999999', '2.449361', 'metro'),
(21, 'Boissière', '48.8669935', '2.2895874', 'metro'),
(22, 'Bolivar', '48.8763677', '2.379148', 'metro'),
(23, 'Bonne Nouvelle', '48.8674501', '2.3496033', 'metro'),
(24, 'Botzaris', '48.879532', '2.38906', 'metro'),
(25, 'Boulogne-Jean Jaurès', '48.8420292', '2.2387702', 'metro'),
(26, 'Brochant', '48.8906332', '2.3201303', 'metro'),
(27, 'Buttes-Chaumont', '48.88222529999999', '2.3819534', 'metro'),
(28, 'Cadet', '48.856614', '2.3522219', 'metro'),
(29, 'Cambronne', '48.856614', '2.3522219', 'metro'),
(30, 'Cardinal Lemoine', '48.846633', '2.351576', 'metro'),
(31, 'Carrefour Pleyel', '48.8400743', '2.3912036', 'metro'),
(32, 'Censier-Daubenton', '48.8404351', '2.3515488', 'metro'),
(33, 'Champs-Élysées-Clemenceau', '48.8679405', '2.3133575', 'metro'),
(34, 'Chardon-Lagache', '48.8439079', '2.2656137', 'metro'),
(35, 'Charles de Gaulle-Étoile', '48.87381999999999', '2.29549', 'metro'),
(36, 'Charles Michels', '48.846566', '2.286594', 'metro'),
(37, 'Charonne', '48.8527163', '2.4061036', 'metro'),
(38, 'Château d\'Eau', '48.8724895', '2.355908', 'metro'),
(39, 'Château de Vincennes', '48.84421700000001', '2.440797', 'metro'),
(40, 'Château-Landon', '48.8786783', '2.3620454', 'metro'),
(41, 'Châtelet', '48.8578755', '2.3471858', 'metro'),
(42, 'Châtillon-Montrouge', '48.8108397', '2.3017168', 'metro'),
(43, 'Chaussée d\'Antin-La Fayette', '48.8731197', '2.3330901', 'metro'),
(44, 'Chemin Vert', '48.8601615', '2.3775645', 'metro'),
(45, 'Chevaleret', '48.831248', '2.3739854', 'metro'),
(46, 'Château Rouge', '48.8873337', '2.3494494', 'metro'),
(47, 'Château de Versailles-Rive Gauche', '48.83297839999999', '2.2870258', 'metro'),
(48, 'Cluny-La Sorbonne', '48.8434912', '2.3518339', 'metro'),
(49, 'Colonel Fabien', '48.8780377', '2.3699386', 'metro'),
(50, 'Concorde', '48.8706008', '2.3228519', 'metro'),
(51, 'Corentin Celton', '48.827206', '2.2783375', 'metro'),
(52, 'Convention', '48.8401754', '2.2899544', 'metro'),
(53, 'Corentin Celton', '48.827206', '2.2783375', 'metro'),
(54, 'Corvisart', '48.8320289', '2.3473687', 'metro'),
(55, 'Cour Saint-Émilion', '48.8332109', '2.3867096', 'metro'),
(56, 'Courcelles', '48.8801952', '2.3074469', 'metro'),
(57, 'Couronnes', '48.869274', '2.380155', 'metro'),
(58, 'Crimée', '48.8861626', '2.3819559', 'metro'),
(59, 'Croix de Chavaux', '48.8583335', '2.436173', 'metro'),
(60, 'Danube', '48.88476740000001', '2.3953673', 'metro'),
(61, 'Daumesnil', '48.83903189999999', '2.3961819', 'metro'),
(62, 'Denfert-Rochereau', '48.8342686', '2.3323094', 'metro'),
(63, 'Dugommier', '48.839049', '2.389965', 'metro'),
(64, 'Dupleix', '48.851305', '2.2953277', 'metro'),
(65, 'Edgar Quinet', '48.8406525', '2.3267685', 'metro'),
(66, 'École Militaire', '48.85240049999999', '2.3036513', 'metro'),
(67, 'École Vétérinaire de Maisons-Alfort', '48.8149525', '2.4218345', 'metro'),
(68, 'Église d\'Auteuil', '48.847032', '2.269396', 'metro'),
(69, 'Église de Pantin', '48.89323049999999', '2.4134235', 'metro'),
(70, 'Église de Pantin', '48.89323049999999', '2.4134235', 'metro'),
(71, 'Esplanade de La Défense', '48.8880944', '2.2499818', 'metro'),
(72, 'Europe', '48.8766796', '2.3189725', 'metro'),
(73, 'Exelmans', '48.8424098', '2.2618305', 'metro'),
(74, 'Exelmans', '48.8424098', '2.2618305', 'metro'),
(75, 'Faidherbe-Chaligny', '48.8498005', '2.3853325', 'metro'),
(76, 'Falguière', '48.8404814', '2.3128988', 'metro'),
(77, 'Félix Faure', '48.842744', '2.291699', 'metro'),
(78, 'Filles du Calvaire', '48.8615904', '2.3671078', 'metro'),
(79, 'Fort d\'Aubervilliers', '48.9133333', '2.4035066', 'metro'),
(80, 'Franklin D. Roosevelt', '48.86913999999999', '2.30986', 'metro'),
(81, 'Front Populaire', '48.9064999', '2.3666255', 'metro'),
(82, 'Gabriel Péri', '48.8752537', '2.3242532', 'metro'),
(83, 'Gaîté', '48.8383865', '2.3224865', 'metro'),
(84, 'Gambetta', '48.8646143', '2.3987703', 'metro'),
(85, 'Gare d\'Austerlitz', '48.8429462', '2.3649513', 'metro'),
(86, 'Gare de l\'Est', '48.8767903', '2.3592251', 'metro'),
(87, 'Gare de Lyon', '48.84430380000001', '2.3743773', 'metro'),
(88, 'Gare du Nord', '48.8809481', '2.3553137', 'metro'),
(89, 'Garibaldi', '48.8466543', '2.3063603', 'metro'),
(90, 'George V', '48.8682365', '2.301356', 'metro'),
(91, 'Glacière', '48.831159', '2.3434895', 'metro'),
(92, 'Goncourt', '48.8699995', '2.370801', 'metro'),
(93, 'Grands Boulevards', '48.8707814', '2.3478302', 'metro'),
(94, 'Guy Môquet', '48.89280549999999', '2.3277735', 'metro'),
(95, 'Havre-Caumartin', '48.8735783', '2.3272701', 'metro'),
(96, 'Hôtel de Ville', '48.8565921', '2.3522133', 'metro'),
(97, 'Invalides', '48.8593608', '2.3138127', 'metro'),
(98, 'Jacques Bonsergent', '48.8711414', '2.3605131', 'metro'),
(99, 'Jaurès', '48.8861066', '2.3830745', 'metro'),
(100, 'Javel-André Citroën', '48.8460538', '2.2777049', 'metro'),
(101, 'Jourdain', '48.875206', '2.389512', 'metro');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `reputation` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `created`, `reputation`, `password`, `bio`) VALUES
(1, 'lois', '2023-12-08', 0, 'hnouch', 'hendektracker');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hnouches`
--
ALTER TABLE `hnouches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_foreign_key_name` (`station`),
  ADD KEY `fk_foreign_key_user` (`author`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hnouches`
--
ALTER TABLE `hnouches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hnouches`
--
ALTER TABLE `hnouches`
  ADD CONSTRAINT `fk_foreign_key_name` FOREIGN KEY (`station`) REFERENCES `stations` (`id`),
  ADD CONSTRAINT `fk_foreign_key_user` FOREIGN KEY (`author`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
