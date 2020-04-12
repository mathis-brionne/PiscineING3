-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 12 avr. 2020 à 13:03
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projeting3`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE IF NOT EXISTS `achat` (
  `ID_Achat` int(11) NOT NULL,
  `Nom_Article` date NOT NULL,
  `Date_Achat` date NOT NULL,
  PRIMARY KEY (`ID_Achat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
CREATE TABLE IF NOT EXISTS `adresse` (
  `Nom_Prenom` varchar(64) NOT NULL,
  `Ligne 1` text NOT NULL,
  `Ligne 2` text NOT NULL,
  `Ville` varchar(32) NOT NULL,
  `Code_Postal` int(11) NOT NULL,
  `Pays` varchar(32) NOT NULL,
  `Num_Tel` int(11) NOT NULL,
  PRIMARY KEY (`Nom_Prenom`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `ID_Article` int(11) NOT NULL,
  `Nom_Article` text NOT NULL,
  `Description` text NOT NULL,
  `Prix` int(11) NOT NULL,
  `Photos` varchar(64) NOT NULL,
  `Catégorie` int(11) NOT NULL,
  `Type_Annonce` int(11) NOT NULL,
  PRIMARY KEY (`ID_Article`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `boutique`
--

DROP TABLE IF EXISTS `boutique`;
CREATE TABLE IF NOT EXISTS `boutique` (
  `Nom_Boutique` varchar(32) NOT NULL,
  `Photo_Profil` varchar(64) NOT NULL,
  `Photo_Fond` varchar(64) NOT NULL,
  PRIMARY KEY (`Nom_Boutique`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enchere`
--

DROP TABLE IF EXISTS `enchere`;
CREATE TABLE IF NOT EXISTS `enchere` (
  `ID_Enchere` int(11) NOT NULL,
  `Prix` int(11) NOT NULL,
  PRIMARY KEY (`ID_Enchere`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `moyen_paiement`
--

DROP TABLE IF EXISTS `moyen_paiement`;
CREATE TABLE IF NOT EXISTS `moyen_paiement` (
  `Nom_affiche` varchar(32) NOT NULL,
  `Type` varchar(16) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Date_Exp` date NOT NULL,
  `Code_Secu` int(11) NOT NULL,
  PRIMARY KEY (`Nom_affiche`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `Pseudo` varchar(16) NOT NULL,
  `Adresse_email` varchar(64) NOT NULL,
  `Mot_Passe` varchar(16) NOT NULL,
  `Nom_Prenom` varchar(32) NOT NULL,
  PRIMARY KEY (`Pseudo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
