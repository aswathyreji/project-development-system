-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 06:11 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrutinizer`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminwork`
--

CREATE TABLE `adminwork` (
  `workid` int(6) NOT NULL,
  `userid` int(6) NOT NULL,
  `projecttopic` varchar(20) NOT NULL,
  `project` varchar(500) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `completiondate` date NOT NULL,
  `work` varchar(200) NOT NULL,
  `workdonedate` date NOT NULL,
  `workstatus` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminwork`
--

INSERT INTO `adminwork` (`workid`, `userid`, `projecttopic`, `project`, `extra`, `completiondate`, `work`, `workdonedate`, `workstatus`, `status`, `amount`) VALUES
(44, 30, 'website', 'client/uploads/20126project doc2.docx', 'fdsfs', '2020-05-22', 'admin/uploads/540project doc2c.pdf', '2019-05-17', 'Complete', '3', 0),
(45, 29, 'flower', 'client/uploads/19941project doc2.pdf', 'fdgf', '2019-05-07', '', '0000-00-00', 'failed', '2', 0),
(46, 32, 'aaa', 'client/uploads/11726project doc2.pdf', 'hfryr', '2019-05-25', 'admin/uploads/6221', '2019-05-17', 'Complete', '3', 0),
(47, 32, 'hjtgyutyu', 'client/uploads/29935front project.pdf', 'utyuuiy', '2019-05-10', '', '0000-00-00', 'unassigned', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` varchar(255) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `message` varchar(600) NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `from`, `to`, `message`, `sent`, `recd`) VALUES
(1, 'admin', 'pooja', 'haiiiii', '2019-05-03 09:59:09', 1),
(2, 'admin', 'pooja', 'helo', '2019-05-03 09:59:15', 1),
(3, 'admin', 'admin', 'hhaiii', '2019-05-03 10:53:22', 1),
(4, 'admin', 'pooja', 'haiii', '2019-05-03 11:10:12', 1),
(5, 'aswathy', 'pooja', 'helllloooooooooooooooooooooo', '2019-05-03 11:28:19', 1),
(6, 'pooja', 'aswathy', 'hiiiiiiiiiiiiiiiiii', '2019-05-03 11:44:26', 0),
(7, 'pooja', 'admin', 'hhaaoo', '2019-05-03 11:55:45', 1),
(8, 'pooja', 'admin', 'ajja', '2019-05-03 11:55:49', 1),
(9, 'aaaa', 'admin', 'hi', '2019-05-17 10:37:59', 1),
(10, 'aaaa', 'admin', 'jhkhkh', '2019-05-17 10:38:05', 1),
(11, 'aaaa', 'admin', 'jkhjkh', '2019-05-17 10:38:06', 1),
(12, 'aaaa', 'admin', 'hjhjk', '2019-05-17 10:38:06', 1),
(13, 'aaaa', 'admin', 'hhgjk', '2019-05-17 10:38:07', 1),
(14, 'aaaa', 'admin', ';hk', '2019-05-17 10:38:09', 1),
(15, 'aaaa', 'admin', 'hjkjl', '2019-05-17 10:38:10', 1),
(16, 'aaaa', 'admin', 'jkjhkj', '2019-05-17 10:38:11', 1),
(17, 'admin', 'aaaa', 'jooo', '2019-05-17 10:38:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clid` int(6) NOT NULL,
  `clname` varchar(20) NOT NULL,
  `cloccu` varchar(20) NOT NULL,
  `claddrs` varchar(50) NOT NULL,
  `clage` int(3) NOT NULL,
  `clgen` varchar(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `clemail` varchar(20) NOT NULL,
  `clphone` varchar(20) NOT NULL,
  `cldescr` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clid`, `clname`, `cloccu`, `claddrs`, `clage`, `clgen`, `username`, `clemail`, `clphone`, `cldescr`) VALUES
(32, 'hmghjg', 'others', 'nvhghjg', 20, 'F', 'aaaa', 'aaaa@gmail.com', '9234567890', ''),
(31, '', '', '', 0, '', '', '', '', ''),
(29, 'arathy', 'Technical Specialist', 'cndskc', 20, 'F', 'arathy', 'arathy@gmail.com', '8769568965', ''),
(30, 'maria', 'IT Coordinater', 'dbcndc', 20, 'F', 'maria', 'maria@gmail.com', '8896478565', '');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(6) NOT NULL,
  `teamcode` varchar(20) NOT NULL,
  `empcode` varchar(20) NOT NULL,
  `empname` varchar(20) NOT NULL,
  `mgrcode` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `empphoto` varchar(100) NOT NULL,
  `empresume` varchar(100) NOT NULL,
  `empexp` varchar(10) NOT NULL,
  `empdate` date NOT NULL,
  `empemail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `teamcode`, `empcode`, `empname`, `mgrcode`, `username`, `empphoto`, `empresume`, `empexp`, `empdate`, `empemail`) VALUES
(32, '123', '456', 'vidhya', '123', 'vidhya', 'uploads/1977pexels-photo-860564.jpeg', 'uploads/22526Applicant Print.pdf', '1to2', '0000-00-00', 'vidhya@gmail.com'),
(33, '123', '369', 'meera', '123', 'meera', 'uploads/16324artwork-colorful-art-flowers-68604.jpeg', 'uploads/3757Applicant Print.pdf', '0to1', '0000-00-00', 'meera@gmail.com'),
(34, '689', '325', 'malu', '123', 'malu', 'uploads/28980artwork-colorful-art-flowers-68604.jpeg', 'uploads/15197Applicant Print.pdf', '2to4', '0000-00-00', 'malu@gmail.com'),
(35, '784', '857', 'meenu', '123', 'meenu', 'uploads/8062artwork-colorful-art-flowers-68604.jpeg', 'uploads/31967Applicant Print.pdf', '2to4', '0000-00-00', 'meenu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `employeework`
--

CREATE TABLE `employeework` (
  `workid` int(6) NOT NULL,
  `empcode` varchar(20) NOT NULL,
  `projecttopic` varchar(20) NOT NULL,
  `project` varchar(500) NOT NULL,
  `module` varchar(1000) NOT NULL,
  `extra` varchar(1000) NOT NULL,
  `completiondate` date NOT NULL,
  `work` varchar(200) NOT NULL,
  `workdonedate` date NOT NULL,
  `workstatus` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeework`
--

INSERT INTO `employeework` (`workid`, `empcode`, `projecttopic`, `project`, `module`, `extra`, `completiondate`, `work`, `workdonedate`, `workstatus`, `status`) VALUES
(2, '456', '44', 'employee/uploads/26352project doc2c.pdf', 'home page', 'dxfghj', '2019-05-22', 'employee/uploads/17813project doc2c.pdf', '2019-05-17', 'Complete', '3');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `inbox_msg_id` int(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `from_id` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`inbox_msg_id`, `to_id`, `from_id`, `subject`, `message`, `attachment`) VALUES
(34, 'admin', 'aswathy - client', 'project completion', 'hhhhhhhhhhhhhhhhhhh', 'manager/uploads/16586artwork-colorful-art-flowers-68604.jpeg'),
(35, 'admin', 'maria - client', 'dhdsah', 'dnsdNK', 'manager/uploads/19839project doc2c.pdf'),
(36, 'admin', 'maria - client', 'gfyghj', 'gvjhk', 'manager/uploads/24908project doc2c.pdf'),
(37, 'vini - teamleader', 'pooja - manager', 'dhdsah', 'xghbn', 'manager/uploads/24288project doc2.docx'),
(38, 'veena - teamleader', 'vidhya - employee', ' vbnm ', '  vvhbj', 'employee/uploads/9321project doc2c.pdf'),
(39, 'admin', 'aaaa - client', 'gdgfhjkl', 'fghjlk', 'manager/uploads/12205front project.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginid` int(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `online` int(6) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginid`, `user`, `username`, `password`, `status`, `online`, `email`) VALUES
(1, 'admin', 'admin', '0e7517141fb53f21ee439b355b5a1d0a', '1', 1, 'admin@gmail.com'),
(106, 'teamleader', 'veena', '2a911aca52fa6272d9bf4d86a8cb32e9', '1', 1, 'veena@gmail.com'),
(108, 'teamleader', 'vini', 'a5bf581d3845e025533ab2f3d0fae726', '1', 0, 'vani@gmail.com'),
(109, 'employee', 'vidhya', 'd8637bb37bf92de83b49ea62fc69490e', '1', 0, 'vidhya@gmail.com'),
(110, 'employee', 'meera', 'f39db19ca0e515862de7c6b6a8d2c696', '1', 0, 'meera@gmail.com'),
(116, 'employee', 'malu', '154f55ddc2b8c8b598839192617b2bfe', '1', 0, 'malu@gmail.com'),
(117, 'manager', 'athira', '77dd1839b6fa7b43418fbb86edb13580', '1', 0, 'athira@gmail.com'),
(118, 'teamleader', 'viji', 'ff406c00ad5a893c985595c35f628e92', '1', 0, 'viji@gmail'),
(122, 'client', 'arathy', 'c9c6dddeebfe29fd7e6aca3c59693102', '1', 0, 'arathy@gmail.com'),
(123, 'client', 'maria', '6b5bf6b60874f323fcf072fcc9669fcf', '1', 0, 'maria@gmail.com'),
(124, 'client', '', 'd41d8cd98f00b204e9800998ecf8427e', '1', 1, ''),
(125, 'client', 'aaaa', 'fe9989d5012230c4c8dd97bd7d209def', '1', 1, 'aaaa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mgrid` int(6) NOT NULL,
  `mgrcode` varchar(20) NOT NULL,
  `mgrname` varchar(20) NOT NULL,
  `mgrdomain` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `mgrphoto` varchar(100) NOT NULL,
  `mgrresume` varchar(100) NOT NULL,
  `mgrexp` varchar(10) NOT NULL,
  `mgrdate` date NOT NULL,
  `mgremail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mgrid`, `mgrcode`, `mgrname`, `mgrdomain`, `username`, `mgrphoto`, `mgrresume`, `mgrexp`, `mgrdate`, `mgremail`) VALUES
(12, '965', 'sadad', 'c/c++/python', 'athira', 'admin/uploads/55aa.jpg', 'admin/uploads/2468Applicant Print.pdf', '2to3', '0000-00-00', 'athira@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `managerwork`
--

CREATE TABLE `managerwork` (
  `workid` int(6) NOT NULL,
  `mgrcode` varchar(20) NOT NULL,
  `projecttopic` varchar(20) NOT NULL,
  `project` varchar(500) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `completiondate` date NOT NULL,
  `work` varchar(200) NOT NULL,
  `workdonedate` date NOT NULL,
  `workstatus` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `managerwork`
--

INSERT INTO `managerwork` (`workid`, `mgrcode`, `projecttopic`, `project`, `extra`, `completiondate`, `work`, `workdonedate`, `workstatus`, `status`) VALUES
(27, '123', '44', 'client/uploads/20126project doc2.docx', 'fdsfs ', '2020-03-13', 'manager/uploads/12175project doc2c.pdf', '2019-05-17', 'Complete', '3'),
(28, '123', '45', 'client/uploads/19941project doc2.pdf', 'fdgf ', '2019-05-01', '', '0000-00-00', 'unassigned', '0'),
(29, '965', '46', 'client/uploads/11726project doc2.pdf', 'hfryr ', '2019-05-22', '', '0000-00-00', 'On progress', '1');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msgid` int(6) NOT NULL,
  `user` varchar(20) NOT NULL,
  `sendto` varchar(20) NOT NULL,
  `sendfrom` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news`) VALUES
('ePod is a free, tableless, W3C-compliant web design layout by Template World. This template has been tested and proven compatible with all major browser environments and operating systems. You are free to modify the design to suit your tastes in any way you like.');

-- --------------------------------------------------------

--
-- Table structure for table `projectamount`
--

CREATE TABLE `projectamount` (
  `pid` int(11) NOT NULL,
  `projecttopic` varchar(30) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sentitems`
--

CREATE TABLE `sentitems` (
  `sent_msg_id` int(50) NOT NULL,
  `from_id` varchar(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(10000) NOT NULL,
  `attachment` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sentitems`
--

INSERT INTO `sentitems` (`sent_msg_id`, `from_id`, `to_id`, `subject`, `message`, `attachment`) VALUES
(34, 'aswathy - client', 'admin', 'project completion', 'hhhhhhhhhhhhhhhhhhh', 'manager/uploads/16586artwork-colorful-art-flowers-68604.jpeg'),
(35, 'maria - client', 'admin', 'dhdsah', 'dnsdNK', 'manager/uploads/19839project doc2c.pdf'),
(36, 'maria - client', 'admin', 'gfyghj', 'gvjhk', 'manager/uploads/24908project doc2c.pdf'),
(37, 'pooja - manager', 'vini - teamleader', 'dhdsah', 'xghbn', 'manager/uploads/24288project doc2.docx'),
(38, 'vidhya - employee', 'veena - teamleader', ' vbnm ', '  vvhbj', 'employee/uploads/9321project doc2c.pdf'),
(39, 'aaaa - client', 'admin', 'gdgfhjkl', 'fghjlk', 'manager/uploads/12205front project.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `teamleader`
--

CREATE TABLE `teamleader` (
  `teamid` int(6) NOT NULL,
  `mgrcode` varchar(20) NOT NULL,
  `teamcode` varchar(20) NOT NULL,
  `teamname` varchar(20) NOT NULL,
  `teamdomain` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `teamphoto` varchar(100) NOT NULL,
  `teamresume` varchar(100) NOT NULL,
  `teamexp` varchar(10) NOT NULL,
  `teamdate` date NOT NULL,
  `teamemail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamleader`
--

INSERT INTO `teamleader` (`teamid`, `mgrcode`, `teamcode`, `teamname`, `teamdomain`, `username`, `teamphoto`, `teamresume`, `teamexp`, `teamdate`, `teamemail`) VALUES
(17, '965', '123', 'veena', 'java', 'veena', 'manager/uploads/11419aa.jpg', 'manager/uploads/26680Applicant Print.pdf', '1to2', '0000-00-00', 'veena@gmail.com'),
(19, '123', '689', 'vani', 'php', 'vini', 'manager/uploads/6898artwork-colorful-art-flowers-68604.jpeg', 'manager/uploads/25923Applicant Print.pdf', '0to1', '0000-00-00', 'vani@gmail.com'),
(20, '123', '784', 'viji', 'others', 'viji', 'manager/uploads/205flowers_basket_bouquet_90733_1920x1080.jpg', 'manager/uploads/32130Applicant Print.pdf', 'morethan5', '0000-00-00', 'viji@gmail');

-- --------------------------------------------------------

--
-- Table structure for table `teamwork`
--

CREATE TABLE `teamwork` (
  `workid` int(6) NOT NULL,
  `teamcode` varchar(20) NOT NULL,
  `projecttopic` varchar(20) NOT NULL,
  `project` varchar(500) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `completiondate` date NOT NULL,
  `work` varchar(200) NOT NULL,
  `workdonedate` date NOT NULL,
  `workstatus` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teamwork`
--

INSERT INTO `teamwork` (`workid`, `teamcode`, `projecttopic`, `project`, `extra`, `completiondate`, `work`, `workdonedate`, `workstatus`, `status`) VALUES
(20, '123', '44', 'client/uploads/20126project doc2.docx', 'fdsfs  ', '2019-05-24', 'leader/uploads/12014project doc2c.pdf', '2019-05-17', 'Complete', '3'),
(21, '', '46', 'client/uploads/11726project doc2.pdf', 'hfryr  ', '2019-05-30', '', '0000-00-00', 'unassigned', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminwork`
--
ALTER TABLE `adminwork`
  ADD PRIMARY KEY (`workid`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clid`),
  ADD UNIQUE KEY `clemail` (`clemail`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `empcode` (`empcode`,`empemail`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `employeework`
--
ALTER TABLE `employeework`
  ADD PRIMARY KEY (`workid`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`inbox_msg_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mgrid`),
  ADD UNIQUE KEY `mgrcode` (`mgrcode`,`mgremail`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `managerwork`
--
ALTER TABLE `managerwork`
  ADD PRIMARY KEY (`workid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `projectamount`
--
ALTER TABLE `projectamount`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `sentitems`
--
ALTER TABLE `sentitems`
  ADD PRIMARY KEY (`sent_msg_id`);

--
-- Indexes for table `teamleader`
--
ALTER TABLE `teamleader`
  ADD PRIMARY KEY (`teamid`),
  ADD UNIQUE KEY `teamcode` (`teamcode`,`teamemail`),
  ADD UNIQUE KEY `teamemail` (`teamemail`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `teamwork`
--
ALTER TABLE `teamwork`
  ADD PRIMARY KEY (`workid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminwork`
--
ALTER TABLE `adminwork`
  MODIFY `workid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `employeework`
--
ALTER TABLE `employeework`
  MODIFY `workid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `inbox_msg_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `mgrid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `managerwork`
--
ALTER TABLE `managerwork`
  MODIFY `workid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msgid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projectamount`
--
ALTER TABLE `projectamount`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sentitems`
--
ALTER TABLE `sentitems`
  MODIFY `sent_msg_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `teamleader`
--
ALTER TABLE `teamleader`
  MODIFY `teamid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teamwork`
--
ALTER TABLE `teamwork`
  MODIFY `workid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
