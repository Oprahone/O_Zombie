-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 09 Février 2015 à 15:09
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
  `caserne_lvl1_vit` int(11) NOT NULL,
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
-- Structure de la table `data_0`
--

CREATE TABLE IF NOT EXISTS `data_0` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `caserne_lvl1_z_b` int(11) NOT NULL,
  `caserne_lvl1_vit` int(11) NOT NULL,
  `abattoir_lvl1_mdv` int(11) NOT NULL,
  `z_b_lvl1_mdv` int(11) NOT NULL,
  `z_b_lvl1_att` int(11) NOT NULL,
  `z_b_lvl1_def` int(11) NOT NULL,
  `z_b_lvl1_pv` int(11) NOT NULL,
  `z_b_lvl1_vit` int(11) NOT NULL,
  `z_b_lvl1_mov` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `data_0`
--

INSERT INTO `data_0` (`id`, `caserne_lvl1_z_b`, `caserne_lvl1_vit`, `abattoir_lvl1_mdv`, `z_b_lvl1_mdv`, `z_b_lvl1_att`, `z_b_lvl1_def`, `z_b_lvl1_pv`, `z_b_lvl1_vit`, `z_b_lvl1_mov`) VALUES
(1, 10, 10, 10, 10, 10, 1, 100, 10, 10);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `ressources`
--

INSERT INTO `ressources` (`id`, `r_humain`, `r_meat`, `r_os`, `r_bile`, `b_crypt`, `b_labo`, `b_abattoire`, `b_desosseur`, `b_usine`, `z_basique`, `z_enos`, `z_explosif`, `z_cracheur`, `z_mastodonte`) VALUES
(1, 0, 100, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 0, 100, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `userdata`
--

INSERT INTO `userdata` (`id`, `nom`, `email`, `password`) VALUES
(1, 'thomas', 'good@rzie', 'osef'),
(2, 'levani', 'kvali@shvili', 'osef');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
