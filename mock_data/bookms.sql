-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: May 02, 2022 at 01:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookms`
--
CREATE DATABASE IF NOT EXISTS `bookms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bookms`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(15) NOT NULL,
  `title` varchar(100) NOT NULL,
  `authorname` varchar(50) NOT NULL,
  `yearofpublication` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `availablecopies` int(11) NOT NULL,
  `createdat` datetime NOT NULL DEFAULT current_timestamp(),
  `lastbought` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `book`
--

TRUNCATE TABLE `book`;
--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `isbn`, `title`, `authorname`, `yearofpublication`, `category`, `availablecopies`, `createdat`, `lastbought`) VALUES
(1, '55-116-4448', 'Last Blitzkrieg, The', 'Tad Mauro', 2010, 'Adventure', 26, '2022-04-13 04:01:52', '2022-05-01 21:34:17'),
(2, '78-538-1231', 'Gauntlet, The', 'Katleen Bugge', 2008, 'Mystery', 50, '2022-04-15 13:22:09', NULL),
(3, '54-650-6545', 'Ice Men', 'Irina Jodkowski', 2008, 'Mystery', 29, '2022-04-11 20:24:16', NULL),
(4, '62-696-2622', 'Beautiful Losers', 'Aubrie O\' Donohoe', 2008, 'Fantasy', 57, '2021-09-08 18:14:13', NULL),
(5, '58-214-5428', 'Born Free', 'Eran Oseman', 1984, 'Adventure', 86, '2021-05-29 07:28:55', NULL),
(6, '22-318-0546', 'Permanent Midnight', 'Jayne Insko', 2013, 'Contemporary', 67, '2021-10-25 19:42:27', NULL),
(7, '42-207-9091', 'Ruby Cairo', 'Meta Batiste', 1986, 'Historical fiction', 24, '2021-08-12 17:47:11', NULL),
(8, '77-222-2018', 'Pictures of the Old World (Obrazy starého sveta)', 'Ellynn Livock', 1999, 'Contemporary', 37, '2021-07-31 08:05:50', NULL),
(9, '62-838-9692', 'Tatie Danielle', 'Dix Mounch', 2013, 'Paranormal', 51, '2022-02-26 01:49:51', NULL),
(10, '39-775-5070', 'Overnighters, The', 'Andreana Jamme', 2006, 'Dystopian', 49, '2021-11-21 20:47:41', NULL),
(11, '64-542-6128', 'Wedding Daze', 'Irma Ducarne', 1995, 'Romance', 18, '2021-10-18 12:18:32', NULL),
(12, '41-575-3267', 'Tango', 'Klement Walisiak', 1992, 'Dystopian', 76, '2021-09-13 23:47:55', NULL),
(13, '88-707-3701', 'On a Clear Day You Can See Forever', 'Conrad Ribchester', 2011, 'Mystery', 27, '2021-08-01 16:10:13', NULL),
(14, '90-679-5703', 'Bullfighter, The (Matador)', 'Nari Lillee', 1998, 'Contemporary', 99, '2021-06-18 09:09:29', NULL),
(15, '23-464-3919', 'Jubilation Street', 'Elton Dubbin', 2013, 'Children', 66, '2021-08-21 06:43:16', NULL),
(16, '13-430-6564', 'Godzilla and Mothra: The Battle for Earth (Gojira vs. Mosura)', 'Orlando Salthouse', 2009, 'Science Fiction', 92, '2022-03-15 00:42:08', NULL),
(17, '89-555-4244', 'Cargo', 'Babb Bryson', 2010, 'Historical fiction', 34, '2021-12-31 18:22:22', NULL),
(18, '79-519-2141', 'Outland', 'Viole McGarahan', 2000, 'Fantasy', 36, '2022-01-21 00:42:35', NULL),
(19, '06-348-5568', 'Rumble Fish', 'Izak Cleveley', 1988, 'Paranormal', 43, '2021-10-05 06:09:57', NULL),
(20, '32-816-9864', 'Funny Games U.S.', 'Aryn Reddin', 2007, 'Horror', 64, '2021-09-07 07:16:57', NULL),
(21, '25-609-3677', 'Redemption: The Stan Tookie Williams Story', 'Bendix Leppard', 1986, 'Science Fiction', 94, '2021-08-17 03:56:56', NULL),
(22, '90-660-9642', 'Divergent', 'Brantley Odcroft', 1997, 'Romance', 38, '2022-04-20 14:41:42', NULL),
(23, '54-356-9698', 'Police, Adjective (Politist, adj.)', 'Sidoney Staden', 1999, 'Dystopian', 65, '2022-02-10 09:46:40', NULL),
(24, '06-305-5333', 'Goodbye World', 'Alair Gillingwater', 1988, 'Contemporary', 95, '2021-11-03 15:17:36', NULL),
(25, '99-462-8131', 'Storm in Summer, A', 'Irita Lassell', 1997, 'Science Fiction', 63, '2022-02-20 16:11:54', NULL),
(26, '48-842-1492', 'We Need to Talk About Kevin', 'Tymon Harber', 1992, 'Historical fiction', 79, '2021-05-14 03:43:42', NULL),
(27, '37-426-0658', 'Eva', 'Johannah Vanichev', 2009, 'Dystopian', 79, '2021-05-08 00:46:58', NULL),
(28, '20-377-7704', 'American Addict', 'Janenna Daice', 2013, 'Adventure', 75, '2021-12-25 01:13:59', NULL),
(29, '06-814-9904', 'Darwin Awards, The', 'Roze Henrie', 2012, 'Historical fiction', 22, '2022-03-18 02:00:58', NULL),
(30, '98-563-8118', 'River Queen', 'Nan Panyer', 1993, 'Paranormal', 59, '2022-01-18 22:16:42', NULL),
(31, '43-394-4309', 'War Tapes, The', 'Marjorie Blakeborough', 1996, 'Science Fiction', 62, '2022-02-16 00:26:12', NULL),
(32, '14-529-9663', 'Crimes and Misdemeanors', 'Huntlee Melin', 1995, 'Horror', 72, '2021-10-12 05:34:16', NULL),
(33, '08-975-4379', 'Karlsson Brothers (Bröderna Karlsson)', 'Zachery Foro', 2011, 'Adventure', 61, '2022-02-01 16:38:56', NULL),
(34, '23-935-4617', 'Winning Season, The', 'Benedict Fairbard', 2008, 'Dystopian', 33, '2022-04-04 00:44:19', NULL),
(35, '80-225-7101', 'Islander', 'Allianora Perton', 1994, 'Fantasy', 74, '2022-02-17 11:41:11', NULL),
(36, '46-384-2462', 'Back to the Future Part III', 'Rolfe Scullard', 1994, 'Paranormal', 32, '2021-08-04 19:41:52', NULL),
(37, '59-031-6180', 'Oxygen', 'Washington Deinhardt', 2007, 'Mystery', 52, '2021-08-12 10:51:23', NULL),
(38, '58-987-1337', 'Bride & Prejudice', 'Sonni Harley', 1994, 'Paranormal', 73, '2021-06-22 06:35:22', NULL),
(39, '51-149-4229', 'Open Heart', 'Rebeka Karczinski', 2008, 'Horror', 98, '2021-05-25 00:24:51', NULL),
(40, '98-157-4527', 'Holcroft Covenant, The', 'Malcolm Breeze', 1992, 'Fantasy', 45, '2021-07-03 12:55:32', NULL),
(41, '58-548-1429', 'Pina', 'Kathrine Pichmann', 2004, 'Science Fiction', 79, '2022-04-26 13:50:05', NULL),
(42, '30-310-7428', 'Abouna', 'Allie Courcey', 2002, 'Romance', 63, '2021-09-21 00:10:33', NULL),
(43, '06-062-8952', 'Maîtresse (Mistress)', 'Wally Skerritt', 1986, 'Thriller', 36, '2021-08-03 21:42:52', NULL),
(44, '28-693-9740', 'Suck', 'Luise Troubridge', 2000, 'Mystery', 26, '2021-08-17 00:08:05', NULL),
(45, '96-433-6494', 'Puppetry of the Penis: Live at the Forum (Puppetry of the Penis: The Ancient Art of Genital Origami)', 'Ephrem Savidge', 1991, 'Thriller', 16, '2021-12-12 18:45:26', NULL),
(46, '88-087-2885', 'James Gandolfini: Tribute to a Friend', 'Thomasin Marquand', 2004, 'Dystopian', 16, '2022-02-03 02:15:59', NULL),
(47, '62-445-5480', 'Mezzo Forte', 'Gherardo Piscopello', 2005, 'Adventure', 32, '2022-03-02 22:03:35', NULL),
(48, '55-134-8953', 'On a Clear Day', 'Clementia Tythacott', 2004, 'Fantasy', 53, '2021-07-01 19:35:50', NULL),
(49, '47-949-5591', 'Road House', 'Ezmeralda D\'eathe', 2006, 'Romance', 91, '2021-10-30 19:45:10', NULL),
(50, '38-740-5735', 'Batman: Gotham Knight', 'Robinetta McArthur', 2001, 'Paranormal', 47, '2021-05-12 17:51:31', NULL),
(51, '12-178-6860', 'Romance', 'Daniella Rookes', 1993, 'Horror', 16, '2022-03-27 07:00:46', NULL),
(52, '83-309-1476', 'Animal Room', 'Mimi Oxshott', 2008, 'Dystopian', 93, '2022-04-27 05:53:56', NULL),
(53, '75-222-1392', 'Nocturna', 'Ransell Dutnell', 1991, 'Paranormal', 45, '2022-03-31 03:40:38', NULL),
(54, '21-491-2633', 'Onegin', 'Val Penwright', 2006, 'Horror', 48, '2022-01-08 01:25:19', NULL),
(55, '57-145-2699', 'M', 'Gardy O\' Mullan', 2003, 'Paranormal', 29, '2021-05-05 08:03:04', NULL),
(56, '59-768-4642', 'Run of the Arrow', 'Ann Bispham', 2010, 'Paranormal', 19, '2021-06-18 09:58:42', NULL),
(57, '47-626-9984', 'Sugar', 'Garv Shiell', 1998, 'Children', 51, '2021-12-26 14:48:00', NULL),
(58, '51-479-2145', 'I Smile Back', 'Dion Sackler', 2003, 'Science Fiction', 51, '2021-12-13 02:26:56', NULL),
(59, '28-280-2884', 'Return', 'Francesco Witcombe', 2010, 'Contemporary', 48, '2022-04-18 02:19:31', NULL),
(60, '24-971-2769', 'Godsend', 'Aile Ellett', 1995, 'Thriller', 54, '2022-02-15 14:32:23', NULL),
(61, '72-794-0963', 'Ju-on: The Grudge', 'Gordy Wykes', 1991, 'Romance', 12, '2021-12-12 13:53:39', NULL),
(62, '49-664-8265', 'Insanitarium', 'Frasquito Iacobucci', 2001, 'Fantasy', 73, '2021-05-02 10:14:44', NULL),
(63, '61-759-7441', 'Howling IV: The Original Nightmare', 'Joshua Chatto', 2003, 'Dystopian', 88, '2021-06-02 19:45:05', NULL),
(64, '92-569-7161', 'Everly', 'Reilly Pemberton', 2010, 'Romance', 64, '2021-12-04 14:53:42', NULL),
(65, '63-564-5316', 'Zelary', 'Tracy Menier', 2002, 'Contemporary', 80, '2021-10-29 19:30:37', NULL),
(66, '97-461-1316', 'New Year\'s Eve', 'Clarette Traves', 1997, 'Historical fiction', 76, '2021-09-25 20:59:19', NULL),
(67, '97-496-9554', 'Thor: The Dark World', 'Risa Hake', 1993, 'Paranormal', 34, '2022-01-30 09:40:28', NULL),
(68, '66-151-7426', 'Vibes', 'Janot Ballentime', 2006, 'Contemporary', 54, '2021-05-11 06:20:09', NULL),
(69, '07-477-2636', 'Henry Kissinger: Secrets of a Superpower (Henry Kissinger - Geheimnisse einer Supermacht)', 'Adeline Dowey', 2002, 'Thriller', 93, '2021-11-21 03:27:38', NULL),
(70, '12-914-6780', 'African Queen, The', 'Ozzie McGuinley', 2008, 'Science Fiction', 14, '2021-12-09 11:50:29', NULL),
(71, '10-868-7118', 'This Woman Is Dangerous', 'Cyrus Wauchope', 2010, 'Adventure', 58, '2022-01-01 19:26:04', NULL),
(72, '06-693-3074', 'Book of Love', 'Jarrid Dearl', 2011, 'Paranormal', 36, '2022-02-02 02:09:13', NULL),
(73, '95-712-7507', 'Musicwood', 'Arch Wallwood', 1996, 'Dystopian', 61, '2021-11-27 22:10:18', NULL),
(74, '12-194-3614', 'Riding in Cars with Boys', 'Timothee Koubek', 1990, 'Thriller', 19, '2022-01-11 02:21:43', NULL),
(75, '04-440-9134', 'Sordid Lives', 'Tiffanie McKelvie', 2002, 'Children', 44, '2021-10-27 18:12:19', NULL),
(76, '30-235-5619', '100 Bloody Acres', 'Aurelie Holworth', 1994, 'Fantasy', 47, '2022-03-09 07:48:18', NULL),
(77, '92-068-4583', 'Undisputed III: Redemption', 'Starlin Southers', 2011, 'Romance', 13, '2021-08-19 02:12:53', NULL),
(78, '28-460-8688', 'Big Shots', 'Roselle Mounsey', 2006, 'Historical fiction', 78, '2021-08-01 10:47:32', NULL),
(79, '62-696-0099', 'Bukowski: Born into This', 'Ross Clears', 1992, 'Thriller', 29, '2021-08-21 13:33:47', NULL),
(80, '45-711-0231', 'Mysterious X, The (Sealed Orders) (Det hemmelighedsfulde X)', 'Tammie Febvre', 2001, 'Thriller', 92, '2021-07-25 11:05:32', NULL),
(81, '36-654-8098', 'Thing Called Love, The', 'Gal Gutowski', 1993, 'Dystopian', 66, '2022-02-05 05:24:14', NULL),
(82, '82-799-7619', 'Pianomania', 'Linnell Callen', 2011, 'Romance', 59, '2022-01-18 17:54:21', NULL),
(83, '87-313-8397', 'D.O.A.', 'Cordell Bride', 2010, 'Fantasy', 91, '2021-05-12 12:41:41', NULL),
(84, '34-717-0558', 'Dudesons Movie, The', 'Marni Harmond', 1985, 'Thriller', 50, '2022-01-15 15:59:19', NULL),
(85, '93-010-8565', 'O.C. and Stiggs', 'Enos Napoleone', 2006, 'Romance', 93, '2021-06-25 00:37:00', NULL),
(86, '18-802-7502', 'Guru, The', 'Benedicto Hutchin', 2012, 'Science Fiction', 35, '2022-01-24 09:14:01', NULL),
(87, '78-559-9051', 'Possession, The', 'Foster Marshal', 2006, 'Thriller', 62, '2022-04-02 02:21:57', NULL),
(88, '76-189-2210', 'Fail-Safe', 'Dorry Guinane', 1994, 'Romance', 36, '2022-03-12 04:23:58', NULL),
(89, '60-490-5623', 'Symmetry (Symetria)', 'Erda Lago', 2007, 'Paranormal', 69, '2021-10-22 05:26:50', NULL),
(90, '47-097-5311', 'Diamonds Are Forever', 'Jinny Shepherd', 2001, 'Fantasy', 61, '2021-07-16 21:53:27', NULL),
(91, '16-656-6119', 'Interiors', 'Alina Grishakov', 1997, 'Paranormal', 33, '2022-03-03 04:33:36', NULL),
(92, '38-783-5777', 'Dinner Rush', 'Laryssa Hillett', 1992, 'Dystopian', 86, '2021-05-30 22:18:52', NULL),
(93, '49-361-3165', 'Relative Strangers', 'Gaynor Bewshea', 1985, 'Science Fiction', 44, '2021-12-30 09:56:41', NULL),
(94, '42-087-4682', 'Killer Bean 2: The Party', 'Karla Busch', 1999, 'Children', 26, '2021-09-04 01:04:05', NULL),
(95, '61-675-8566', 'Cats & Dogs', 'Cherie Kubicka', 2007, 'Fantasy', 82, '2021-12-02 15:19:23', NULL),
(96, '11-894-2171', 'Jack', 'Wye Kilbourne', 2002, 'Romance', 35, '2021-09-09 14:09:46', NULL),
(97, '69-404-6321', 'PressPausePlay', 'Brina Macguire', 2003, 'Dystopian', 70, '2021-11-29 04:22:56', NULL),
(98, '01-375-3850', 'Corn Is Green, The', 'Erl Gail', 1909, 'Thriller', 96, '2021-08-16 13:52:16', NULL),
(99, '57-905-1522', 'Pekka ja Pätkä salapoliiseina', 'Friederike Geall', 1995, 'Children', 54, '2022-04-14 08:36:35', NULL),
(100, '66-200-2459', 'Hatchet for the Honeymoon (Rosso segno della follia, Il)', 'Portie Hawkeswood', 2007, 'Romance', 91, '2022-04-10 03:53:46', NULL),
(101, '43-823-6782', 'Narco Cultura', 'Mason Littledyke', 1999, 'Historical fiction', 11, '2021-05-30 19:46:10', NULL),
(102, '88-963-9610', 'Bully', 'Pat Sieghart', 1994, 'Horror', 87, '2021-08-21 11:34:31', NULL),
(103, '95-212-7432', 'Crimes Against Humanity', 'Patsy Wringe', 1999, 'Historical fiction', 81, '2022-02-02 11:19:57', NULL),
(104, '89-710-6579', 'Krakatoa, East of Java', 'Brendis McCallam', 1997, 'Adventure', 34, '2021-11-19 01:12:36', NULL),
(105, '53-090-1799', 'Aningaaq', 'Finlay Acory', 1994, 'Dystopian', 29, '2021-12-01 04:33:52', NULL),
(106, '85-553-6133', 'Night in Heaven, A', 'Lazare Pringour', 2011, 'Historical fiction', 15, '2021-08-10 15:32:59', NULL),
(107, '65-292-9425', 'Hurry Sundown', 'Addie Ruddiman', 1997, 'Fantasy', 20, '2022-03-02 05:36:34', NULL),
(108, '59-580-0335', 'Funny Lady', 'Stavros Bodiam', 2003, 'Paranormal', 85, '2022-01-18 12:40:14', NULL),
(109, '99-506-0468', 'Loneliness of the Long Distance Runner, The', 'Thalia Flooks', 2003, 'Historical fiction', 88, '2022-01-14 16:26:45', NULL),
(110, '01-074-7325', 'Mummy: Tomb of the Dragon Emperor, The', 'Niel McSpirron', 1994, 'Romance', 57, '2021-10-27 04:59:50', NULL),
(111, '65-547-9306', 'Alex Cross', 'Emmett Jakoubec', 2007, 'Horror', 91, '2022-03-19 03:46:00', NULL),
(112, '75-620-0940', 'Ween Live in Chicago', 'Izak Claus', 1999, 'Fantasy', 63, '2022-04-24 08:16:37', NULL),
(113, '62-034-6850', 'Caught Inside', 'Koo Derry', 2009, 'Thriller', 98, '2021-11-08 04:31:29', NULL),
(114, '84-102-6515', 'Lincoln', 'Coreen Thebeau', 1993, 'Historical fiction', 41, '2022-04-18 22:23:00', NULL),
(115, '78-405-4943', 'Destry Rides Again', 'Farrand Hanson', 2002, 'Science Fiction', 99, '2022-01-08 00:36:17', NULL),
(116, '55-657-0109', 'Dune', 'Kennith Andrey', 2003, 'Contemporary', 12, '2022-04-21 08:05:47', NULL),
(117, '23-415-6654', 'Rulers of the City', 'Stephana Madner', 2005, 'Mystery', 11, '2021-11-02 21:30:08', NULL),
(118, '32-852-8121', 'Circle of Friends', 'Cynthy Houldey', 2005, 'Children', 99, '2021-08-30 10:45:18', NULL),
(119, '21-783-7562', 'Superman/Batman: Apocalypse', 'Violetta Fassbindler', 2009, 'Dystopian', 46, '2021-07-29 00:56:15', NULL),
(120, '68-055-6857', 'Secret Life of Walter Mitty, The', 'Philippe Wilce', 2003, 'Dystopian', 25, '2021-10-24 15:42:34', NULL),
(121, '79-245-2875', 'Rage of Angels: The Story Continues', 'Reggie Hyams', 1993, 'Mystery', 70, '2021-09-02 06:15:25', NULL),
(122, '98-893-7358', 'Doppelganger', 'Kay Bradberry', 2003, 'Horror', 38, '2021-05-27 11:23:04', NULL),
(123, '84-528-8771', 'Blood Moon', 'Shandra Amsden', 2006, 'Contemporary', 16, '2021-09-26 02:15:11', NULL),
(124, '40-029-0863', 'Biggie and Tupac', 'Sandra Giercke', 2002, 'Contemporary', 45, '2021-07-16 03:32:19', NULL),
(125, '56-834-3740', 'Crash Dive', 'Augustina Gorrie', 1999, 'Paranormal', 41, '2021-09-09 20:14:46', NULL),
(126, '53-494-7370', 'Jabberwocky', 'Alta Currin', 1993, 'Dystopian', 73, '2021-10-14 01:25:23', NULL),
(127, '54-931-6821', 'Miracle of Marcelino, The (Marcelino pan y vino)', 'Sonni Grundell', 2012, 'Adventure', 65, '2022-04-06 21:40:40', NULL),
(128, '46-398-2862', 'Bird with the Crystal Plumage, The (Uccello dalle piume di cristallo, L\')', 'Karissa Emanulsson', 2002, 'Romance', 36, '2021-09-18 17:37:48', NULL),
(129, '31-898-9205', 'Tiny Furniture', 'Karee Ruit', 2012, 'Romance', 50, '2021-09-27 17:09:31', NULL),
(130, '61-762-9575', 'Which Way to the Front?', 'Jabez Croux', 2005, 'Thriller', 38, '2021-07-02 19:13:21', NULL),
(131, '68-463-7857', 'Knight\'s Tale, A', 'Maddy Gepp', 1993, 'Adventure', 69, '2022-02-16 05:12:27', NULL),
(132, '88-227-3271', 'Maximum Conviction', 'Lory Godrich', 2007, 'Historical fiction', 51, '2021-11-24 13:18:24', NULL),
(133, '87-799-6999', 'Friend of Mine, A (Ein Freund von mir)', 'Josepha Lloyd', 2011, 'Romance', 56, '2021-06-04 22:33:21', NULL),
(134, '47-313-4426', 'Dust Factory, The', 'Hobart Ravenscroftt', 2011, 'Thriller', 64, '2021-12-03 19:32:04', NULL),
(135, '49-397-1599', 'Pride', 'Colas Saffe', 1994, 'Romance', 96, '2022-01-14 09:08:22', NULL),
(136, '41-503-1418', 'The Brides of Fu Manchu', 'Ches Brickett', 1993, 'Dystopian', 56, '2022-04-14 20:03:04', NULL),
(137, '17-765-6330', 'Cab for Three, A (Taxi para tres)', 'Gearalt Ryman', 1992, 'Thriller', 42, '2021-07-12 06:02:22', NULL),
(138, '20-141-6653', 'Magnum Cop', 'Astrid Brechin', 2001, 'Historical fiction', 24, '2021-07-31 15:02:20', NULL),
(139, '22-905-7346', 'Gunnin\' for That #1 Spot', 'Beckie Nickolls', 1995, 'Contemporary', 45, '2021-07-13 21:34:32', NULL),
(140, '26-756-9187', 'Operation Dumbo Drop', 'Rossie Sandey', 2003, 'Adventure', 33, '2021-06-16 22:41:28', NULL),
(141, '44-963-0668', 'Goodbye Pork Pie', 'Martica Erdely', 1992, 'Contemporary', 26, '2022-04-08 05:38:08', NULL),
(142, '93-449-9238', 'Stolen Children (Ladro di bambini, Il)', 'Waverley Castleman', 2001, 'Adventure', 39, '2021-05-09 02:55:22', NULL),
(143, '09-029-5432', 'Prata Palomares', 'Vasili McVaugh', 2002, 'Dystopian', 88, '2021-08-05 14:08:56', NULL),
(144, '10-914-6223', 'Small Town Gay Bar', 'Shell Iamittii', 1973, 'Thriller', 34, '2021-09-10 05:00:13', NULL),
(145, '65-677-0065', 'Girl Model', 'Cynde Whiteley', 2001, 'Adventure', 57, '2021-07-06 20:07:24', NULL),
(146, '92-571-6285', 'Big Bad Mama', 'Arlen Checcuzzi', 2006, 'Romance', 35, '2021-10-23 00:26:13', NULL),
(147, '27-447-4940', 'Ace Ventura: When Nature Calls', 'Wenonah Grote', 2005, 'Fantasy', 21, '2021-07-31 01:59:10', NULL),
(148, '84-501-3260', 'Boot Camp', 'Elka Eliez', 2011, 'Thriller', 56, '2021-12-16 01:17:58', NULL),
(149, '13-398-3600', 'From Beyond the Grave (Creatures)', 'Bonni Ishaki', 1998, 'Horror', 20, '2021-05-30 08:48:43', NULL),
(150, '57-597-6708', 'Dead Man and Being Happy, The (El muerto y ser feliz)', 'Alain Pluthero', 1999, 'Science Fiction', 44, '2021-08-19 17:53:25', NULL),
(151, '59-688-0747', 'Madigan', 'Tildi Beswetherick', 1997, 'Dystopian', 33, '2021-12-31 17:05:32', NULL),
(152, '34-491-6764', 'Spring Break Shark Attack', 'Boony Segar', 2009, 'Contemporary', 81, '2022-01-31 06:39:27', NULL),
(153, '06-213-0901', 'Star, The', 'Benton Iashvili', 2008, 'Adventure', 71, '2021-08-07 15:07:35', NULL),
(154, '01-414-8260', 'Bless Me, Ultima', 'Tyrone Mayhew', 2011, 'Children', 79, '2021-12-31 13:25:57', NULL),
(155, '65-058-7207', 'Unstoppable', 'Alyce McCard', 2007, 'Adventure', 93, '2022-04-06 11:16:53', NULL),
(156, '61-289-8426', 'Watch Out, We\'re Mad (...Altrimenti ci arrabbiamo!)', 'Burt Toffano', 1987, 'Horror', 13, '2021-06-26 00:05:43', NULL),
(157, '61-156-8107', 'Mutant Chronicles', 'Jany Trevino', 1995, 'Thriller', 80, '2021-07-31 11:55:58', NULL),
(158, '35-080-9448', 'Duplex', 'Aaron Arington', 2010, 'Paranormal', 57, '2022-04-22 13:54:27', NULL),
(159, '27-036-8358', 'Miracle Worker, The', 'Ellynn Marques', 1992, 'Romance', 73, '2022-01-01 15:28:55', NULL),
(160, '47-568-2157', 'Fantasma', 'Ingrim Pabst', 2005, 'Thriller', 48, '2021-08-23 11:19:10', NULL),
(161, '84-032-0851', 'Homefront', 'Carita Pedersen', 2012, 'Mystery', 50, '2021-11-11 13:12:21', NULL),
(162, '54-026-9293', 'Delta Force, The', 'Gianni Perillio', 2008, 'Paranormal', 19, '2021-08-15 18:04:10', NULL),
(163, '37-754-6576', 'In This Our Life', 'Tadd Arson', 1997, 'Romance', 93, '2021-10-26 18:23:40', NULL),
(164, '38-054-3728', 'Zombie High', 'Chelsea Leavry', 2005, 'Science Fiction', 93, '2021-09-22 23:20:14', NULL),
(165, '36-512-0288', 'Unsuspected, The', 'Kenton Wardingley', 1990, 'Children', 42, '2021-12-09 19:04:06', NULL),
(166, '13-091-5407', '3rd Voice, The', 'Maren Franz-Schoninger', 1996, 'Science Fiction', 88, '2022-03-27 06:34:15', NULL),
(167, '39-120-1759', 'Barrier (Bariera)', 'Zerk Wrightim', 2007, 'Horror', 28, '2021-09-04 11:26:05', NULL),
(168, '25-939-1191', 'Charlie Chan at the Olympics', 'Lanni Luttger', 1992, 'Fantasy', 26, '2021-09-03 13:22:31', NULL),
(169, '79-179-4263', 'Dana Carvey: Squatting Monkeys Tell No Lies', 'Murdoch Seery', 2008, 'Paranormal', 90, '2021-05-06 21:58:00', NULL),
(170, '00-666-1212', 'Mystery (Fu cheng mi shi)', 'Lori Spencelayh', 1984, 'Paranormal', 82, '2022-03-06 16:30:36', NULL),
(171, '35-489-8464', 'Scarlet Diva', 'Emmeline Edgars', 2011, 'Children', 81, '2022-02-05 00:54:08', NULL),
(172, '42-307-5262', 'Great Escape: The Untold Story', 'Lisle Skeath', 2013, 'Adventure', 42, '2021-11-20 01:06:35', NULL),
(173, '03-477-3954', 'Room 666 (Chambre 666)', 'Roxane Janc', 2010, 'Historical fiction', 71, '2022-04-10 03:11:24', NULL),
(174, '63-088-1036', 'Our Song', 'Herschel Orwin', 2008, 'Horror', 28, '2021-05-12 22:17:01', NULL),
(175, '51-649-7020', 'Gospel of John, The', 'Florry Burtonshaw', 2011, 'Mystery', 32, '2021-08-18 16:57:34', NULL),
(176, '59-513-2020', 'Poolsite', 'Thorstein Joanaud', 2006, 'Children', 52, '2022-01-11 17:03:10', NULL),
(177, '86-328-1581', 'Black Sheep (Schwarze Schafe)', 'Heather Beveridge', 2001, 'Romance', 17, '2021-06-25 13:26:39', NULL),
(178, '39-814-4426', 'Miracle Woman, The', 'Gannie Giovannacc@i', 1994, 'Historical fiction', 14, '2021-11-16 10:20:46', NULL),
(179, '63-536-3779', 'Bitch Slap', 'Madlin Seebright', 2007, 'Dystopian', 26, '2022-02-13 17:34:05', NULL),
(180, '63-386-0759', 'Kinjite: Forbidden Subjects', 'Grier Venable', 2000, 'Fantasy', 70, '2021-05-23 00:14:31', NULL),
(181, '66-005-9582', 'Blue Sunshine', 'Bastien Koppen', 2000, 'Contemporary', 45, '2021-07-17 03:44:50', NULL),
(182, '31-121-2020', 'Act of Valor', 'Bamby Sier', 2006, 'Contemporary', 30, '2022-01-17 01:08:09', NULL),
(183, '21-809-6209', 'Reprise', 'Dolley Beavis', 1986, 'Horror', 95, '2021-12-24 01:56:20', NULL),
(184, '58-820-4039', 'Quick Change', 'Lexy Loton', 2006, 'Fantasy', 12, '2021-07-21 18:48:31', NULL),
(185, '00-192-5339', 'Only the Young', 'Shina Gillfillan', 2012, 'Paranormal', 12, '2021-08-11 07:06:04', NULL),
(186, '13-560-9113', 'Morons From Outer Space', 'Joannes Wilding', 2004, 'Adventure', 52, '2021-06-23 09:47:29', NULL),
(187, '35-041-3287', 'Mad Adventures of Rabbi Jacob, the (Les Aventures de Rabbi Jacob)', 'Melantha Whitley', 2004, 'Thriller', 87, '2021-12-27 01:09:24', NULL),
(188, '82-294-0028', 'Fever Pitch', 'Nefen Bertenshaw', 1997, 'Contemporary', 20, '2022-04-29 07:52:19', '2022-05-01 21:25:11'),
(189, '41-813-6464', 'Another Happy Day', 'Karlis Garraway', 1998, 'Historical fiction', 16, '2021-09-05 17:49:45', NULL),
(190, '04-646-5099', 'Tank on the Moon', 'Ignazio Follet', 1994, 'Historical fiction', 79, '2022-04-15 06:25:59', NULL),
(191, '88-515-4357', 'Escape Artist, The', 'Doug Goldwater', 2005, 'Thriller', 51, '2022-04-30 19:29:49', '2022-05-02 01:48:07'),
(192, '62-193-9335', 'Sunshine', 'Rosaleen Crush', 1984, 'Mystery', 23, '2022-02-18 11:26:42', NULL),
(193, '56-942-6983', 'Satan\'s Little Helper', 'Ignace Mattek', 1998, 'Dystopian', 40, '2021-05-02 17:51:02', NULL),
(194, '46-810-2076', 'Favorite Deadly Sins', 'Darbie Entwhistle', 1998, 'Historical fiction', 94, '2021-11-25 04:09:28', NULL),
(195, '51-049-8179', 'Please Remove Your Shoes ', 'Oralla Olligan', 2010, 'Contemporary', 48, '2021-12-17 22:10:55', NULL),
(196, '65-434-3570', 'Adam & Steve', 'Ira Elgar', 1996, 'Mystery', 85, '2021-08-05 19:35:21', NULL),
(197, '39-865-0995', 'Mind Reader, The', 'Amanda Lecointe', 2012, 'Romance', 11, '2021-12-14 11:28:32', NULL),
(198, '33-999-3098', 'Toy Story Toons: Partysaurus Rex', 'Tiertza Tidey', 1991, 'Adventure', 23, '2022-02-09 20:28:18', NULL),
(199, '42-457-8552', 'Dark Journey', 'Forest Buddock', 1987, 'Children', 88, '2021-05-23 00:23:35', NULL),
(200, '37-174-2976', 'Intentions of Murder (a.k.a. Murderous Instincts) (Akai satsui)', 'Benoite MacEveley', 1996, 'Horror', 70, '2021-11-19 19:44:02', NULL),
(201, '97-746-5875', 'Idolmaker, The', 'Franny Mantha', 2009, 'Thriller', 99, '2021-06-08 11:36:56', NULL),
(202, '13-733-4297', 'Face (Visage)', 'Rufe Hudspith', 2000, 'Mystery', 73, '2022-04-09 18:27:58', NULL),
(203, '96-597-5264', 'Suspect Zero', 'Kent Simon', 1995, 'Contemporary', 39, '2022-04-02 21:44:20', NULL),
(204, '63-468-2869', 'Grapes of Wrath, The', 'Nicolette Whitten', 1989, 'Mystery', 37, '2022-01-09 02:33:44', NULL),
(205, '28-334-8230', 'G Men', 'Ibrahim Ainslee', 2004, 'Paranormal', 93, '2021-10-14 13:06:44', NULL),
(206, '85-754-1522', 'Firm, The', 'Marijo Burnyate', 2004, 'Mystery', 59, '2022-03-13 07:04:46', NULL),
(207, '11-369-2368', 'Raiders of the Lost Ark (Indiana Jones and the Raiders of the Lost Ark)', 'Cross Stickles', 1988, 'Adventure', 57, '2022-01-22 12:42:23', NULL),
(208, '00-066-2501', 'Absolute Beginners', 'Jeff Andrewartha', 2012, 'Romance', 41, '2021-07-09 09:42:57', NULL),
(209, '43-255-7604', 'Ocho apellidos vascos', 'Nollie Chugg', 2004, 'Horror', 76, '2022-04-21 23:50:18', NULL),
(210, '11-381-2701', 'Don\'t Look Back', 'Dana Windebank', 2012, 'Thriller', 33, '2021-12-13 13:53:07', NULL),
(211, '12-090-8669', 'Human Experience, The', 'Lian Saywood', 1987, 'Mystery', 65, '2022-04-19 23:45:04', NULL),
(212, '91-769-8108', 'Futurama: Bender\'s Game', 'Nettle Belch', 1994, 'Mystery', 59, '2022-04-26 21:32:26', NULL),
(213, '00-757-2622', 'Tunnel, The', 'Griffy Martinez', 1993, 'Romance', 44, '2022-03-29 23:36:25', NULL),
(214, '07-517-3065', 'Shanghai Dreams (Qing hong)', 'Katey O\'Drought', 2007, 'Dystopian', 16, '2021-09-25 17:00:59', NULL),
(215, '30-603-7768', 'Before the Rain (Pred dozhdot)', 'Adair Rosa', 1988, 'Horror', 99, '2022-02-06 02:25:17', NULL),
(216, '56-392-6779', 'Cry Baby Lane', 'Elia Staterfield', 2008, 'Dystopian', 28, '2021-06-24 07:06:10', NULL),
(217, '28-349-0559', 'Saw III', 'Ario Jeannin', 1997, 'Paranormal', 67, '2021-07-26 20:15:30', NULL),
(218, '62-139-5512', 'Blood Suckers from Outer Space', 'Rivalee Hawick', 1990, 'Historical fiction', 21, '2021-12-03 08:13:11', NULL),
(219, '62-901-2196', 'Deadly Spawn, The', 'Forbes Buss', 1995, 'Romance', 49, '2021-08-01 21:58:45', NULL),
(220, '75-259-1968', 'In a Dark Place', 'Gwenny Le Fevre', 2012, 'Paranormal', 59, '2021-11-08 03:36:27', NULL),
(221, '36-483-3879', 'Best Offer, The (Migliore offerta, La)', 'Hermann Grimolbie', 2004, 'Children', 28, '2021-12-28 14:31:21', NULL),
(222, '02-401-3074', 'Girl from Monday, The', 'Brunhilde Millen', 1998, 'Mystery', 27, '2021-05-26 08:10:27', NULL),
(223, '10-096-8597', 'American Perfekt', 'Jojo Bridle', 2001, 'Romance', 74, '2022-03-05 05:34:51', NULL),
(224, '07-726-1483', 'Corpo Celeste', 'Garrett Hartin', 1996, 'Paranormal', 74, '2021-12-28 06:40:58', NULL),
(225, '74-509-4937', 'How the Myth Was Made: A Study of Robert Flaherty\'s Man of Aran', 'Daniel Oldale', 2007, 'Mystery', 74, '2021-09-25 00:58:00', NULL),
(226, '60-514-0622', 'On the Line', 'Billy Beurich', 1997, 'Romance', 25, '2021-10-03 10:23:28', NULL),
(227, '43-984-1730', 'I Want You', 'Barbi Onraet', 2005, 'Historical fiction', 27, '2021-08-06 07:29:14', NULL),
(228, '51-382-8394', 'Dragon Ball Z: Dead Zone (Doragon bôru Z 1: Ora no Gohan wo kaese)', 'Kirk Pettman', 1991, 'Children', 91, '2022-02-09 14:00:14', NULL),
(229, '50-162-1179', 'Patlabor: The Movie (Kidô keisatsu patorebâ: The Movie)', 'Janka Cato', 1988, 'Contemporary', 20, '2021-11-25 17:41:41', NULL),
(230, '00-879-7563', 'Actress, The', 'Fairfax Tabor', 2005, 'Romance', 86, '2021-05-12 17:39:48', NULL),
(231, '52-822-3435', 'El Dorado', 'Salem Milch', 2000, 'Thriller', 85, '2021-10-01 02:59:25', NULL),
(232, '09-483-3995', 'Alice', 'Bobbie Wellen', 1998, 'Historical fiction', 46, '2022-02-07 00:46:41', NULL),
(233, '81-812-6027', 'Storage 24', 'Joanne Benech', 1987, 'Science Fiction', 38, '2021-05-21 23:02:17', NULL),
(234, '77-739-2304', 'Testament of Dr. Mabuse, The (Das Testament des Dr. Mabuse)', 'Daveta Devaney', 1991, 'Thriller', 22, '2021-05-01 16:50:57', NULL),
(235, '33-827-0667', 'Dating the Enemy', 'Peg Pepis', 1994, 'Contemporary', 69, '2021-09-09 17:57:26', NULL),
(236, '08-470-7401', 'James Dean', 'Philippa Mees', 2008, 'Science Fiction', 49, '2022-01-01 03:34:37', NULL),
(237, '78-373-4155', 'Easy Riders, Raging Bulls: How the Sex, Drugs and Rock \'N\' Roll Generation Saved Hollywood', 'Mara Danels', 2011, 'Contemporary', 50, '2021-05-27 05:51:50', NULL),
(238, '85-166-0949', 'Mirage', 'Delcina Rylett', 2006, 'Contemporary', 12, '2022-04-16 01:05:54', '2022-05-01 21:44:10'),
(239, '55-047-7943', 'Brothers (Brødre)', 'Ezmeralda Whittier', 2007, 'Paranormal', 70, '2021-08-13 09:48:07', NULL),
(240, '02-107-7033', 'Bring Me the Head of Alfredo Garcia', 'Donelle Opdenorth', 2010, 'Horror', 26, '2022-02-28 05:23:55', NULL),
(241, '11-082-2222', 'Odds Against Tomorrow', 'Sterne Khan', 2011, 'Mystery', 22, '2021-08-30 20:50:01', NULL),
(242, '67-606-3166', 'Kapò', 'Huntington Molines', 1997, 'Fantasy', 69, '2021-10-04 22:17:57', NULL),
(243, '15-030-4498', 'Satan Never Sleeps', 'Jae Metzke', 1992, 'Fantasy', 34, '2021-10-30 14:06:47', NULL),
(244, '42-651-1158', 'Michael', 'Prudi Cullabine', 2008, 'Paranormal', 61, '2022-01-18 15:46:33', NULL),
(245, '14-227-5228', 'Tokyo!', 'Sharl Baus', 1992, 'Paranormal', 52, '2021-08-30 08:19:57', NULL),
(246, '81-537-9446', 'FearDotCom (a.k.a. Fear.com) (a.k.a. Fear Dot Com)', 'Aylmar Rean', 1993, 'Contemporary', 59, '2021-09-03 00:23:35', NULL),
(247, '32-926-8059', 'Eat', 'Christian Shelley', 2008, 'Adventure', 92, '2021-07-05 11:00:43', NULL),
(248, '05-260-7310', 'Night of the Comet', 'Gav Pepon', 2006, 'Contemporary', 26, '2022-02-02 03:53:36', NULL),
(249, '77-829-8714', 'Hungry Hill', 'Padget Sandon', 1997, 'Paranormal', 100, '2021-08-12 16:02:45', NULL),
(250, '41-330-0945', 'Berlin Babylon', 'Heindrick Hinchshaw', 2003, 'Fantasy', 35, '2021-09-19 21:44:36', NULL),
(251, '60-855-9089', 'In the Navy', 'Marc Pleuman', 1998, 'Contemporary', 45, '2021-08-12 06:19:08', NULL),
(252, '41-706-3150', 'Mannequin 2: On the Move', 'Wenona Pumfrey', 2004, 'Mystery', 59, '2021-07-25 15:23:39', NULL),
(253, '93-516-4200', 'Veteran, The', 'Jessie Grzelak', 2003, 'Fantasy', 10, '2021-11-17 13:58:20', NULL),
(254, '83-686-2918', 'Hard Word, The', 'Yancy Tatlowe', 1995, 'Horror', 12, '2021-08-21 14:12:58', NULL),
(255, '15-916-0115', 'Hostel: Part II', 'Gav Thor', 2007, 'Mystery', 58, '2022-01-24 16:09:31', NULL),
(256, '96-326-7922', 'Jesse Stone: Death in Paradise', 'Olivero Gumbrell', 2006, 'Children', 86, '2021-06-17 00:16:28', NULL),
(257, '15-150-2346', 'Fairly Odd Movie: Grow Up, Timmy Turner!, A', 'Bryce Guerin', 2009, 'Adventure', 39, '2021-05-01 14:55:47', NULL),
(258, '77-416-7073', 'Hitler\'s Children', 'Chane Hallett', 2000, 'Romance', 12, '2021-09-18 14:46:56', NULL),
(259, '32-604-3051', 'Black Widow', 'Kitti Dalloway', 1992, 'Adventure', 93, '2021-10-24 20:33:13', NULL),
(260, '05-087-2183', 'Bad Lieutenant: Port of Call New Orleans', 'Lillis Salkild', 2000, 'Thriller', 36, '2021-07-27 17:56:07', NULL),
(261, '98-536-2311', 'Three Colors: Blue (Trois couleurs: Bleu)', 'Raye Milmo', 1988, 'Horror', 88, '2021-05-10 02:04:08', NULL),
(262, '16-059-9907', 'Caught', 'Mateo Garioch', 1995, 'Horror', 78, '2021-07-01 11:47:12', NULL),
(263, '06-762-7602', 'Bulldog Drummond Escapes', 'Bartel Avarne', 2006, 'Contemporary', 45, '2021-10-04 17:32:46', NULL),
(264, '69-591-5768', 'An American Tail: The Mystery of the Night Monster', 'Beverlie Spread', 2004, 'Historical fiction', 96, '2021-11-16 23:09:28', NULL),
(265, '47-713-8689', 'Mortdecai', 'Darby Pohlke', 1909, 'Historical fiction', 75, '2021-06-08 01:50:00', NULL),
(266, '63-888-5830', 'Casino', 'Malinde Dunstone', 2006, 'Science Fiction', 10, '2021-12-28 03:30:55', NULL),
(267, '21-295-4995', 'Criminal, The (a.k.a. Concrete Jungle)', 'Jaye Plastow', 2012, 'Paranormal', 54, '2022-02-09 01:43:37', NULL),
(268, '42-435-9624', 'Lineup, The', 'Courtnay O\'Hartnett', 1997, 'Children', 20, '2021-12-06 12:28:39', NULL),
(269, '89-977-5122', 'Night of the Demons', 'Noel Fleisch', 1998, 'Thriller', 98, '2021-10-02 16:40:08', NULL),
(270, '70-026-8203', 'Jerry Seinfeld: \'I\'m Telling You for the Last Time\'', 'Jacquenette West-Frimley', 1991, 'Historical fiction', 98, '2021-07-23 20:54:20', NULL),
(271, '14-770-2255', 'The Boy in the Mirror', 'Johanna Nurny', 2009, 'Fantasy', 98, '2021-11-19 09:15:42', NULL),
(272, '14-353-9930', 'Torrente 5: Operación Eurovegas', 'Flory Thickpenny', 2007, 'Fantasy', 83, '2022-03-25 15:03:09', NULL),
(273, '87-167-6022', 'Ride in the Whirlwind', 'Burty Shakeshaft', 2007, 'Fantasy', 12, '2021-08-13 10:44:34', NULL),
(274, '22-397-7030', 'Michael Collins', 'Lorne Bockin', 2004, 'Dystopian', 30, '2021-06-07 04:47:09', NULL),
(275, '66-856-3136', 'Stray Dogs (Sag-haye velgard)', 'Candie Arboine', 1995, 'Fantasy', 31, '2022-01-26 11:25:50', NULL),
(276, '13-332-6315', 'Actress, the Dollars and the Transylvanians, The (Artista, dolarii si Ardelenii)', 'Gare Augustine', 1996, 'Adventure', 26, '2021-05-31 02:16:23', NULL),
(277, '93-599-0801', 'Victim', 'Van Layman', 1986, 'Romance', 75, '2021-05-09 06:42:06', NULL),
(278, '13-453-1586', 'Kuffs', 'Anselm Pethick', 2005, 'Contemporary', 81, '2021-07-14 20:12:39', NULL),
(279, '54-457-0304', 'Winnebago Man', 'Onfre Tomicki', 1996, 'Thriller', 62, '2022-04-18 08:01:20', NULL),
(280, '38-466-2428', 'Harakiri (Seppuku)', 'Jim Dincey', 1987, 'Adventure', 43, '2021-09-17 10:59:07', NULL),
(281, '84-948-2909', 'Horse Rebellion, The (Pulakapina)', 'Loella Maroney', 1993, 'Romance', 80, '2021-10-12 20:57:41', NULL),
(282, '43-138-1042', 'Grave, The', 'Mead Lancley', 1996, 'Dystopian', 78, '2021-07-09 18:14:05', NULL),
(283, '09-302-3256', 'Little Thief, The (La petite voleuse)', 'Berkie Goldis', 1987, 'Paranormal', 99, '2021-10-06 18:37:25', NULL),
(284, '16-301-0856', 'Passion of Ayn Rand, The', 'Sande McWilliams', 1969, 'Children', 50, '2022-04-19 06:59:11', NULL),
(285, '95-567-1086', 'Métastases', 'Hubey Feuell', 2006, 'Paranormal', 69, '2022-03-23 12:38:24', NULL),
(286, '34-718-6631', 'Rundown, The', 'Clary Waszczykowski', 2005, 'Adventure', 98, '2022-04-07 22:28:48', NULL),
(287, '47-416-2290', 'Flim-Flam Man, The', 'Nevins Ackerley', 2010, 'Mystery', 52, '2022-04-05 03:08:18', NULL),
(288, '06-418-6545', 'Facing Windows (Finestra di fronte, La)', 'Barbi Izachik', 2004, 'Historical fiction', 22, '2021-06-05 04:47:26', NULL),
(289, '63-309-7741', 'High Wind in Jamaica, A', 'Steffane Merrywether', 1997, 'Paranormal', 79, '2021-06-13 01:41:34', NULL),
(290, '24-620-3853', 'Love Sick Love', 'Eunice Perford', 2011, 'Horror', 81, '2021-11-06 16:22:49', NULL),
(291, '56-682-5108', 'Chico & Rita', 'Pearle Moorerud', 1987, 'Science Fiction', 20, '2022-03-05 09:41:49', NULL),
(292, '10-494-7761', 'Drunken Tai Chi (Siu taai gik)', 'Riannon Stammirs', 2010, 'Contemporary', 31, '2021-07-07 15:53:35', NULL),
(293, '35-610-0957', 'As I Was Moving Ahead Occasionally I Saw Brief Glimpses of Beauty', 'Lynnett Cawthry', 2009, 'Science Fiction', 65, '2021-10-23 18:25:41', NULL),
(294, '62-482-0948', 'Wings of Honneamise (Ôritsu uchûgun Oneamisu no tsubasa)', 'Terrye Aitken', 2008, 'Dystopian', 10, '2022-03-15 20:54:35', NULL),
(295, '44-694-3143', 'Rewind This!', 'Penn Samworth', 2009, 'Dystopian', 87, '2022-01-03 15:59:55', NULL),
(296, '95-316-5352', 'Starred Up', 'Louisette Dundredge', 1994, 'Dystopian', 43, '2021-05-26 01:31:24', NULL),
(297, '44-456-2046', 'Grand Theft Parsons', 'Lian Tommasi', 1999, 'Science Fiction', 32, '2021-11-30 10:58:01', NULL),
(298, '45-173-9692', 'Killing Bono', 'Audrie Faraday', 2003, 'Contemporary', 17, '2021-10-20 10:16:11', NULL),
(299, '40-388-7058', 'Tyler Perry\'s Temptation: Confessions of a Marriage Counselor', 'Cristine Lyst', 2001, 'Dystopian', 56, '2021-10-17 23:11:30', NULL),
(300, '36-504-1903', 'Cocoon: The Return', 'Rollin Duck', 2008, 'Horror', 64, '2022-04-10 23:17:56', NULL),
(301, '13-960-2165', 'God Save the King', 'Arch Weddeburn - Scrimgeour', 1997, 'Science Fiction', 12, '2022-01-22 18:00:05', NULL),
(302, '52-968-1637', 'Paper Moon', 'Rowena Quayle', 2011, 'Thriller', 54, '2022-04-17 00:33:47', NULL),
(303, '30-831-4622', 'Where Were You When the Lights Went Out?', 'Wade Horrigan', 2001, 'Romance', 38, '2021-05-11 18:21:16', NULL),
(304, '52-172-6992', 'Monty Python\'s And Now for Something Completely Different', 'Doris Gethen', 1991, 'Adventure', 20, '2022-01-09 22:07:44', NULL),
(305, '28-616-8002', 'Bob le Flambeur', 'Kenneth Doulden', 1990, 'Paranormal', 93, '2021-11-17 21:22:57', NULL),
(306, '94-487-7481', 'Love the Beast', 'Merell Schafer', 1998, 'Horror', 67, '2022-03-01 10:53:29', NULL),
(307, '72-216-2195', 'Thank God It\'s Friday', 'Patrica Warlowe', 2007, 'Science Fiction', 91, '2022-03-04 13:16:42', NULL),
(308, '85-212-4307', 'Ring Two, The', 'Celestyn Leschelle', 2011, 'Contemporary', 71, '2021-09-02 17:46:17', NULL),
(309, '34-062-8803', 'Normal Heart, The', 'Sybil Provost', 2010, 'Science Fiction', 16, '2022-01-04 09:30:33', NULL),
(310, '15-095-0612', 'Divergent', 'Gerty Augustine', 2006, 'Horror', 63, '2021-10-08 08:28:25', NULL),
(311, '96-835-2543', 'Dead Man\'s Shoes', 'Kim Havers', 2010, 'Historical fiction', 40, '2021-12-17 05:34:06', NULL),
(312, '76-708-7801', 'Hard Times', 'Byran Sparrow', 2007, 'Paranormal', 95, '2021-05-16 04:05:27', NULL),
(313, '40-460-9249', 'Rookie, The', 'Fulvia Temlett', 2009, 'Romance', 16, '2021-11-10 17:28:25', NULL),
(314, '56-333-7247', 'Wait Until Dark', 'Gloria Lorek', 1994, 'Children', 85, '2022-04-28 11:15:30', NULL),
(315, '36-816-1957', 'Mutant Action (Acción Mutante)', 'Wally Pretsell', 2009, 'Fantasy', 18, '2022-01-20 17:55:28', NULL),
(316, '55-327-5281', 'Shrek Forever After (a.k.a. Shrek: The Final Chapter)', 'Elbert Allawy', 2007, 'Dystopian', 57, '2021-08-15 18:36:39', NULL),
(317, '50-033-0839', 'Kes', 'Heather Larway', 2005, 'Dystopian', 76, '2021-11-25 09:02:46', NULL),
(318, '43-816-3513', 'First Men in the Moon', 'Yorgos Beavis', 1990, 'Historical fiction', 63, '2022-04-19 23:25:02', NULL),
(319, '67-626-6089', 'Superheroes', 'Helen Hrynczyk', 1994, 'Horror', 13, '2022-02-14 05:05:38', NULL),
(320, '87-547-4304', 'Children of the Secret State', 'Weylin Blofield', 1972, 'Dystopian', 38, '2021-12-15 15:32:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `type` set('admin','reader') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registered` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `user`
--

