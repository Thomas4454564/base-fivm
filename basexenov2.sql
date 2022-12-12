-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 11 jan. 2022 à 15:58
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `basexenov2`
--

-- --------------------------------------------------------

--
-- Structure de la table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('property_black_money', 'Argent Sale Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ballas', 'Ballas', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_families', 'Families', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_vagos', 'Vagos', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(5, 'society_ambulance', 0, NULL),
(15, 'property_black_money', 0, 'steam:11000011657cd55'),
(17, 'property_black_money', 0, 'steam:110000116ec2fed'),
(18, 'society_police', 0, NULL),
(19, 'society_mechanic', 0, NULL),
(20, 'property_black_money', 0, 'steam:11000013736dbe2'),
(21, 'property_black_money', 0, 'steam:1100001476c28ad'),
(22, 'society_cardealer', 0, NULL),
(23, 'property_black_money', 0, 'steam:110000140392faa'),
(24, 'society_ballas', 0, NULL),
(25, 'society_families', 0, NULL),
(26, 'society_vagos', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ballas', 'Ballas', 1),
('society_cardealer', 'Concesionnaire', 1),
('society_families', 'Families', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_vagos', 'Vagos', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_police', 'poudre', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `appels_ems`
--

CREATE TABLE `appels_ems` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `reporteur` varchar(255) DEFAULT NULL,
  `nomreporter` varchar(255) DEFAULT NULL,
  `raison` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `arrests_list`
--

CREATE TABLE `arrests_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `bolos_list`
--

CREATE TABLE `bolos_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `identifier` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `sex` varchar(1) NOT NULL DEFAULT 'f',
  `height` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`identifier`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`) VALUES
('steam:110000134bc8c01', 'Max', 'Bloom', '19/06/1995', 'm', '182'),
('steam:110000116d9cec8', 'James', 'Dupont', '07/11/1995', 'm', '160'),
('steam:1100001414699fa', 'Citron', 'Noir', '04/06/05', 'm', '152'),
('steam:11000011657cd55', 'Kaito', 'Savastano', '05/07/1990', 'm', '180'),
('steam:110000116ec2fed', 'Vadym', 'Morsen', '03.03.2005', 'm', '190'),
('steam:11000011657cd55', 'Kaito', 'Ssqqsd', '05/07/2001', 'm', '150'),
('steam:11000011657cd55', 'Kaito', 'Savastano', '25/12/1990', 'm', '180'),
('steam:11000013736dbe2', 'Guigui', 'Lacite', '20/08/1999', 'm', '180'),
('steam:11000013736dbe2', 'Guigui', 'Lacite', '20/08/1999', 'm', '180'),
('steam:110000140392faa', 'Xeno', 'Xeno', '18/03/2000', 'm', '187'),
('steam:110000140392faa', 'Xeno', 'Xeno', '18/03/2005', 'm', '187');

-- --------------------------------------------------------

--
-- Structure de la table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('property', 'Propriété', 0),
('society_ambulance', 'Ambulance', 1),
('society_ballas', 'Ballas', 1),
('society_families', 'Families', 1),
('society_mechanic', 'Mécano', 1),
('society_police', 'Police', 1),
('society_vagos', 'Vagos', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Structure de la table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(2, 'user_ears', 'steam:110000134bc8c01', '{\"skin\":{\"ears_1\":-1,\"ears_2\":0},\"hasEars\":true}'),
(3, 'user_glasses', 'steam:110000134bc8c01', '{\"hasGlasses\":true,\"skin\":{\"glasses_1\":0,\"glasses_2\":0}}'),
(4, 'user_helmet', 'steam:110000134bc8c01', '{\"skin\":{\"helmet_2\":0,\"helmet_1\":-1},\"hasHelmet\":true}'),
(5, 'user_mask', 'steam:110000134bc8c01', '{\"skin\":{\"mask_2\":0,\"mask_1\":6},\"hasMask\":true}'),
(6, 'property', 'steam:110000116d9cec8', '{}'),
(7, 'user_ears', 'steam:110000116d9cec8', '{}'),
(8, 'user_helmet', 'steam:110000116d9cec8', '{}'),
(9, 'user_mask', 'steam:110000116d9cec8', '{}'),
(10, 'user_glasses', 'steam:110000116d9cec8', '{}'),
(12, 'society_ambulance', NULL, '{}'),
(18, 'property', 'steam:1100001414699fa', '{}'),
(19, 'user_ears', 'steam:1100001414699fa', '{}'),
(20, 'user_glasses', 'steam:1100001414699fa', '{}'),
(21, 'user_helmet', 'steam:1100001414699fa', '{}'),
(22, 'user_mask', 'steam:1100001414699fa', '{}'),
(23, 'society_taxi', NULL, '{}'),
(24, 'property', 'steam:11000011657cd55', '{\"dressing\":[{\"label\":\"ekip\",\"skin\":{\"blemishes_1\":0,\"lipstick_3\":0,\"bproof_2\":0,\"hair_1\":12,\"bags_1\":0,\"chest_2\":0,\"eyebrows_3\":0,\"ears_1\":-1,\"hair_2\":0,\"makeup_4\":0,\"lipstick_1\":0,\"torso_2\":0,\"helmet_2\":0,\"tshirt_2\":0,\"face\":0,\"skin\":5,\"decals_2\":0,\"beard_2\":10,\"chain_2\":0,\"arms_2\":0,\"hair_color_2\":29,\"watches_1\":-1,\"complexion_2\":0,\"moles_2\":0,\"eyebrows_1\":0,\"hair_color_1\":0,\"pants_1\":26,\"eye_color\":0,\"bags_2\":0,\"sex\":0,\"pants_2\":6,\"age_2\":0,\"sun_1\":0,\"tshirt_1\":0,\"watches_2\":0,\"chest_1\":0,\"lipstick_2\":0,\"shoes_1\":8,\"blush_3\":0,\"bracelets_2\":0,\"eyebrows_2\":10,\"glasses_1\":3,\"chest_3\":0,\"bodyb_2\":0,\"makeup_2\":0,\"arms\":0,\"mask_1\":152,\"makeup_1\":0,\"ears_2\":0,\"blush_2\":0,\"lipstick_4\":0,\"sun_2\":0,\"bodyb_1\":0,\"torso_1\":361,\"beard_4\":0,\"shoes_2\":2,\"makeup_3\":0,\"age_1\":0,\"moles_1\":0,\"complexion_1\":0,\"helmet_1\":-1,\"bracelets_1\":-1,\"mask_2\":0,\"beard_3\":0,\"eyebrows_4\":0,\"decals_1\":0,\"glasses_2\":0,\"blush_1\":0,\"chain_1\":0,\"beard_1\":10,\"blemishes_2\":0,\"bproof_1\":0}}]}'),
(25, 'user_ears', 'steam:11000011657cd55', '{}'),
(26, 'user_glasses', 'steam:11000011657cd55', '{}'),
(27, 'user_helmet', 'steam:11000011657cd55', '{}'),
(28, 'user_mask', 'steam:11000011657cd55', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":152}}'),
(30, 'property', 'steam:110000116ec2fed', '{}'),
(31, 'user_ears', 'steam:110000116ec2fed', '{}'),
(32, 'user_glasses', 'steam:110000116ec2fed', '{}'),
(33, 'user_helmet', 'steam:110000116ec2fed', '{}'),
(34, 'user_mask', 'steam:110000116ec2fed', '{}'),
(35, 'society_police', NULL, '{\"weapons\":[{\"name\":\"WEAPON_PISTOL50\",\"count\":0}]}'),
(36, 'society_mechanic', NULL, '{}'),
(37, 'property', 'steam:11000013736dbe2', '{}'),
(38, 'user_ears', 'steam:11000013736dbe2', '{}'),
(39, 'user_glasses', 'steam:11000013736dbe2', '{}'),
(40, 'user_helmet', 'steam:11000013736dbe2', '{}'),
(41, 'user_mask', 'steam:11000013736dbe2', '{}'),
(42, 'user_ears', 'steam:1100001476c28ad', '{}'),
(43, 'user_mask', 'steam:1100001476c28ad', '{}'),
(44, 'user_helmet', 'steam:1100001476c28ad', '{}'),
(45, 'property', 'steam:1100001476c28ad', '{}'),
(46, 'user_glasses', 'steam:1100001476c28ad', '{}'),
(47, 'property', 'steam:110000140392faa', '{}'),
(48, 'user_ears', 'steam:110000140392faa', '{}'),
(49, 'user_glasses', 'steam:110000140392faa', '{}'),
(50, 'user_helmet', 'steam:110000140392faa', '{}'),
(51, 'user_mask', 'steam:110000140392faa', '{}'),
(52, 'society_ballas', NULL, '{}'),
(53, 'society_families', NULL, '{}'),
(54, 'society_vagos', NULL, '{}');

-- --------------------------------------------------------

--
-- Structure de la table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation Ã  contresens', 250, 0),
(4, 'Demi-tour non autorisÃ©', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sÃ©curitÃ©', 30, 0),
(7, 'ArrÃªt dangereux / interdit', 150, 0),
(8, 'Stationnement gÃªnant / interdit', 70, 0),
(9, 'Non respect  de la prioritÃ© Ã  droite', 70, 0),
(10, 'Non-respect Ã  un vÃ©hicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'DÃ©passement dangereux', 100, 0),
(14, 'VÃ©hicule non en Ã©tat', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'DÃ©lit de fuite', 800, 0),
(17, 'ExcÃ¨s de vitesse < 5 kmh', 90, 0),
(18, 'ExcÃ¨s de vitesse 5-15 kmh', 120, 0),
(19, 'ExcÃ¨s de vitesse 15-30 kmh', 180, 0),
(20, 'ExcÃ¨s de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'DÃ©gradation de la voie publique', 90, 1),
(23, 'Trouble Ã  l\'ordre publique', 90, 1),
(24, 'Entrave opÃ©ration de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage Ã  agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illÃ©gale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme lÃ©thale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisÃ© (dÃ©faut de license)', 600, 2),
(34, 'Port d\'arme illÃ©gal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'Ã´tage civil', 1500, 2),
(41, 'Prise d\'Ã´tage agent de l\'Ã©tat', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'Ã©tat', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'Ã©tat', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'Ã©tat', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie Ã  l\'entreprise', 2000, 2),
(53, 'Usage abusif du klaxon', 30, 0),
(54, 'Franchir une ligne continue', 40, 0),
(55, 'Circulation à contresens', 250, 0),
(56, 'Demi-tour non autorisé', 250, 0),
(57, 'Circulation hors-route', 170, 0),
(58, 'Non-respect des distances de sécurité', 30, 0),
(59, 'Arrêt dangereux / interdit', 150, 0),
(60, 'Stationnement gênant / interdit', 70, 0),
(61, 'Non respect  de la priorité à droite', 70, 0),
(62, 'Non-respect à un véhicule prioritaire', 90, 0),
(63, 'Non-respect d\'un stop', 105, 0),
(64, 'Non-respect d\'un feu rouge', 130, 0),
(65, 'Dépassement dangereux', 100, 0),
(66, 'Véhicule non en état', 100, 0),
(67, 'Conduite sans permis', 1500, 0),
(68, 'Délit de fuite', 800, 0),
(69, 'Excès de vitesse < 5 kmh', 90, 0),
(70, 'Excès de vitesse 5-15 kmh', 120, 0),
(71, 'Excès de vitesse 15-30 kmh', 180, 0),
(72, 'Excès de vitesse > 30 kmh', 300, 0),
(73, 'Entrave de la circulation', 110, 1),
(74, 'Dégradation de la voie publique', 90, 1),
(75, 'Trouble à l\'ordre publique', 90, 1),
(76, 'Entrave opération de police', 130, 1),
(77, 'Insulte envers / entre civils', 75, 1),
(78, 'Outrage à agent de police', 110, 1),
(79, 'Menace verbale ou intimidation envers civil', 90, 1),
(80, 'Menace verbale ou intimidation envers policier', 150, 1),
(81, 'Manifestation illégale', 250, 1),
(82, 'Tentative de corruption', 1500, 1),
(83, 'Arme blanche sortie en ville', 120, 2),
(84, 'Arme léthale sortie en ville', 300, 2),
(85, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(86, 'Port d\'arme illégal', 700, 2),
(87, 'Pris en flag lockpick', 300, 2),
(88, 'Vol de voiture', 1800, 2),
(89, 'Vente de drogue', 1500, 2),
(90, 'Fabriquation de drogue', 1500, 2),
(91, 'Possession de drogue', 650, 2),
(92, 'Prise d\'ôtage civil', 1500, 2),
(93, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(94, 'Braquage particulier', 650, 2),
(95, 'Braquage magasin', 650, 2),
(96, 'Braquage de banque', 1500, 2),
(97, 'Tir sur civil', 2000, 3),
(98, 'Tir sur agent de l\'état', 2500, 3),
(99, 'Tentative de meurtre sur civil', 3000, 3),
(100, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(101, 'Meurtre sur civil', 10000, 3),
(102, 'Meurte sur agent de l\'état', 30000, 3),
(103, 'Meurtre involontaire', 1800, 3),
(104, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_ballas`
--

CREATE TABLE `fine_types_ballas` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_ballas`
--

INSERT INTO `fine_types_ballas` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_families`
--

CREATE TABLE `fine_types_families` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_families`
--

INSERT INTO `fine_types_families` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `fine_types_vagos`
--

CREATE TABLE `fine_types_vagos` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fine_types_vagos`
--

INSERT INTO `fine_types_vagos` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Raket', 3000, 0),
(2, 'Raket', 5000, 0),
(3, 'Raket', 10000, 1),
(4, 'Raket', 20000, 1),
(5, 'Raket', 50000, 2),
(6, 'Raket', 150000, 3),
(7, 'Raket', 350000, 3);

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `limit` int(11) NOT NULL DEFAULT -1,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('acetone', 'Acetone', 50, 0, 1),
('bandage', 'Bandage', -1, 0, 1),
('billet', 'Papier', 50, 0, 1),
('billet_pooch', 'Faux Billet', 10, 0, 1),
('blowpipe', 'Chalumeaux', 10, 0, 1),
('bolcacahuetes', 'Bol de cacahuÃ¨tes', 5, 0, 1),
('bolchips', 'Bol de chips', 5, 0, 1),
('bolnoixcajou', 'Bol de noix de cajou', 5, 0, 1),
('bolpistache', 'Bol de pistaches', 5, 0, 1),
('bread', 'Pain', 10, 0, 1),
('carokit', 'Kit carosserie', 3, 0, 1),
('carotool', 'outils carosserie', 4, 0, 1),
('cartebanque', 'Carte De Banque', 10, 0, 1),
('clip', 'Chargeurs', 10, 0, 1),
('coca', 'Coca', 10, 0, 1),
('coke', 'Coke', 50, 0, 1),
('coke_pooch', 'Pochon de coke', 10, 0, 1),
('cookie', 'Cookie', 10, 0, 1),
('crack', 'Crack', 50, 0, 1),
('crack_pooch', 'Pochon de Crack', 10, 0, 1),
('douille', 'Douille', 10, 0, 1),
('drpepper', 'Dr. Pepper', 5, 0, 1),
('ecstasy', 'Ecstasy', 50, 0, 1),
('ecstasy_pooch', 'Pochon decstasy', 10, 0, 1),
('energy', 'Energy Drink', 5, 0, 1),
('fanta', 'Fanta', 10, 0, 1),
('fixkit', 'Kit réparation', 5, 0, 1),
('fixtool', 'outils réparation', 6, 0, 1),
('gazbottle', 'bouteille de gaz', 11, 0, 1),
('golem', 'Golem', 5, 0, 1),
('grand_cru', 'Grand cru', -1, 0, 1),
('grapperaisin', 'Grappe de raisin', 5, 0, 1),
('hamburger', 'Hamburger', 10, 0, 1),
('ice', 'GlaÃ§on', 5, 0, 1),
('icetea', 'Ice Tea', 5, 0, 1),
('jager', 'JÃ¤germeister', 5, 0, 1),
('jagerbomb', 'JÃ¤gerbomb', 5, 0, 1),
('jagercerbere', 'JÃ¤ger CerbÃ¨re', 3, 0, 1),
('jusfruit', 'Jus de fruits', 5, 0, 1),
('jus_raisin', 'Jus de raisin', -1, 0, 1),
('ketamine', 'Ketamine', 50, 0, 1),
('ketamine_pooch', 'Pochon de ketamine', 10, 0, 1),
('kevlar', 'Gilet par balle', 50, 0, 1),
('kiwi', 'Kiwi', 10, 0, 1),
('limonade', 'Limonade', 5, 0, 1),
('lithium', 'Lithium', 50, 0, 1),
('martini', 'Martini blanc', 5, 0, 1),
('medikit', 'Medikit', -1, 0, 1),
('menthe', 'Feuille de menthe', 10, 0, 1),
('meth', 'meth', 50, 0, 1),
('methlab', 'Methilamine', 50, 0, 1),
('meth_pooch', 'Pochon de meth', 10, 0, 1),
('metreshooter', 'MÃ¨tre de shooter', 3, 0, 1),
('mixapero', 'Mix ApÃ©ritif', 3, 0, 1),
('mojito', 'Mojito', 5, 0, 1),
('oasis', 'Oasis', 10, 0, 1),
('opium', 'Opium', 50, 0, 1),
('opium_pooch', 'Pochon de opium', 10, 0, 1),
('orangina', 'Orangina', 10, 0, 1),
('pain', 'Pain', 10, 0, 1),
('pizza', 'Pizza', 10, 0, 1),
('poudre', 'Poudre', 50, 0, 1),
('poulet', 'Poulet', 10, 0, 1),
('raisin', 'Raisin', -1, 0, 1),
('rhum', 'Rhum', 5, 0, 1),
('rhumcoca', 'Rhum-coca', 5, 0, 1),
('rhumfruit', 'Rhum-jus de fruits', 5, 0, 1),
('saucisson', 'Saucisson', 5, 0, 1),
('shwepps', 'Shwepps', 10, 0, 1),
('soda', 'Soda', 5, 0, 1),
('sprite', 'Sprite', 10, 0, 1),
('teqpaf', 'Teq\'paf', 5, 0, 1),
('tequila', 'Tequila', 5, 0, 1),
('vine', 'Vin', -1, 0, 1),
('vodka', 'Vodka', 5, 0, 1),
('vodkaenergy', 'Vodka-energy', 5, 0, 1),
('vodkafruit', 'Vodka-jus de fruits', 5, 0, 1),
('water', 'Eau', 5, 0, 1),
('weed', 'Weed', 50, 0, 1),
('weed_pooch', 'Pochon de weed', 10, 0, 1),
('whisky', 'Whisky', 5, 0, 1),
('whiskycoca', 'Whisky-coca', 5, 0, 1),
('wrap', 'Wrap', 10, 0, 1),
('xanax', 'Xanax', -1, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'Ambulance', 0),
('ballas', 'Ballas', 1),
('cardealer', 'Concessionnaire', 0),
('families', 'Families', 1),
('mechanic', '• Mécano', 1),
('police', 'LSPD', 0),
('unemployed', '• Chomeur', 0),
('unemployed2', '• Etat', 1),
('vagos', 'Vagos', 1);

-- --------------------------------------------------------

--
-- Structure de la table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Pole emploi', 50, '{}', '{}'),
(256, 'unemployed2', 0, 'rsa', 'Civil', 5, '{}', '{}'),
(1551, 'mechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(1552, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(1553, 'mechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(1554, 'mechanic', 3, 'chief', 'Chef d\'équipe', 48, '{}', '{}'),
(1555, 'mechanic', 4, 'boss', 'Patron', 0, '{}', '{}'),
(1556, 'cardealer', 0, 'recruit', 'Recrue', 10, '{}', '{}'),
(1557, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(1558, 'cardealer', 2, 'experienced', 'Experimente', 40, '{}', '{}'),
(1559, 'cardealer', 3, 'boss', 'Patron', 0, '{}', '{}'),
(1565, 'police', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(1566, 'police', 1, 'officer', 'Officier', 40, '{}', '{}'),
(1567, 'police', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(1568, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(1569, 'police', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(1579, 'ambulance', 4, 'boss', 'Patron', 100, '{}', '{}'),
(1580, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '{}', '{}'),
(1581, 'ambulance', 1, 'doctor', 'Medecin', 40, '{}', '{}'),
(1582, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '{}', '{}'),
(1583, 'ambulance', 3, 'surgeon', 'Chirurgien', 85, '{}', '{}'),
(1584, 'ambulance', 4, 'boss', 'Patron', 100, '{}', '{}'),
(1585, 'ballas', 1, 'soldato', 'Recrue', 0, '{}', '{}'),
(1586, 'ballas', 2, 'capo', 'Bandit', 0, '{}', '{}'),
(1587, 'ballas', 3, 'consigliere', 'Capo', 0, '{}', '{}'),
(1588, 'ballas', 4, 'double_og', 'Sous Chef', 0, '{}', '{}'),
(1589, 'ballas', 5, 'boss', 'Chef', 0, '{}', '{}'),
(1590, 'vagos', 1, 'soldato', 'pequino', 0, '{}', '{}'),
(1591, 'vagos', 2, 'capo', 'Capo', 0, '{}', '{}'),
(1592, 'vagos', 3, 'consigliere', 'Seignor', 0, '{}', '{}'),
(1593, 'vagos', 4, 'double_og', 'Grande', 0, '{}', '{}'),
(1594, 'vagos', 5, 'boss', 'Jefe', 0, '{}', '{}'),
(1595, 'families', 1, 'soldato', 'Recrue', 600, '{}', '{}'),
(1596, 'families', 2, 'capo', 'Bandit', 900, '{}', '{}'),
(1597, 'families', 3, 'Capo', 'Capo', 1200, '{}', '{}'),
(1598, 'families', 4, 'double_og', 'Sous Chef', 1500, '{}', '{}'),
(1599, 'families', 5, 'boss', 'Chef', 2100, '{}', '{}'),
(1600, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '', ''),
(1601, 'ambulance', 1, 'doctor', 'Medecin', 40, '', ''),
(1602, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '', ''),
(1603, 'ambulance', 3, 'boss', 'Chirurgien', 80, '', ''),
(1604, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '', ''),
(1605, 'ambulance', 1, 'doctor', 'Medecin', 40, '', ''),
(1606, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '', ''),
(1607, 'ambulance', 3, 'boss', 'Chirurgien', 80, '', ''),
(1608, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '', ''),
(1609, 'ambulance', 1, 'doctor', 'Medecin', 40, '', ''),
(1610, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '', ''),
(1611, 'ambulance', 3, 'boss', 'Chirurgien', 80, '', ''),
(1612, 'ambulance', 0, 'ambulance', 'Ambulancier', 20, '', ''),
(1613, 'ambulance', 1, 'doctor', 'Medecin', 40, '', ''),
(1614, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 60, '', ''),
(1615, 'ambulance', 3, 'boss', 'Chirurgien', 80, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `jsfour_criminalrecord`
--

CREATE TABLE `jsfour_criminalrecord` (
  `offense` varchar(160) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `classified` int(2) NOT NULL DEFAULT 0,
  `identifier` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `warden` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jsfour_criminalrecord`
--

INSERT INTO `jsfour_criminalrecord` (`offense`, `date`, `institution`, `charge`, `description`, `term`, `classified`, `identifier`, `dob`, `warden`) VALUES
('B-952', 'Aujourd\'hui', 'Bolingbroke', 'suce une bite', 'il a sucer sans avoir le droit', '1an', 1, 'steam:11000011657cd55', '25/12/1990', 'Kaito');

-- --------------------------------------------------------

--
-- Structure de la table `jsfour_criminaluserinfo`
--

CREATE TABLE `jsfour_criminaluserinfo` (
  `identifier` varchar(160) NOT NULL,
  `aliases` varchar(255) DEFAULT NULL,
  `recordid` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `eyecolor` varchar(255) DEFAULT NULL,
  `haircolor` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jsfour_criminaluserinfo`
--

INSERT INTO `jsfour_criminaluserinfo` (`identifier`, `aliases`, `recordid`, `weight`, `eyecolor`, `haircolor`, `firstname`, `lastname`, `dob`, `sex`, `height`) VALUES
('steam:11000011657cd55', 'KAITO', 'D27D394', '63kg', 'black', 'black', 'KAITO', 'SAVASTANO', '25/12/1990', 'm', '180cm');

-- --------------------------------------------------------

--
-- Structure de la table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'Code de la route'),
('drive', 'Permis de conduire'),
('drive_bike', 'Permis moto'),
('drive_truck', 'Permis camion');

-- --------------------------------------------------------

--
-- Structure de la table `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(22) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Etat de la voiture',
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `state`, `plate`, `vehicle`, `type`, `job`, `stored`) VALUES
('steam:110000140392faa', 1, 'YXY 217', '{\"model\":2035069708,\"plate\":\"YXY 217\"}', 'car', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'ambulance', '555-3627', 'GPS: 28.610216140747, -1353.2358398438', '2021-12-06 20:29:53', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `exit` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `outside` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT '[]',
  `gateway` varchar(255) DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{\"x\":372.796,\"y\":428.327,\"z\":144.685}', '{\"x\":373.548,\"y\":422.982,\"z\":144.907},', '{\"y\":420.075,\"z\":145.904,\"x\":372.161}', '{\"x\":372.454,\"y\":432.886,\"z\":143.443}', '[]', NULL, 1, 1, 0, '{\"x\":377.349,\"y\":429.422,\"z\":137.3}', 1500000),
(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{\"y\":-379.165,\"z\":37.961,\"x\":-936.363}', '{\"y\":-365.476,\"z\":113.274,\"x\":-913.097}', '{\"y\":-367.637,\"z\":113.274,\"x\":-918.022}', '{\"y\":-382.023,\"z\":37.961,\"x\":-943.626}', '[]', NULL, 1, 1, 0, '{\"x\":-927.554,\"y\":-377.744,\"z\":112.674}', 1700000),
(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{\"y\":440.8,\"z\":146.702,\"x\":346.964}', '{\"y\":437.456,\"z\":148.394,\"x\":341.683}', '{\"y\":435.626,\"z\":148.394,\"x\":339.595}', '{\"x\":350.535,\"y\":443.329,\"z\":145.764}', '[]', NULL, 1, 1, 0, '{\"x\":337.726,\"y\":436.985,\"z\":140.77}', 1500000),
(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{\"y\":502.696,\"z\":136.421,\"x\":-176.003}', '{\"y\":497.817,\"z\":136.653,\"x\":-174.349}', '{\"y\":495.069,\"z\":136.666,\"x\":-173.331}', '{\"y\":506.412,\"z\":135.0664,\"x\":-177.927}', '[]', NULL, 1, 1, 0, '{\"x\":-174.725,\"y\":493.095,\"z\":129.043}', 1500000),
(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{\"y\":596.58,\"z\":142.641,\"x\":-686.554}', '{\"y\":591.988,\"z\":144.392,\"x\":-681.728}', '{\"y\":590.608,\"z\":144.392,\"x\":-680.124}', '{\"y\":599.019,\"z\":142.059,\"x\":-689.492}', '[]', NULL, 1, 1, 0, '{\"x\":-680.46,\"y\":588.6,\"z\":136.769}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{\"y\":454.955,\"z\":96.462,\"x\":-1294.433}', '{\"x\":-1289.917,\"y\":449.541,\"z\":96.902}', '{\"y\":446.322,\"z\":96.899,\"x\":-1289.642}', '{\"y\":455.453,\"z\":96.517,\"x\":-1298.851}', '[]', NULL, 1, 1, 0, '{\"x\":-1287.306,\"y\":455.901,\"z\":89.294}', 1500000),
(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{\"x\":-853.346,\"y\":696.678,\"z\":147.782}', '{\"y\":690.875,\"z\":151.86,\"x\":-859.961}', '{\"y\":688.361,\"z\":151.857,\"x\":-859.395}', '{\"y\":701.628,\"z\":147.773,\"x\":-855.007}', '[]', NULL, 1, 1, 0, '{\"x\":-858.543,\"y\":697.514,\"z\":144.253}', 1500000),
(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{\"y\":620.494,\"z\":141.588,\"x\":-752.82}', '{\"y\":618.62,\"z\":143.153,\"x\":-759.317}', '{\"y\":617.629,\"z\":143.153,\"x\":-760.789}', '{\"y\":621.281,\"z\":141.254,\"x\":-750.919}', '[]', NULL, 1, 1, 0, '{\"x\":-762.504,\"y\":618.992,\"z\":135.53}', 1500000),
(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{\"y\":37.025,\"z\":42.58,\"x\":-618.299}', '{\"y\":58.898,\"z\":97.2,\"x\":-603.301}', '{\"y\":58.941,\"z\":97.2,\"x\":-608.741}', '{\"y\":30.603,\"z\":42.524,\"x\":-620.017}', '[]', NULL, 1, 1, 0, '{\"x\":-622.173,\"y\":54.585,\"z\":96.599}', 1700000),
(12, 'MiltonDrive', 'Milton Drive', '{\"x\":-775.17,\"y\":312.01,\"z\":84.658}', NULL, NULL, '{\"x\":-775.346,\"y\":306.776,\"z\":84.7}', '[]', NULL, 0, 0, 1, NULL, 0),
(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_01_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.661,\"y\":327.672,\"z\":210.396}', 1300000),
(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_01_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.735,\"y\":326.757,\"z\":186.313}', 1300000),
(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_01_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.386,\"y\":330.782,\"z\":195.08}', 1300000),
(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_02_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.615,\"y\":327.878,\"z\":210.396}', 1300000),
(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_02_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.297,\"y\":327.092,\"z\":186.313}', 1300000),
(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_02_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.303,\"y\":330.932,\"z\":195.085}', 1300000),
(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_03_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.885,\"y\":327.641,\"z\":210.396}', 1300000),
(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_03_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.607,\"y\":327.344,\"z\":186.313}', 1300000),
(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_03_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.525,\"y\":330.851,\"z\":195.085}', 1300000),
(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_04_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.527,\"y\":327.89,\"z\":210.396}', 1300000),
(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_04_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.642,\"y\":326.497,\"z\":186.313}', 1300000),
(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_04_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.503,\"y\":331.318,\"z\":195.085}', 1300000),
(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_05_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.289,\"y\":328.086,\"z\":210.396}', 1300000),
(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_05_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.692,\"y\":326.762,\"z\":186.313}', 1300000),
(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_05_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.094,\"y\":330.976,\"z\":195.085}', 1300000),
(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_06_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.263,\"y\":328.104,\"z\":210.396}', 1300000),
(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_06_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.655,\"y\":326.611,\"z\":186.313}', 1300000),
(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_06_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.3,\"y\":331.414,\"z\":195.085}', 1300000),
(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_07_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.956,\"y\":328.257,\"z\":210.396}', 1300000),
(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_07_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.545,\"y\":326.659,\"z\":186.313}', 1300000),
(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_07_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.087,\"y\":331.429,\"z\":195.123}', 1300000),
(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{\"x\":-784.194,\"y\":323.636,\"z\":210.997}', '{\"x\":-779.751,\"y\":323.385,\"z\":210.997}', NULL, '[\"apa_v_mp_h_08_a\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-766.187,\"y\":328.47,\"z\":210.396}', 1300000),
(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{\"x\":-786.8663,\"y\":315.764,\"z\":186.913}', '{\"x\":-781.808,\"y\":315.866,\"z\":186.913}', NULL, '[\"apa_v_mp_h_08_c\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-795.658,\"y\":326.563,\"z\":186.313}', 1300000),
(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{\"x\":-774.012,\"y\":342.042,\"z\":195.686}', '{\"x\":-779.057,\"y\":342.063,\"z\":195.686}', NULL, '[\"apa_v_mp_h_08_b\"]', 'MiltonDrive', 0, 1, 0, '{\"x\":-765.287,\"y\":331.084,\"z\":195.086}', 1300000),
(37, 'IntegrityWay', '4 Integrity Way', '{\"x\":-47.804,\"y\":-585.867,\"z\":36.956}', NULL, NULL, '{\"x\":-54.178,\"y\":-583.762,\"z\":35.798}', '[]', NULL, 0, 0, 1, NULL, 0),
(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{\"x\":-31.409,\"y\":-594.927,\"z\":79.03}', '{\"x\":-26.098,\"y\":-596.909,\"z\":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-11.923,\"y\":-597.083,\"z\":78.43}', 1700000),
(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{\"x\":-17.702,\"y\":-588.524,\"z\":89.114}', '{\"x\":-16.21,\"y\":-582.569,\"z\":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{\"x\":-26.327,\"y\":-588.384,\"z\":89.123}', 1700000),
(40, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1447.06,\"y\":-538.28,\"z\":33.74}', NULL, NULL, '{\"x\":-1440.022,\"y\":-548.696,\"z\":33.74}', '[]', NULL, 0, 0, 1, NULL, 0),
(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{\"x\":-1452.125,\"y\":-540.591,\"z\":73.044}', '{\"x\":-1455.435,\"y\":-535.79,\"z\":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1467.058,\"y\":-527.571,\"z\":72.443}', 1700000),
(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{\"x\":-1451.562,\"y\":-523.535,\"z\":55.928}', '{\"x\":-1456.02,\"y\":-519.209,\"z\":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{\"x\":-1457.026,\"y\":-530.219,\"z\":55.937}', 1700000),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(53, 'LomBank', 'Lom Bank', '{\"x\":-1581.36,\"y\":-558.23,\"z\":34.07}', NULL, NULL, '{\"x\":-1583.60,\"y\":-555.12,\"z\":34.07}', '[]', NULL, 0, 0, 1, NULL, 0),
(54, 'LBOldSpiceWarm', 'LB Old Spice Warm', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(55, 'LBOldSpiceClassical', 'LB Old Spice Classical', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(56, 'LBOldSpiceVintage', 'LB Old Spice Vintage', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_01c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(57, 'LBExecutiveRich', 'LB Executive Rich', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(58, 'LBExecutiveCool', 'LB Executive Cool', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(59, 'LBExecutiveContrast', 'LB Executive Contrast', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_02a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(60, 'LBPowerBrokerIce', 'LB Power Broker Ice', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03a\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(61, 'LBPowerBrokerConservative', 'LB Power Broker Conservative', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03b\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(62, 'LBPowerBrokerPolished', 'LB Power Broker Polished', NULL, '{\"x\":-1579.53,\"y\":-564.89,\"z\":107.62}', '{\"x\":-1576.42,\"y\":-567.57,\"z\":107.62}', NULL, '[\"ex_sm_13_office_03c\"]', 'LomBank', 0, 1, 0, '{\"x\":-1571.26,\"y\":-575.76,\"z\":107.52}', 3500000),
(63, 'MazeBankWest', 'Maze Bank West', '{\"x\":-1379.58,\"y\":-499.63,\"z\":32.22}', NULL, NULL, '{\"x\":-1378.95,\"y\":-502.82,\"z\":32.22}', '[]', NULL, 0, 0, 1, NULL, 0),
(64, 'MBWOldSpiceWarm', 'MBW Old Spice Warm', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(65, 'MBWOldSpiceClassical', 'MBW Old Spice Classical', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(66, 'MBWOldSpiceVintage', 'MBW Old Spice Vintage', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_01c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(67, 'MBWExecutiveRich', 'MBW Executive Rich', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(68, 'MBWExecutiveCool', 'MBW Executive Cool', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(69, 'MBWExecutive Contrast', 'MBW Executive Contrast', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_02a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(70, 'MBWPowerBrokerIce', 'MBW Power Broker Ice', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03a\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(71, 'MBWPowerBrokerConvservative', 'MBW Power Broker Convservative', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03b\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000),
(72, 'MBWPowerBrokerPolished', 'MBW Power Broker Polished', NULL, '{\"x\":-1392.74,\"y\":-480.18,\"z\":71.14}', '{\"x\":-1389.43,\"y\":-479.01,\"z\":71.14}', NULL, '[\"ex_sm_15_office_03c\"]', 'MazeBankWest', 0, 1, 0, '{\"x\":-1390.76,\"y\":-479.22,\"z\":72.04}', 2700000);

-- --------------------------------------------------------

--
-- Structure de la table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `job2` varchar(255) COLLATE utf8mb4_bin DEFAULT 'unemployed2',
  `job2_grade` int(11) DEFAULT 0,
  `org` varchar(255) COLLATE utf8mb4_bin DEFAULT 'freecity',
  `org_gradeorg` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `isDead` bit(1) DEFAULT b'0',
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `animal` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `vote` varchar(254) COLLATE utf8mb4_bin DEFAULT NULL,
  `jail` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `skills` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `vip` tinyint(1) DEFAULT 0,
  `zetony` int(11) DEFAULT NULL,
  `tattoos` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`identifier`, `license`, `name`, `skin`, `job`, `job_grade`, `job2`, `job2_grade`, `org`, `org_gradeorg`, `loadout`, `position`, `permission_level`, `group`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `isDead`, `last_property`, `animal`, `vote`, `jail`, `phone_number`, `is_dead`, `skills`, `money`, `bank`, `vip`, `zetony`, `tattoos`) VALUES
('steam:110000140392faa', 'license:c16eebf145bb58ba0bf84e9e998b6fdd26109d88', '7H_Xeno', '{\"hair_color_2\":0,\"beard_1\":0,\"makeup_2\":0,\"complexion_1\":0,\"makeup_4\":0,\"tshirt_1\":0,\"bags_1\":0,\"beard_3\":0,\"bodyb_1\":0,\"chest_3\":0,\"hair_color_1\":0,\"bags_2\":0,\"bproof_1\":0,\"mask_2\":0,\"pants_1\":0,\"bracelets_1\":-1,\"mask_1\":0,\"bodyb_2\":0,\"chest_2\":0,\"makeup_1\":0,\"blemishes_2\":0,\"sun_1\":0,\"eyebrows_1\":0,\"watches_2\":0,\"face\":0,\"lipstick_1\":0,\"chain_1\":0,\"glasses_2\":0,\"hair_2\":0,\"complexion_2\":0,\"glasses_1\":0,\"helmet_1\":-1,\"blush_2\":0,\"chest_1\":0,\"ears_1\":-1,\"lipstick_2\":0,\"lipstick_4\":0,\"bracelets_2\":0,\"sex\":0,\"shoes_2\":0,\"tshirt_2\":0,\"hair_1\":0,\"age_2\":0,\"blush_3\":0,\"blemishes_1\":0,\"bproof_2\":0,\"moles_1\":0,\"arms\":0,\"age_1\":0,\"ears_2\":0,\"helmet_2\":0,\"torso_2\":0,\"eyebrows_4\":0,\"arms_2\":0,\"eyebrows_3\":0,\"eyebrows_2\":0,\"beard_2\":0,\"watches_1\":-1,\"decals_2\":0,\"pants_2\":0,\"shoes_1\":0,\"decals_1\":0,\"torso_1\":0,\"beard_4\":0,\"eye_color\":0,\"lipstick_3\":0,\"makeup_3\":0,\"sun_2\":0,\"moles_2\":0,\"skin\":0,\"chain_2\":0,\"blush_1\":0}', 'unemployed', 0, 'unemployed2', 0, 'freecity', 0, '[]', '{\"y\":1147.2,\"x\":1364.0,\"z\":114.3}', 0, 'user', 'Xeno', 'Xeno', '18/03/2005', 'm', '187', '[]', b'0', NULL, NULL, NULL, 0, '555-0516', 0, NULL, 4800, 20055, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `name` varchar(50) NOT NULL,
  `money` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `identifier`, `name`, `money`) VALUES
(9, 'steam:110000140392faa', 'black_money', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_inventory`
--

CREATE TABLE `user_inventory` (
  `id` int(11) NOT NULL,
  `identifier` varchar(22) NOT NULL,
  `item` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user_inventory`
--

INSERT INTO `user_inventory` (`id`, `identifier`, `item`, `count`) VALUES
(1, 'steam:110000134bc8c01', 'bread', 1),
(2, 'steam:110000134bc8c01', 'cartebanque', 0),
(3, 'steam:110000134bc8c01', 'water', 0),
(4, 'steam:110000116d9cec8', 'bread', 0),
(5, 'steam:110000116d9cec8', 'cartebanque', 0),
(6, 'steam:110000116d9cec8', 'water', 0),
(7, 'steam:110000116d9cec8', 'jus_raisin', 0),
(8, 'steam:110000116d9cec8', 'vine', 0),
(9, 'steam:110000116d9cec8', 'raisin', 0),
(10, 'steam:110000116d9cec8', 'grand_cru', 0),
(11, 'steam:110000116d9cec8', 'mixapero', 0),
(12, 'steam:110000116d9cec8', 'tequila', 0),
(13, 'steam:110000116d9cec8', 'jagerbomb', 0),
(14, 'steam:110000116d9cec8', 'icetea', 0),
(15, 'steam:110000116d9cec8', 'bolpistache', 0),
(16, 'steam:110000116d9cec8', 'saucisson', 0),
(17, 'steam:110000116d9cec8', 'drpepper', 0),
(18, 'steam:110000116d9cec8', 'mojito', 0),
(19, 'steam:110000116d9cec8', 'grapperaisin', 0),
(20, 'steam:110000116d9cec8', 'ice', 0),
(21, 'steam:110000116d9cec8', 'bolnoixcajou', 0),
(22, 'steam:110000116d9cec8', 'golem', 0),
(23, 'steam:110000116d9cec8', 'teqpaf', 0),
(24, 'steam:110000116d9cec8', 'metreshooter', 0),
(25, 'steam:110000116d9cec8', 'energy', 0),
(26, 'steam:110000116d9cec8', 'rhum', 0),
(27, 'steam:110000116d9cec8', 'limonade', 0),
(28, 'steam:110000116d9cec8', 'whiskycoca', 0),
(29, 'steam:110000116d9cec8', 'whisky', 0),
(30, 'steam:110000116d9cec8', 'vodkafruit', 0),
(31, 'steam:110000116d9cec8', 'vodkaenergy', 0),
(32, 'steam:110000116d9cec8', 'jager', 0),
(33, 'steam:110000116d9cec8', 'jusfruit', 0),
(34, 'steam:110000116d9cec8', 'rhumfruit', 0),
(35, 'steam:110000116d9cec8', 'bolcacahuetes', 0),
(36, 'steam:110000116d9cec8', 'soda', 0),
(37, 'steam:110000116d9cec8', 'martini', 0),
(38, 'steam:110000116d9cec8', 'bolchips', 0),
(39, 'steam:110000116d9cec8', 'menthe', 0),
(40, 'steam:110000116d9cec8', 'rhumcoca', 0),
(41, 'steam:110000116d9cec8', 'vodka', 0),
(42, 'steam:110000116d9cec8', 'jagercerbere', 0),
(43, 'steam:110000134bc8c01', 'mixapero', 0),
(44, 'steam:110000134bc8c01', 'tequila', 0),
(45, 'steam:110000134bc8c01', 'icetea', 0),
(46, 'steam:110000134bc8c01', 'jagerbomb', 0),
(47, 'steam:110000134bc8c01', 'bolpistache', 0),
(48, 'steam:110000134bc8c01', 'saucisson', 0),
(49, 'steam:110000134bc8c01', 'drpepper', 0),
(50, 'steam:110000134bc8c01', 'mojito', 0),
(51, 'steam:110000134bc8c01', 'grapperaisin', 0),
(52, 'steam:110000134bc8c01', 'ice', 0),
(53, 'steam:110000134bc8c01', 'grand_cru', 0),
(54, 'steam:110000134bc8c01', 'bolnoixcajou', 0),
(55, 'steam:110000134bc8c01', 'golem', 0),
(56, 'steam:110000134bc8c01', 'teqpaf', 0),
(57, 'steam:110000134bc8c01', 'metreshooter', 0),
(58, 'steam:110000134bc8c01', 'energy', 0),
(59, 'steam:110000134bc8c01', 'jus_raisin', 0),
(60, 'steam:110000134bc8c01', 'rhum', 0),
(61, 'steam:110000134bc8c01', 'limonade', 0),
(62, 'steam:110000134bc8c01', 'vine', 0),
(63, 'steam:110000134bc8c01', 'whiskycoca', 0),
(64, 'steam:110000134bc8c01', 'whisky', 0),
(65, 'steam:110000134bc8c01', 'vodkafruit', 0),
(66, 'steam:110000134bc8c01', 'vodkaenergy', 0),
(67, 'steam:110000134bc8c01', 'jager', 0),
(68, 'steam:110000134bc8c01', 'jusfruit', 0),
(69, 'steam:110000134bc8c01', 'rhumfruit', 0),
(70, 'steam:110000134bc8c01', 'bolcacahuetes', 0),
(71, 'steam:110000134bc8c01', 'soda', 0),
(72, 'steam:110000134bc8c01', 'martini', 0),
(73, 'steam:110000134bc8c01', 'bolchips', 0),
(74, 'steam:110000134bc8c01', 'raisin', 0),
(75, 'steam:110000134bc8c01', 'menthe', 0),
(76, 'steam:110000134bc8c01', 'rhumcoca', 0),
(77, 'steam:110000134bc8c01', 'vodka', 0),
(78, 'steam:110000134bc8c01', 'jagercerbere', 0),
(79, 'steam:110000134bc8c01', 'ketamine', 0),
(80, 'steam:110000134bc8c01', 'weed_pooch', 0),
(81, 'steam:110000134bc8c01', 'crack_pooch', 0),
(82, 'steam:110000134bc8c01', 'methlab', 0),
(83, 'steam:110000134bc8c01', 'xanax', 0),
(84, 'steam:110000134bc8c01', 'coke_pooch', 0),
(85, 'steam:110000134bc8c01', 'meth_pooch', 0),
(86, 'steam:110000134bc8c01', 'opium_pooch', 0),
(87, 'steam:110000134bc8c01', 'weed', 0),
(88, 'steam:110000134bc8c01', 'meth', 0),
(89, 'steam:110000134bc8c01', 'acetone', 0),
(90, 'steam:110000134bc8c01', 'lithium', 0),
(91, 'steam:110000134bc8c01', 'crack', 0),
(92, 'steam:110000134bc8c01', 'ketamine_pooch', 0),
(93, 'steam:110000134bc8c01', 'billet_pooch', 0),
(94, 'steam:110000134bc8c01', 'opium', 0),
(95, 'steam:110000134bc8c01', 'billet', 0),
(96, 'steam:110000134bc8c01', 'ecstasy', 0),
(97, 'steam:110000134bc8c01', 'ecstasy_pooch', 0),
(98, 'steam:110000134bc8c01', 'coke', 0),
(99, 'steam:1100001414699fa', 'crack', 0),
(100, 'steam:1100001414699fa', 'grapperaisin', 0),
(101, 'steam:1100001414699fa', 'limonade', 0),
(102, 'steam:1100001414699fa', 'ice', 0),
(103, 'steam:1100001414699fa', 'xanax', 0),
(104, 'steam:1100001414699fa', 'weed', 0),
(105, 'steam:1100001414699fa', 'icetea', 0),
(106, 'steam:1100001414699fa', 'crack_pooch', 0),
(107, 'steam:1100001414699fa', 'bolnoixcajou', 0),
(108, 'steam:1100001414699fa', 'raisin', 0),
(109, 'steam:1100001414699fa', 'whisky', 0),
(110, 'steam:1100001414699fa', 'vine', 0),
(111, 'steam:1100001414699fa', 'billet', 0),
(112, 'steam:1100001414699fa', 'lithium', 0),
(113, 'steam:1100001414699fa', 'cartebanque', 0),
(114, 'steam:1100001414699fa', 'water', 0),
(115, 'steam:1100001414699fa', 'rhumfruit', 0),
(116, 'steam:1100001414699fa', 'vodka', 0),
(117, 'steam:1100001414699fa', 'jager', 0),
(118, 'steam:1100001414699fa', 'vodkaenergy', 0),
(119, 'steam:1100001414699fa', 'vodkafruit', 0),
(120, 'steam:1100001414699fa', 'bread', 0),
(121, 'steam:1100001414699fa', 'tequila', 0),
(122, 'steam:1100001414699fa', 'teqpaf', 0),
(123, 'steam:1100001414699fa', 'opium', 0),
(124, 'steam:1100001414699fa', 'soda', 0),
(125, 'steam:1100001414699fa', 'drpepper', 0),
(126, 'steam:1100001414699fa', 'saucisson', 0),
(127, 'steam:1100001414699fa', 'rhumcoca', 0),
(128, 'steam:1100001414699fa', 'jagerbomb', 0),
(129, 'steam:1100001414699fa', 'grand_cru', 0),
(130, 'steam:1100001414699fa', 'whiskycoca', 0),
(131, 'steam:1100001414699fa', 'jus_raisin', 0),
(132, 'steam:1100001414699fa', 'rhum', 0),
(133, 'steam:1100001414699fa', 'opium_pooch', 0),
(134, 'steam:1100001414699fa', 'jusfruit', 0),
(135, 'steam:1100001414699fa', 'acetone', 0),
(136, 'steam:1100001414699fa', 'mojito', 0),
(137, 'steam:1100001414699fa', 'methlab', 0),
(138, 'steam:1100001414699fa', 'bolchips', 0),
(139, 'steam:1100001414699fa', 'metreshooter', 0),
(140, 'steam:1100001414699fa', 'meth_pooch', 0),
(141, 'steam:1100001414699fa', 'meth', 0),
(142, 'steam:1100001414699fa', 'jagercerbere', 0),
(143, 'steam:1100001414699fa', 'energy', 0),
(144, 'steam:1100001414699fa', 'menthe', 0),
(145, 'steam:1100001414699fa', 'mixapero', 0),
(146, 'steam:1100001414699fa', 'weed_pooch', 0),
(147, 'steam:1100001414699fa', 'ecstasy', 0),
(148, 'steam:1100001414699fa', 'coke', 0),
(149, 'steam:1100001414699fa', 'ketamine_pooch', 0),
(150, 'steam:1100001414699fa', 'ecstasy_pooch', 0),
(151, 'steam:1100001414699fa', 'coke_pooch', 0),
(152, 'steam:1100001414699fa', 'ketamine', 0),
(153, 'steam:1100001414699fa', 'bolpistache', 0),
(154, 'steam:1100001414699fa', 'golem', 0),
(155, 'steam:1100001414699fa', 'bolcacahuetes', 0),
(156, 'steam:1100001414699fa', 'martini', 0),
(157, 'steam:1100001414699fa', 'billet_pooch', 0),
(158, 'steam:110000134bc8c01', 'carokit', 0),
(159, 'steam:110000134bc8c01', 'fixtool', 0),
(160, 'steam:110000134bc8c01', 'gazbottle', 0),
(161, 'steam:110000134bc8c01', 'carotool', 0),
(162, 'steam:110000134bc8c01', 'fixkit', 0),
(163, 'steam:110000134bc8c01', 'blowpipe', 0),
(164, 'steam:110000116d9cec8', 'xanax', 0),
(165, 'steam:110000116d9cec8', 'billet', 0),
(166, 'steam:110000116d9cec8', 'carotool', 0),
(167, 'steam:110000116d9cec8', 'methlab', 0),
(168, 'steam:110000116d9cec8', 'opium_pooch', 0),
(169, 'steam:110000116d9cec8', 'acetone', 0),
(170, 'steam:110000116d9cec8', 'ketamine_pooch', 0),
(171, 'steam:110000116d9cec8', 'coke_pooch', 0),
(172, 'steam:110000116d9cec8', 'billet_pooch', 0),
(173, 'steam:110000116d9cec8', 'ecstasy_pooch', 0),
(174, 'steam:110000116d9cec8', 'fixkit', 0),
(175, 'steam:110000116d9cec8', 'meth', 0),
(176, 'steam:110000116d9cec8', 'crack_pooch', 0),
(177, 'steam:110000116d9cec8', 'weed', 0),
(178, 'steam:110000116d9cec8', 'gazbottle', 0),
(179, 'steam:110000116d9cec8', 'meth_pooch', 0),
(180, 'steam:110000116d9cec8', 'ketamine', 0),
(181, 'steam:110000116d9cec8', 'weed_pooch', 0),
(182, 'steam:110000116d9cec8', 'fixtool', 0),
(183, 'steam:110000116d9cec8', 'coke', 0),
(184, 'steam:110000116d9cec8', 'carokit', 0),
(185, 'steam:110000116d9cec8', 'ecstasy', 0),
(186, 'steam:110000116d9cec8', 'blowpipe', 0),
(187, 'steam:110000116d9cec8', 'lithium', 0),
(188, 'steam:110000116d9cec8', 'crack', 0),
(189, 'steam:110000116d9cec8', 'opium', 0),
(190, 'steam:11000011657cd55', 'coke_pooch', 0),
(191, 'steam:11000011657cd55', 'ecstasy_pooch', 0),
(192, 'steam:11000011657cd55', 'coke', -9679),
(193, 'steam:11000011657cd55', 'billet_pooch', 0),
(194, 'steam:11000011657cd55', 'methlab', 0),
(195, 'steam:11000011657cd55', 'opium', 0),
(196, 'steam:11000011657cd55', 'weed_pooch', 0),
(197, 'steam:11000011657cd55', 'weed', 0),
(198, 'steam:11000011657cd55', 'grapperaisin', 0),
(199, 'steam:11000011657cd55', 'energy', 0),
(200, 'steam:11000011657cd55', 'ice', 0),
(201, 'steam:11000011657cd55', 'golem', 0),
(202, 'steam:11000011657cd55', 'lithium', 0),
(203, 'steam:11000011657cd55', 'mixapero', 0),
(204, 'steam:11000011657cd55', 'grand_cru', 0),
(205, 'steam:11000011657cd55', 'limonade', 0),
(206, 'steam:11000011657cd55', 'whiskycoca', 0),
(207, 'steam:11000011657cd55', 'ketamine_pooch', 0),
(208, 'steam:11000011657cd55', 'ecstasy', 0),
(209, 'steam:11000011657cd55', 'gazbottle', 0),
(210, 'steam:11000011657cd55', 'whisky', 0),
(211, 'steam:11000011657cd55', 'rhumfruit', 0),
(212, 'steam:11000011657cd55', 'vodka', 0),
(213, 'steam:11000011657cd55', 'crack', 0),
(214, 'steam:11000011657cd55', 'carotool', 0),
(215, 'steam:11000011657cd55', 'vodkaenergy', 0),
(216, 'steam:11000011657cd55', 'carokit', 0),
(217, 'steam:11000011657cd55', 'mojito', 0),
(218, 'steam:11000011657cd55', 'xanax', 0),
(219, 'steam:11000011657cd55', 'acetone', 0),
(220, 'steam:11000011657cd55', 'vine', 0),
(221, 'steam:11000011657cd55', 'menthe', 0),
(222, 'steam:11000011657cd55', 'billet', 0),
(223, 'steam:11000011657cd55', 'bolchips', 0),
(224, 'steam:11000011657cd55', 'blowpipe', 0),
(225, 'steam:11000011657cd55', 'meth', 0),
(226, 'steam:11000011657cd55', 'bolpistache', 0),
(227, 'steam:11000011657cd55', 'rhumcoca', 0),
(228, 'steam:11000011657cd55', 'fixkit', 0),
(229, 'steam:11000011657cd55', 'raisin', 0),
(230, 'steam:11000011657cd55', 'martini', 0),
(231, 'steam:11000011657cd55', 'bolcacahuetes', 0),
(232, 'steam:11000011657cd55', 'opium_pooch', 0),
(233, 'steam:11000011657cd55', 'ketamine', 0),
(234, 'steam:11000011657cd55', 'jus_raisin', 0),
(235, 'steam:11000011657cd55', 'water', 0),
(236, 'steam:11000011657cd55', 'drpepper', 0),
(237, 'steam:11000011657cd55', 'bolnoixcajou', 0),
(238, 'steam:11000011657cd55', 'soda', 0),
(239, 'steam:11000011657cd55', 'saucisson', 0),
(240, 'steam:11000011657cd55', 'icetea', 0),
(241, 'steam:11000011657cd55', 'teqpaf', 0),
(242, 'steam:11000011657cd55', 'cartebanque', 0),
(243, 'steam:11000011657cd55', 'vodkafruit', 0),
(244, 'steam:11000011657cd55', 'rhum', 0),
(245, 'steam:11000011657cd55', 'fixtool', 0),
(246, 'steam:11000011657cd55', 'bread', 0),
(247, 'steam:11000011657cd55', 'meth_pooch', 0),
(248, 'steam:11000011657cd55', 'crack_pooch', 0),
(249, 'steam:11000011657cd55', 'jagerbomb', 0),
(250, 'steam:11000011657cd55', 'tequila', 0),
(251, 'steam:11000011657cd55', 'jagercerbere', 0),
(252, 'steam:11000011657cd55', 'metreshooter', 0),
(253, 'steam:11000011657cd55', 'jusfruit', 0),
(254, 'steam:11000011657cd55', 'jager', 0),
(255, 'steam:11000011657cd55', 'douille', 0),
(256, 'steam:11000011657cd55', 'clip', 0),
(257, 'steam:11000011657cd55', 'poudre', 2),
(258, 'steam:11000011657cd55', 'kevlar', 0),
(259, 'steam:110000116ec2fed', 'carotool', 0),
(260, 'steam:110000116ec2fed', 'mixapero', 0),
(261, 'steam:110000116ec2fed', 'jagerbomb', 0),
(262, 'steam:110000116ec2fed', 'crack_pooch', 0),
(263, 'steam:110000116ec2fed', 'opium_pooch', 0),
(264, 'steam:110000116ec2fed', 'blowpipe', 0),
(265, 'steam:110000116ec2fed', 'vodka', 0),
(266, 'steam:110000116ec2fed', 'icetea', 0),
(267, 'steam:110000116ec2fed', 'ice', 0),
(268, 'steam:110000116ec2fed', 'methlab', 0),
(269, 'steam:110000116ec2fed', 'fixtool', 0),
(270, 'steam:110000116ec2fed', 'crack', 0),
(271, 'steam:110000116ec2fed', 'acetone', 0),
(272, 'steam:110000116ec2fed', 'opium', 0),
(273, 'steam:110000116ec2fed', 'ecstasy_pooch', 0),
(274, 'steam:110000116ec2fed', 'limonade', 0),
(275, 'steam:110000116ec2fed', 'cartebanque', 0),
(276, 'steam:110000116ec2fed', 'rhumcoca', 0),
(277, 'steam:110000116ec2fed', 'carokit', 0),
(278, 'steam:110000116ec2fed', 'billet', 0),
(279, 'steam:110000116ec2fed', 'jagercerbere', 0),
(280, 'steam:110000116ec2fed', 'fixkit', 0),
(281, 'steam:110000116ec2fed', 'golem', 0),
(282, 'steam:110000116ec2fed', 'clip', 0),
(283, 'steam:110000116ec2fed', 'lithium', 0),
(284, 'steam:110000116ec2fed', 'coke_pooch', 0),
(285, 'steam:110000116ec2fed', 'bolcacahuetes', 0),
(286, 'steam:110000116ec2fed', 'meth', 0),
(287, 'steam:110000116ec2fed', 'poudre', 0),
(288, 'steam:110000116ec2fed', 'weed', 0),
(289, 'steam:110000116ec2fed', 'xanax', 0),
(290, 'steam:110000116ec2fed', 'grapperaisin', 0),
(291, 'steam:110000116ec2fed', 'energy', 0),
(292, 'steam:110000116ec2fed', 'grand_cru', 0),
(293, 'steam:110000116ec2fed', 'bolchips', 0),
(294, 'steam:110000116ec2fed', 'ketamine_pooch', 0),
(295, 'steam:110000116ec2fed', 'bolnoixcajou', 0),
(296, 'steam:110000116ec2fed', 'vodkaenergy', 0),
(297, 'steam:110000116ec2fed', 'bread', 0),
(298, 'steam:110000116ec2fed', 'teqpaf', 0),
(299, 'steam:110000116ec2fed', 'metreshooter', 0),
(300, 'steam:110000116ec2fed', 'vine', 0),
(301, 'steam:110000116ec2fed', 'bolpistache', 0),
(302, 'steam:110000116ec2fed', 'coke', 0),
(303, 'steam:110000116ec2fed', 'rhum', 0),
(304, 'steam:110000116ec2fed', 'whiskycoca', 0),
(305, 'steam:110000116ec2fed', 'soda', 0),
(306, 'steam:110000116ec2fed', 'whisky', 0),
(307, 'steam:110000116ec2fed', 'meth_pooch', 0),
(308, 'steam:110000116ec2fed', 'weed_pooch', 0),
(309, 'steam:110000116ec2fed', 'water', 0),
(310, 'steam:110000116ec2fed', 'douille', 0),
(311, 'steam:110000116ec2fed', 'gazbottle', 0),
(312, 'steam:110000116ec2fed', 'tequila', 0),
(313, 'steam:110000116ec2fed', 'vodkafruit', 0),
(314, 'steam:110000116ec2fed', 'drpepper', 0),
(315, 'steam:110000116ec2fed', 'ecstasy', 0),
(316, 'steam:110000116ec2fed', 'raisin', 0),
(317, 'steam:110000116ec2fed', 'ketamine', 0),
(318, 'steam:110000116ec2fed', 'jusfruit', 0),
(319, 'steam:110000116ec2fed', 'menthe', 0),
(320, 'steam:110000116ec2fed', 'saucisson', 0),
(321, 'steam:110000116ec2fed', 'rhumfruit', 0),
(322, 'steam:110000116ec2fed', 'kevlar', 0),
(323, 'steam:110000116ec2fed', 'martini', 0),
(324, 'steam:110000116ec2fed', 'mojito', 0),
(325, 'steam:110000116ec2fed', 'jus_raisin', 0),
(326, 'steam:110000116ec2fed', 'billet_pooch', 0),
(327, 'steam:110000116ec2fed', 'jager', 0),
(328, 'steam:11000011657cd55', 'bandage', 0),
(329, 'steam:11000011657cd55', 'medikit', 0),
(330, 'steam:11000013736dbe2', 'vodkaenergy', 0),
(331, 'steam:11000013736dbe2', 'mojito', 0),
(332, 'steam:11000013736dbe2', 'opium_pooch', 0),
(333, 'steam:11000013736dbe2', 'jagercerbere', 0),
(334, 'steam:11000013736dbe2', 'vine', 0),
(335, 'steam:11000013736dbe2', 'ecstasy', 0),
(336, 'steam:11000013736dbe2', 'limonade', 0),
(337, 'steam:11000013736dbe2', 'billet', 0),
(338, 'steam:11000013736dbe2', 'bolchips', 0),
(339, 'steam:11000013736dbe2', 'metreshooter', 0),
(340, 'steam:11000013736dbe2', 'medikit', 0),
(341, 'steam:11000013736dbe2', 'ketamine', 0),
(342, 'steam:11000013736dbe2', 'weed_pooch', 0),
(343, 'steam:11000013736dbe2', 'lithium', 0),
(344, 'steam:11000013736dbe2', 'water', 0),
(345, 'steam:11000013736dbe2', 'saucisson', 0),
(346, 'steam:11000013736dbe2', 'golem', 0),
(347, 'steam:11000013736dbe2', 'bandage', 0),
(348, 'steam:11000013736dbe2', 'energy', 0),
(349, 'steam:11000013736dbe2', 'bolnoixcajou', 0),
(350, 'steam:11000013736dbe2', 'rhum', 0),
(351, 'steam:11000013736dbe2', 'martini', 0),
(352, 'steam:11000013736dbe2', 'acetone', 0),
(353, 'steam:11000013736dbe2', 'vodka', 0),
(354, 'steam:11000013736dbe2', 'coke', 0),
(355, 'steam:11000013736dbe2', 'carotool', 0),
(356, 'steam:11000013736dbe2', 'jagerbomb', 0),
(357, 'steam:11000013736dbe2', 'coke_pooch', 0),
(358, 'steam:11000013736dbe2', 'bolpistache', 0),
(359, 'steam:11000013736dbe2', 'gazbottle', 0),
(360, 'steam:11000013736dbe2', 'opium', 0),
(361, 'steam:11000013736dbe2', 'jusfruit', 0),
(362, 'steam:11000013736dbe2', 'ice', 0),
(363, 'steam:11000013736dbe2', 'methlab', 0),
(364, 'steam:11000013736dbe2', 'douille', 0),
(365, 'steam:11000013736dbe2', 'mixapero', 0),
(366, 'steam:11000013736dbe2', 'bread', 0),
(367, 'steam:11000013736dbe2', 'ketamine_pooch', 0),
(368, 'steam:11000013736dbe2', 'fixtool', 0),
(369, 'steam:11000013736dbe2', 'blowpipe', 0),
(370, 'steam:11000013736dbe2', 'weed', 0),
(371, 'steam:11000013736dbe2', 'jus_raisin', 0),
(372, 'steam:11000013736dbe2', 'grand_cru', 0),
(373, 'steam:11000013736dbe2', 'whiskycoca', 0),
(374, 'steam:11000013736dbe2', 'whisky', 0),
(375, 'steam:11000013736dbe2', 'vodkafruit', 0),
(376, 'steam:11000013736dbe2', 'ecstasy_pooch', 0),
(377, 'steam:11000013736dbe2', 'grapperaisin', 0),
(378, 'steam:11000013736dbe2', 'carokit', 0),
(379, 'steam:11000013736dbe2', 'soda', 0),
(380, 'steam:11000013736dbe2', 'drpepper', 0),
(381, 'steam:11000013736dbe2', 'tequila', 0),
(382, 'steam:11000013736dbe2', 'kevlar', 0),
(383, 'steam:11000013736dbe2', 'fixkit', 0),
(384, 'steam:11000013736dbe2', 'meth_pooch', 0),
(385, 'steam:11000013736dbe2', 'cartebanque', 0),
(386, 'steam:11000013736dbe2', 'poudre', 0),
(387, 'steam:11000013736dbe2', 'bolcacahuetes', 0),
(388, 'steam:11000013736dbe2', 'rhumfruit', 0),
(389, 'steam:11000013736dbe2', 'rhumcoca', 0),
(390, 'steam:11000013736dbe2', 'raisin', 0),
(391, 'steam:11000013736dbe2', 'xanax', 0),
(392, 'steam:11000013736dbe2', 'crack', 0),
(393, 'steam:11000013736dbe2', 'menthe', 0),
(394, 'steam:11000013736dbe2', 'meth', 0),
(395, 'steam:11000013736dbe2', 'crack_pooch', 0),
(396, 'steam:11000013736dbe2', 'jager', 0),
(397, 'steam:11000013736dbe2', 'teqpaf', 0),
(398, 'steam:11000013736dbe2', 'billet_pooch', 0),
(399, 'steam:11000013736dbe2', 'clip', 0),
(400, 'steam:11000013736dbe2', 'icetea', 0),
(401, 'steam:1100001476c28ad', 'menthe', 0),
(402, 'steam:1100001476c28ad', 'mixapero', 0),
(403, 'steam:1100001476c28ad', 'coke_pooch', 0),
(404, 'steam:1100001476c28ad', 'metreshooter', 0),
(405, 'steam:1100001476c28ad', 'icetea', 0),
(406, 'steam:1100001476c28ad', 'cartebanque', 0),
(407, 'steam:1100001476c28ad', 'rhumcoca', 0),
(408, 'steam:1100001476c28ad', 'coke', 0),
(409, 'steam:1100001476c28ad', 'drpepper', 0),
(410, 'steam:1100001476c28ad', 'lithium', 0),
(411, 'steam:1100001476c28ad', 'clip', 0),
(412, 'steam:1100001476c28ad', 'meth_pooch', 0),
(413, 'steam:1100001476c28ad', 'bolpistache', 0),
(414, 'steam:1100001476c28ad', 'acetone', 0),
(415, 'steam:1100001476c28ad', 'limonade', 0),
(416, 'steam:1100001476c28ad', 'grand_cru', 0),
(417, 'steam:1100001476c28ad', 'douille', 0),
(418, 'steam:1100001476c28ad', 'bolnoixcajou', 0),
(419, 'steam:1100001476c28ad', 'rhum', 0),
(420, 'steam:1100001476c28ad', 'billet', 0),
(421, 'steam:1100001476c28ad', 'golem', 0),
(422, 'steam:1100001476c28ad', 'vodka', 0),
(423, 'steam:1100001476c28ad', 'grapperaisin', 0),
(424, 'steam:1100001476c28ad', 'jagerbomb', 0),
(425, 'steam:1100001476c28ad', 'whiskycoca', 0),
(426, 'steam:1100001476c28ad', 'raisin', 0),
(427, 'steam:1100001476c28ad', 'ecstasy', 0),
(428, 'steam:1100001476c28ad', 'bolchips', 0),
(429, 'steam:1100001476c28ad', 'bolcacahuetes', 0),
(430, 'steam:1100001476c28ad', 'vodkaenergy', 0),
(431, 'steam:1100001476c28ad', 'opium', 0),
(432, 'steam:1100001476c28ad', 'martini', 0),
(433, 'steam:1100001476c28ad', 'ketamine_pooch', 0),
(434, 'steam:1100001476c28ad', 'bandage', 0),
(435, 'steam:1100001476c28ad', 'jusfruit', 0),
(436, 'steam:1100001476c28ad', 'mojito', 0),
(437, 'steam:1100001476c28ad', 'kevlar', 0),
(438, 'steam:1100001476c28ad', 'methlab', 0),
(439, 'steam:1100001476c28ad', 'medikit', 0),
(440, 'steam:1100001476c28ad', 'whisky', 0),
(441, 'steam:1100001476c28ad', 'meth', 0),
(442, 'steam:1100001476c28ad', 'poudre', 0),
(443, 'steam:1100001476c28ad', 'bread', 0),
(444, 'steam:1100001476c28ad', 'xanax', 0),
(445, 'steam:1100001476c28ad', 'weed_pooch', 0),
(446, 'steam:1100001476c28ad', 'jus_raisin', 0),
(447, 'steam:1100001476c28ad', 'ice', 0),
(448, 'steam:1100001476c28ad', 'weed', 0),
(449, 'steam:1100001476c28ad', 'ketamine', 0),
(450, 'steam:1100001476c28ad', 'billet_pooch', 0),
(451, 'steam:1100001476c28ad', 'fixkit', 0),
(452, 'steam:1100001476c28ad', 'vodkafruit', 0),
(453, 'steam:1100001476c28ad', 'vine', 0),
(454, 'steam:1100001476c28ad', 'tequila', 0),
(455, 'steam:1100001476c28ad', 'teqpaf', 0),
(456, 'steam:1100001476c28ad', 'crack_pooch', 0),
(457, 'steam:1100001476c28ad', 'soda', 0),
(458, 'steam:1100001476c28ad', 'rhumfruit', 0),
(459, 'steam:1100001476c28ad', 'carokit', 0),
(460, 'steam:1100001476c28ad', 'water', 0),
(461, 'steam:1100001476c28ad', 'jager', 0),
(462, 'steam:1100001476c28ad', 'ecstasy_pooch', 0),
(463, 'steam:1100001476c28ad', 'fixtool', 0),
(464, 'steam:1100001476c28ad', 'carotool', 0),
(465, 'steam:1100001476c28ad', 'opium_pooch', 0),
(466, 'steam:1100001476c28ad', 'gazbottle', 0),
(467, 'steam:1100001476c28ad', 'jagercerbere', 0),
(468, 'steam:1100001476c28ad', 'saucisson', 0),
(469, 'steam:1100001476c28ad', 'crack', 0),
(470, 'steam:1100001476c28ad', 'energy', 0),
(471, 'steam:1100001476c28ad', 'blowpipe', 0),
(472, 'steam:11000011657cd55', 'sprite', 0),
(473, 'steam:11000011657cd55', 'cookie', 0),
(474, 'steam:11000011657cd55', 'hamburger', 0),
(475, 'steam:11000011657cd55', 'fanta', 0),
(476, 'steam:11000011657cd55', 'wrap', 0),
(477, 'steam:11000011657cd55', 'oasis', 0),
(478, 'steam:11000011657cd55', 'kiwi', 0),
(479, 'steam:11000011657cd55', 'orangina', 0),
(480, 'steam:11000011657cd55', 'pain', 0),
(481, 'steam:11000011657cd55', 'shwepps', 0),
(482, 'steam:11000011657cd55', 'pizza', 0),
(483, 'steam:11000011657cd55', 'poulet', 0),
(484, 'steam:11000011657cd55', 'coca', 0),
(485, 'steam:110000140392faa', 'cookie', 0),
(486, 'steam:110000140392faa', 'kevlar', 0),
(487, 'steam:110000140392faa', 'wrap', 0),
(488, 'steam:110000140392faa', 'blowpipe', 0),
(489, 'steam:110000140392faa', 'opium', 0),
(490, 'steam:110000140392faa', 'xanax', 0),
(491, 'steam:110000140392faa', 'vodkaenergy', 0),
(492, 'steam:110000140392faa', 'gazbottle', 0),
(493, 'steam:110000140392faa', 'water', 0),
(494, 'steam:110000140392faa', 'raisin', 0),
(495, 'steam:110000140392faa', 'rhumfruit', 0),
(496, 'steam:110000140392faa', 'orangina', 0),
(497, 'steam:110000140392faa', 'bandage', 0),
(498, 'steam:110000140392faa', 'poudre', 0),
(499, 'steam:110000140392faa', 'medikit', 0),
(500, 'steam:110000140392faa', 'jusfruit', 0),
(501, 'steam:110000140392faa', 'ice', 0),
(502, 'steam:110000140392faa', 'oasis', 0),
(503, 'steam:110000140392faa', 'martini', 0),
(504, 'steam:110000140392faa', 'tequila', 0),
(505, 'steam:110000140392faa', 'mixapero', 0),
(506, 'steam:110000140392faa', 'rhum', 0),
(507, 'steam:110000140392faa', 'lithium', 0),
(508, 'steam:110000140392faa', 'bolnoixcajou', 0),
(509, 'steam:110000140392faa', 'crack_pooch', 0),
(510, 'steam:110000140392faa', 'fanta', 0),
(511, 'steam:110000140392faa', 'golem', 0),
(512, 'steam:110000140392faa', 'teqpaf', 0),
(513, 'steam:110000140392faa', 'cartebanque', 0),
(514, 'steam:110000140392faa', 'soda', 0),
(515, 'steam:110000140392faa', 'crack', 0),
(516, 'steam:110000140392faa', 'billet_pooch', 0),
(517, 'steam:110000140392faa', 'bread', 0),
(518, 'steam:110000140392faa', 'grand_cru', 0),
(519, 'steam:110000140392faa', 'energy', 0),
(520, 'steam:110000140392faa', 'icetea', 0),
(521, 'steam:110000140392faa', 'jus_raisin', 0),
(522, 'steam:110000140392faa', 'pain', 0),
(523, 'steam:110000140392faa', 'whiskycoca', 0),
(524, 'steam:110000140392faa', 'ketamine', 0),
(525, 'steam:110000140392faa', 'fixkit', 0),
(526, 'steam:110000140392faa', 'weed_pooch', 0),
(527, 'steam:110000140392faa', 'coke', 0),
(528, 'steam:110000140392faa', 'weed', 0),
(529, 'steam:110000140392faa', 'shwepps', 0),
(530, 'steam:110000140392faa', 'meth', 0),
(531, 'steam:110000140392faa', 'kiwi', 0),
(532, 'steam:110000140392faa', 'vodkafruit', 0),
(533, 'steam:110000140392faa', 'methlab', 0),
(534, 'steam:110000140392faa', 'ecstasy_pooch', 0),
(535, 'steam:110000140392faa', 'jager', 0),
(536, 'steam:110000140392faa', 'sprite', 0),
(537, 'steam:110000140392faa', 'whisky', 0),
(538, 'steam:110000140392faa', 'vine', 0),
(539, 'steam:110000140392faa', 'coca', 0),
(540, 'steam:110000140392faa', 'ecstasy', 0),
(541, 'steam:110000140392faa', 'carokit', 0),
(542, 'steam:110000140392faa', 'ketamine_pooch', 0),
(543, 'steam:110000140392faa', 'rhumcoca', 0),
(544, 'steam:110000140392faa', 'metreshooter', 0),
(545, 'steam:110000140392faa', 'opium_pooch', 0),
(546, 'steam:110000140392faa', 'poulet', 0),
(547, 'steam:110000140392faa', 'carotool', 0),
(548, 'steam:110000140392faa', 'bolchips', 0),
(549, 'steam:110000140392faa', 'drpepper', 0),
(550, 'steam:110000140392faa', 'jagerbomb', 0),
(551, 'steam:110000140392faa', 'pizza', 0),
(552, 'steam:110000140392faa', 'mojito', 0),
(553, 'steam:110000140392faa', 'fixtool', 0),
(554, 'steam:110000140392faa', 'acetone', 0),
(555, 'steam:110000140392faa', 'bolpistache', 0),
(556, 'steam:110000140392faa', 'clip', 0),
(557, 'steam:110000140392faa', 'saucisson', 0),
(558, 'steam:110000140392faa', 'grapperaisin', 0),
(559, 'steam:110000140392faa', 'billet', 0),
(560, 'steam:110000140392faa', 'limonade', 0),
(561, 'steam:110000140392faa', 'vodka', 0),
(562, 'steam:110000140392faa', 'jagercerbere', 0),
(563, 'steam:110000140392faa', 'menthe', 0),
(564, 'steam:110000140392faa', 'bolcacahuetes', 0),
(565, 'steam:110000140392faa', 'hamburger', 0),
(566, 'steam:110000140392faa', 'meth_pooch', 0),
(567, 'steam:110000140392faa', 'douille', 0),
(568, 'steam:110000140392faa', 'coke_pooch', 0);

-- --------------------------------------------------------

--
-- Structure de la table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user_policearmory`
--

CREATE TABLE `user_policearmory` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weapons` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Structure de la table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `warrants_list`
--

CREATE TABLE `warrants_list` (
  `id` int(11) NOT NULL,
  `json_data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Index pour la table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Index pour la table `appels_ems`
--
ALTER TABLE `appels_ems`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `arrests_list`
--
ALTER TABLE `arrests_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `bolos_list`
--
ALTER TABLE `bolos_list`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Index pour la table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jsfour_criminalrecord`
--
ALTER TABLE `jsfour_criminalrecord`
  ADD PRIMARY KEY (`offense`);

--
-- Index pour la table `jsfour_criminaluserinfo`
--
ALTER TABLE `jsfour_criminaluserinfo`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Index pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Index pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_policearmory`
--
ALTER TABLE `user_policearmory`
  ADD PRIMARY KEY (`identifier`);

--
-- Index pour la table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Index pour la table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Index pour la table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Index pour la table `warrants_list`
--
ALTER TABLE `warrants_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `appels_ems`
--
ALTER TABLE `appels_ems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `arrests_list`
--
ALTER TABLE `arrests_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bolos_list`
--
ALTER TABLE `bolos_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pour la table `fine_types_ballas`
--
ALTER TABLE `fine_types_ballas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `fine_types_families`
--
ALTER TABLE `fine_types_families`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `fine_types_vagos`
--
ALTER TABLE `fine_types_vagos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1616;

--
-- AUTO_INCREMENT pour la table `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT pour la table `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT pour la table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `user_inventory`
--
ALTER TABLE `user_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT pour la table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `warrants_list`
--
ALTER TABLE `warrants_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
