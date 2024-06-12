-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 11 juin 2024 à 16:47
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

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
  `qty` int(20) NOT NULL,
  `Unit_Price` varchar(20) NOT NULL,
  `Total_Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`cartid`, `INID`, `Product_Name`, `Bar_code`, `qty`, `Unit_Price`, `Total_Price`) VALUES
(1, 0, 'book', '263738', 3, '900', '2700.0'),
(2, 0, 'book', '263738', 7, '900', '6300.0'),
(3, 0, 'book', '263738', 7, '900', '6300.0'),
(4, 0, 'book', '263738', 7, '900', '6300.0'),
(5, 0, 'book', '263738', 7, '900', '6300.0'),
(6, 0, 'book', '263738', 7, '900', '6300.0'),
(7, 0, 'book', '263738', 7, '900', '6300.0'),
(8, 1, 'book', '263738', 4, '900', '3600.0'),
(9, 1, 'book', '263738', 4, '900', '3600.0');

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
  `Tp_number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `employee`
--

INSERT INTO `employee` (`eid`, `Employee_name`, `Tp_number`) VALUES
(1, 'RANDY', 1245),
(2, 'STEVEN', 12345),
(3, 'Oliver', 12345),
(5, 'wilfrid', 12345),
(6, 'williams', 12345),
(7, 'willy', 12345),
(8, 'michael', 12345);

-- --------------------------------------------------------

--
-- Structure de la table `extra`
--

CREATE TABLE `extra` (
  `exid` int(11) NOT NULL,
  `val` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `extra`
--

INSERT INTO `extra` (`exid`, `val`) VALUES
(1, '3');

-- --------------------------------------------------------

--
-- Structure de la table `msginfo`
--

CREATE TABLE `msginfo` (
  `ID` int(11) NOT NULL,
  `Msg` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `Product_name` varchar(50) NOT NULL,
  `Bar_code` varchar(20) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Qty` varchar(10) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`ID`, `Product_name`, `Bar_code`, `Price`, `Qty`, `Sid`) VALUES
(1, 'Spoon', '215678', '200', '4', 1),
(2, 'book', '263738', '900', '9', 1),
(3, 'book', '263738', '900', '9', 1),
(4, 'car', '12345672724', '90000000', '1', 8);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
  `saleid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `Cid` int(11) NOT NULL,
  `Customer_name` varchar(10) NOT NULL,
  `Total_Qyt` varchar(10) NOT NULL,
  `Total_bill` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Balance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`saleid`, `INID`, `Cid`, `Customer_name`, `Total_Qyt`, `Total_bill`, `Status`, `Balance`) VALUES
(1, 0, 0, 'vgghgh', '14.0', '6300.0', 'UNPAID', -12600),
(2, 0, 0, 'ppoiu', '14.0', '6300.0', 'UNPAID', -12600),
(3, 1, 0, 'ppoiu', '8.0', '3600.0', 'Partial', 694);

-- --------------------------------------------------------

--
-- Structure de la table `supplier`
--

CREATE TABLE `supplier` (
  `sid` int(11) NOT NULL,
  `Supplier_name` varchar(50) DEFAULT NULL,
  `Tp_number` varchar(11) DEFAULT NULL,
  `Billing_address` varchar(40) NOT NULL,
  `Shipping_address` varchar(40) NOT NULL,
  `Bank_Account` varchar(40) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Contact_Name` varchar(40) NOT NULL,
  `Contact_Person` varchar(40) NOT NULL,
  `Contact_Tp` varchar(40) NOT NULL,
  `Contact_Email` varchar(40) NOT NULL,
  `Contact_online` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `supplier`
--

INSERT INTO `supplier` (`sid`, `Supplier_name`, `Tp_number`, `Billing_address`, `Shipping_address`, `Bank_Account`, `City`, `Contact_Name`, `Contact_Person`, `Contact_Tp`, `Contact_Email`, `Contact_online`) VALUES
(1, 'ric', '43224', 'FRCDRXS', 'RDTFY', 'YTFRYT', 'RDXDC', 'TRTDSR', 'YRDY', 'RSWR', 'GEXDSXSR', '5REDS'),
(2, 'wilford', '43244', '', '', '', '', '', '', '', '', ''),
(3, 'nicolas', '56444', '', '', '', '', '', '', '', '', ''),
(4, 'ric', '43224', 'YTFRYT', 'RDTFY', 'YTFRYT', 'RDXDC', 'TRTDSR', 'YRDY', '', 'GEXDSXSR', '5REDS'),
(5, 'ric', '43224', 'YTFRYT', 'RDTFY', 'YTFRYT', 'RDXDC', 'TRTDSR', 'YRDY', '', 'GEXDSXSR', '5REDS');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userID`, `Name`, `Email`, `Password`) VALUES
(1, ' Oliver', 'fhhfhfhfh', 'randy'),
(2, 'shnjksnj', 'Rody', 'RODIMINOSO'),
(3, 'randy', 'fingon', 'SIS');

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
-- Index pour la table `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`exid`);

--
-- Index pour la table `msginfo`
--
ALTER TABLE `msginfo`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`saleid`);

--
-- Index pour la table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sid`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `extra`
--
ALTER TABLE `extra`
  MODIFY `exid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `msginfo`
--
ALTER TABLE `msginfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
  MODIFY `saleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
