-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 01:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_community_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cp_account`
--

CREATE TABLE `cp_account` (
  `Regi_id` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Contact` int(15) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_account`
--

INSERT INTO `cp_account` (`Regi_id`, `Fname`, `Lname`, `Email`, `Password`, `Contact`, `City`, `Country`, `user_id`) VALUES
(11, 'Chathu', 'Dil', 'chathu77@gmail.com', 'AGFmnv678', 742269978, 'Bandarawela', 'Sri Lanka', 1),
(22, 'Kevin', 'Leo', 'kevin88@gmail.com', 'QWEsdf123', 760528233, 'Tokyo', 'Japan', 2),
(33, 'Kara', 'Ashley', 'kara56@gmail.com', 'CVByui098', 713800289, 'Rome', 'Italy', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_admin`
--

CREATE TABLE `cp_admin` (
  `admin_id` int(11) NOT NULL,
  `admin name` varchar(40) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_admin`
--

INSERT INTO `cp_admin` (`admin_id`, `admin name`, `email`, `password`, `user_id`) VALUES
(1, 'Emma Perry', 'emmaperry@gmail.com', 'IUYsdf789', 1),
(2, 'Jenny Smith', 'jennysmith@gmail.com', 'GHJtyu678', 2),
(3, 'Jacob Tyler', 'jacobtyler@gmail.com', 'FJKrty673', 3),
(111, 'Emma Perry', 'emmaperry@gmail.com', 'IUYsdf789', 1),
(222, 'Jenny Smith', 'jennysmith@gmail.com', 'GHJtyu678', 2),
(333, 'Jacob Tyler', 'jacobtyler@gmail.com', 'FJKrty673', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_bulkemail`
--

CREATE TABLE `cp_bulkemail` (
  `B_Email_id` int(11) NOT NULL,
  `B_Email` varchar(35) NOT NULL,
  `B_EmailType` varchar(10) NOT NULL,
  `Admin_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_bulkemail`
--

INSERT INTO `cp_bulkemail` (`B_Email_id`, `B_Email`, `B_EmailType`, `Admin_ID`) VALUES
(777, 'chathu77@gmail.com', 'gmail', 111),
(888, 'kevin88@gmail.com', 'gmail', 222),
(999, 'kara56@gmail.com', 'gmail', 333);

-- --------------------------------------------------------

--
-- Table structure for table `cp_company`
--

CREATE TABLE `cp_company` (
  `Com_id` int(11) NOT NULL,
  `CompanyName` varchar(40) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Contact` int(15) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Vacancy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_company`
--

INSERT INTO `cp_company` (`Com_id`, `CompanyName`, `Email`, `Contact`, `Location`, `Vacancy_id`) VALUES
(1, 'Virtusa', 'virtusa@gmail.com', 572269976, 'Kandy', 1),
(2, 'Telecome', 'telecom@gmail.com', 570528233, 'Milan', 2),
(3, 'Corella', 'corella@gmail.com', 573800289, 'Narita', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_job`
--

CREATE TABLE `cp_job` (
  `Vacancy_id` int(11) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `Vacancy` varchar(20) NOT NULL,
  `Salary` int(15) NOT NULL,
  `Shift` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_job`
--

INSERT INTO `cp_job` (`Vacancy_id`, `CompanyName`, `Vacancy`, `Salary`, `Shift`, `user_id`) VALUES
(1, 'Virtusa', 'Software Engineer', 90000, 'Morning', 1),
(2, 'Telecome', 'Technician', 50000, 'Split', 2),
(3, 'Corella', 'Web Developer', 80000, 'Closing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_jobapply`
--

CREATE TABLE `cp_jobapply` (
  `JopApp_ID` int(11) NOT NULL,
  `Vacancy` varchar(20) NOT NULL,
  `Company Name` varchar(20) NOT NULL,
  `Vacancy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_jobapply`
--

INSERT INTO `cp_jobapply` (`JopApp_ID`, `Vacancy`, `Company Name`, `Vacancy_id`) VALUES
(220, 'Software Engineer', 'Virtusa', 1),
(221, 'Technician', 'Telecome', 2),
(222, 'Web Developer', 'Corella', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_login`
--

CREATE TABLE `cp_login` (
  `Login_id` int(11) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_login`
--

INSERT INTO `cp_login` (`Login_id`, `Email`, `Password`, `User_ID`) VALUES
(2222, 'chathu77@gmail.com', 'QWEsdf12', 1),
(3333, 'kevin88@gmail.com', 'AGFmnv67', 2),
(4444, 'kara56@gmail.com', 'QWE123rt', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_message`
--

CREATE TABLE `cp_message` (
  `Msg_ID` int(11) NOT NULL,
  `Content` varchar(60) NOT NULL,
  `Sender` varchar(20) NOT NULL,
  `Reciver` varchar(20) NOT NULL,
  `Date` date NOT NULL,
  `Time` int(5) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cp_pro`
--

CREATE TABLE `cp_pro` (
  `Pro_ID` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Work` varchar(30) NOT NULL,
  `Favorite` varchar(30) NOT NULL,
  `Education` varchar(30) NOT NULL,
  `Skills` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_pro`
--

INSERT INTO `cp_pro` (`Pro_ID`, `Name`, `Work`, `Favorite`, `Education`, `Skills`, `user_id`) VALUES
(333, 'Chathu Jayarathna', 'AIA Finance', 'Music, Food', 'Lithan Academy', 'Flexible', 1),
(334, 'Kevin Leo', 'Thaj', 'Travel', 'Winston Hotel School', 'Painting', 2),
(335, 'Kara Ashley', 'S&S Holdings', 'Reading', 'University of Stanford', 'Goof Judgment', 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_searchuser`
--

CREATE TABLE `cp_searchuser` (
  `search_id` int(11) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_searchuser`
--

INSERT INTO `cp_searchuser` (`search_id`, `Name`, `Location`, `User_ID`) VALUES
(4123, 'Blake Knox', 'France', 1),
(4233, 'Joan Davies', 'Dubai', 3),
(4234, 'Diana Alsop', 'Bangladesh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cp_updatepro`
--

CREATE TABLE `cp_updatepro` (
  `Upd_ID` int(11) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Skills` varchar(30) NOT NULL,
  `Education` varchar(30) NOT NULL,
  `Work` varchar(30) NOT NULL,
  `Contact` int(15) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_updatepro`
--

INSERT INTO `cp_updatepro` (`Upd_ID`, `Fname`, `Lname`, `Skills`, `Education`, `Work`, `Contact`, `user_id`) VALUES
(333, 'Chathu', 'Jayarathna', 'Flexible', 'Lithan Academy', 'AIA Finance', 742269978, 1),
(334, 'Kevin', 'Leo', 'Painting', 'Winston Hotel School', 'Thaj', 760528233, 2),
(335, 'Kara', 'Ashley', 'Goof Judgment', 'University of Stanford', 'S&S Holdings', 713800289, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cp_user`
--

CREATE TABLE `cp_user` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cp_user`
--

INSERT INTO `cp_user` (`User_ID`, `Username`, `Email`) VALUES
(1, 'chathu77', 'chathu77@gmail.com'),
(2, 'kevin88', 'kevin88@gmail.com'),
(3, 'kara56', 'kara56@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `Userscol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cp_account`
--
ALTER TABLE `cp_account`
  ADD PRIMARY KEY (`Regi_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cp_admin`
--
ALTER TABLE `cp_admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cp_bulkemail`
--
ALTER TABLE `cp_bulkemail`
  ADD PRIMARY KEY (`B_Email_id`),
  ADD KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `cp_company`
--
ALTER TABLE `cp_company`
  ADD PRIMARY KEY (`Com_id`),
  ADD KEY `Vacancy_id` (`Vacancy_id`);

--
-- Indexes for table `cp_job`
--
ALTER TABLE `cp_job`
  ADD PRIMARY KEY (`Vacancy_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cp_jobapply`
--
ALTER TABLE `cp_jobapply`
  ADD PRIMARY KEY (`JopApp_ID`),
  ADD KEY `Vacancy_id` (`Vacancy_id`);

--
-- Indexes for table `cp_login`
--
ALTER TABLE `cp_login`
  ADD PRIMARY KEY (`Login_id`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `cp_message`
--
ALTER TABLE `cp_message`
  ADD PRIMARY KEY (`Msg_ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cp_pro`
--
ALTER TABLE `cp_pro`
  ADD PRIMARY KEY (`Pro_ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cp_searchuser`
--
ALTER TABLE `cp_searchuser`
  ADD PRIMARY KEY (`search_id`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `cp_updatepro`
--
ALTER TABLE `cp_updatepro`
  ADD PRIMARY KEY (`Upd_ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cp_user`
--
ALTER TABLE `cp_user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cp_account`
--
ALTER TABLE `cp_account`
  MODIFY `Regi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `cp_admin`
--
ALTER TABLE `cp_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `cp_bulkemail`
--
ALTER TABLE `cp_bulkemail`
  MODIFY `B_Email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `cp_company`
--
ALTER TABLE `cp_company`
  MODIFY `Com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=681;

--
-- AUTO_INCREMENT for table `cp_job`
--
ALTER TABLE `cp_job`
  MODIFY `Vacancy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cp_jobapply`
--
ALTER TABLE `cp_jobapply`
  MODIFY `JopApp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `cp_login`
--
ALTER TABLE `cp_login`
  MODIFY `Login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4445;

--
-- AUTO_INCREMENT for table `cp_message`
--
ALTER TABLE `cp_message`
  MODIFY `Msg_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cp_pro`
--
ALTER TABLE `cp_pro`
  MODIFY `Pro_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `cp_searchuser`
--
ALTER TABLE `cp_searchuser`
  MODIFY `search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4235;

--
-- AUTO_INCREMENT for table `cp_updatepro`
--
ALTER TABLE `cp_updatepro`
  MODIFY `Upd_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=336;

--
-- AUTO_INCREMENT for table `cp_user`
--
ALTER TABLE `cp_user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cp_account`
--
ALTER TABLE `cp_account`
  ADD CONSTRAINT `cp_account_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_admin`
--
ALTER TABLE `cp_admin`
  ADD CONSTRAINT `cp_admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_bulkemail`
--
ALTER TABLE `cp_bulkemail`
  ADD CONSTRAINT `cp_bulkemail_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `cp_admin` (`Admin_ID`);

--
-- Constraints for table `cp_company`
--
ALTER TABLE `cp_company`
  ADD CONSTRAINT `cp_company_ibfk_1` FOREIGN KEY (`Vacancy_id`) REFERENCES `cp_job` (`Vacancy_id`);

--
-- Constraints for table `cp_job`
--
ALTER TABLE `cp_job`
  ADD CONSTRAINT `cp_job_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_jobapply`
--
ALTER TABLE `cp_jobapply`
  ADD CONSTRAINT `cp_jobapply_ibfk_1` FOREIGN KEY (`Vacancy_id`) REFERENCES `cp_job` (`Vacancy_id`);

--
-- Constraints for table `cp_login`
--
ALTER TABLE `cp_login`
  ADD CONSTRAINT `cp_login_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_message`
--
ALTER TABLE `cp_message`
  ADD CONSTRAINT `cp_message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_pro`
--
ALTER TABLE `cp_pro`
  ADD CONSTRAINT `cp_pro_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_searchuser`
--
ALTER TABLE `cp_searchuser`
  ADD CONSTRAINT `cp_searchuser_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `cp_user` (`User_ID`);

--
-- Constraints for table `cp_updatepro`
--
ALTER TABLE `cp_updatepro`
  ADD CONSTRAINT `cp_updatepro_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cp_user` (`User_ID`);
COMMIT;
use abc_community_portal;
show index from cp_admin;
CREATE INDEX adminx
ON admins (email,password);
show index from cp_admin;

use abc_community_portal;
show index from cp_account;
CREATE INDEX accountx
ON accounts (Fname,Email,Password);
show index from cp_account;

use abc_community_portal;
show index from cp_bulkemail;
CREATE INDEX bulkemailx
ON bulkemails (B_Email,B_EmailType);
show index from cp_bulkemail;


use abc_community_portal;
show index from cp_company;
CREATE INDEX companyx
ON companys (Email,Contact,Location);
show index from cp_company;

use abc_community_portal;
show index from cp_job;
CREATE INDEX jobx
ON jobs (Salary,Shift);
show index from cp_job;

use abc_community_portal;
show index from cp_jobapply;
CREATE INDEX jobapplyx
ON jobapplys (Vacancy,CompanyName);
show index from cp_jobapply;

use abc_community_portal;
show index from cp_login;
CREATE INDEX loginx
ON logins (Email,Password);
show index from cp_login;

use abc_community_portal;
show index from cp_message;
CREATE INDEX messagex
ON messages (Sender,Reciver);
show index from cp_message;

use abc_community_portal;
show index from cp_pro;
CREATE INDEX prox
ON pros (Name,Work,Favorite,Education,Skills);
show index from cp_pro;

use abc_community_portal;
show index from cp_searchuser;
CREATE INDEX searchx
ON searchs (Name,Location);
show index from cp_searchuser;

use abc_community_portal;
show index from cp_user;
CREATE INDEX userx
ON users (Username,Email);
show index from cp_user;

SELECT Upd_ID, CONCAT(Fname, ' ',Lname) AS name, Skills, Education, CONCAT(Email, ', ',Contact) AS Contact 
FROM cp_updateprofile 
ORDER BY name;
SELECT Vacancy_ID, CONCAT(CompanyName) AS name, Vacancy, CONCAT(Salary, ', ',Shift) AS Extra
FROM cp_job 
ORDER BY name;
INSERT INTO `abc_community_portal`.`cp_account` (`Regi_ID`, `Fname`, `Email`, `Password`, `Contact`, `User_ID`) 
VALUES ('11', 'Chathu', 'chathu77@gmail.com', 'fgt5df4', '0742269976', '1');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
