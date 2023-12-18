-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2023 at 03:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hnouches`
--

INSERT INTO `hnouches` (`id`, `station`, `author`, `date`) VALUES
(3, 413, 1, '2023-12-08 12:16:09'),
(13, 66, 1, '2023-01-01 10:00:00'),
(14, 420, 1, '2023-02-02 11:00:00'),
(15, 823, 1, '2023-03-03 12:00:00'),
(16, 410, 1, '2023-04-04 13:00:00'),
(17, 142, 1, '2023-05-05 14:00:00'),
(18, 63, 1, '2023-06-06 15:00:00'),
(19, 818, 1, '2023-07-07 16:00:00'),
(20, 612, 1, '2023-08-08 17:00:00'),
(21, 64, 1, '2023-09-09 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` int(4) NOT NULL,
  `latitude` varchar(18) DEFAULT NULL,
  `longitude` varchar(18) DEFAULT NULL,
  `name` varchar(35) DEFAULT NULL,
  `line` int(2) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `latitude`, `longitude`, `name`, `line`, `type`) VALUES
(41, '48.89740222196378', '2.344847748752398', 'Porte de Clignancourt', 4, 'metro'),
(42, '48.89434384790808', '2.3474307799602045', 'Simplon', 4, 'metro'),
(43, '48.89143955394805', '2.349627158227452', 'Marcadet Poissonniers', 4, 'metro'),
(44, '48.88671096710697', '2.349559430194617', 'Château Rouge', 4, 'metro'),
(45, '48.88341808759222', '2.3496748325822017', 'Barbès Rochechouart', 4, 'metro'),
(46, '48.87979369318188', '2.3557919075311387', 'Gare du Nord', 4, 'metro'),
(47, '48.87599106387279', '2.3578807719253265', 'Gare de l\'Est', 4, 'metro'),
(48, '48.87262083899373', '2.3561539474503386', 'Château d\'Eau', 4, 'metro'),
(49, '48.869628862844074', '2.354468813108208', 'Strasbourg Saint-Denis', 4, 'metro'),
(61, '48.874748649745484', '2.2955602562131467', 'Charles-de-Gaulle Étoile', 6, 'metro'),
(62, '48.87126214352652', '2.2932406499473132', 'Kléber', 6, 'metro'),
(63, '48.86698310851503', '2.2900588335804866', 'Boissière', 6, 'metro'),
(64, '48.86361093671121', '2.2875801625296517', 'Trocadéro', 6, 'metro'),
(65, '48.85744868914132', '2.2858124441464076', 'Passy', 6, 'metro'),
(66, '48.85394260527926', '2.289334532778806', 'Bir-Hakeim', 6, 'metro'),
(67, '48.85043454807889', '2.2936124371878024', 'Dupleix', 6, 'metro'),
(68, '48.84874166478328', '2.2989309117480605', 'La Motte Picquet - Grenelle', 6, 'metro'),
(69, '48.84750708106227', '2.3029682978173134', 'Cambronne', 6, 'metro'),
(81, '48.836295300607894', '2.2783302598660233', 'Balard', 8, 'metro'),
(82, '48.838734857902175', '2.2821433781708906', 'Lourmel', 8, 'metro'),
(83, '48.84109405631434', '2.2879457664873772', 'Boucicaut', 8, 'metro'),
(84, '48.84274677885832', '2.2919124133178745', 'Félix Faure', 8, 'metro'),
(85, '48.844794762777255', '2.293951963648717', 'Commerce', 8, 'metro'),
(86, '48.849575212975026', '2.298625127144873', 'La Motte Picquet - Grenelle', 8, 'metro'),
(87, '48.85489056594407', '2.3064034857365163', 'École Militaire', 8, 'metro'),
(88, '48.85772541195898', '2.3105659609468447', 'La Tour Maubourg', 8, 'metro'),
(89, '48.860381278263674', '2.31489073005888', 'Invalides (r. Esnault-Pelterie)', 8, 'metro'),
(141, '48.9132020942236', '2.3346631501197574', 'Mairie de Saint-Ouen', 14, 'metro'),
(142, '48.90449641964034', '2.321743589558778', 'Saint-Ouen', 14, 'metro'),
(143, '48.894980809790994', '2.3127919615012913', 'Porte de Clichy', 14, 'metro'),
(144, '48.889560827381025', '2.3151768973047835', 'Pont Cardinet', 14, 'metro'),
(145, '48.87571908888893', '2.324224580938852', 'Gare Saint-Lazare', 14, 'metro'),
(146, '48.870667019963506', '2.3257526352867255', 'Madeleine', 14, 'metro'),
(147, '48.86590673865971', '2.3341895419682492', 'Pyramides', 14, 'metro'),
(148, '48.85958965464833', '2.3464781835875943', 'Châtelet', 14, 'metro'),
(149, '48.8434867608722', '2.3739225903167536', 'Gare de Lyon', 14, 'metro'),
(410, '48.86673355502223', '2.352829461254394', 'Réaumur Sébastopol', 4, 'metro'),
(411, '48.863972477882776', '2.3496175641598396', 'Étienne Marcel', 4, 'metro'),
(412, '48.86251523404101', '2.3457858600391797', 'Châtelet les Halles', 4, 'metro'),
(413, '48.85971866106072', '2.3467682857366983', 'Châtelet', 4, 'metro'),
(414, '48.854936377424146', '2.3473213170674256', 'Cité', 4, 'metro'),
(415, '48.8531679839561', '2.343285978923923', 'Saint-Michel Notre-Dame', 4, 'metro'),
(416, '48.852300762159715', '2.339727781593095', 'Odéon', 4, 'metro'),
(417, '48.853718933065686', '2.3337761382184663', 'Saint-Germain-des-Prés', 4, 'metro'),
(418, '48.85107136943748', '2.330700709954214', 'Saint-Sulpice', 4, 'metro'),
(419, '48.846878237916876', '2.326792785027681', 'Saint-Placide', 4, 'metro'),
(420, '48.8437813048013', '2.324397012385794', 'Montparnasse Bienvenue', 4, 'metro'),
(421, '48.84221841267896', '2.329008926235402', 'Vavin', 4, 'metro'),
(422, '48.838964279775986', '2.330754192086215', 'Raspail', 4, 'metro'),
(423, '48.83345085727892', '2.3317401309853487', 'Denfert-Rochereau', 4, 'metro'),
(424, '48.83111265944071', '2.3297050126201837', 'Mouton Duvernet', 4, 'metro'),
(425, '48.82818847537889', '2.3271646496078233', 'Alésia', 4, 'metro'),
(426, '48.82341162805273', '2.3255756362122453', 'Porte d\'Orléans (Général Leclerc)', 4, 'metro'),
(427, '48.818676408977936', '2.3197403132985555', 'Mairie de Montrouge', 4, 'metro'),
(428, '48.809703996598586', '2.317449187923372', 'Barbara', 4, 'metro'),
(429, '48.803489717990644', '2.3173602968975313', 'Bagneux - Lucie Aubrac', 4, 'metro'),
(610, '48.845626965812635', '2.3095314914609446', 'Sèvres Lecourbe', 6, 'metro'),
(611, '48.84267681904916', '2.3128127748369014', 'Pasteur', 6, 'metro'),
(612, '48.842102206274035', '2.321278562744627', 'Montparnasse Bienvenue', 6, 'metro'),
(613, '48.840663228364996', '2.3263846107928456', 'Edgar Quinet', 6, 'metro'),
(614, '48.838964279775986', '2.330754192086215', 'Raspail', 6, 'metro'),
(615, '48.834292979538596', '2.3328523099608898', 'Denfert-Rochereau', 6, 'metro'),
(616, '48.83290081472565', '2.3371351933438995', 'Saint-Jacques', 6, 'metro'),
(617, '48.831129547092026', '2.3435116577497754', 'Glacière', 6, 'metro'),
(618, '48.82979051275835', '2.350414872010463', 'Corvisart', 6, 'metro'),
(619, '48.8309272400659', '2.3561219387971035', 'Place d\'Italie', 6, 'metro'),
(620, '48.83321671877524', '2.362856399519012', 'Nationale', 6, 'metro'),
(621, '48.83494772231993', '2.3681263304132094', 'Chevaleret', 6, 'metro'),
(622, '48.83704511922334', '2.3728257245425715', 'Quai de la Gare', 6, 'metro'),
(623, '48.84038874716129', '2.3799112714543975', 'Bercy', 6, 'metro'),
(624, '48.839041142779394', '2.389620014061438', 'Dugommier', 6, 'metro'),
(625, '48.8395496446341', '2.3957032894363923', 'Daumesnil', 6, 'metro'),
(626, '48.841338248197566', '2.4009185367798023', 'Bel-Air', 6, 'metro'),
(627, '48.84506157901035', '2.4012890198273475', 'Picpus', 6, 'metro'),
(628, '48.84737487779481', '2.3954619948327394', 'Nation', 6, 'metro'),
(810, '48.86681836891563', '2.322082848676169', 'Concorde', 8, 'metro'),
(811, '48.86963317209047', '2.326272274027748', 'Madeleine', 8, 'metro'),
(812, '48.87048333199217', '2.331186346851651', 'Opéra', 8, 'metro'),
(813, '48.871256545007405', '2.344561060662729', 'Grands Boulevards', 8, 'metro'),
(814, '48.86940219572108', '2.3538187935928794', 'Strasbourg Saint-Denis', 8, 'metro'),
(815, '48.86760087916799', '2.3627573800027624', 'République', 8, 'metro'),
(816, '48.863257944024426', '2.366661093353451', 'Filles du Calvaire', 8, 'metro'),
(817, '48.86116886366122', '2.3672108677856154', 'Saint-Sébastien Froissart', 8, 'metro'),
(818, '48.85710325722025', '2.3681841149506986', 'Chemin Vert', 8, 'metro'),
(819, '48.853439426633884', '2.369513568156525', 'Bastille', 8, 'metro'),
(820, '48.85017786186515', '2.3840922100556665', 'Faidherbe Chaligny', 8, 'metro'),
(821, '48.844065596373376', '2.3904821339803877', 'Montgallet', 8, 'metro'),
(822, '48.839445427444936', '2.396182886452632', 'Daumesnil', 8, 'metro'),
(823, '48.83711700605412', '2.4023331645551846', 'Michel Bizot', 8, 'metro'),
(824, '48.834785157146825', '2.4053832106267707', 'Porte Dorée', 8, 'metro'),
(825, '48.832736700820156', '2.4003104030250766', 'Porte de Charenton', 8, 'metro'),
(826, '48.82662006452886', '2.405851943981901', 'Liberté', 8, 'metro'),
(827, '48.821897938499944', '2.4131329383427076', 'Charenton Écoles', 8, 'metro'),
(828, '48.81480300606579', '2.4223761428456223', 'École Vétérinaire de Maisons-Alfort', 8, 'metro'),
(829, '48.8091443609007', '2.43450989592394', 'Maisons-Alfort - Stade', 8, 'metro'),
(830, '48.803355236116154', '2.445574101030144', 'Maisons-Alfort Les Juilliottes', 8, 'metro'),
(831, '48.7966821340621', '2.449412805145807', 'Créteil L\'Échat', 8, 'metro'),
(832, '48.78992046595464', '2.4505115282905896', 'Créteil Université', 8, 'metro'),
(833, '48.78000282797376', '2.459363129076404', 'Créteil Préfecture', 8, 'metro'),
(834, '48.76881073327119', '2.4642800705433565', 'Pointe du Lac', 8, 'metro'),
(1410, '48.840001387714224', '2.3795540112141405', 'Bercy', 14, 'metro'),
(1411, '48.83333855831707', '2.3866324020669847', 'Cour Saint-Emilion', 14, 'metro'),
(1412, '48.82999019896456', '2.3757479832156028', 'Bibliothèque François Mitterrand', 14, 'metro'),
(1413, '48.8271636169609', '2.3671730244778457', 'Olympiades', 14, 'metro');

-- --------------------------------------------------------

--
-- Table structure for table `stations_old`
--

CREATE TABLE `stations_old` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stations_old`
--

INSERT INTO `stations_old` (`id`, `name`, `latitude`, `longitude`, `type`) VALUES
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
(41, 'Châtelet', '48.859769', '2.346639', 'metro'),
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
  `reputation` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  ADD KEY `fk_foreign_key_user` (`author`),
  ADD KEY `station` (`station`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stations_old`
--
ALTER TABLE `stations_old`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1414;

--
-- AUTO_INCREMENT for table `stations_old`
--
ALTER TABLE `stations_old`
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
  ADD CONSTRAINT `fk_foreign_key_user` FOREIGN KEY (`author`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `hnouches_ibfk_1` FOREIGN KEY (`station`) REFERENCES `stations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
