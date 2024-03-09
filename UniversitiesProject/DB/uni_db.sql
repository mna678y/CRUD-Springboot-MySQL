-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2024 at 07:49 AM
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
-- Database: `uni_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_code` char(2) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_code`, `country_name`) VALUES
('PK', 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `domain_id` int(11) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `university_id` int(11) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`domain_id`, `domain_name`, `university_id`, `country_code`) VALUES
(1, 'itu.edu.pk', 572, 'PK'),
(2, 'abasyn.edu.pk', 573, 'PK'),
(3, 'aiou.edu.pk', 574, 'PK'),
(4, 'ajku.edu.pk', 575, 'PK'),
(5, 'aku.edu', 576, 'PK'),
(6, 'aldirasat.edu.pk', 577, 'PK'),
(7, 'alkhair.edu.pk', 578, 'PK'),
(8, 'ami.edu.pk', 579, 'PK'),
(9, 'au.edu.pk', 580, 'PK'),
(10, 'aup.edu.pk', 581, 'PK'),
(11, 'bahria.edu.pk', 582, 'PK'),
(12, 'biit.edu.pk', 583, 'PK'),
(13, 'bims.edu.pk', 584, 'PK'),
(14, 'baqai.edu.pk', 585, 'PK'),
(15, 'buetk.edu.pk', 586, 'PK'),
(16, 'buitms.edu.pk', 587, 'PK'),
(17, 'bzu.edu.pk', 588, 'PK'),
(18, 'cust.edu.pk', 589, 'PK'),
(19, 'cbm.iobm.edu.pk', 590, 'PK'),
(20, 'cecos.edu.pk', 591, 'PK'),
(21, 'ciit-atd.edu.pk', 592, 'PK'),
(22, 'ciit-attock.edu.pk', 593, 'PK'),
(23, 'ciit.edu.pk', 594, 'PK'),
(24, 'ciitlahore.edu.pk', 595, 'PK'),
(25, 'ciit-wah.edu.pk', 596, 'PK'),
(26, 'cosmiq.edu.pk', 597, 'PK'),
(27, 'dadabhoy.edu.pk', 598, 'PK'),
(28, 'dcet.edu.pk', 599, 'PK'),
(29, 'duhs.edu.pk', 600, 'PK'),
(30, 'fitfd.edu.pk', 601, 'PK'),
(31, 'fuuast.edu.pk', 602, 'PK'),
(32, 'fwu.edu.pk', 603, 'PK'),
(33, 'gandhara.edu.pk', 604, 'PK'),
(34, 'gcu.edu.pk', 605, 'PK'),
(35, 'gcuf.edu.pk', 606, 'PK'),
(36, 'uob.edu.pk', 607, 'PK'),
(37, 'zu.edu.pk', 608, 'PK'),
(38, 'gift.edu.pk', 609, 'PK'),
(39, 'giki.edu.pk', 610, 'PK'),
(40, 'gist.edu.pk', 611, 'PK'),
(41, 'global.edu.pk', 612, 'PK'),
(42, 'gu.edu.pk', 613, 'PK'),
(43, 'guic.edu.pk', 614, 'PK'),
(44, 'hajvery.edu.pk', 615, 'PK'),
(45, 'hamdard.edu.pk', 616, 'PK'),
(46, 'hamdard.edu', 616, 'PK'),
(47, 'hitecuni.edu.pk', 617, 'PK'),
(48, 'hu.edu.pk', 618, 'PK'),
(49, 'iba.edu.pk', 619, 'PK'),
(50, 'iba-suk.edu.pk', 620, 'PK'),
(51, 'iiee.edu.pk', 621, 'PK'),
(52, 'iiu.edu.pk', 622, 'PK'),
(53, 'imsciences.edu.pk', 623, 'PK'),
(54, 'iqra.edu.pk', 624, 'PK'),
(55, 'isra.edu.pk', 625, 'PK'),
(56, 'ist.edu.pk', 626, 'PK'),
(57, 'iub.edu.pk', 627, 'PK'),
(58, 'jinnah.edu', 628, 'PK'),
(59, 'jinnah.edu.pk', 629, 'PK'),
(60, 'juw.edu.pk', 630, 'PK'),
(61, 'kasbit.edu.pk', 631, 'PK'),
(62, 'kiit.edu.pk', 632, 'PK'),
(63, 'kiu.edu.pk', 633, 'PK'),
(64, 'kmdc.edu.pk', 634, 'PK'),
(65, 'ksa.edu.pk', 635, 'PK'),
(66, 'kust.edu.pk', 636, 'PK'),
(67, 'lcwu.edu.pk', 637, 'PK'),
(68, 'lumhs.edu.pk', 638, 'PK'),
(69, 'lums.edu.pk', 639, 'PK'),
(70, 'miu.edu.pk', 640, 'PK'),
(71, 'moorelanduniversity.com', 641, 'PK'),
(72, 'muet.edu.pk', 642, 'PK'),
(73, 'mul.edu.pk', 643, 'PK'),
(74, 'nca.edu.pk', 644, 'PK'),
(75, 'neduet.edu.pk', 645, 'PK'),
(76, 'dsu.edu.pk', 646, 'PK'),
(77, 'smiu.edu.pk', 647, 'PK'),
(78, 'indus.edu.pk', 648, 'PK'),
(79, 'newports.edu.pk', 649, 'PK'),
(80, 'niab.org.pk', 650, 'PK'),
(81, 'nu.edu.pk', 651, 'PK'),
(82, 'numl.edu.pk', 652, 'PK'),
(83, 'nust.edu.pk', 653, 'PK'),
(84, 'nwfpuet.edu.pk', 654, 'PK'),
(85, 'pafkiet.edu.pk', 655, 'PK'),
(86, 'pakaims.edu', 656, 'PK'),
(87, 'pakaims.edu.pk', 657, 'PK'),
(88, 'pakistanhomoeopathy.com', 658, 'PK'),
(89, 'quest.edu.pk', 659, 'PK'),
(90, 'pedu.edu.pk', 660, 'PK'),
(91, 'pics.edu.pk', 661, 'PK'),
(92, 'pieas.edu.pk', 662, 'PK'),
(93, 'pimsat-khi.edu.pk', 663, 'PK'),
(94, 'planwel.edu', 664, 'PK'),
(95, 'prestonpak.edu.pk', 665, 'PK'),
(96, 'pucit.edu.pk', 666, 'PK'),
(97, 'pu.edu.pk', 667, 'PK'),
(98, 'pugc.edu.pk', 668, 'PK'),
(99, 'qau.edu.pk', 669, 'PK'),
(100, 'qurtuba.edu.pk', 670, 'PK'),
(101, 'riphah.edu.pk', 671, 'PK'),
(102, 'salu.edu.pk', 672, 'PK'),
(103, 'sau.edu.pk', 673, 'PK'),
(104, 'ssms.edu.pk', 674, 'PK'),
(105, 'ssuet.edu.pk', 675, 'PK'),
(106, 'suit.edu.pk', 676, 'PK'),
(107, 'superior.edu.pk', 677, 'PK'),
(108, 'szabist.edu.pk', 678, 'PK'),
(109, 'tip.edu.pk', 679, 'PK'),
(110, 'tuf.edu.pk', 680, 'PK'),
(111, 'uaar.edu.pk', 681, 'PK'),
(112, 'uaf.edu.pk', 682, 'PK'),
(113, 'ucp.edu.pk', 683, 'PK'),
(114, 'ue.edu.pk', 684, 'PK'),
(115, 'uet.edu', 685, 'PK'),
(116, 'uettaxila.edu.pk', 686, 'PK'),
(117, 'umi.edu.pk', 687, 'PK'),
(118, 'umt.edu.pk', 688, 'PK'),
(119, 'unw.edu.pk', 689, 'PK'),
(120, 'uoe.edu.pk', 690, 'PK'),
(121, 'uog.edu.pk', 691, 'PK'),
(122, 'uok.edu.pk', 692, 'PK'),
(123, 'uol.edu.pk', 693, 'PK'),
(124, 'uom.edu.pk', 694, 'PK'),
(125, 'uos.edu.pk', 695, 'PK'),
(126, 'upesh.edu', 696, 'PK'),
(127, 'usa.edu.pk', 697, 'PK'),
(128, 'usindh.edu.pk', 698, 'PK'),
(129, 'ustb.edu.pk', 699, 'PK'),
(130, 'uvas.edu.pk', 700, 'PK'),
(131, 'uw.edu.pk', 701, 'PK'),
(132, 'vu.edu.pk', 702, 'PK'),
(133, 'wahmedicalcollege.edu.pk', 703, 'PK'),
(134, 'zawiya.edu.pk', 704, 'PK'),
(135, 'mnsuet.edu.pk', 705, 'PK'),
(136, 'usms.edu.pk', 706, 'PK'),
(137, 'cusit.edu.pk', 707, 'PK'),
(138, 'cityuniversity.edu.pk', 707, 'PK'),
(139, 'cup.edu.pk', 707, 'PK');

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `university_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `country_code` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`university_id`, `name`, `state`, `website`, `country_code`) VALUES
(572, 'Information Technology University, Lahore', 'Punjab', 'https://itu.edu.pk/', 'PK'),
(573, 'Abasyn University Peshawar', 'Khyber Pakhtunkhwa', 'http://www.abasyn.edu.pk/', 'PK'),
(574, 'Allama Iqbal Open University', NULL, 'http://www.aiou.edu.pk/', 'PK'),
(575, 'Azad Jammu and Kashmir University', NULL, 'http://www.ajku.edu.pk/', 'PK'),
(576, 'Aga Khan University', 'Sindh', 'http://www.aku.edu/', 'PK'),
(577, 'Jamia Al Dirasat Ul Islami Karachi', 'Sindh', 'http://www.aldirasat.edu.pk/', 'PK'),
(578, 'Al-Khair University', NULL, 'http://www.alkhair.edu.pk/', 'PK'),
(579, 'Ahmed Medical Institute', 'Khyber Pakhtunkhwa', 'http://www.ami.edu.pk/', 'PK'),
(580, 'Air University', 'Panjab', 'http://www.au.edu.pk/', 'PK'),
(581, 'The University of Agriculture, Peshawar', 'Khyber Pakhtunkhwa', 'http://www.aup.edu.pk/', 'PK'),
(582, 'Bahria University', 'Panjab', 'http://www.bahria.edu.pk/', 'PK'),
(583, 'Barani Institute of Information Technology', 'Panjab', 'http://www.biit.edu.pk/', 'PK'),
(584, 'Barani Institute of Management Sciences', 'Panjab', 'http://www.bims.edu.pk/', 'PK'),
(585, 'Baqai Medical University', 'Sindh', 'https://baqai.edu.pk/', 'PK'),
(586, 'Balochistan University of Engineering and Technology Khuzdar', 'Balochistan', 'http://www.buetk.edu.pk/', 'PK'),
(587, 'Balochistan University of Information Technology & Management Sciences', 'Balochistan', 'http://www.buitms.edu.pk/', 'PK'),
(588, 'Bahauddin Zakariya University, Multan', 'Panjab', 'http://www.bzu.edu.pk/', 'PK'),
(589, 'Capital University of Science & Technology', 'Islamabad', 'https://cust.edu.pk/', 'PK'),
(590, 'College of Business Management (CBM)', 'Sindh', 'https://cbm.iobm.edu.pk/', 'PK'),
(591, 'Cecos Univeristy of Information Technology', 'Khyber Pakhtunkhwa', 'http://www.cecos.edu.pk/', 'PK'),
(592, 'COMSATS Institute of Information Technology, Abbottabad', 'Khyber Pakhtunkhwa', 'http://www.ciit-atd.edu.pk/', 'PK'),
(593, 'COMSATS Institute of Information Technology, Attock', 'Panjab', 'http://www.ciit-attock.edu.pk/', 'PK'),
(594, 'COMSATS Institute of Information Technology', NULL, 'http://www.ciit.edu.pk/', 'PK'),
(595, 'COMSATS Institute of Information Technology, Lahore', 'Panjab', 'http://www.ciitlahore.edu.pk/', 'PK'),
(596, 'COMSATS Institute of Information Technology, Wah', NULL, 'http://www.ciit-wah.edu.pk/', 'PK'),
(597, 'COSMIQ Institute of Technology', NULL, 'http://www.cosmiq.edu.pk/', 'PK'),
(598, 'Dadabhoy Institute of Higher Education', 'Sindh', 'http://www.dadabhoy.edu.pk/', 'PK'),
(599, 'Dawood College of Engineering and Technology', 'Sindh', 'http://www.dcet.edu.pk/', 'PK'),
(600, 'Dow University of Health Sciences', 'Sindh', 'http://www.duhs.edu.pk/', 'PK'),
(601, 'Faisalabad Institute of Textile and Fashion Design', NULL, 'http://www.fitfd.edu.pk/', 'PK'),
(602, 'Federal Urdu University of Arts,Science and Technology', NULL, 'http://www.fuuast.edu.pk/', 'PK'),
(603, 'Shaheed Benazir Bhutto Women University', NULL, 'http://www.fwu.edu.pk/', 'PK'),
(604, 'Gandhara Institute of Medical Sciences', NULL, 'http://www.gandhara.edu.pk/', 'PK'),
(605, 'Government College University Lahore', NULL, 'http://www.gcu.edu.pk/', 'PK'),
(606, 'Government College University Faisalabad', NULL, 'http://www.gcuf.edu.pk/', 'PK'),
(607, 'University of Balochistan', NULL, 'http://www.uob.edu.pk', 'PK'),
(608, 'Zia-ud-Din University', NULL, 'https://zu.edu.pk/', 'PK'),
(609, 'Gift University', NULL, 'http://www.gift.edu.pk/', 'PK'),
(610, 'Ghulam Ishaq Khan Institute of Science & Technology', NULL, 'http://www.giki.edu.pk/', 'PK'),
(611, 'Gangdara Institute Of Science & Technology', NULL, 'http://www.gist.edu.pk/', 'PK'),
(612, 'The Global College Lahore', NULL, 'http://www.global.edu.pk/', 'PK'),
(613, 'Gomal University', NULL, 'http://www.gu.edu.pk/', 'PK'),
(614, 'Greenwich University', NULL, 'http://www.guic.edu.pk/', 'PK'),
(615, 'Hajvery University Lahore for Women', NULL, 'http://www.hajvery.edu.pk/', 'PK'),
(616, 'Hamdard University', NULL, 'http://www.hamdard.edu.pk/', 'PK'),
(617, 'Hitec University', NULL, 'http://www.hitecuni.edu.pk/', 'PK'),
(618, 'Hazara University', NULL, 'http://www.hu.edu.pk/', 'PK'),
(619, 'Institute of Business Administration (IBA)', NULL, 'http://www.iba.edu.pk/', 'PK'),
(620, 'Institute of Business Administration Sukkur', NULL, 'http://www.iba-suk.edu.pk/', 'PK'),
(621, 'Institute of Industrial Electronics Engineering', NULL, 'http://www.iiee.edu.pk/', 'PK'),
(622, 'International Islamic University', NULL, 'http://www.iiu.edu.pk/', 'PK'),
(623, 'Institute of Management Sciences, Peshawar', NULL, 'http://www.imsciences.edu.pk/', 'PK'),
(624, 'Iqra University', NULL, 'http://www.iqra.edu.pk/', 'PK'),
(625, 'Isra University', NULL, 'http://www.isra.edu.pk/', 'PK'),
(626, 'Institute of Space Technology', NULL, 'http://www.ist.edu.pk/', 'PK'),
(627, 'Islamia University of Bahawalpur', NULL, 'http://www.iub.edu.pk/', 'PK'),
(628, 'Mohammad Ali Jinnah University, Karachi', NULL, 'http://www.jinnah.edu/', 'PK'),
(629, 'Mohammad Ali Jinnah University', NULL, 'http://www.jinnah.edu.pk/', 'PK'),
(630, 'Jinnah University for Women', NULL, 'http://www.juw.edu.pk/', 'PK'),
(631, 'KASB Institute of Technology', NULL, 'http://www.kasbit.edu.pk/', 'PK'),
(632, 'Karachi Institute of Information Technology', NULL, 'http://www.kiit.edu.pk/', 'PK'),
(633, 'Karakoram International University', NULL, 'http://www.kiu.edu.pk/', 'PK'),
(634, 'Karachi Medical and Dental College', NULL, 'http://www.kmdc.edu.pk/', 'PK'),
(635, 'Karachi School of Art', 'Sindh', 'http://www.ksa.edu.pk/', 'PK'),
(636, 'Kohat University of Science and Technology  (KUST)', 'Khyber Pakhtunkhwa', 'http://www.kust.edu.pk/', 'PK'),
(637, 'Lahore College for Women University', 'Panjab', 'http://www.lcwu.edu.pk/', 'PK'),
(638, 'Liaquat University of Medical & Health Sciences Jamshoro', NULL, 'http://www.lumhs.edu.pk/', 'PK'),
(639, 'Lahore University of Management Sciences', 'Panjab', 'http://www.lums.edu.pk/', 'PK'),
(640, 'Mohi-ud-Din Islamic University', NULL, 'http://www.miu.edu.pk/', 'PK'),
(641, 'Mooreland University', NULL, 'http://www.moorelanduniversity.com/', 'PK'),
(642, 'Mehran University of Engineering & Technology', NULL, 'http://www.muet.edu.pk/', 'PK'),
(643, 'Minhaj University Lahore', 'Panjab', 'http://www.mul.edu.pk/', 'PK'),
(644, 'National College of Arts', NULL, 'http://www.nca.edu.pk/', 'PK'),
(645, 'NED University of Engineering and Technology Karachi', 'Sindh', 'http://www.neduet.edu.pk/', 'PK'),
(646, 'DHA Suffa Uinversity', 'Sindh', 'https://www.dsu.edu.pk/', 'PK'),
(647, 'Sindh Madressatul Islam University', 'Sindh', 'https://www.smiu.edu.pk/', 'PK'),
(648, 'Indus University', 'Sindh', 'https://www.indus.edu.pk/', 'PK'),
(649, 'Newports Institute of Communication & Economics', NULL, 'http://www.newports.edu.pk/', 'PK'),
(650, 'Nuclear Institute for Agriculture and Biology (NIAB)', NULL, 'http://www.niab.org.pk/', 'PK'),
(651, 'FAST - National University of Computer and Emerging Sciences (NUCES)', NULL, 'http://www.nu.edu.pk/', 'PK'),
(652, 'National University of Modern Languages', NULL, 'http://www.numl.edu.pk/', 'PK'),
(653, 'National University of Science and Technology', NULL, 'http://www.nust.edu.pk/', 'PK'),
(654, 'University of Engineering and Technology Peshawar', 'Khyber Pakhtunkhwa', 'http://www.nwfpuet.edu.pk/', 'PK'),
(655, 'Karachi Institute Of Economics And Technology', 'Sindh', 'http://www.pafkiet.edu.pk/', 'PK'),
(656, 'Pak-AIMS (American Institute of Management Sciences)', NULL, 'http://www.pakaims.edu/', 'PK'),
(657, 'Institute of Management Sciences, Lahore (IMS)', 'Panjab', 'http://www.pakaims.edu.pk/', 'PK'),
(658, 'Hahnamann Honoeopathic Medical College', NULL, 'http://www.pakistanhomoeopathy.com/', 'PK'),
(659, 'Qauid-e-Awam University of Engineering Sciences & Technology', NULL, 'https://quest.edu.pk/', 'PK'),
(660, 'Pyramid Education Center', NULL, 'http://www.pedu.edu.pk/', 'PK'),
(661, 'Punjab Institute of Computer science', 'Panjab', 'http://www.pics.edu.pk/', 'PK'),
(662, 'Pakistan Institute of Engineering and Applied Sciences (PIEAS)', NULL, 'http://www.pieas.edu.pk/', 'PK'),
(663, 'Preston Institute of Management Sciences and Technology (PIMSAT)', 'Sindh', 'http://www.pimsat-khi.edu.pk/', 'PK'),
(664, 'Planwel University', NULL, 'http://www.planwel.edu/', 'PK'),
(665, 'Preston University, Pakistan Campus', NULL, 'http://www.prestonpak.edu.pk/', 'PK'),
(666, 'Punjab University College of Information Tecnology', 'Panjab', 'http://www.pucit.edu.pk/', 'PK'),
(667, 'University of the Punjab', 'Panjab', 'http://www.pu.edu.pk/', 'PK'),
(668, 'University of the Punjab, Gujranwala Campus', 'Panjab', 'http://www.pugc.edu.pk/', 'PK'),
(669, 'Quaid-i-Azam University', NULL, 'http://www.qau.edu.pk/', 'PK'),
(670, 'Qurtuba University of Science and Infromation Technology', NULL, 'http://www.qurtuba.edu.pk/', 'PK'),
(671, 'Riphah International Univeristy', NULL, 'http://www.riphah.edu.pk/', 'PK'),
(672, 'Shah Abdul Latif University Khairpur', NULL, 'http://www.salu.edu.pk/', 'PK'),
(673, 'Sindh Agricultural University', 'Sindh', 'http://www.sau.edu.pk/', 'PK'),
(674, 'Sir Syed Institute Of Technology Islamabad', 'Panjab', 'http://www.ssms.edu.pk/', 'PK'),
(675, 'Sir Syed University of Engineering and Technology', NULL, 'http://www.ssuet.edu.pk/', 'PK'),
(676, 'Sarhad University of Science & Information Technology, Peshawar', NULL, 'http://www.suit.edu.pk/', 'PK'),
(677, 'The Superior College', NULL, 'http://www.superior.edu.pk/', 'PK'),
(678, 'Shaheed Zulifkar Ali Bhutto Institute of Science and Technology', NULL, 'http://www.szabist.edu.pk/', 'PK'),
(679, 'Textile Institute of Pakistan', NULL, 'http://www.tip.edu.pk/', 'PK'),
(680, 'University of Faisalabad', NULL, 'http://www.tuf.edu.pk/', 'PK'),
(681, 'Arid Agriculture University', 'Panjab', 'http://www.uaar.edu.pk/', 'PK'),
(682, 'University of Agriculture Faisalabad', NULL, 'http://www.uaf.edu.pk/', 'PK'),
(683, 'University of Central Punjab', NULL, 'http://www.ucp.edu.pk/', 'PK'),
(684, 'University of Education', NULL, 'http://www.ue.edu.pk/', 'PK'),
(685, 'University of Engineering and Technology Lahore', NULL, 'http://www.uet.edu/', 'PK'),
(686, 'University of Engineering and Technology Taxila', NULL, 'http://www.uettaxila.edu.pk/', 'PK'),
(687, 'University of Munawwar-ul-Islam', NULL, 'http://www.umi.edu.pk/', 'PK'),
(688, 'University of Management and Technology', NULL, 'http://www.umt.edu.pk/', 'PK'),
(689, 'University of NorthWest', NULL, 'http://www.unw.edu.pk/', 'PK'),
(690, 'University of East', NULL, 'http://www.uoe.edu.pk/', 'PK'),
(691, 'University of Gujrat', 'Panjab', 'http://www.uog.edu.pk/', 'PK'),
(692, 'University of Karachi', 'Sindh', 'http://www.uok.edu.pk/', 'PK'),
(693, 'University of Lahore', 'Panjab', 'http://www.uol.edu.pk/', 'PK'),
(694, 'University of Malakand', 'Khyber Pakhtunkhwa', 'http://www.uom.edu.pk/', 'PK'),
(695, 'University of Sargodha', 'Panjab', 'http://www.uos.edu.pk/', 'PK'),
(696, 'University of Peshawar', 'Khyber Pakhtunkhwa', 'http://www.upesh.edu/', 'PK'),
(697, 'University of South Asia', NULL, 'http://www.usa.edu.pk/', 'PK'),
(698, 'University of Sindh', 'Sindh', 'http://www.usindh.edu.pk/', 'PK'),
(699, 'University of Science & Technology Bannu', NULL, 'http://www.ustb.edu.pk/', 'PK'),
(700, 'University of Veterinary & Animal Science', 'Panjab', 'http://www.uvas.edu.pk/', 'PK'),
(701, 'University of Wah', NULL, 'http://www.uw.edu.pk/', 'PK'),
(702, 'Virtual University of Pakistan', 'Panjab', 'http://www.vu.edu.pk/', 'PK'),
(703, 'Wah Medical College', 'Panjab', 'http://www.wahmedicalcollege.edu.pk/', 'PK'),
(704, 'Zawiya Academy', 'Panjab', 'http://www.zawiya.edu.pk/', 'PK'),
(705, 'Muhammad Nawaz Sharif University of Engineering and Technology, Multan', NULL, 'https://mnsuet.edu.pk', 'PK'),
(706, 'University of Sufism and Modern Sciences', 'Sindh', 'https://usms.edu.pk/', 'PK'),
(707, 'City University of Science and Information Technology', 'KP', 'https://cusit.edu.pk/', 'PK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_code`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`domain_id`),
  ADD KEY `university_id` (`university_id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`university_id`),
  ADD KEY `country_code` (`country_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `domain_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `university_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `domain`
--
ALTER TABLE `domain`
  ADD CONSTRAINT `domain_ibfk_1` FOREIGN KEY (`university_id`) REFERENCES `university` (`university_id`),
  ADD CONSTRAINT `domain_ibfk_2` FOREIGN KEY (`country_code`) REFERENCES `country` (`country_code`);

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `country` (`country_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
