-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2024 at 12:05 PM
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
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2024-07-19 10:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Maruti', '2017-06-19 06:22:13', '2024-10-09 10:30:11'),
(8, 'Mercedes', '2024-10-09 10:39:51', NULL),
(9, 'Hyundai', '2024-10-17 09:39:58', NULL),
(10, 'Ford', '2024-10-17 09:51:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Mumbai, India																									', 'contactus@vrs.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

CREATE TABLE `tblowner` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `carnumber` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `cartype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At VRS, we value your privacy and are committed to protecting your personal information. This Privacy Policy outlines how we collect, use, disclose, and safeguard your data when you use our website and services. We collect information such as your name, email address, phone number, and payment details solely to facilitate your car rental experience and enhance our services. We implement industry-standard security measures to protect your data from unauthorized access and ensure that your information is kept confidential. We do not sell or share your personal information with third parties without your consent, except as required by law or to fulfill our service obligations. By using our website, you agree to the terms of this Privacy Policy. If you have any questions or concerns regarding your privacy, please feel free to contact us.</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Welcome to VRS, your trusted partner in convenient and reliable car rental services. We are dedicated to providing a seamless experience for our customers, offering a diverse fleet of vehicles, including SUVs, sedans, and electric cars, tailored to meet your travel needs. Our user-friendly online platform allows you to easily browse, book, and manage your rentals, all from the comfort of your home. With a focus on exceptional customer service, transparent pricing, and the latest technology, we aim to make your journey as smooth as possible. Join us as we drive towards a more sustainable future, one rental at a time.</span>'),
(11, 'FAQs', 'faqs', ' <style>\r\n        body {\r\n            font-family: Arial, sans-serif;\r\n            background-color: #f9f9f9;\r\n            margin: 0;\r\n            padding: 20px;\r\n        }\r\n        .faq-container {\r\n            max-width: 800px;\r\n            margin: auto;\r\n            background: #ffffff;\r\n            border-radius: 5px;\r\n            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);\r\n            padding: 20px;\r\n        }\r\n        h2 {\r\n            text-align: center;\r\n            color: #333;\r\n        }\r\n        .faq {\r\n            margin-bottom: 20px;\r\n        }\r\n        .faq h3 {\r\n            margin: 0;\r\n            padding: 10px;\r\n            background: #007BFF;\r\n            color: white;\r\n            border-radius: 5px;\r\n        }\r\n        .faq p {\r\n            margin: 10px 0;\r\n            line-height: 1.6;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"faq-container\">\r\n    <h2>Frequently Asked Questions (FAQs)</h2>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>1. What types of vehicles are available for rent?</h3>\r\n        <p>We offer a diverse fleet of vehicles, including SUVs, sedans, and electric cars. You can browse our full selection on our website to find the perfect vehicle for your needs.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>2. How do I book a vehicle?</h3>\r\n        <p>Booking a vehicle is easy! Simply visit our website, select your preferred vehicle, choose your rental dates, and proceed to the payment section to complete your booking.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>3. What payment methods do you accept?</h3>\r\n        <p>We accept various payment methods, including credit/debit cards and popular payment gateways like PayPal and Stripe, ensuring a secure transaction process.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>4. Is there a minimum rental period?</h3>\r\n        <p>Yes, our minimum rental period is typically 24 hours. Please check the specific vehicle listing for details on any additional requirements or restrictions.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>5. What is your cancellation policy?</h3>\r\n        <p>You can cancel your reservation up to 24 hours before the rental start time for a full refund. Cancellations made less than 24 hours in advance may incur a fee. Please refer to our cancellation policy for more details.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>6. Do I need insurance to rent a vehicle?</h3>\r\n        <p>While we provide basic insurance coverage with all rentals, we recommend purchasing additional insurance for complete peace of mind. You can choose to add insurance options during the booking process.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>7. What should I do if I encounter a problem with my rental?</h3>\r\n        <p>If you experience any issues with your rental, please contact our customer support team immediately. We are available 24/7 to assist you and resolve any concerns.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>8. Can I extend my rental period?</h3>\r\n        <p>Yes, you can extend your rental period by contacting our customer support team before your original rental period ends. Additional charges may apply.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>9. Are there any age restrictions for renting a vehicle?</h3>\r\n        <p>Yes, renters must be at least 21 years old to rent a vehicle. Drivers under the age of 25 may be subject to additional fees. Please check our terms for more details.</p>\r\n    </div>\r\n    \r\n    <div class=\"faq\">\r\n        <h3>10. How do I return the vehicle?</h3>\r\n        <p>Return instructions will be provided during the booking process. Generally, you should return the vehicle to the designated drop-off location by the agreed-upon time. Please ensure that the vehicle is in the same condition as when you received it.</p>\r\n    </div>\r\n</div>\r\n\r\n</body>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'Great for Family trips', '2017-06-18 02:14:31', 1),
(3, 'charan@gmail.com', 'Improved Booking', '2024-10-09 11:00:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Harry ', 'demo@gmail.com', '1234', '5436445786', NULL, NULL, 'Singapore', 'China', '2017-06-17 19:59:27', '2024-10-09 10:57:49'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Mark K', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'PKL', 'PKL', 'PKL', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Varun', 'test@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9999857868', '', 'NZ', 'NZ', 'NZ', '2017-06-17 20:03:36', '2024-10-09 11:03:02'),
(5, 'Chaitanya Lade', 'chaitanyx@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9372594316', NULL, NULL, NULL, NULL, '2024-07-19 10:24:07', NULL),
(7, 'Charan ', 'charan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '9876567890', NULL, NULL, NULL, NULL, '2024-10-09 10:59:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, '2 Series Gran Coupe 2015 Edition', 2, 'A flamboyant expression of legendary BMW sportiness. A formidable epitome of advanced driving dynamics. All combined in a progressive coupé design with class-defining luxury. The BMW 2 Series Gran Coupé is much more than a conventional sports coupé. It is an irresistible driving force, inviting you to step out, stand out and do things your own way - in more ways than one.', 10000, 'Petrol', 2015, 4, 'bmw 3.jpg', 'bmw 3 4.jpg', 'bmw 3 2.jpg', 'bmw 3 1.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2024-10-09 10:52:26'),
(2, 'X-Trail', 4, 'The Nissan X-Trail is a mid-size, seven-seater luxury SUV that\'s been produced by Nissan since 2000', 950, 'CNG', 2015, 7, 'xtrailxtrailrightfrontthreequarter.jpeg', 'xtrailxtrailleftsideview.jpeg', 'xtrailnissanxtrailinstrumentcluster2.jpeg', 'xtrailnissanxtrailinfotainmentsystem0.jpeg', '', 1, 1, NULL, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, '2017-06-19 16:16:17', '2024-10-09 10:36:01'),
(3, 'Benz-E-class-E250-Edition', 8, 'The Mercedes-Benz E-Class E250 Edition is a luxury sedan known for its refined design, powerful performance, and advanced technology. It features a 2.0L turbocharged engine delivering smooth power and efficiency, along with premium interiors for comfort. Advanced safety and driver-assistance features complement its elegant driving experience.', 600, 'Diesel', 2011, 4, 'processed_5fa387dfbf9ae96a30c738a0071f1af6.avif', 'processed_687d3b61ae127ba5f247920455424a06.avif', '2c643b584a6d1942946bb31deb4a3c49.avif', '0122104803546b637c986f697a7cc9cc.avif', '', 1, 1, 1, 1, NULL, 1, NULL, NULL, 1, 1, NULL, 1, '2017-06-19 16:18:20', '2024-10-09 10:43:04'),
(4, 'SX4 VXI', 1, 'The **Maruti SX4 VXI** is a mid-sized sedan that offers a 1.6L petrol engine, delivering a balanced performance with 102 bhp. Known for its spacious interior, elevated driving position, and decent ground clearance, it\'s designed for both city and highway driving. The car features comfort-focused amenities and a robust build, making it a reliable choice in its segment.', 400, 'Petrol', 2008, 4, 'processed_49a0376bfaed1a7e841d92c48696134b.avif', 'processed_629178992ad9d45b38e34854569cefcb.avif', '1743f82b8dd59ccf28087f0ceeee7a7d.avif', '28af127247e90b4546a55a0e867b417d.avif', '', 1, 1, 1, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-19 16:18:43', '2024-10-09 10:46:37'),
(5, 'Fortuner 4x4 MT', 5, '\r\nThe Toyota Fortuner 4x4 MT is a rugged SUV equipped with a 2.8L diesel engine, producing 201 bhp and 500 Nm of torque. It features a 6-speed manual transmission and a robust 4x4 drivetrain, making it ideal for off-road adventures. With its bold design, spacious interiors, and advanced safety features, the Fortuner is a top choice for both urban and off-road driving', 550, 'Petrol', 2012, 7, 'processed_92136272f16ce5cf1c0e184e03669f31.avif', 'processed_6cf556a016a153b900c86391965219b1.avif', '741f2295737763dcdedb0412601c2741.avif', '5998742fb224704bb09146c50a48c983.avif', NULL, 1, 1, 1, 1, NULL, 1, NULL, 1, 1, NULL, 1, 1, '2017-06-20 17:57:09', '2024-10-09 10:50:15'),
(6, 'A8 L 3.0 TDI quattro', 3, 'The **Audi A8** is a luxury sedan that combines cutting-edge technology, exceptional comfort, and powerful performance. Powered by a range of engines, including a 3.0L V6 and a 4.0L V8, it delivers a smooth yet dynamic driving experience. With its refined interior, advanced driver assistance systems, and signature Quattro all-wheel drive, the A8 epitomizes elegance and sophistication in the executive sedan segment.', 700, 'Diesel', 2014, 4, 'processed_img2910293__used_car_2910293_1699421021.webp', 'processed_img2910293__used_car_2910293_1699421019.webp', 'img2910293__used_car_2910293_1699421025.webp', 'img2910293__used_car_2910293_1699421028.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-07-22 06:11:34', '2024-10-09 10:55:27'),
(7, 'Creta 1.6 VTVT AT SX Plus', 9, 'Compact SUV known for its blend of style, comfort, and performance. Powered by a 1.6-liter VTVT petrol engine, it delivers a smooth and refined drive with its automatic transmission. The vehicle offers features like a touchscreen infotainment system, rear parking camera, keyless entry, and push-button start. Its spacious interiors and solid build quality provide a premium feel, while safety features like dual airbags, ABS, and electronic stability control make it a reliable choice for families. It\'s well-suited for both city driving and occasional highway trips.', 250, 'Petrol', 2017, 5, 'processed_367a7a0a67afa1e6d386db410d42d60f.avif', 'a6f7c0f3553ef76e0b95609282db6f2c.avif', 'e4dc47d9a8ca9d548d4fda89b900c50d.avif', 'ab7b6d51169bad4c747bed33e0684d06.avif', '', 1, 1, NULL, 1, NULL, 1, NULL, NULL, 1, 1, 1, 1, '2024-10-17 09:42:28', NULL),
(8, 'Baleno Zeta CVT', 7, 'Popular premium hatchback, offering a comfortable driving experience with its continuously variable transmission (CVT). Powered by a 1.2-liter petrol engine, it provides a smooth and fuel-efficient ride, ideal for city commutes. The Zeta variant is packed with features like a 7-inch SmartPlay infotainment system with Apple CarPlay and Android Auto, automatic climate control, keyless entry with push-button start, and rear parking sensors. Its spacious cabin, good legroom, and ample boot space make it a practical choice for families, while safety features like dual airbags and ABS ensure peace of mind on the road.', 300, 'Petrol', 2019, 5, 'processed_4e76b333c49549458cf87035e8e622d4.avif', '9cb2a2f16a1ebfc1d10fdc64b8a4b826.avif', '1918bfc955cbc8e33e8b09c91c3cb326.avif', 'e9813c21d2490f8d741a809d257e18bd.avif', '', 1, 1, 1, 1, NULL, 1, NULL, 1, 1, 1, 1, 1, '2024-10-17 09:46:09', NULL),
(9, '5 Series 520d Luxury Line', 2, 'premium executive sedan that combines performance, luxury, and cutting-edge technology. Powered by a 2.0-liter four-cylinder turbocharged diesel engine, it delivers 190 horsepower and impressive torque, Offering a dynamic yet efficient driving experience. The 8-speed automatic transmission ensures smooth shifts, enhancing both city and highway driving. The Luxury Line trim is adorned with elegant chrome accents, leather upholstery, fine wood finishes, and ambient lighting, creating a sophisticated cabin atmosphere. Advanced features include a high-definition touchscreen infotainment system, digital instrument cluster, gesture controls, a panoramic sunroof, and a host of driver assistance systems like parking assistance and lane departure warning, ensuring a premium experience for both driver and passengers.', 800, 'Diesel', 2021, 5, 'processed_d4ae866bee56345ff09645d475ff6568.avif', 'processed_a96e597d1f3e8a255832a02cc338eca0.avif', '9e3585af03f0e6d9cf8900b5397eaf68.avif', 'f5e9e49706d6b707aab69bc738061854.avif', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2024-10-17 09:50:22', NULL),
(10, 'Ecosport 1.5 Petrol Titanium Plus AT BSIV', 10, 'Compact SUV that offers a blend of robust performance and modern features. Powered by a 1.5-liter petrol engine, it delivers 123 horsepower, paired with a 6-speed automatic transmission for smooth and convenient driving, particularly in urban settings. The Titanium Plus trim is well-equipped with premium features, including a sunroof, a SYNC 3 touchscreen infotainment system with Apple CarPlay and Android Auto, automatic climate control, and leather seats. Safety is enhanced with six airbags, ABS with EBD, and electronic stability control. With its sporty design, high ground clearance, and compact dimensions, it\'s a versatile vehicle for city driving and occasional off-road trips.', 450, 'Petrol', 2019, 5, 'processed_a634d16434b62ee70b6da9cd09a78303.avif', 'processed_eff1204cc061677cca0a893bb3d4dbe8.avif', '2f8b40add8611aac8b21b0b0d42a127a.avif', 'c77b966d998ae9ad3385f983e3238891.avif', '', 1, NULL, NULL, 1, 1, 1, NULL, NULL, 1, NULL, 1, NULL, '2024-10-17 09:54:58', NULL),
(11, 'Benz GLE 250d', 8, ' Luxury SUV that combines elegance, power, and advanced technology. Powered by a 2.1-liter four-cylinder diesel engine, it produces 204 horsepower and ample torque, providing a refined yet powerful driving experience. The 9-speed automatic transmission ensures seamless gear shifts and improved fuel efficiency. Inside, the GLE 250d offers a plush cabin with premium leather upholstery, a COMAND infotainment system, and a host of comfort features like a panoramic sunroof, ambient lighting, and electrically adjustable seats. It also boasts advanced safety systems, including multiple airbags, adaptive braking, and attention assist. With its commanding road presence, spacious interiors, and off-road capability, it\'s designed for both urban luxury and adventurous drives.', 800, 'Diesel', 2019, 5, 'processed_a3bb6c5e4bfaf39efc499bb0690367c8.webp', 'processed_65173aed2d82bd7c660fb1da68054eb9.webp', 'fdf467b6509b0a8bd453faaeba783fcd.webp', 'f52639a6ed347292a39624f0053688e8.webp', '', 1, 1, NULL, 1, 1, 1, 1, NULL, 1, 1, 1, 1, '2024-10-17 10:00:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblowner`
--
ALTER TABLE `tblowner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblowner`
--
ALTER TABLE `tblowner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
