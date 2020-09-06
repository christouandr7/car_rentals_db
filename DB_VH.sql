-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2018 at 08:35 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DB_Vehicles_Rentals`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(10) NOT NULL,
  `IRS_Number` int(9) NOT NULL,
  `Social_Security_Number` bigint(11) NOT NULL,
  `Last_Name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `First_Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Driver_License` bigint(15) DEFAULT NULL,
  `First_Registration` date NOT NULL,
  `City` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Postal_Code` int(5) NOT NULL,
  `Street` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Street_Number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `IRS_Number`, `Social_Security_Number`, `Last_Name`, `First_Name`, `Driver_License`, `First_Registration`, `City`, `Postal_Code`, `Street`, `Street_Number`) VALUES
(1, 155780500, 20019403896, 'Georgiou', 'Andreas', 938292113, '2017-02-15', 'Athens', 15773, 'Iroon Polytechniou', 20),
(2, 155780501, 20019410000, 'Papadopoulos', 'Georgios', 101201022, '2016-08-11', 'Athens', 15773, 'Iroon Polytechniou', 45),
(3, 155780502, 20019410001, 'Christou', 'Polykarpos', 938292123, '2013-09-12', 'Athens', 15333, 'Karaiskaki', 14),
(4, 155780503, 20019410003, 'Papadopoulos', 'Nikolas', 101010421, '2015-05-15', 'Patra', 10000, 'Mapalo', 15),
(5, 200194202, 20019310000, 'Charalambous', 'Andreas', 938292116, '2016-01-11', 'Thessaloniki', 12000, 'Praxitelous', 150),
(6, 200195201, 20059200100, 'Georgiou', 'Ioannis', 938192111, '2016-04-11', 'Athens', 14000, 'Athinon', 41),
(7, 155780505, 20019410005, 'Alexandrou', 'Georgios', 938192113, '2016-01-14', 'Heraklion', 2000, 'Kolokotroni', 32),
(8, 155780508, 20019410010, 'Theodorou', 'Nikolas', 938193313, '2016-01-22', 'Heraklion', 2001, 'Karaiskaki', 45),
(9, 155780511, 20019410020, 'Alexandrou', 'Polykarpos', 934563313, '2012-02-14', 'Patra', 1221, 'Filikis Etairias', 21),
(10, 203334201, 13331012203, NULL, 'Whiskey LTD', NULL, '2011-01-14', 'Athens', 15333, 'Filokratous', 55),
(11, 155780525, 20028509876, 'Koukis', 'Apostolos', 911563313, '2013-09-11', 'Thessaloniki', 2222, 'Arianon', 11),
(12, 155780545, 25029610000, 'Charilaou', 'Eleni', 911563113, '2013-09-11', 'Athens', 20000, 'Mapalo', 22),
(13, 155780560, 15059420987, 'Alexandrou', 'Apostolos', 140101332, '2014-09-11', 'Patra', 1111, 'Arianon', 123),
(14, 155780402, 10109510000, 'Charalambous', 'Eleni', 101513322, '2013-09-11', 'Heraklion', 12000, 'Athinon', 123),
(15, 155770500, 20019405596, 'Georgiou', 'Maria', 101077225, '2013-09-11', 'Rhodes', 12000, 'Arianon', 155);

-- --------------------------------------------------------

--
-- Table structure for table `email_address`
--

CREATE TABLE `email_address` (
  `Store_ID` int(11) NOT NULL,
  `Email_Address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_address`
--

INSERT INTO `email_address` (`Store_ID`, `Email_Address`) VALUES
(1, 'st1@gmail.com'),
(2, 'st2@gmail.com'),
(3, 'st3@gmail.com'),
(4, 'st4@gmail.com'),
(5, 'st5@gmail.com'),
(4, 'st4sec@gmail.com'),
(1, 'st1second@gmail.com'),
(5, 'st5sec@hotmail.com'),
(2, 'st2papa@yahoo.gr'),
(3, 'st3kara@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `IRS_Number` int(9) NOT NULL,
  `Social_Security_Number` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Driver_License` int(15) NOT NULL,
  `First_Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Last_Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Street` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Street_Number` int(3) NOT NULL,
  `Postal_Code` int(5) NOT NULL,
  `City` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`IRS_Number`, `Social_Security_Number`, `Driver_License`, `First_Name`, `Last_Name`, `Street`, `Street_Number`, `Postal_Code`, `City`) VALUES
(155223410, '20019315500', 101013321, 'Andreas', 'Christou', 'Agalmatos', 21, 2000, 'Rhodes'),
(155223500, '20019310401', 101013372, 'Apostolos', 'Koukis', 'Filikis Etairias', 15, 1221, 'Heraklion'),
(155223588, '20019320001', 101010294, 'Ioannis', 'Charilaou', 'Dafnis', 124, 15773, 'Athens'),
(155223999, '21070101233', 101077298, 'Andreas', 'Papadopoulos', 'Dafnis', 15, 12000, 'Rhodes'),
(155226600, '20018510000', 111564713, 'Spyros', 'Charilaou', 'Mapalo', 22, 456, 'Athens'),
(155229910, '20118510000', 105555522, 'Chara', 'Georgiou', 'Filokratous', 15, 1222, 'Rhodes'),
(155235240, '21019315000', 101987255, 'Eleni', 'Papadopoulou', 'Karaiskaki', 124, 1222, 'Rhodes'),
(155544500, '20019610000', 101010488, 'Eleni', 'Charalambous', 'Filikis Etairias', 150, 1222, 'Rhodes'),
(155733500, '20019810000', 161013324, 'Andreas', 'Georgiou', 'Filokratous', 14, 12000, 'Patra'),
(155744500, '25029610400', 101613322, 'Nikolas', 'Christou', 'Filokratous', 14, 1222, 'Thessaloniki'),
(155774500, '20019405696', 101963322, 'Georgia', 'Papadopoulou', 'Mekina', 2, 15772, 'Athens'),
(155774544, '20019315000', 101013352, 'Andreas', 'Spyrou', 'Arianon', 21, 2000, 'Thessaloniki'),
(155780552, '15053420987', 101077221, 'Georgia', 'Charis', 'Dafnis', 15, 1221, 'Thessaloniki'),
(155780600, '20019310001', 108010220, 'Georgios', 'Papadopoulos', 'Iroon Polytechniou', 1, 15773, 'Athens'),
(155999000, '21019000000', 101019290, 'Maria', 'Alexandrou', 'Dafnis', 14, 1221, 'Rhodes');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttransaction`
--

