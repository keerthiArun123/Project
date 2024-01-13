-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2024 at 05:23 AM
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
-- Database: `equipment`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_supervisor`
--

CREATE TABLE `add_supervisor` (
  `s_id` int(20) NOT NULL,
  `employee_name` varchar(20) DEFAULT NULL,
  `employee_id` varchar(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `phn_num` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `other_details` varchar(100) NOT NULL,
  `delivery_date` date NOT NULL DEFAULT current_timestamp(),
  `Building_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_supervisor`
--

INSERT INTO `add_supervisor` (`s_id`, `employee_name`, `employee_id`, `designation`, `phn_num`, `email`, `other_details`, `delivery_date`, `Building_name`) VALUES
(1, 'raji', '003', 'supervisor', 0, 'raji@gmail.com', 'experienced', '2023-10-07', ''),
(7, 'ayesha', 'te06', 'technician', 0, 'ayes@gmail.com', '', '2023-10-26', ''),
(10, 'kathir2', 'k2', 'KATHIRAVAN', 0, 'K', '', '2023-10-27', ''),
(11, 'hameed', 'te07', 'technician', 0, 'a@gmail.com', '', '2023-10-27', '');

-- --------------------------------------------------------

--
-- Table structure for table `building_allocation`
--

CREATE TABLE `building_allocation` (
  `B_id` int(20) NOT NULL,
  `Building_name` varchar(15) NOT NULL,
  `Building_id` varchar(20) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `employee_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `building_allocation`
--

INSERT INTO `building_allocation` (`B_id`, `Building_name`, `Building_id`, `employee_id`, `category`, `employee_name`) VALUES
(6, 'sail', '', '', '', 'ramesh'),
(10, 'sse', '', '', '', 'raghav'),
(11, 'sse', '', '', '', 'rahul'),
(26, '[Sec', '', '', '', '[rahi'),
(27, 'sse]', '', '', '', 'rahul]');

-- --------------------------------------------------------

--
-- Table structure for table `building_names`
--

