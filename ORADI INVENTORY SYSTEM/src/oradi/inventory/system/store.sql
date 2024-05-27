-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 mai 2024 à 12:00
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `store`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Product_Name` varchar(50) NOT NULL,
  `Bar_code` varchar(50) NOT NULL,
  `Qty` varchar(100) NOT NULL,
  `Unit_Price` varchar(50) NOT NULL,
  `Total_Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_code`, `Qty`, `Unit_Price`, `Total_Price`) VALUES
(27, 3, 'rebeca', '12223', '8', '12000', '96000.0'),
(28, 3, 'rebeca', '12223', '8', '12000', '96000.0'),
(29, 3, 'rebeca', '12223', '8', '12000', '96000.0'),
(30, 3, 'simon', '12223', '9', '12000', '108000.0'),
(32, 3, 'simon', '12223', '9', '12000', '108000.0'),
(33, 3, 'simon', '12223', '9', '12000', '108000.0'),
(34, 3, 'simon', '12223', '5', '12000', '60000.0'),
(35, 3, 'simon', '12223', '5', '12000', '60000.0'),
(36, 3, 'simon', '12223', '5', '12000', '60000.0'),
(37, 3, 'simon', '12223', '5', '12000', '60000.0'),
(38, 4, 'simon', '12223', '2', '12000', '24000.0'),
(39, 4, 'simon', '12223', '2', '12000', '24000.0'),
(40, 4, 'simon', '12223', '2', '12000', '24000.0'),
(41, 4, 'simon', '12223', '2', '12000', '24000.0'),
(42, 6, 'rita', '12223', '7', '12000', '84000.0'),
(43, 6, 'rita', '12223', '7', '12000', '84000.0'),
(44, 6, 'rita', '12223', '7', '12000', '84000.0'),
(45, 6, 'rita', '12223', '7', '12000', '84000.0'),
(46, 4, 'rita', '12223', '5', '12000', '60000.0'),
(47, 4, 'rita', '12223', '5', '12000', '60000.0'),
(48, 4, 'rita', '12223', '5', '12000', '60000.0'),
(49, 4, 'simon', '12223', '8', '12000', '96000.0'),
(50, 4, 'simon', '12223', '8', '12000', '96000.0'),
(51, 4, 'simon', '12223', '8', '12000', '96000.0'),
(52, 4, 'simon', '12223', '8', '12000', '96000.0'),
(53, 4, 'simon', '12223', '8', '12000', '96000.0'),
(54, 4, 'simon', '12223', '8', '12000', '96000.0'),
(55, 4, 'simon', '12223', '8', '12000', '96000.0'),
(56, 4, 'simon', '12223', '8', '12000', '96000.0'),
(57, 4, 'simon', '12223', '8', '12000', '96000.0'),
(58, 4, 'simon', '12223', '5', '12000', '60000.0'),
(59, 4, 'simon', '12223', '5', '12000', '60000.0'),
(60, 4, 'titi', '65665', '10', '10000', '100000.0'),
(61, 4, 'titi', '65665', '10', '10000', '100000.0'),
(62, 4, 'titi', '65665', '10', '10000', '100000.0'),
(63, 4, 'rebeca', '12223', '5', '12000', '60000.0'),
(64, 4, 'rebeca', '12223', '5', '12000', '60000.0'),
(65, 4, 'rebeca', '12223', '5', '12000', '60000.0'),
(66, 4, 'rebeca', '12223', '5', '12000', '60000.0'),
(67, 4, 'simon', '12223', '3', '12000', '36000.0'),
(68, 4, 'simon', '12223', '3', '12000', '36000.0'),
(69, 4, 'simon', '12223', '3', '12000', '36000.0');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Tp_Number` int(10) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `CONTACT_PERSON` varchar(50) NOT NULL,
  `MOBILE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`CustomerID`, `Name`, `Tp_Number`, `ADDRESS`, `TYPE`, `CONTACT_PERSON`, `MOBILE`) VALUES
(1, 'yuuu', 899, '', '', '', ''),
(2, 'vgghgh', 567, '', '', '', ''),
(3, 'ppoiu', 97, '', '', '', ''),
(4, 'uuuu', 908, '', '', '', ''),
(5, 'uuuu', 908, '', '', '', ''),
(6, 'HELP', 899, 'il', 'uv', 'YOO', '67876'),
(7, 'HELP', 899, 'POP', 'HZH', 'YOO', '67876');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE `employee` (
  `eid` int(11) NOT NULL,
  `Employee_name` varchar(50) NOT NULL,
  `Tp_number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`eid`, `Employee_name`, `Tp_number`) VALUES
(1, 'kerin ', '123454'),
(2, 'wilfrid ', '654383'),
(3, 'mary', '097565');

-- --------------------------------------------------------

--
-- Structure de la table `extra`
--

CREATE TABLE `extra` (
  `exID` int(11) NOT NULL,
  `val` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `extra`
--

INSERT INTO `extra` (`exID`, `val`) VALUES
(1, '4');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `Product_name` varchar(50) NOT NULL,
  `Bar_code` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`pid`, `Product_name`, `Bar_code`, `Price`, `Qty`, `Sid`) VALUES
(1, 'titi', '65665', '10000', '12', 2),
(2, 'simon', '12223', '12000', '21', 3),
(3, 'rita', '12223', '12000', '21', 3),
(4, 'rebeca', '12223', '12000', '21', 3);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL,
  `INID` int(50) NOT NULL,
  `Cid` int(50) NOT NULL,
  `Customer_Name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sales_info`
--

CREATE TABLE `sales_info` (
  `saleid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Customer_Name` varchar(50) NOT NULL,
  `Total_Qty` varchar(10) NOT NULL,
  `Total_Bill` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Balance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `Supplier_name` varchar(50) DEFAULT NULL,
  `Tp_number` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `supplier`
--

INSERT INTO `supplier` (`sid`, `Supplier_name`, `Tp_number`) VALUES
(1, 'ric', '43224'),
(2, 'wilford', '43244'),
(3, 'nicolas', '56444');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Index pour la table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Index pour la table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`exID`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Index pour la table `sales_info`
--
ALTER TABLE `sales_info`
  ADD PRIMARY KEY (`saleid`);

--
-- Index pour la table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `extra`
--
ALTER TABLE `extra`
  MODIFY `exID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sales_info`
--
ALTER TABLE `sales_info`
  MODIFY `saleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