CREATE TABLE `paymenttransaction` (
  `Start_Date` date NOT NULL,
  `License_Plate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Payment_Amount` decimal(10,2) NOT NULL,
  `Payment_Method` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymenttransaction`
--

INSERT INTO `paymenttransaction` (`Start_Date`, `License_Plate`, `Payment_Amount`, `Payment_Method`) VALUES
('2017-02-08', 'VRU 2995', '642.00', 'Credit Card'),
('2017-02-23', 'KUB 2010', '160.00', 'Cash'),
('2017-03-17', 'VRO 2000', '213.00', 'Visa'),
('2017-05-14', 'KUB 2055', '350.00', 'Visa'),
('2017-05-18', 'POO 12', '132.00', 'Cash'),
('2017-08-15', 'POO 123', '225.00', 'Credit Card'),
('2017-10-08', 'POO 566', '95.00', 'Visa'),
('2017-11-14', 'POO 565', '64.00', 'Cash'),
('2017-11-28', 'APO 24', '193.00', 'Cash'),
('2017-12-14', 'MPN 2546', '180.00', 'Bank Transfer'),
('2017-12-23', 'POO 1232', '515.00', 'Bank Transfer'),
('2018-01-01', 'MPA 2546', '161.00', 'Bank Transfer'),
('2018-01-02', 'VRU 2996', '247.00', 'Bank Transfer'),
('2018-01-04', 'NTU 2004', '321.00', 'Bank Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `phonenumber`
--

CREATE TABLE `phonenumber` (
  `Store_ID` int(11) NOT NULL,
  `Phone_Number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phonenumber`
--

INSERT INTO `phonenumber` (`Store_ID`, `Phone_Number`) VALUES
(1, '2310206006'),
(2, '2120884569'),
(3, '2810245599'),
(4, '2610362544'),
(5, '2241092966'),
(1, '2310206007'),
(2, '2120884566'),
(3, '2810245598'),
(4, '2610364444'),
(5, '2241092666'),
(2, '2120880888');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `License_Plate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Start_Date` date NOT NULL,
  `Start_Location` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Finish_Location` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Finish_Date` date NOT NULL,
  `Return_State` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `IRS_Number` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`License_Plate`, `Start_Date`, `Start_Location`, `Finish_Location`, `Finish_Date`, `Return_State`, `Customer_ID`, `IRS_Number`) VALUES
('APO 24', '2017-11-28', 'Heraklion', 'Heraklion', '2017-12-04', 'Everything OKay', 13, 155223500),
('KUB 2010', '2017-02-23', 'Plateia Agiou Gewrgiou', 'KTEL Patras', '2017-02-27', 'The car is dirty,filled with garbages and spilled wines', 3, 155733500),
('KUB 2055', '2017-05-14', 'Aerodromio', 'Syntagma', '2017-05-26', 'Everything Okay', 14, 155774500),
('MPA 2546', '2018-01-01', 'Leoforos Papagou', 'Aerodromio', '2018-01-05', 'Everything Okay', 14, 155223588),
('MPN 2546', '2017-12-14', 'Aerodromio', 'Aerodromio', '2017-12-20', 'Broken side mirror', 11, 155744500),
('NTU 2004', '2018-01-04', 'Heraklion Center', 'Aerodromio', '2018-01-14', 'Left Rear Window not working', 12, 155223500),
('POO 12', '2017-05-18', 'Stathmos KTEL', 'Stathmos KTEL', '2017-05-22', 'Everything Okay', 2, 155733500),
('POO 123', '2017-08-15', 'Aerodromio', 'Aerodromio', '2017-08-22', 'Everything Okay', 1, 155229910),
('POO 1232', '2017-12-23', 'Plateia Aristotelous', 'Aerodromio', '2018-01-07', 'Everything Okay', 8, 155744500),
('POO 565', '2017-11-14', 'Rhodes', 'Rhodes', '2017-11-16', 'Everything Okay', 15, 155235240),
('POO 566', '2017-10-08', 'Syntagma Square', 'Syntagma Square', '2017-10-11', 'Everything Okay', 12, 155223588),
('VRO 2000', '2017-03-17', 'Aerodromio', 'Aerodromio', '2017-03-25', 'Everything Okay', 6, 155744500),
('VRU 2995', '2017-02-08', 'Aerodromio', 'Plateia Aristotelous', '2017-03-01', 'Damaged SeatBelt', 7, 155774544),
('VRU 2996', '2018-01-02', 'Proastiakos Stathmos', 'Proastiakos Stathmos', '2018-01-10', 'Everything Okay', 1, 155733500);

--
-- Triggers `rents`
--
DELIMITER $$
CREATE TRIGGER `DELETE RESERVATION` AFTER INSERT ON `rents` FOR EACH ROW DELETE FROM reserves
WHERE   ((new.License_Plate = reserves.License_Plate) AND (new.Start_Date=reserves.Start_Date))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reserves`
--

CREATE TABLE `reserves` (
  `License_Plate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Start_Date` date NOT NULL,
  `Start_Location` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Finish_Location` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Finish_Date` date NOT NULL,
  `Paid` tinyint(1) NOT NULL,
  `Customer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reserves`
--

INSERT INTO `reserves` (`License_Plate`, `Start_Date`, `Start_Location`, `Finish_Location`, `Finish_Date`, `Paid`, `Customer_ID`) VALUES
('APO 24', '2018-01-12', 'Rhodes', 'Aerodromio', '2018-01-16', 1, 13),
('KUB 2009', '2018-01-17', 'Syntagma Square', 'Aerodromio', '2018-01-25', 0, 1),
('KUB 2009', '2018-01-30', 'Syntagma Square', 'Syntagma Square', '2018-02-10', 1, 7),
('KUB 2010', '2018-01-12', 'Plateia Agiou Gewrgiou', 'KTEL Patras', '2018-01-18', 1, 3),
('KUB 2055', '2018-01-18', 'Leoforos Papagou', 'Aerodromio', '2018-01-22', 1, 4),
('MPA 2546', '2018-02-01', 'Aerodromio', 'Aerodromio', '2018-01-12', 0, 5),
('MPA 2546', '2018-03-05', 'Aerodromio', 'Stathmos Pallini', '2018-03-09', 1, 9),
('MPN 2546', '2018-01-11', 'Aerodromio', 'Aerodromio', '2018-01-16', 0, 14),
('NTU 2004', '2018-02-08', 'Heraklion Center', 'Heraklion', '2018-02-15', 1, 2),
('NTU 2004', '2018-03-01', 'Heraklion Center', 'Heraklion Center', '2018-03-09', 0, 10),
('POO 12', '2018-01-14', 'KTEL Patras', 'KTEL Patras', '2018-01-20', 0, 11),
('POO 123', '2018-01-25', 'Rhodes', 'Rhodes', '2018-02-25', 1, 12),
('POO 566', '2018-04-25', 'Aerodromio', 'Aerodromio', '2018-04-30', 1, 11),
('VRO 2000', '2018-02-06', 'Plateia Aristotelous', 'Aerodromio', '2018-02-11', 0, 10),
('VRU 2996', '2018-03-18', 'Aerodromio', 'Aerodromio', '2018-03-22', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `Store_ID` int(11) NOT NULL,
  `Street` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Street_Number` int(3) NOT NULL,
  `Postal_Code` int(5) NOT NULL,
  `City` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`Store_ID`, `Street`, `Street_Number`, `Postal_Code`, `City`) VALUES
(1, 'Valaoritou', 22, 1111, 'Thessaloniki'),
(2, 'Papagou', 123, 15772, 'Athens'),
(3, 'Karaiskaki', 4, 1222, 'Heraklion'),
(4, 'Karnavaliwn', 44, 1245, 'Patra'),
(5, 'Agalmatos', 22, 156, 'Rhodes');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `License_Plate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Model` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Make` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year` year(4) NOT NULL,
  `Kilometers` int(10) NOT NULL,
  `Cylinder_Capacity` int(5) NOT NULL,
  `Horse_Power` int(4) NOT NULL,
  `Damages` text COLLATE utf8mb4_unicode_ci,
  `Malfunctions` text COLLATE utf8mb4_unicode_ci,
  `Next_Service` date NOT NULL,
  `Insurance_Exp_Date` date NOT NULL,
  `Last_Service` date NOT NULL,
  `Store_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`License_Plate`, `Model`, `Type`, `Make`, `Year`, `Kilometers`, `Cylinder_Capacity`, `Horse_Power`, `Damages`, `Malfunctions`, `Next_Service`, `Insurance_Exp_Date`, `Last_Service`, `Store_ID`) VALUES
('APO 24', 'Pooping', 'Truck', 'Mercedes', 1989, 788811, 45000, 240, 'damaged seats', '', '2018-02-11', '2018-01-23', '2017-06-11', 5),
('KUB 2009', 'Express', 'MiniVan', 'Chevrolet', 2002, 400022, 30000, 280, '', '', '2018-12-11', '2018-01-22', '2016-12-11', 2),
('KUB 2010', 'Transit', 'MiniVan', 'Ford', 2001, 500000, 30000, 240, '', '', '2018-12-11', '2018-01-22', '2016-12-11', 4),
('KUB 2055', 'Sprinter', 'MiniVan', 'Mercedes', 2015, 45000, 32000, 300, '', '', '2020-02-11', '2018-12-23', '2015-06-11', 2),
('MPA 2546', 'Civic', 'Car', 'Honda', 2001, 299444, 15999, 145, '', '', '2018-02-11', '2018-04-23', '2016-12-11', 2),
('MPN 2546', 'Civic', 'Car', 'Honda', 1999, 299999, 15999, 145, '', '', '2018-12-11', '2018-01-23', '2016-12-11', 1),
('NTU 2004', 'C220', 'Car', 'Mercedes', 2008, 140002, 22001, 185, '', 'Left Rear Window', '2019-01-05', '2018-05-22', '2015-06-11', 3),
('POO 12', 'Yaris', 'Car', 'Toyota', 2005, 185000, 14000, 120, '', '', '2018-09-11', '2018-01-22', '2017-06-11', 4),
('POO 123', 'Vespa 946', 'Motorcycle', 'Vespa', 2012, 46000, 3000, 50, '', '', '2018-12-11', '2018-01-22', '2017-06-11', 5),
('POO 1232', 'Pooping', 'Truck', 'Yamaha', 2000, 345000, 45000, 400, '', '', '2018-02-11', '2018-01-23', '2017-06-11', 1),
('POO 565', 'Jimny', 'Car', 'Suzuki', 2006, 75000, 15654, 124, '', '', '2018-12-11', '2018-05-22', '2016-12-11', 5),
('POO 566', 'Pooping', 'Truck', 'Mercedes', 1995, 722811, 45000, 240, '', '', '2018-12-11', '2018-05-22', '2017-06-11', 3),
('VRO 2000', 'VROOM', 'ATV', 'Yamaha', 1998, 150000, 8000, 100, '', '', '2018-12-11', '2018-01-23', '2017-06-11', 1),
('VRU 2995', 'Vespa 946', 'Motorcycle', 'Vespa', 2014, 20000, 3000, 50, '', '', '2019-01-05', '2018-01-23', '2017-06-11', 1),
('VRU 2996', 'Sprint', 'Motorcycle', 'Vespa', 2014, 20001, 3000, 100, '', '', '2019-01-05', '2018-01-22', '2016-12-11', 4);

--
-- Triggers `vehicles`
--
DELIMITER $$
CREATE TRIGGER `Delete_reservations_After_Delete_of_vehicle` AFTER DELETE ON `vehicles` FOR EACH ROW DELETE FROM reserves
WHERE old.License_Plate=reserves.License_Plate
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view1`
-- (See below for the actual view)
--
CREATE TABLE `view1` (
`License_Plate` varchar(10)
,`Damages` text
,`Malfunctions` text
,`Next_Service` date
,`Last_Service` date
,`Insurance_Exp_Date` date
,`Store_ID` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view2`
-- (See below for the actual view)
--
CREATE TABLE `view2` (
`IRS_Number` int(9)
,`Social_Security_Number` varchar(11)
,`First_Name` varchar(30)
,`Last_Name` varchar(30)
,`License_Plate` varchar(10)
,`Customer_ID` int(11)
,`Return_State` text
);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `IRS_Number` int(9) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `Start_Date` date NOT NULL,
  `Finish_Date` date DEFAULT NULL,
  `Position` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`IRS_Number`, `Store_ID`, `Start_Date`, `Finish_Date`, `Position`) VALUES
(155223410, 4, '2015-12-10', '0000-00-00', 'Rents'),
(155223500, 1, '2017-12-12', '0000-00-00', 'Marketing'),
(155223588, 3, '2017-01-12', '0000-00-00', 'Driver'),
(155223999, 3, '2017-01-12', '2017-12-25', 'Driver'),
(155226600, 4, '2017-02-12', '0000-00-00', 'Rents'),
(155229910, 1, '2017-12-19', '0000-00-00', 'Rents'),
(155235240, 5, '2014-12-19', '0000-00-00', 'Telephone Center'),
(155544500, 1, '2015-12-10', '0000-00-00', 'Marketing'),
(155733500, 4, '2017-12-19', '0000-00-00', 'Marketing'),
(155744500, 5, '2012-12-10', '0000-00-00', 'Rents'),
(155774500, 4, '2014-12-10', '0000-00-00', 'Telephone Center'),
(155774544, 2, '2015-12-10', '0000-00-00', 'Driver'),
(155780552, 2, '2017-01-12', '2017-12-14', 'Rents'),
(155780600, 2, '2012-12-10', '0000-00-00', 'Driver'),
(155999000, 1, '2012-12-10', '2017-12-25', 'Marketing');

-- --------------------------------------------------------

--
-- Structure for view `view1`
--
DROP TABLE IF EXISTS `view1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view1`  AS  select `vh`.`License_Plate` AS `License_Plate`,`vh`.`Damages` AS `Damages`,`vh`.`Malfunctions` AS `Malfunctions`,`vh`.`Next_Service` AS `Next_Service`,`vh`.`Last_Service` AS `Last_Service`,`vh`.`Insurance_Exp_Date` AS `Insurance_Exp_Date`,`vh`.`Store_ID` AS `Store_ID` from `vehicles` `vh` ;

-- --------------------------------------------------------

--
-- Structure for view `view2`
--
DROP TABLE IF EXISTS `view2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view2`  AS  select `em`.`IRS_Number` AS `IRS_Number`,`em`.`Social_Security_Number` AS `Social_Security_Number`,`em`.`First_Name` AS `First_Name`,`em`.`Last_Name` AS `Last_Name`,`r`.`License_Plate` AS `License_Plate`,`r`.`Customer_ID` AS `Customer_ID`,`r`.`Return_State` AS `Return_State` from (`employee` `em` join `rents` `r`) where (`em`.`IRS_Number` = `r`.`IRS_Number`) order by `em`.`IRS_Number` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `email_address`
--
ALTER TABLE `email_address`
  ADD KEY `Store_ID` (`Store_ID`) USING BTREE;

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`IRS_Number`);