TRUNCATE TABLE `user`;
--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `type`, `username`, `password`, `registered`, `last_login`) VALUES
(1, 'reader', 'reader01', '$2a$10$p868pKmnlHDhJiqJpAqL5.cV3vJVaazKFik88OHaRygcUqw81kgoC', '2022-05-01 01:32:50', '2022-05-01 01:32:50'),
(4, 'admin', 'admin01', '$2a$10$B64LMYhCNcL43iKlRG0r5OSo0LUKmxQQhIKCq0eQe5R8owmzeLFiS', '2022-05-02 02:28:22', '2022-05-02 02:28:22'),
(6, 'reader', 'testuser1@gmail.com', '$2a$10$p1eaQbMUAI/V7TQpP9ypse1VUqOVH27w3lolfJri.AE2QNFhXt5c6', '2022-05-02 02:09:14', '2022-05-02 02:09:14'),
(7, 'reader', 'testuser3@gmail.com', '$2a$10$SDhrNNQ4LYG0vEatawNmIuSi30vXOp3UzzogA18fUQCgwiQ71yf1O', '2022-05-01 02:04:54', '0000-00-00 00:00:00'),
(8, 'reader', 'testuser4@gmail.com', '$2a$10$U1MLmET4M7RLxjk8tqLXKOEhEtZF3hEPW8xR5Z275053/bKS1khRe', '2022-05-01 02:08:03', '0000-00-00 00:00:00'),
(9, 'reader', 'testuser5@gmail.com', '$2a$10$U5Rfza.4Z4owrLYHgTDXJ.dBpuQfuYQbfKnyQj0tvrbNvPUHyj6.G', '2022-05-01 02:09:51', '2022-05-01 02:09:51'),
(10, 'reader', 'testuser6@gmail.com', '$2a$10$B4F98uwjlGmLngeIA1qCH.lnCdrXtuST.O8TdPfWJ5SjNkvMU1iJS', '2022-05-01 02:10:51', '2022-05-01 02:10:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_isbn` (`isbn`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74598;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