CREATE TABLE `building_names` (
  `ID` int(200) NOT NULL,
  `Building_id` varchar(150) NOT NULL,
  `Building_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `building_names`
--

INSERT INTO `building_names` (`ID`, `Building_id`, `Building_name`) VALUES
(1, 'STD04', 'Saveetha School of Engineering'),
(2, 'STC03', 'SAIL'),
(3, 'STB02', 'SCAD'),
(4, 'STA01', 'SAVEETHA MEDICAL COLLEGE'),
(5, 'STE05', 'AHS'),
(6, 'STF06', 'SAVEETHA NURSING COLLEGE');

-- --------------------------------------------------------

--
-- Table structure for table `lab_table`
--

CREATE TABLE `lab_table` (
  `s_no` int(20) NOT NULL,
  `Building_name` varchar(400) NOT NULL,
  `Building_id` varchar(15) NOT NULL,
  `lab_name` varchar(50) NOT NULL,
  `lab_id` varchar(15) NOT NULL,
  `floor` varchar(20) NOT NULL,
  `room_no` varchar(15) NOT NULL,
  `total` int(25) NOT NULL,
  `equipment_name` varchar(20) NOT NULL,
  `equipment_id` varchar(20) NOT NULL,
  `total_rooms` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_table`
--

INSERT INTO `lab_table` (`s_no`, `Building_name`, `Building_id`, `lab_name`, `lab_id`, `floor`, `room_no`, `total`, `equipment_name`, `equipment_id`, `total_rooms`) VALUES
(1, 'Saveetha  School of Engineering', '', 'Bio lab', '', '01', '03', 0, '', '', '2'),
(8, '', '', 'Chemistry lab', '', '', '', 0, '', '', ''),
(9, '', '', 'Physics lab', '', '', '', 0, '', '', ''),
(10, '', '', 'AR and VR lab', '', '', '', 0, '', '', ''),
(11, '', '', 'Electrical lab', '', '', '', 0, '', '', ''),
(12, '', '', 'Electronics lab', '', '', '', 0, '', '', ''),
(13, '', '', 'civil lab', '', '', '', 0, '', '', ''),
(14, '', '', 'Workshop and Mechanics lab', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `l_id` int(11) NOT NULL,
  `total_floor` varchar(20) NOT NULL,
  `Building_name` varchar(100) NOT NULL,
  `Building_id` varchar(50) NOT NULL,
  `total_rooms` varchar(50) NOT NULL,
  `total_lab` varchar(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `lab_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`l_id`, `total_floor`, `Building_name`, `Building_id`, `total_rooms`, `total_lab`, `floor`, `employee_name`, `lab_name`) VALUES
(1, '1', 'Saveetha School of Engineering', 'STD04', '6', '2', '01', 'raghav', ''),
(2, '5', 'SAIL', 'STC03', '6', '4', '02', 'ramesh', ''),
(3, '4', 'SCAD', 'STB02', '', '', '03', 'Himansh', ''),
(4, '', 'Saveetha Medical College', 'STA01', '', '', '04', 'rahul', ''),
(5, '', 'AHS', 'STE05', '', '', '05', 'Mahesh', ''),
(6, '', 'Saveetha Nursing College', 'STF06', '', '', '06', 'Dev', '');

-- --------------------------------------------------------

--
-- Table structure for table `notify_status`
--

CREATE TABLE `notify_status` (
  `n_id` int(15) NOT NULL,
  `equipment_name` varchar(50) NOT NULL,
  `equipment_id` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL,
  `st1` varchar(100) NOT NULL,
  `st2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notify_status`
--

INSERT INTO `notify_status` (`n_id`, `equipment_name`, `equipment_id`, `delivery_date`, `st1`, `st2`) VALUES
(2, 'compound microscope', 'TD2S199', '2023-09-09', '', ''),
(13, 'compound microscope', 'TD2S199', '2023-09-09', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `r_id` int(25) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `service_id` varchar(20) NOT NULL,
  `solved_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_request`
--

CREATE TABLE `service_request` (
  `service_id` int(20) NOT NULL,
  `equipment_id` varchar(20) NOT NULL,
  `equipment_name` varchar(30) NOT NULL,
  `lab_name` varchar(50) NOT NULL,
  `issued_date` datetime NOT NULL DEFAULT current_timestamp(),
  `building_name` varchar(20) NOT NULL,
  `Building_id` varchar(20) NOT NULL,
  `floor` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `problem_description` varchar(15) NOT NULL,
  `status` varchar(30) NOT NULL,
  `employee_name` varchar(30) NOT NULL,
  `employee_id` varchar(11) NOT NULL,
  `solved_date` datetime NOT NULL,
  `problem_specification` varchar(400) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `image_data` varchar(50) NOT NULL,
  `image_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_request`
--

INSERT INTO `service_request` (`service_id`, `equipment_id`, `equipment_name`, `lab_name`, `issued_date`, `building_name`, `Building_id`, `floor`, `room`, `problem_description`, `status`, `employee_name`, `employee_id`, `solved_date`, `problem_specification`, `delivery_date`, `image_data`, `image_type`) VALUES
(4, 'TD3T3', 'laboratory water bath', 'chemistry lab', '2023-08-08 00:00:00', 'sse', 'TDSSE', '01', '122', 'functionality', 'Not working', 'ravi', '1001', '2023-10-03 10:36:43', 'working condition', '2023-10-18', '?PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0?\0\0\0?\0\0\0?L??\0\0\0sRGB\0???\0\0\0', 'png'),
(5, 'TD2S199', 'Compound Microscope', 'Bio lab', '2023-10-06 10:32:35', 'sse', 'TDSSE', '', '', 'functionality', 'Not working', 'rani', '1001', '2023-10-07 10:33:12', 'functionality was the problem', '2023-10-10', '?PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0\0\0?\0\0\0???\0\0\0sRGB\0???\0\0\0', 'image/png'),
(6, 'TD2S198', 'weighing Machine', 'Physics lab', '2023-10-28 09:58:41', 'sse', 'TDSSE', '111', '02', 'functionality', 'working', '', '001', '2023-10-28 09:58:41', '', '2023-10-28', '?PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0?\0\0\0?\0\0\0?L??\0\0\0sRGB\0???\0\0\0', ''),
(12, 'TD3T4', 'Desiccator', 'Physics lab', '2023-11-02 15:02:51', 'sse', 'STD04', '', '', 'functionality', 'Not Working', 'ravi', '', '0000-00-00 00:00:00', '', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_table`
--

CREATE TABLE `service_table` (
  `ss_id` int(20) NOT NULL,
  `service_id` varchar(15) NOT NULL,
  `equipment_name` varchar(20) NOT NULL,
  `equipment_id` varchar(20) NOT NULL,
  `problem_description` varchar(20) NOT NULL,
  `lab_name` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `image` varchar(40) NOT NULL,
  `issued_date` date NOT NULL,
  `solved_date` date NOT NULL,
  `price` varchar(20) NOT NULL,
  `employee_name` varchar(15) NOT NULL,
  `employee_id` varchar(20) NOT NULL,
  `Category` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `u_id` int(20) NOT NULL,
  `Did` int(11) NOT NULL,
  `employee_name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `employee_id` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `phn_num` bigint(20) NOT NULL,
  `other_details` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`u_id`, `Did`, `employee_name`, `password`, `Category`, `user_id`, `email`, `employee_id`, `designation`, `phn_num`, `other_details`) VALUES
(1, 2, 'raghav', 'rrvv', 'Supervisor', 'sv01', 'tens@b.com', '', '', 0, ''),
(2, 2, 'ramesh', 'rrhh', 'Supervisor', 'sv02', 'prab@ru.com', '', '', 0, ''),
(3, 3, 'rani', 'rrii', 'Technician', 'te01', 'cata@mia.com', '', '', 0, ''),
(4, 3, 'ravi', 'ravi', 'Technician', 'te02', 'shanti@neel.com', '', '', 0, ''),
(5, 4, 'ram', 'ram', 'User', 'u121', 'ram@gmail.com', '', '', 0, ''),
(8, 1, 'jeevan', 'jeev', 'admin', 'ad12', 'jeev@n.com', '', '', 0, ''),
(10, 2, 'rahul', '', 'Supervisor', '', 'rah@gmail.com', 'su12', '', 0, 'ios'),
(11, 2, 'Himansh', '', 'Supervisor', '', '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `si_no`
--

CREATE TABLE `si_no` (
  `i_id` int(20) NOT NULL,
  `equipment_name` varchar(25) NOT NULL,
  `equipment_id` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `features` varchar(300) NOT NULL,
  `services_undergone` varchar(50) NOT NULL,
  `total_services` varchar(50) NOT NULL,
  `purchase_date` date NOT NULL,
  `warranty_period` varchar(20) NOT NULL,
  `warrantyend_date` date NOT NULL,
  `price` varchar(50) NOT NULL,
  `room` varchar(20) NOT NULL,
  `floor` varchar(20) NOT NULL,
  `lab_name` varchar(50) NOT NULL,
  `delivery_date` date NOT NULL DEFAULT current_timestamp(),
  `Building_name` varchar(150) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `si_no`
--

INSERT INTO `si_no` (`i_id`, `equipment_name`, `equipment_id`, `status`, `features`, `services_undergone`, `total_services`, `purchase_date`, `warranty_period`, `warrantyend_date`, `price`, `room`, `floor`, `lab_name`, `delivery_date`, `Building_name`, `image`) VALUES
(1, 'Compound Microscope', 'TD2S199', 'Not Working', 'A microscope with a high resolution and uses two sets of lenses providing a 2-dimensional image of the sample. ', '1', '1', '2023-10-19', '1', '2023-10-12', '', '121', '02', 'Bio lab', '2023-10-05', '', 0x687474703a2f2f3139322e3136382e35322e39342f54657374696e674150492f696d616765732f636f6d706f756e642532304d6963726f73636f70652e6a70672e706e67),
(2, 'weighing Machine', 'TD2S198', 'Not Working', 'An analytical balance is recommended when working with smaller scales. Analytical balances can be precise up to 0.1 mg, which makes the room for error quite small.', '1', '1', '2023-10-12', '1', '2023-10-18', '', '111', '02', 'Physics lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f7765696768696e672532306379636c652e6a70672e706e67),
(3, 'laboratory water bath', 'TD3T3', ' Working', ' A water bath generally consists of a heating unit, a stainless steel chamber that holds the water and samples, and a control interface.', '1', '0', '2023-10-04', '1', '2024-10-04', '45,000', '122', '01', 'Chemistry lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f6c61626f7261746f72792532307761746572253230626174682e706e67),
(4, 'Desiccator', 'TD3T4', ' Working', 'Desiccators are sealable enclosures containing desiccants used for preserving moisture-sensitive items such as cobalt chloride paper for another use.', '0', '0', '2022-10-14', '1', '2023-10-14', '40,000', '222', '02', 'Physics lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f44657369636361746f722e706e67),
(5, 'Multi Meter', 'TD3T05', ' Working', 'A typical multimeter can measure voltage, resistance, and current, in which case can be used as a voltmeter, ammeter, and ohmmeter.', '0', '0', '2020-10-08', '1', '2021-10-08', '', '22', '0G', 'Electrical lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f6d756c74692532306d657472652e706e67),
(6, 'lathe Machine', 'TD3T07', ' Working', 'A lathe consists of four main parts: the bed, spindle, turret, and tailstock. Briefly, the main spindle holds the material and rotates it.', '0', '0', '2021-10-08', '1', '2022-10-08', '', '01', '0G', 'Workshop and Mechanics lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f6c617468656d616368696e652e706e67),
(7, 'Caloriemeter', 'TD3T08', ' Working', 'Calorimeters include a decomposition vessel (also called a bomb), in which the solid or liquid sample is placed. ', '0', '0', '2021-10-01', '1', '2022-10-01', '', '331', '03', 'Electrical lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f63616c6f7269656d657465722e706e67),
(8, 'High Pressure Autoclave', 'TD3T5', ' Working', 'Pressure Range: 0 – 20bar.\r\nTemperature Range: 25 – 250 °C.\r\nDiameter: 400 – 1400 mm.\r\nVolume: 60 to 5000 litres.\r\nFastening: Bayonetlock from Ø 500 mm automatic.\r\nMaterial: high grade steel 1.4571/ AiSi 316 or 1.4404/AiSi316L.\r\nStandards – Certifications: 2014/68/EU & AD2000.', '', '0', '2023-10-13', '1', '2024-10-13', '', '03', '315', 'Civil lab', '2023-10-05', 'SSE', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f4869676825323050726573737572652532304175746f636c6176652e706e67),
(9, 'Centrifuge', 'TD2S197', 'Working', 'The centrifugation technique uses a centrifugal field to separate particles suspended in a liquid medium.', '1', '0', '2023-05-05', '1', '2024-05-05', '45,000', '121', '02', 'Bio lab', '2023-10-05', '', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f63656e747269667567652e6a70672e706e67),
(10, 'Plate Reader', 'TD2S195', 'Working', 'Absorbance. Absorbance measures how much light is lost (absorbed) when transmitted through a sample. ... Fluorescence intensity (incl. FRET) ... Luminescence (incl. BRET) ... Fluorescence polarization. ... AlphaScreen. ... Nephelometry. ... Time-resolved fluorescence.TR-FRET.', '1', '0', '2022-12-09', '1', '2023-12-09', '', '', '', 'Bio lab', '2023-12-20', '', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f706c6174652532307265616465722e6a70672e706e67),
(11, 'Solidering Iron', 'TD2S194', 'Working', 'Pressure Range: 0 – 20bar. Temperature Range: 25 – 250 °C. Diameter: 400 – 1400 mm. Volume: 60 to 5000 litres. Fastening: Bayonetlock from Ø 500 mm automatic. Material: high grade steel 1.4571/ AiSi 316 or 1.4404/AiSi316L. Standards – Certifications: 2014/68/EU & AD2000.', '1', '0', '2022-12-16', '1', '2023-12-16', '', '', '', 'Electronics lab', '2023-12-20', '', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f736f6c69646572696e6725323069726f6e2e706e67),
(12, 'HTC View', 'TD3T6', 'Working', ' Features 24 sensors, multi-function trackpad, dual-stage trigger, HD haptic feedback and a rechargeable battery. Includes one controller, lanyard, micro-USB cable and power adapter. Battery capacity: 960 mAh.', '0', '0', '2021-11-02', '1', '2022-11-02', '', '', '', 'AR and VR lab', '2023-12-20', '', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f485443253230566965772e706e67),
(13, 'Function Generator', 'TD3T7', 'Working', 'The typical specifications for a general-purpose function generator are as follows: Produces pulse output, sawtooth, triangular, square, and sine. Output amplitude up to 10 V peak-to-peak. Support for phase modulation, frequency modulation, or amplitude modulation.', '0', '0', '2023-10-19', '1', '2024-10-19', '', '', '', 'Electronics lab', '2023-12-20', '', 0x687474703a2f2f3139322e3136382e3137342e39342f54657374696e674150492f696d616765732f66756e6374696f6e25323067656e657261746f722e706e67);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_supervisor`
--
ALTER TABLE `add_supervisor`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `building_allocation`
--
ALTER TABLE `building_allocation`
  ADD PRIMARY KEY (`B_id`);

--
-- Indexes for table `building_names`
--
ALTER TABLE `building_names`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lab_table`
--
ALTER TABLE `lab_table`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `notify_status`
--
ALTER TABLE `notify_status`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `service_request`
--
ALTER TABLE `service_request`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_table`
--
ALTER TABLE `service_table`
  ADD PRIMARY KEY (`ss_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `si_no`
--
ALTER TABLE `si_no`
  ADD PRIMARY KEY (`i_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_supervisor`
--
ALTER TABLE `add_supervisor`
  MODIFY `s_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `building_allocation`
--
ALTER TABLE `building_allocation`
  MODIFY `B_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `building_names`
--
ALTER TABLE `building_names`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lab_table`
--
ALTER TABLE `lab_table`
  MODIFY `s_no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notify_status`
--
ALTER TABLE `notify_status`
  MODIFY `n_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `r_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_request`
--
ALTER TABLE `service_request`
  MODIFY `service_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `service_table`
--
ALTER TABLE `service_table`
  MODIFY `ss_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `si_no`
--
ALTER TABLE `si_no`
  MODIFY `i_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