--
-- Indexes for table `paymenttransaction`
--
ALTER TABLE `paymenttransaction`
  ADD PRIMARY KEY (`Start_Date`,`License_Plate`),
  ADD KEY `License_Plate` (`License_Plate`);

--
-- Indexes for table `phonenumber`
--
ALTER TABLE `phonenumber`
  ADD KEY `Store_ID` (`Store_ID`) USING BTREE;

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`License_Plate`,`Start_Date`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `IRS_Number` (`IRS_Number`),
  ADD KEY `Rents_ibfk_4` (`Start_Date`);

--
-- Indexes for table `reserves`
--
ALTER TABLE `reserves`
  ADD PRIMARY KEY (`License_Plate`,`Start_Date`) USING BTREE,
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`Store_ID`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`License_Plate`),
  ADD KEY `Store_ID` (`Store_ID`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`IRS_Number`,`Store_ID`,`Start_Date`),
  ADD KEY `Store_ID` (`Store_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `Store_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `email_address`
--
ALTER TABLE `email_address`
  ADD CONSTRAINT `Email_Address_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `paymenttransaction`
--
ALTER TABLE `paymenttransaction`
  ADD CONSTRAINT `PaymentTransaction_ibfk_1` FOREIGN KEY (`License_Plate`) REFERENCES `rents` (`License_Plate`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `PaymentTransaction_ibfk_2` FOREIGN KEY (`Start_Date`) REFERENCES `rents` (`Start_Date`) ON UPDATE CASCADE;

--
-- Constraints for table `phonenumber`
--
ALTER TABLE `phonenumber`
  ADD CONSTRAINT `PhoneNumber_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rents`
--
ALTER TABLE `rents`
  ADD CONSTRAINT `Rents_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Rents_ibfk_2` FOREIGN KEY (`License_Plate`) REFERENCES `vehicles` (`License_Plate`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `Rents_ibfk_3` FOREIGN KEY (`IRS_Number`) REFERENCES `employee` (`IRS_Number`) ON UPDATE CASCADE;

--
-- Constraints for table `reserves`
--
ALTER TABLE `reserves`
  ADD CONSTRAINT `Reserves_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Reserves_ibfk_2` FOREIGN KEY (`License_Plate`) REFERENCES `vehicles` (`License_Plate`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `Vehicles_ibfk_1` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `works`
--
ALTER TABLE `works`
  ADD CONSTRAINT `Works_ibfk_1` FOREIGN KEY (`IRS_Number`) REFERENCES `employee` (`IRS_Number`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Works_ibfk_2` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
