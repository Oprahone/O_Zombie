-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 09 Février 2015 à 14:00
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `game`
--

-- --------------------------------------------------------

--
-- Structure de la table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caserne_lvl1_z_b` int(11) NOT NULL,
  `caserne_lvl1_z_ao` int(11) NOT NULL,
  `caserne_lvl1_z_e` int(11) NOT NULL,
  `caserne_lvl1_z_c` int(11) NOT NULL,
  `caserne_lvl2_z_b` int(11) NOT NULL,
  `caserne_lvl2_z_ao` int(11) NOT NULL,
  `caserne_lvl2_z_e` int(11) NOT NULL,
  `caserne_lvl2_z_c` int(11) NOT NULL,
  `caserne_lvl3_z_b` int(11) NOT NULL,
  `caserne_lvl3_z_ao` int(11) NOT NULL,
  `caserne_lvl3_z_e` int(11) NOT NULL,
  `caserne_lvl3_z_c` int(11) NOT NULL,
  `caserne_lvl4_z_b` int(11) NOT NULL,
  `caserne_lvl4_z_ao` int(11) NOT NULL,
  `caserne_lvl4_z_e` int(11) NOT NULL,
  `caserne_lvl4_z_c` int(11) NOT NULL,
  `caserne_lvl5_z_b` int(11) NOT NULL,
  `caserne_lvl5_z_ao` int(11) NOT NULL,
  `caserne_lvl5_z_e` int(11) NOT NULL,
  `caserne_lvl5_z_c` int(11) NOT NULL,
  `usine_lvl1_z_b` int(11) NOT NULL,
  `usine_lvl1_z_ao` int(11) NOT NULL,
  `usine_lvl1_z_e` int(11) NOT NULL,
  `usine_lvl1_z_c` int(11) NOT NULL,
  `usine_lvl2_z_b` int(11) NOT NULL,
  `usine_lvl2_z_ao` int(11) NOT NULL,
  `usine_lvl2_z_e` int(11) NOT NULL,
  `usine_lvl2_z_c` int(11) NOT NULL,
  `usine_lvl3_z_b` int(11) NOT NULL,
  `usine_lvl3_z_ao` int(11) NOT NULL,
  `usine_lvl3_z_e` int(11) NOT NULL,
  `usine_lvl3_z_c` int(11) NOT NULL,
  `usine_lvl4_z_b` int(11) NOT NULL,
  `usine_lvl4_z_ao` int(11) NOT NULL,
  `usine_lvl4_z_e` int(11) NOT NULL,
  `usine_lvl4_z_c` int(11) NOT NULL,
  `usine_lvl5_z_b` int(11) NOT NULL,
  `usine_lvl5_z_ao` int(11) NOT NULL,
  `usine_lvl5_z_e` int(11) NOT NULL,
  `usine_lvl5_z_c` int(11) NOT NULL,
  `desosseur_lvl1_z_b` int(11) NOT NULL,
  `desosseur_lvl1_z_ao` int(11) NOT NULL,
  `desosseur_lvl1_z_e` int(11) NOT NULL,
  `desosseur_lvl1_z_c` int(11) NOT NULL,
  `desosseur_lvl2_z_b` int(11) NOT NULL,
  `desosseur_lvl2_z_ao` int(11) NOT NULL,
  `desosseur_lvl2_z_e` int(11) NOT NULL,
  `desosseur_lvl2_z_c` int(11) NOT NULL,
  `desosseur_lvl3_z_b` int(11) NOT NULL,
  `desosseur_lvl3_z_ao` int(11) NOT NULL,
  `desosseur_lvl3_z_e` int(11) NOT NULL,
  `desosseur_lvl3_z_c` int(11) NOT NULL,
  `desosseur_lvl4_z_b` int(11) NOT NULL,
  `desosseur_lvl4_z_ao` int(11) NOT NULL,
  `desosseur_lvl4_z_e` int(11) NOT NULL,
  `desosseur_lvl4_z_c` int(11) NOT NULL,
  `desosseur_lvl5_z_b` int(11) NOT NULL,
  `desosseur_lvl5_z_ao` int(11) NOT NULL,
  `desosseur_lvl5_z_e` int(11) NOT NULL,
  `desosseur_lvl5_z_c` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `ressources`
--

CREATE TABLE IF NOT EXISTS `ressources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `r_humain` int(11) NOT NULL,
  `r_meat` int(11) NOT NULL,
  `r_os` int(11) NOT NULL,
  `r_bile` int(11) NOT NULL,
  `b_crypt` int(11) NOT NULL,
  `b_labo` int(11) NOT NULL,
  `b_abattoire` int(11) NOT NULL,
  `b_desosseur` int(11) NOT NULL,
  `b_usine` int(11) NOT NULL,
  `z_basique` int(11) NOT NULL,
  `z_enos` int(11) NOT NULL,
  `z_explosif` int(11) NOT NULL,
  `z_cracheur` int(11) NOT NULL,
  `z_mastodonte` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `ref` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
