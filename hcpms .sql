-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 05:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hcpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(2, 'admin', 'admin', 'Administrator', '', ''),
(3, 'admin1', 'admin', 'supervisor', '', '.');

-- --------------------------------------------------------

--
-- Table structure for table `birthing`
--

CREATE TABLE `birthing` (
  `birth_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(10) NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `history` varchar(100) NOT NULL,
  `staff` varchar(30) NOT NULL,
  `itr_no` varchar(4) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `birthing`
--

INSERT INTO `birthing` (`birth_id`, `date`, `time`, `chief_complaint`, `history`, `staff`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2023-09-27', '15:27', 'not working', 'not working', 'Manigar', '04', '3', 'Sep', '2023'),
(2, '2023-09-27', '15:27', 'not working', 'not working', 'Manigar', '04', '3', 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `com_id` int(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`com_id`, `date`, `complaints`, `remark`, `itr_no`, `section`, `status`) VALUES
(11, '09/28/2023', 'not working', 'not working', '01', 'Bio lab', 'Done'),
(13, '09/28/2023', 'not working', 'problematic', '01', 'Bio lab', 'Done'),
(14, '09/28/2023', 'problem', 'functioning slow', '02', 'Bio lab', 'Done'),
(15, '09/28/2023', 'not working', 'functioning', '05', 'Physics lab', 'Done'),
(16, '09/28/2023', 'not working', 'inappropriate data', '07', 'Physics lab', 'Pending'),
(17, '09/28/2023', 'not working', 'incorrect values', '08', 'Electronics lab', 'Pending'),
(18, '09/28/2023', 'functioning', 'functioning', '08', 'Electrical lab', 'Done'),
(20, '09/28/2023', 'not working', 'functionality', '09', 'Workshop and Mechanics lab', 'Done'),
(21, '09/28/2023', 'not working', 'functionality', '10', 'civil lab', 'Done'),
(22, '09/28/2023', 'not working', 'not working', '11', 'AR and VR lab', 'Done'),
(23, '09/28/2023', 'not working', 'not working', '04', 'Chemistry lab', 'Done'),
(24, '09/28/2023', 'functionality', 'not working', '10', 'civil lab', 'Done'),
(25, '09/28/2023', 'functionality', 'functionality', '07', 'Electronics lab', 'Done'),
(26, '09/28/2023', 'functionality', 'functionality', '11', 'AR and VR lab', 'Done'),
(27, '09/30/2023', 'no proper working', 'Bad', '09', 'Workshop and Mechanics lab', 'Pending'),
(28, '12/13/2023', 'not working properly', 'not good', '11', 'AR and VR lab', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `dental`
--

CREATE TABLE `dental` (
  `dental_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `dentist` varchar(30) NOT NULL,
  `tooth` int(3) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dental`
--

INSERT INTO `dental` (`dental_no`, `date`, `dentist`, `tooth`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2023-09-28', 'Dr. Machete Lazada', 1, '11', 7, 'Sep', '2023'),
(2, '2023-09-28', 'Dr. Machete Lazada', 1, '11', 7, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `fecalisys`
--

CREATE TABLE `fecalisys` (
  `fecalisys_id` int(11) NOT NULL,
  `date_of_request` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `others_pro` varchar(15) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `date_reported` date NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fecalisys`
--

INSERT INTO `fecalisys` (`fecalisys_id`, `date_of_request`, `requested_by`, `others_pro`, `remarks`, `date_reported`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2023-09-15', 'Radha', '', '', '2023-09-15', 'Baldev', 'issue has been resolved', '1', 1, 'Sep', '2023'),
(9, '2023-09-28', 'Rahul', '', 'Not working', '2023-09-28', 'Baldev', 'issue has been resolved', '01', 1, 'Sep', '2023'),
(10, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(11, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(12, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(13, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(14, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(15, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(16, '2023-09-28', '', '', '', '2023-09-28', 'Baldev', 'issue has been resolved', '02', 1, 'Sep', '2023'),
(17, '2023-09-28', 'Radha', '', 'good', '2023-09-28', 'Baldev', 'issue has been resolved', '01', 7, 'Sep', '2023'),
(18, '2023-09-28', 'Rahul', '', 'bad', '2023-09-28', 'ramji', 'issue has been resolved', '01', 7, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `hematology`
--

CREATE TABLE `hematology` (
  `hem_id` int(11) NOT NULL,
  `date_requested` date NOT NULL,
  `requested_by` varchar(30) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hematology`
--

INSERT INTO `hematology` (`hem_id`, `date_requested`, `requested_by`, `remarks`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2023-09-27', 'Radha', 'functioning', 'Baldev', 'Krishn', '05', 6, 'Sep', '2023'),
(2, '2023-09-27', 'Radha', 'functioning', 'Baldev', 'Krishn', '05', 6, 'Sep', '2023'),
(3, '2023-09-28', 'Radha', 'functionality', 'Baldev', 'Krishn', '05', 6, 'Sep', '2023'),
(4, '2023-09-28', 'Radha', 'data', 'Baldev', 'Krishn', '07', 6, 'Sep', '2023'),
(5, '2023-09-28', 'Rahul', 'connection less', 'ramji', 'Krishn', '05', 6, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `itr`
--

CREATE TABLE `itr` (
  `itr_no` varchar(4) NOT NULL,
  `family_no` varchar(6) NOT NULL,
  `phil_health_no` varchar(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `purchasedate` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `Period` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `itr`
--

INSERT INTO `itr` (`itr_no`, `family_no`, `phil_health_no`, `firstname`, `middlename`, `lastname`, `purchasedate`, `age`, `address`, `status`, `Period`) VALUES
('01', '', '123', 'Compound', '', 'Microscope', '06/06/21', 1, 'chennai', 'Working', 'old'),
('02', '', '1234', 'Plate', '', 'Reader', '02/01/2021', 1, 'chennai', 'Working', 'old'),
('03', '', '12345', 'Centrifuge', '', '.', '01/02/2022', 1, 'chennai', 'Working', 'New'),
('04', '222', '121', 'laboratory ', '', 'water bath', '06/06/21', 1, 'chennai', 'Working', 'old'),
('05', '', '102', 'Desiccator', '', '.', '02/02/2021', 1, 'chennai', 'Working', 'New'),
('06', '', '1234', 'caloriemeter', '', '.', '02/02/2022', 1, 'chennai', 'Not Working', 'old'),
('07', '', '1234', 'weighing', '', 'Balance', '02/01/2021', 1, 'chennai', 'Not Working', 'old'),
('08', '', '123', 'Multi', '', 'Meter', '01/01/2021', 2, 'chennai', 'Not Working', 'old'),
('09', '', '102', 'Lathe', '', 'Machine', '06/02/2021', 1, 'chennai', 'Not Working', 'old'),
('10', '', '1234', 'High Pressure', '', 'Autoclave', '05/01/2022', 1, 'clg,floor1', 'Not Working', 'old'),
('11', '', '1234', 'Gyroscopes', '', '.', '01/01/2021', 1, 'floor2', 'Not Workin', 'old');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Building_name` varchar(200) NOT NULL,
  `Building_id` varchar(150) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `idd` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Building_name`, `Building_id`, `employee_name`, `idd`) VALUES
('SAVEETHA SCHOOL OF ENGINEERING', 'SAF01', 'ZAMMY', 1),
('SAVEETHA SCHOOL OF NURSING', 'SBS02', 'SAHA', 2),
('SAIL', 'SCT03', 'LEELA', 3),
('SCAD', 'SDF04', 'DHARSHAN', 4);

-- --------------------------------------------------------

--
-- Table structure for table `maternity_patient`
--

CREATE TABLE `maternity_patient` (
  `equipment_id` int(50) NOT NULL,
  `case_no` varchar(20) NOT NULL,
  `nhts` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `philhealth` varchar(30) NOT NULL,
  `pat_firstname` varchar(30) NOT NULL,
  `pat_middlename` varchar(30) NOT NULL,
  `pat_lastname` varchar(30) NOT NULL,
  `age` int(10) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `date_of_purchase` varchar(20) NOT NULL,
  `date_of_admission` varchar(20) NOT NULL,
  `time_of_admission` varchar(20) NOT NULL,
  `spouse_firstname` varchar(30) NOT NULL,
  `spouse_middlename` varchar(30) NOT NULL,
  `spouse_lastname` varchar(30) NOT NULL,
  `spouse_age` int(10) NOT NULL,
  `spouse_religion` varchar(30) NOT NULL,
  `spouse_occupation` varchar(30) NOT NULL,
  `G` varchar(20) NOT NULL,
  `T` varchar(20) NOT NULL,
  `A` varchar(20) NOT NULL,
  `L` varchar(20) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `edc` varchar(20) NOT NULL,
  `aog` varchar(20) NOT NULL,
  `fetal_position` varchar(20) NOT NULL,
  `fh` varchar(20) NOT NULL,
  `fhb` varchar(20) NOT NULL,
  `loc` varchar(20) NOT NULL,
  `admitting_diagnose` varchar(100) NOT NULL,
  `midwife` varchar(50) NOT NULL,
  `date_of_delivery` varchar(20) NOT NULL,
  `time` varchar(10) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `wt` varchar(10) NOT NULL,
  `baby_firstname` varchar(30) NOT NULL,
  `baby_middlename` varchar(30) NOT NULL,
  `baby_lastname` varchar(30) NOT NULL,
  `hepa` varchar(30) NOT NULL,
  `bcg` varchar(30) NOT NULL,
  `nbs` varchar(30) NOT NULL,
  `date_of_discharge` varchar(30) NOT NULL,
  `time_of_discharge` varchar(30) NOT NULL,
  `final_diagnosis` varchar(100) NOT NULL,
  `disposition_on_charge` varchar(50) NOT NULL,
  `itr_no` varchar(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prenatal`
--

CREATE TABLE `prenatal` (
  `prenatal_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `attending_physician` varchar(30) NOT NULL,
  `lmp` varchar(20) NOT NULL,
  `ga_by_lmp` varchar(20) NOT NULL,
  `edc_by_lmp` varchar(20) NOT NULL,
  `fhr` varchar(20) NOT NULL,
  `ga_by_sonar` varchar(20) NOT NULL,
  `edc_by_utz` varchar(20) NOT NULL,
  `pregnancy_age` varchar(20) NOT NULL,
  `biparietal_diameter` varchar(20) NOT NULL,
  `biparietal_eq` varchar(20) NOT NULL,
  `head_circumference` varchar(20) NOT NULL,
  `head_circumference_eq` varchar(20) NOT NULL,
  `abdominal_circumference` varchar(20) NOT NULL,
  `abdominal_circumference_eq` varchar(20) NOT NULL,
  `femoral_length` varchar(20) NOT NULL,
  `femoral_length_eq` varchar(20) NOT NULL,
  `crown_rump_length` varchar(20) NOT NULL,
  `crown_rump_length_eq` varchar(20) NOT NULL,
  `mean_gest_sac_diameter` varchar(20) NOT NULL,
  `mean_gest_sac_diameter_eq` varchar(20) NOT NULL,
  `average_fetal_weight` varchar(20) NOT NULL,
  `gestation` varchar(20) NOT NULL,
  `presentation_lie` varchar(20) NOT NULL,
  `amniotic_fluid` varchar(20) NOT NULL,
  `placenta_location` varchar(20) NOT NULL,
  `previa` varchar(20) NOT NULL,
  `placenta_grade` varchar(20) NOT NULL,
  `fetal_activity` varchar(20) NOT NULL,
  `comments` varchar(100) NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prenatal`
--

INSERT INTO `prenatal` (`prenatal_no`, `date`, `chief_complaint`, `attending_physician`, `lmp`, `ga_by_lmp`, `edc_by_lmp`, `fhr`, `ga_by_sonar`, `edc_by_utz`, `pregnancy_age`, `biparietal_diameter`, `biparietal_eq`, `head_circumference`, `head_circumference_eq`, `abdominal_circumference`, `abdominal_circumference_eq`, `femoral_length`, `femoral_length_eq`, `crown_rump_length`, `crown_rump_length_eq`, `mean_gest_sac_diameter`, `mean_gest_sac_diameter_eq`, `average_fetal_weight`, `gestation`, `presentation_lie`, `amniotic_fluid`, `placenta_location`, `previa`, `placenta_grade`, `fetal_activity`, `comments`, `radiologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '2023-09-12', 'problem', 'rajeev', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Single', 'Transverse', 'Decreased', 'Fundus', 'Low Lying', '0', '', '', 'rahul', '04', 1, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `radiological`
--

CREATE TABLE `radiological` (
  `rad_id` int(11) NOT NULL,
  `case_no` varchar(12) NOT NULL,
  `room_bed_no` varchar(11) NOT NULL,
  `type_of_examination` varchar(30) NOT NULL,
  `date_taken` date NOT NULL,
  `radiologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `radiological`
--

INSERT INTO `radiological` (`rad_id`, `case_no`, `room_bed_no`, `type_of_examination`, `date_taken`, `radiologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '1', '101', 'bad', '2023-09-28', 'ravi', '07', 9, 'Sep', '2023'),
(2, '1', '101', 'bad', '2023-09-28', 'ravi', '07', 9, 'Sep', '2023'),
(3, '1', '101', 'bad', '2023-09-28', 'rahul', '07', 9, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `rehabilitation`
--

CREATE TABLE `rehabilitation` (
  `rehab_id` int(11) NOT NULL,
  `diagnosis` varchar(50) NOT NULL,
  `type_of_disability` varchar(50) NOT NULL,
  `subjective` varchar(100) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `assessment` varchar(100) NOT NULL,
  `plan` varchar(100) NOT NULL,
  `date` varchar(10) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rehabilitation`
--

INSERT INTO `rehabilitation` (`rehab_id`, `diagnosis`, `type_of_disability`, `subjective`, `objective`, `assessment`, `plan`, `date`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '1', 'functioning', 'problem', 'working', 'repair', '2 days', '09/28/2023', '08', 10, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `sputum`
--

CREATE TABLE `sputum` (
  `sputum_id` int(11) NOT NULL,
  `name_of_collection_unit` varchar(30) NOT NULL,
  `date_of_examination` date NOT NULL,
  `examined_by` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sputum`
--

INSERT INTO `sputum` (`sputum_id`, `name_of_collection_unit`, `date_of_examination`, `examined_by`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, 'Gyroscopes .', '2023-09-23', 'ramgopal', '09', 14, 'Sep', '2023'),
(2, 'Gyroscopes .', '2023-09-23', 'ramgopal', '09', 14, 'Sep', '2023'),
(3, 'Gyroscopes .', '2023-09-23', 'ramgopal', '09', 14, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `urinalysis`
--

CREATE TABLE `urinalysis` (
  `urinalysis_id` int(11) NOT NULL,
  `date_of_request` varchar(20) NOT NULL,
  `pathologist` varchar(30) NOT NULL,
  `medical_technologist` varchar(30) NOT NULL,
  `itr_no` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `urinalysis`
--

INSERT INTO `urinalysis` (`urinalysis_id`, `date_of_request`, `pathologist`, `medical_technologist`, `itr_no`, `user_id`, `month`, `year`) VALUES
(1, '09/28/2023', 'ramji', 'Krishn', '10', 8, 'Sep', '2023'),
(2, '09/30/2023', 'Baldev', 'Krishn', '10', 8, 'Sep', '2023');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `section` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `middlename`, `lastname`, `section`) VALUES
(1, 'user', 'user', 'user', '', 'user', 'Bio lab'),
(3, 'user1', 'user', 'raja', '', 'ram', 'Chemistry lab'),
(6, 'user2', 'user', 'sara', '', 'ali', 'Physics lab'),
(7, 'user3', 'user', 'raj', '', 'prabha', 'AR and VR lab'),
(8, 'user4', 'user', 'siri', '', 'lahari', 'civil lab'),
(9, 'user5', 'user', 'manish', '', 'rath', 'Electronics lab'),
(10, 'user6', 'user', 'naresh', '', 'bumi', 'Electrical lab'),
(14, 'user7', 'user', 'priya', '', 'mohan', 'Workshop and Mechanics lab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `birthing`
--
ALTER TABLE `birthing`
  ADD PRIMARY KEY (`birth_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `dental`
--
ALTER TABLE `dental`
  ADD PRIMARY KEY (`dental_no`);

--
-- Indexes for table `fecalisys`
--
ALTER TABLE `fecalisys`
  ADD PRIMARY KEY (`fecalisys_id`);

--
-- Indexes for table `hematology`
--
ALTER TABLE `hematology`
  ADD PRIMARY KEY (`hem_id`);

--
-- Indexes for table `itr`
--
ALTER TABLE `itr`
  ADD PRIMARY KEY (`itr_no`),
  ADD UNIQUE KEY `itr_no` (`itr_no`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`idd`);

--
-- Indexes for table `maternity_patient`
--
ALTER TABLE `maternity_patient`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `prenatal`
--
ALTER TABLE `prenatal`
  ADD PRIMARY KEY (`prenatal_no`);

--
-- Indexes for table `radiological`
--
ALTER TABLE `radiological`
  ADD PRIMARY KEY (`rad_id`);

--
-- Indexes for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  ADD PRIMARY KEY (`rehab_id`);

--
-- Indexes for table `sputum`
--
ALTER TABLE `sputum`
  ADD PRIMARY KEY (`sputum_id`);

--
-- Indexes for table `urinalysis`
--
ALTER TABLE `urinalysis`
  ADD PRIMARY KEY (`urinalysis_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `birthing`
--
ALTER TABLE `birthing`
  MODIFY `birth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `com_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dental`
--
ALTER TABLE `dental`
  MODIFY `dental_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fecalisys`
--
ALTER TABLE `fecalisys`
  MODIFY `fecalisys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hematology`
--
ALTER TABLE `hematology`
  MODIFY `hem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `idd` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maternity_patient`
--
ALTER TABLE `maternity_patient`
  MODIFY `equipment_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prenatal`
--
ALTER TABLE `prenatal`
  MODIFY `prenatal_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `radiological`
--
ALTER TABLE `radiological`
  MODIFY `rad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rehabilitation`
--
ALTER TABLE `rehabilitation`
  MODIFY `rehab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sputum`
--
ALTER TABLE `sputum`
  MODIFY `sputum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `urinalysis`
--
ALTER TABLE `urinalysis`
  MODIFY `urinalysis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
