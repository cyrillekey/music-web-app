-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2020 at 03:20 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musically`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_no` int(11) NOT NULL,
  `album_id` varchar(50) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_release_date` date NOT NULL,
  `album_genre` varchar(50) NOT NULL,
  `album_ratings` int(11) NOT NULL,
  `artist_id` varchar(50) NOT NULL,
  `albumdesc` longtext NOT NULL,
  `imageFullnameGallery` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_no`, `album_id`, `album_name`, `album_release_date`, `album_genre`, `album_ratings`, `artist_id`, `albumdesc`, `imageFullnameGallery`) VALUES
(24, 'barter1', 'Barter 6', '2015-04-16', 'hiphop', 3, 'thug1', 'Barter 6 is the debut commercial mixtape by American rapper Young Thug. It was released on April 16, 2015, by 300 Entertainment and Atlantic Records. Barter 6 features guest appearances from Birdman, T.I., Boosie Badazz, Young Dolph, Yak Gotti, Lil Duke, Moussa Assuom and Jacquees, while the production was handled primarily by in-house producers London on da Track and Wheezy, among others. Barter 6 received generally positive reviews and peaked at 22 on the US charts. ', 'barter-6.5eabd2a2475053.07825924.jpg'),
(20, 'bside1', 'B-Sides EP', '2019-08-22', 'hiphop', 3, 'geazy1', 'B-Sides is a collection of loosies released by G-Eazy ahead of his 2019 album These Things Happen Too.  It includes club bangers such as â€œBangâ€ featuring Tyga and â€œItâ€™s Eazyâ€ produced by fellow west coast artists P-Lo. â€œSpectacular Nowâ€ involves a much more philosophical G-Eazy spitting from the heart in a reuniting collaboration with produced Christoph Andersson.  The EP was then updated on August 22, 2019 with the additions of â€œAll Factsâ€ and â€œGot A Check.â€', 'b-sides-ep.5eabd0baae3a29.09526933.jpg'),
(17, 'college1', 'the college dropout', '2004-02-10', 'hiphop', 5, 'kanye1', 'The College Dropout is the debut studio album by American rapper and producer Kanye West. It was released on February 10, 2004, by Def Jam Recordings and Roc-A-Fella Records. In the years leading up to release, West had received praise for his production work for rappers such as Jay-Z and Talib Kweli, but faced difficulty being accepted as an artist in his own right by figures in the music industry. Intent on pursuing a solo career, he signed a record deal with Roc-A-Fella and recorded the album over a period of four years, beginning in 1999. ', 'hellowaoaoa.jpg'),
(25, 'Ctrl12', 'Ctrl', '2017-06-09', 'R&B', 5, 'sza1', 'Ctrl (pronounced \"control\") is the debut studio album by American singer SZA. It was released on June 9, 2017, on Top Dawg Entertainment and RCA Records.[2] Originally scheduled for release in late 2015, it was delayed by SZA\'s experience of \"a kind of blinding paralysis brought on by anxiety.\" She worked and reworked the album until the record company took away her hard drive in the spring of 2017.[3] ', 'ctrl.5eabd31d046fd4.58356710.jpg'),
(13, 'culture1', 'culture', '2017-01-27', 'hiphop', 3, 'migos1', 'Culture is the second studio album by American hip hop trio Migos. It was released on January 27, 2017, through Quality Control Music and YRN Tha Label, and distributed by 300 Entertainment. The album features guest appearances from DJ Khaled, Lil Uzi Vert, Gucci Mane, 2 Chainz and Travis Scott, while the production was handled by Metro Boomin and Murda Beatz, among others. ', 'IMG_20200430_123441_000.jpg'),
(22, 'four', '4:44', '2017-06-30', 'hiphop', 5, 'jayz1', '4:44 is the thirteenth studio album by American rapper Jay-Z. It was released on June 30, 2017, through Roc Nation as an exclusive to Sprint and Tidal customers. The album is the first in a planned series of music exclusives from the Sprintâ€“Tidal partnership. For a short time, on July 2, the album was made available for free digital download in Tidal\'s site. A physical edition was released on July 7, including three additional tracks. On the same day, the album was made available to other streaming platforms, such as Apple Music, Google Play Music and Amazon Music.', '464131633_297884.jpg'),
(15, 'kamikaze1', 'kamikaze', '2018-08-31', 'hiphop', 5, 'em24', 'KAMIKAZÆŽ is the tenth studio album by American rapper Eminem, released on August 31, 2018 by Aftermath Entertainment, Interscope Records, and Shady Records without prior announcement. The album features guest appearances from Joyner Lucas, Royce da 5\'9\", Jessie Reyez, and uncredited vocals by Justin Vernon. Eminem, credited as Slim Shady, and Dr. Dre served as executive producers, while production for individual tracks comes from a variety of musicians', 'kamikaze11.jpg'),
(21, 'music212', 'Music to Be Murdered By', '2019-08-22', 'hiphop', 5, 'em24', 'Music to Be Murdered By (stylized as MUSIC TO BE MURDERÆŽD BY) is the eleventh studio album by American rapper Eminem. It was released on January 17, 2020, by Aftermath Entertainment, Interscope Records and Shady Records. It was released as a surprise with no prior announcement, similarly to his previous and tenth studio album Kamikaze (2018).[7] The album was produced by Eminem and Dr. Dre, amongst other producers. It features guest appearances from Young M.A, Royce da 5\'9\", White Gold, Ed Sheeran, the late Juice Wrld, Skylar Grey, Black Thought, Q-Tip, Denaun, Anderson .Paak, Don Toliver, King Crooked and Joell Ortiz.  The album is dedicated to the late Juice Wrld and Eminem\'s late bodyguard CeeAaqil Barnes.', 'music-to-be-murdered-by.5eabd10ee90581.37789922.jpg'),
(26, 'Queen121', 'Queen ', '2018-08-10', 'hiphop', 5, 'nicky1', 'Queen is the fourth studio album by Trinidadian-American rapper Nicki Minaj. It was released on August 10, 2018, through Young Money Entertainment, Cash Money Records and Republic Records. It is Minaj\'s first album in nearly four years, following The Pinkprint (2014). The rapper started recording the album in late 2016, and throughout 2017 and 2018, she collaborated with a handful of producers and songwriters to reach her desired sound. It features guest appearances by rappers Eminem, Foxy Brown, Future, Swae Lee, and Lil Wayne; and singers Ariana Grande, Labrinth, and The Weeknd. Musically, it is a hip hop album that incorporates elements of pop and R&B. ', 'queen-.5eabd37f2bac22.65598164.jpg'),
(14, 'recovery1', 'recovery', '2010-06-18', 'hiphop', 5, 'em24', 'Recovery is the seventh studio album by American rapper Eminem. It was released on June 18, 2010, by Aftermath Entertainment, Shady Records, and Interscope Records. It serves as the follow-up to Eminem\'s sixth studio album Relapse (2009). Originally planned to be released as Relapse 2, the album was renamed to Recovery when Eminem found the album to be musically different from its predecessor.  Production of the album took place during 2009 to 2010 at several recording studios and was handled by various record producers, including Alex da Kid, Just Blaze, Boi-1da, Jim Jonsin, DJ Khalil, Mr. Porter, and Dr. Dre. Eminem also collaborated with artists such as Pink, Lil Wayne, Slaughterhouse and Rihanna for the album. Recovery featured more introspective and emotional content than its predecessor and the theme of the album revolved around his positive changes, anxiety, and emotional drives. ', 'recovery.5ea9ec055e9be6.30993018.jpg'),
(12, 'revivale1', 'revival', '2017-12-15', 'hiphop', 4, 'em24', 'Revival is the ninth studio album by American rapper Eminem. The album was released on December 15, 2017, through Aftermath Entertainment, Shady Records and Interscope Records.[4] Production for the album took place during 2016 to 2017 at various recording studios. In addition to Eminem himself, music production was handled by various record producers, including Rick Rubin, Fredwreck, Skylar Grey, Alex da Kid, and executive producer Dr. Dre.[5] Revival features guest appearances from artists BeyoncÃ©, Phresher, Ed Sheeran, Alicia Keys, X Ambassadors, Skylar Grey, Kehlani, and Pink. ', 'revival.5ea9c74c8103e9.50772785.jpg'),
(18, 'slime1', 'Slime Season', '2015-09-16', 'hiphop', 4, 'thug1', 'Slime Season is a mixtape by American hip hop recording artist Young Thug, released on September 16, 2015. It features production from a range of artists, including London on da Track, Metro Boomin, Ricky Racks, Wheezy, and WondaGurl, and guest appearances from Migos, Gucci Mane, Peewee Longway, and Lil Wayne. ', 'slime-season.5eaaaa3632d821.53588223.jpg'),
(19, 'slime2', 'Slime Season 2', '2015-10-31', 'hiphop', 4, 'thug1', 'Slime Season 2 (stylized as SLIME SEA2ON) is a mixtape by American rapper Young Thug. It was released on October 31, 2015, as the second installment in the Slime Season series, which compiled mostly leaked and unreleased material dating back at least a year. It features production from London on da Track, Wheezy, Metro Boomin and Ricky Racks, among others. The project enlists guest features from Lil Uzi Vert, Trouble, Shad Da God, Yak Gotti, Rich Homie Quan and Birdman.', 'slime-season-2.5eaaaabe2e02d5.73039714.jpg'),
(16, 'sofar1', 'so far gone', '2009-09-15', 'hiphop', 4, 'drake1', 'So Far Gone is the debut extended play by Canadian hip hop recording artist Drake. It was released on September 15, 2009, by Cash Money Records, Universal Motown Records and Young Money Entertainment. This is his reissued project from his third mixtape that was released earlier on February 13, 2009. This EP features five tracks from the mixtape, with the inclusions of two new songs. The EP features guest appearances from Trey Songz, Lil Wayne, Bun B and Young Jeezy', 'bland.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `album_pic`
-- (See below for the actual view)
--
CREATE TABLE `album_pic` (
`music_name` varchar(50)
,`album_id` varchar(50)
,`artist_id` varchar(50)
,`artist_name` varchar(100)
,`musicFullname` varchar(200)
,`artistPicture` longtext
,`album_name` varchar(100)
,`albumdesc` longtext
,`imageFullnameGallery` longtext
,`album_release_date` date
,`album_genre` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `artist_no` int(11) NOT NULL,
  `artist_id` varchar(50) NOT NULL,
  `artist_name` varchar(100) NOT NULL,
  `artistPicture` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_no`, `artist_id`, `artist_name`, `artistPicture`) VALUES
(17, 'august1', 'august alsinia', '814851-august-alsina-wallpapers-2048x1447-meizu.jpg.5eabca183a2633.31959656.jpg'),
(13, 'chris1', 'chris brown', '870479-gorgerous-chris-brown-2018-wallpapers-2048x1361-for-4k.jpg.5eabc9513ce332.10880704.jpg'),
(7, 'drake1', 'drake', '757098-vertical-drake-wallpaper-1920x1080.jpg.5eaaa37f1f08b7.86598717.jpg'),
(1, 'em24', 'eminem', '139188.jpg'),
(11, 'geazy1', 'G-Eazy', '6437.jpg.5eabc89e2a5976.45917741.jpg'),
(5, 'jayz1', 'jay-z', '147876.jpg.5eaaa35921e954.10947622.jpg'),
(6, 'kanye1', 'kanye west', '450489.jpg.5eaaa36e345ce2.36199109.jpg'),
(16, 'kendirk', 'kendrick lamar', '1894992.jpg.5eabc9ed4b13d7.19419259.jpg'),
(12, 'khalifa1', 'wiz khalifa', '715792-download-free-wiz-khalifa-wallpaper-2018-2560x1440-high-resolution.jpg'),
(10, 'meek1', 'meek mill', '1406014-free-meek-mill-wallpapers-2560x1440-for-tablet.jpg.5eaaa3ca1b0e14.53319364.jpg'),
(3, 'migos1', 'Migos', '1017084migoswallpapers2800x1941forhd.jpg'),
(4, 'nicky1', 'Nicky minaj', '1292436-nicki-minaj-hd-wallpaper-1920x1080-for-android-tablet.jpg.5eaa8268d502b0.56917893.jpg'),
(14, 'quavo1', 'Quavo', '1017335-migos-wallpapers-1920x1080-for-meizu.jpg.5eabc96fc69073.91667414.jpg'),
(18, 'richquan1', 'rich homie quan', '669375.jpg.5eabca5820bfb7.39477083.jpg'),
(15, 'sza1', 'SZA', '1894899.jpg.5eabc9881540a3.14244003.jpg'),
(9, 'thug1', 'young thug', '1113398-amazing-young-thug-wallpapers-2048x1365-for-full-hd.jpg.5eaaa3af42b629.60502405.jpg'),
(8, 'tunechi', 'lil wayne', '915240-gorgerous-lil-wayne-hd-wallpapers-2018-1920x1080.jpg.5eaaa397e643c4.25457539.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `music_table`
--

CREATE TABLE `music_table` (
  `music_no` int(11) NOT NULL,
  `music_id` varchar(50) NOT NULL,
  `music_name` varchar(50) NOT NULL,
  `album_id` varchar(50) NOT NULL,
  `musicFullname` varchar(200) NOT NULL,
  `date_added` datetime NOT NULL,
  `artist_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_table`
--

INSERT INTO `music_table` (`music_no`, `music_id`, `music_name`, `album_id`, `musicFullname`, `date_added`, `artist_id`) VALUES
(42, 'college11', ' Intro.mp3', 'college1', 'intro.mp3', '2020-04-30 13:45:34', 'kanye1'),
(43, 'college12', 'We Don\'t Care.mp3', 'college1', '02 - We Don\'t Care.mp3.5eaaad11f30f65.45417948.mp3', '2020-04-30 13:48:50', 'kanye1'),
(44, 'college13', 'Graduation Day.mp3', 'college1', '03 - Graduation Day.mp3.5eaaad3ec9c0e1.78209068.mp3', '2020-04-30 13:49:34', 'kanye1'),
(45, 'college14', 'All Falls Down.mp3', 'college1', '04 - All Falls Down.mp3.5eaaad4adaad90.71407107.mp3', '2020-04-30 13:49:46', 'kanye1'),
(46, 'college15', 'I\'ll Fly Away.mp3', 'college1', '05 - I\'ll Fly Away.mp3.5eaaad52b427c2.16301516.mp3', '2020-04-30 13:49:54', 'kanye1'),
(47, 'college16', 'Spaceship.mp3', 'college1', '06 - Spaceship.mp3.5eaaad5dcc9276.27840693.mp3', '2020-04-30 13:50:05', 'kanye1'),
(49, 'college17', ' Jesus Walks.mp3', 'college1', '07 - Jesus Walks.mp3.5eaaade2bb65e3.68374203.mp3', '2020-04-30 13:52:18', 'kanye1'),
(50, 'college18', 'Never Let Me Down.mp3', 'college1', '08 - Never Let Me Down.mp3.5eaaadeab71d11.43567800.mp3', '2020-04-30 13:52:26', 'kanye1'),
(51, 'college19', 'Get Em High.mp3', 'college1', '09 - Get Em High.mp3.5eaaadfd1c26f4.99640154.mp3', '2020-04-30 13:52:45', 'kanye1'),
(52, 'college20', 'Workout Plan.mp3', 'college1', '10 - Workout Plan.mp3.5eaaae0491b9c8.47323095.mp3', '2020-04-30 13:52:52', 'kanye1'),
(53, 'college21', 'The New Workout Plan.mp3', 'college1', '11 - The New Workout Plan.mp3.5eaaae0e4193c5.04780079.mp3', '2020-04-30 13:53:02', 'kanye1'),
(54, 'college22', 'Slow Jamz.mp3', 'college1', '12 - Slow Jamz.mp3.5eaaae25a01619.20320968.mp3', '2020-04-30 13:53:25', 'kanye1'),
(55, 'college23', 'Breathe In Breathe Out.mp3', 'college1', '13 - Breathe In Breathe Out.mp3.5eaaae2d7ab238.68892760.mp3', '2020-04-30 13:53:33', 'kanye1'),
(56, 'college24', 'School Spirit Skit 1.mp3', 'college1', '14 - School Spirit Skit 1.mp3.5eaaae34209ae3.20310811.mp3', '2020-04-30 13:53:40', 'kanye1'),
(57, 'college25', 'chool Spirit.mp3', 'college1', '15 - School Spirit.mp3.5eaaae4088fe38.88485975.mp3', '2020-04-30 13:53:52', 'kanye1'),
(58, 'college26', 'School Spirit Skit 2.mp3', 'college1', '16 - School Spirit Skit 2.mp3.5eaaae50a5ff17.12006180.mp3', '2020-04-30 13:54:08', 'kanye1'),
(59, 'college27', 'Lil Jimmy Skit.mp3', 'college1', '17 - Lil Jimmy Skit.mp3.5eaaae71ae9172.97764128.mp3', '2020-04-30 13:54:41', 'kanye1'),
(60, 'college28', 'Two Words.mp3', 'college1', '18 - Two Words.mp3.5eaaae79165487.06496611.mp3', '2020-04-30 13:54:49', 'kanye1'),
(61, 'college29', ' Through The Wire.mp3', 'college1', '19 - Through The Wire.mp3.5eaaae8055ae39.23388546.mp3', '2020-04-30 13:54:56', 'kanye1'),
(62, 'college30', 'Family Business.mp3', 'college1', '20 - Family Business.mp3.5eaaae8ab37ed2.66537714.mp3', '2020-04-30 13:55:06', 'kanye1'),
(63, 'college31', 'Last Call.mp3', 'college1', '21 - Last Call.mp3.5eaaae96f25eb1.75485548.mp3', '2020-04-30 13:55:18', 'kanye1'),
(27, 'culturetr1', 'Migos All Ass.mp3', 'culture1', 'Migos All Ass.mp3.5ea9d7559c4a91.33268838.mp3', '2020-04-29 22:36:53', 'migos1'),
(37, 'culturetr10', 'Migos Out Yo Way.mp3', 'culture1', 'Migos Out Yo Way.mp3.5ea9d809373f60.84209224.mp3', '2020-04-29 22:39:53', 'migos1'),
(38, 'culturetr11', 'Migos Slippery Ft Gucci Mane.mp3', 'culture1', 'Migos Slippery Ft Gucci Mane.mp3.5ea9d8123dcf27.74696783.mp3', '2020-04-29 22:40:02', 'migos1'),
(39, 'culturetr12', 'Migos T Shirt.mp3', 'culture1', 'Migos T Shirt.mp3.5ea9d82d2981e4.85072667.mp3', '2020-04-29 22:40:29', 'migos1'),
(40, 'culturetr13', 'Migos What The Price.mp3', 'culture1', 'Migos What The Price.mp3.5ea9d834dfe2a1.86864578.mp3', '2020-04-29 22:40:36', 'migos1'),
(28, 'culturetr2', 'Migos Bad And Boujee Ft Lil Uzi Vert.mp3', 'culture1', 'Migos Bad And Boujee Ft Lil Uzi Vert.mp3.5ea9d7789ab628.82500677.mp3', '2020-04-29 22:37:28', 'migos1'),
(29, 'culturetr3', 'Migos Big On Big.mp3', 'culture1', 'Migos Big On Big.mp3.5ea9d77f3fa885.61067366.mp3', '2020-04-29 22:37:35', 'migos1'),
(31, 'culturetr4', 'Migos Brown Paper Bag.mp3', 'culture1', 'Migos Brown Paper Bag.mp3.5ea9d7bfde6949.97880717.mp3', '2020-04-29 22:38:39', 'migos1'),
(32, 'culturetr5', 'Migos Call Casting.mp3', 'culture1', 'Migos Call Casting.mp3.5ea9d7ce6ac019.08062569.mp3', '2020-04-29 22:38:54', 'migos1'),
(33, 'culturetr6', 'Migos Culture Ft Dj Khaled.mp3', 'culture1', 'Migos Culture Ft Dj Khaled.mp3.5ea9d7d9294180.02986256.mp3', '2020-04-29 22:39:05', 'migos1'),
(34, 'culturetr7', 'Migos Deadz Ft 2 Chainz.mp3', 'culture1', 'Migos Deadz Ft 2 Chainz.mp3.5ea9d7e2526409.21823523.mp3', '2020-04-29 22:39:14', 'migos1'),
(35, 'culturetr8', 'Migos Get Right Witcha.mp3', 'culture1', 'Migos Get Right Witcha.mp3.5ea9d7eb73fde6.20864782.mp3', '2020-04-29 22:39:23', 'migos1'),
(36, 'culturetr9', 'Migos Kelly Price Ft Travis Scott.mp3', 'culture1', 'Migos Kelly Price Ft Travis Scott.mp3.5ea9d7f264a312.11644234.mp3', '2020-04-29 22:39:30', 'migos1'),
(82, 'kamikaze1', 'The Ringer.mp3', 'kamikaze1', 'The Ringer.mp3.5eaad0a2ef2410.91876644.mp3', '2020-04-30 16:20:34', 'em24'),
(91, 'kamikaze10', 'Nice Guy.mp3', 'kamikaze1', 'Nice Guy.mp3.5eaad1088d7a21.47226894.mp3', '2020-04-30 16:22:16', 'em24'),
(92, 'kamikaze11', 'Good Guy.mp3', 'kamikaze1', 'Good Guy.mp3.5eaad1913a4a46.46084771.mp3', '2020-04-30 16:24:33', 'em24'),
(93, 'kamikaze12', 'Venom (Music From The Motion Picture).mp3', 'kamikaze1', 'Venom (Music From The Motion Picture).mp3.5eaad19ee1ca42.07727826.mp3', '2020-04-30 16:24:46', 'em24'),
(94, 'kamikaze13', 'Fall.mp3', 'kamikaze1', 'Fall.mp3.5eaad1c829edb8.44866113.mp3', '2020-04-30 16:25:28', 'em24'),
(83, 'kamikaze2', 'Greatest.mp3', 'kamikaze1', 'Greatest.mp3.5eaad0aef35069.63212765.mp3', '2020-04-30 16:20:46', 'em24'),
(84, 'kamikaze3', 'Lucky You.mp3', 'kamikaze1', 'Lucky You.mp3.5eaad0b87ac6f5.58026364.mp3', '2020-04-30 16:20:56', 'em24'),
(85, 'kamikaze4', 'Paul (Skit).mp3', 'kamikaze1', 'Paul (Skit).mp3.5eaad0c88b7906.76856050.mp3', '2020-04-30 16:21:12', 'em24'),
(86, 'kamikaze5', 'Normal.mp3', 'kamikaze1', 'Normal.mp3.5eaad0d3767295.45165324.mp3', '2020-04-30 16:21:23', 'em24'),
(87, 'kamikaze6', 'Em Calls Paul (Skit).mp3', 'kamikaze1', 'Em Calls Paul (Skit).mp3.5eaad0ddcb3079.61306380.mp3', '2020-04-30 16:21:33', 'em24'),
(88, 'kamikaze7', 'Stepping Stone.mp3', 'kamikaze1', 'Stepping Stone.mp3.5eaad0e702fcf9.13096496.mp3', '2020-04-30 16:21:43', 'em24'),
(89, 'kamikaze8', 'Not Alike.mp3', 'kamikaze1', 'Not Alike.mp3.5eaad0f4595c63.08617323.mp3', '2020-04-30 16:21:56', 'em24'),
(90, 'kamikaze9', 'Kamikaze.mp3', 'kamikaze1', 'Kamikaze.mp3.5eaad0ffe767f3.82868092.mp3', '2020-04-30 16:22:07', 'em24'),
(156, 'music1', '01. Kill Jay Z.mp3', 'four', '01. Kill Jay Z.mp3.5eabd4e823e366.86918755.mp3', '2020-05-01 10:51:04', 'jayz1'),
(157, 'music2', '03. Smile (feat. Gloria Carter).mp3', 'four', '03. Smile (feat. Gloria Carter).mp3.5eabd50625ca62.21340647.mp3', '2020-05-01 10:51:34', 'jayz1'),
(158, 'music3', '04. Caught Their Eyes (feat. Frank Ocean).mp3', 'four', '04. Caught Their Eyes (feat. Frank Ocean).mp3.5eabd50e900444.71535804.mp3', '2020-05-01 10:51:42', 'jayz1'),
(159, 'music4', '05. 4;44.mp3', 'four', '05. 4;44.mp3.5eabd515c2e1d5.97258314.mp3', '2020-05-01 10:51:49', 'jayz1'),
(160, 'music5', '06. Family Feud.mp3', 'four', '06. Family Feud.mp3.5eabd5221bd811.18356844.mp3', '2020-05-01 10:52:02', 'jayz1'),
(161, 'music6', '07. Bam (feat. Damian Marley).mp3', 'four', '07. Bam (feat. Damian Marley).mp3.5eabd52a540eb0.12369321.mp3', '2020-05-01 10:52:10', 'jayz1'),
(162, 'music7', '08. Moonlight.mp3', 'four', '08. Moonlight.mp3.5eabd5361523c9.21979604.mp3', '2020-05-01 10:52:22', 'jayz1'),
(163, 'music8', '09. Marcy Me.mp3', 'four', '09. Marcy Me.mp3.5eabd5501b3592.27705804.mp3', '2020-05-01 10:52:48', 'jayz1'),
(164, 'music9', '10. Legacy.mp3', 'four', '10. Legacy.mp3.5eabd559418cf0.00570940.mp3', '2020-05-01 10:52:57', 'jayz1'),
(95, 'recov1', '01 - Cold Wind Blows.m4a', 'recovery1', '01 - Cold Wind Blows.m4a.5eaad2e326fc31.71182564.m4a', '2020-04-30 16:30:11', 'em24'),
(104, 'recov10', '12 - 25 to Life.m4a', 'recovery1', '12 - 25 to Life.m4a.5eaad33fc73e56.09895893.m4a', '2020-04-30 16:31:43', 'em24'),
(105, 'recov11', '13 - So Bad.m4a', 'recovery1', '13 - So Bad.m4a.5eaad34af32cf3.91777208.m4a', '2020-04-30 16:31:54', 'em24'),
(106, 'recov12', '14 - Almost Famous.m4a', 'recovery1', '14 - Almost Famous.m4a.5eaad355f1e233.48978092.m4a', '2020-04-30 16:32:05', 'em24'),
(107, 'recov13', '15 - Love the Way You Lie (feat. Rihanna).m4a', 'recovery1', '15 - Love the Way You Lie (feat. Rihanna).m4a.5eaad35f79efa0.22423423.m4a', '2020-04-30 16:32:15', 'em24'),
(108, 'recov14', '16 - You\'re Never Over.m4a', 'recovery1', '16 - You\'re Never Over.m4a.5eaad36cbfa980.53789406.m4a', '2020-04-30 16:32:28', 'em24'),
(109, 'recov15', '17 - Untitled.m4a', 'recovery1', '17 - Untitled.m4a.5eaad377a6b773.97086586.m4a', '2020-04-30 16:32:39', 'em24'),
(110, 'recov16', '18 - Ridaz.m4a', 'recovery1', '18 - Ridaz.m4a.5eaad3832ac874.33928395.m4a', '2020-04-30 16:32:51', 'em24'),
(111, 'recov17', '19 - Session One (feat. Slaughterhouse).m4a', 'recovery1', '19 - Session One (feat. Slaughterhouse).m4a.5eaad3915ff321.70658998.m4a', '2020-04-30 16:33:05', 'em24'),
(96, 'recov2', '02 - Talkin\' 2 Myself (feat. Kobe).m4a', 'recovery1', '02 - Talkin\' 2 Myself (feat. Kobe).m4a.5eaad2ee77ea27.25460591.m4a', '2020-04-30 16:30:22', 'em24'),
(97, 'recov3', '03 - On Fire.m4a', 'recovery1', '03 - On Fire.m4a.5eaad2f741c8e2.83690820.m4a', '2020-04-30 16:30:31', 'em24'),
(98, 'recov4', '05 - W.T.P..m4a', 'recovery1', '05 - W.T.P..m4a.5eaad30d068783.93912561.m4a', '2020-04-30 16:30:53', 'em24'),
(99, 'recov5', '06 - Going Through Changes.m4a', 'recovery1', '06 - Going Through Changes.m4a.5eaad314a854f2.55139551.m4a', '2020-04-30 16:31:00', 'em24'),
(100, 'recov6', '07 - Not Afraid.m4a', 'recovery1', '07 - Not Afraid.m4a.5eaad31ea05e50.89390340.m4a', '2020-04-30 16:31:10', 'em24'),
(101, 'recov7', '08 - Seduction.m4a', 'recovery1', '08 - Seduction.m4a.5eaad325739094.00832332.m4a', '2020-04-30 16:31:17', 'em24'),
(102, 'recov8', '10 - Space Bound.m4a', 'recovery1', '10 - Space Bound.m4a.5eaad32c850965.76166807.m4a', '2020-04-30 16:31:24', 'em24'),
(103, 'recov9', '11 - Cinderella Man.m4a', 'recovery1', '11 - Cinderella Man.m4a.5eaad336b33372.85213597.m4a', '2020-04-30 16:31:34', 'em24'),
(5, 'revival1', 'Arose.mp3', 'revivale1', 'Arose.mp3.5ea9d393a17cf2.77497102.mp3', '0000-00-00 00:00:00', 'em24'),
(16, 'revival10', 'Need Me.mp3', 'revivale1', 'Need Me.mp3.5ea9d458921f20.55862660.mp3', '0000-00-00 00:00:00', 'em24'),
(17, 'revival11', 'Nowhere Fast.mp3', 'revivale1', 'Nowhere Fast.mp3.5ea9d4630d8fc3.07932844.mp3', '0000-00-00 00:00:00', 'em24'),
(18, 'revival12', 'Offended.mp3', 'revivale1', 'Offended.mp3.5ea9d46cae8b23.89392230.mp3', '0000-00-00 00:00:00', 'em24'),
(19, 'revival13', 'Remind Me (Intro).mp3', 'revivale1', 'Remind Me (Intro).mp3.5ea9d47bc8ae85.90820406.mp3', '0000-00-00 00:00:00', 'em24'),
(20, 'revival14', 'Revival (Interlude).mp3', 'revivale1', 'Revival (Interlude).mp3.5ea9d485b51b22.50399056.mp3', '0000-00-00 00:00:00', 'em24'),
(21, 'revival15', 'River.mp3', 'revivale1', 'River.mp3.5ea9d4a260aa64.91749144.mp3', '0000-00-00 00:00:00', 'em24'),
(22, 'revival16', 'Tragic Endings.mp3', 'revivale1', 'Tragic Endings.mp3.5ea9d4ac1c7f68.03730945.mp3', '0000-00-00 00:00:00', 'em24'),
(24, 'revival17', 'Untouchable.mp3', 'revivale1', 'Untouchable.mp3.5ea9d516e56914.52013994.mp3', '0000-00-00 00:00:00', 'em24'),
(25, 'revival18', 'Walk On Water.mp3', 'revivale1', 'Walk On Water.mp3.5ea9d5275577a5.42036861.mp3', '0000-00-00 00:00:00', 'em24'),
(26, 'revival19', 'Remind Me.mp3', 'revivale1', 'Remind Me.mp3.5ea9d5f687f498.68070903.mp3', '0000-00-00 00:00:00', 'em24'),
(6, 'revival2', 'Bad Husband.mp3', 'revivale1', 'Bad Husband.mp3.5ea9d3a82dc9d3.31464943.mp3', '0000-00-00 00:00:00', 'em24'),
(7, 'revival3', 'Believe.mp3', 'revivale1', 'Believe.mp3.5ea9d3af501d81.93388784.mp3', '0000-00-00 00:00:00', 'em24'),
(8, 'revival4', 'Castle.mp3', 'revivale1', 'Castle.mp3.5ea9d3b71c4303.92023874.mp3', '0000-00-00 00:00:00', 'em24'),
(9, 'revival5', 'Chloraseptic.mp3', 'revivale1', 'Chloraseptic.mp3.5ea9d3cfc93f69.81178967.mp3', '0000-00-00 00:00:00', 'em24'),
(11, 'revival6', 'Framed.mp3', 'revivale1', 'Framed.mp3.5ea9d40de60de9.51129225.mp3', '0000-00-00 00:00:00', 'em24'),
(12, 'revival7', 'Heat.mp3', 'revivale1', 'Heat.mp3.5ea9d4167b8475.70397632.mp3', '0000-00-00 00:00:00', 'em24'),
(14, 'revival8', 'In Your Head.mp3', 'revivale1', 'In Your Head.mp3.5ea9d4456b32e7.93481969.mp3', '0000-00-00 00:00:00', 'em24'),
(15, 'revival9', 'Like Home.mp3', 'revivale1', 'Like Home.mp3.5ea9d44e99d807.99162404.mp3', '0000-00-00 00:00:00', 'em24'),
(113, 'sliime21', '02. Thief In The Night (Feat. Trouble).mp3', 'slime2', '02. Thief In The Night (Feat. Trouble).mp3.5eaad402f03f11.41581169.mp3', '2020-04-30 16:34:59', 'thug1'),
(112, 'sliime22', '01. Big Racks (Intro By Lil Uzi Vert).mp3', 'slime2', '01. Big Racks (Intro By Lil Uzi Vert).mp3.5eaad3f7653018.09932998.mp3', '2020-04-30 16:34:47', 'thug1'),
(114, 'sliime23', '03. Don\'t Know (Feat. Shad Da God).mp3', 'slime2', '03. Don\'t Know (Feat. Shad Da God).mp3.5eaad40b1eb458.28723152.mp3', '2020-04-30 16:35:07', 'thug1'),
(115, 'sliime24', '04.Hey, I.mp3', 'slime2', '04.Hey, I.mp3.5eaad414bbd2f9.17061569.mp3', '2020-04-30 16:35:16', 'thug1'),
(116, 'sliime25', '05. She Notice.mp3', 'slime2', '05. She Notice.mp3.5eaad41ca30a24.25821435.mp3', '2020-04-30 16:35:24', 'thug1'),
(117, 'sliime26', '06. All Over.mp3', 'slime2', '06. All Over.mp3.5eaad4266a1c30.11143997.mp3', '2020-04-30 16:35:34', 'thug1'),
(118, 'sliime27', '07. Twerk It.mp3', 'slime2', '07. Twerk It.mp3.5eaad42fb988c8.05212325.mp3', '2020-04-30 16:35:43', 'thug1'),
(119, 'sliime28', '08. Phoenix.mp3', 'slime2', '08. Phoenix.mp3.5eaad43aed11f2.56626939.mp3', '2020-04-30 16:35:54', 'thug1'),
(120, 'sliime29', '09. I\'ll Tell You What.mp3', 'slime2', '09. I\'ll Tell You What.mp3.5eaad44364a754.65961192.mp3', '2020-04-30 16:36:03', 'thug1'),
(121, 'sliime30', '10. Mind Right.mp3', 'slime2', '10. Mind Right.mp3.5eaad44bdb55e8.49200480.mp3', '2020-04-30 16:36:11', 'thug1'),
(122, 'sliime31', '11. Go Crazy.mp3', 'slime2', '11. Go Crazy.mp3.5eaad45a7d5187.69831308.mp3', '2020-04-30 16:36:26', 'thug1'),
(123, 'sliime32', '12. Pull Up On A Kid (Feat. Yak Gotti).mp3', 'slime2', '12. Pull Up On A Kid (Feat. Yak Gotti).mp3.5eaad468e865f5.96399322.mp3', '2020-04-30 16:36:40', 'thug1'),
(124, 'sliime33', '13. Up.mp3', 'slime2', '13. Up.mp3.5eaad47658eff0.44396146.mp3', '2020-04-30 16:36:54', 'thug1'),
(126, 'sliime34', '14 . Bout Damn Time.mp3', 'slime2', '14 . Bout Damn Time.mp3.5eaad48b48a4d5.05683600.mp3', '2020-04-30 16:37:15', 'thug1'),
(127, 'sliime35', '15. Flaws.mp3', 'slime2', '15. Flaws.mp3.5eaad49d2a9f06.50987124.mp3', '2020-04-30 16:37:33', 'thug1'),
(128, 'sliime36', '16. Oh Lord.mp3', 'slime2', '16. Oh Lord.mp3.5eaad4a9135900.45724484.mp3', '2020-04-30 16:37:45', 'thug1'),
(129, 'sliime37', '17. Beast.mp3', 'slime2', '17. Beast.mp3.5eaad4ba35c7e0.32880817.mp3', '2020-04-30 16:38:02', 'thug1'),
(130, 'sliime38', '18. Never Made Love (Feat. Rich Homie Quan).mp3', 'slime2', '18. Never Made Love (Feat. Rich Homie Quan).mp3.5eaad4c3833a64.91911584.mp3', '2020-04-30 16:38:11', 'thug1'),
(131, 'sliime39', '19. Raw (Might Just).mp3', 'slime2', '19. Raw (Might Just).mp3.5eaad4d100f5a0.40788382.mp3', '2020-04-30 16:38:25', 'thug1'),
(132, 'sliime40', '20. No No No (Feat. Birdman) (Bonus).mp3', 'slime2', '20. No No No (Feat. Birdman) (Bonus).mp3.5eaad4e3573c64.47344659.mp3', '2020-04-30 16:38:43', 'thug1'),
(133, 'sliime41', '21. My Baby (Bonus).mp3', 'slime2', '21. My Baby (Bonus).mp3.5eaad4ef389d02.49465126.mp3', '2020-04-30 16:38:55', 'thug1'),
(134, 'sliime42', '22. Love Me Forever (Chopped & Screwed  (Bonus).mp', 'slime2', '22. Love Me Forever (Chopped & Screwed  (Bonus).mp3.5eaad4fa0d3617.50200737.mp3', '2020-04-30 16:39:06', 'thug1'),
(69, 'slime00', 'Calling YourName', 'slime1', '07_-_Young_Thug_-_Calling_Your_Name--(MixJoint.com).mp3.5eaab4d527ac92.34571740.mp3', '2020-04-30 14:21:57', 'thug1'),
(64, 'slime001', 'Take Kare (Feat Lil Wayne)', 'slime1', '01_-_Young_Thug_-_Take_Kare_(Feat_Lil_Wayne)--(MixJoint.com).mp3.5eaab32e9a6828.39418085.mp3', '2020-04-30 14:14:54', 'thug1'),
(73, 'slime0010', 'Be Me See Me', 'slime1', '11_-_Young_Thug_-_Be_Me_See_Me--(MixJoint.com).mp3.5eaab4f4e02511.63198706.mp3', '2020-04-30 14:22:28', 'thug1'),
(74, 'slime0011', 'Overdosin', 'slime1', '12_-_Young_Thug_-_Overdosin--(MixJoint.com).mp3.5eaab503625c47.82057207.mp3', '2020-04-30 14:22:43', 'thug1'),
(75, 'slime0012', 'Thats All', 'slime1', '14_-_Young_Thug_-_Thats_All--(MixJoint.com).mp3.5eaab50e89b295.08467724.mp3', '2020-04-30 14:22:54', 'thug1'),
(76, 'slime0013', 'U Digg What Im Saying', 'slime1', '15_-_Young_Thug_-_U_Digg_What_Im_Saying--(MixJoint.com).mp3.5eaab5156c5442.30464280.mp3', '2020-04-30 14:23:01', 'thug1'),
(77, 'slime0014', 'Draw Down', 'slime1', '16_-_Young_Thug_-_Draw_Down--(MixJoint.com).mp3.5eaab51cdd6982.97863264.mp3', '2020-04-30 14:23:08', 'thug1'),
(78, 'slime0015', 'Wood Would', 'slime1', '17_-_Young_Thug_-_Wood_Would--(MixJoint.com).mp3.5eaab53a7fbb16.54428152.mp3', '2020-04-30 14:23:38', 'thug1'),
(79, 'slime0016', 'Wanna Be Me', 'slime1', '18_-_Young_Thug_-_Wanna_Be_Me--(MixJoint.com).mp3.5eaab5450e5005.07561361.mp3', '2020-04-30 14:23:49', 'thug1'),
(81, 'slime0017', 'Best Friend.mp3', 'slime1', 'Best Friend.mp3.5eaab61c28e6a8.69623955.mp3', '2020-04-30 14:27:24', 'thug1'),
(65, 'slime002', 'Quaterback Feat Quavo Offset', 'slime1', '02_-_Young_Thug_-_Quaterback_Feat_Quavo_Offset_And_PeeWee_Longway--(MixJoint.com).mp3.5eaab33a5462b8.71398293.mp3', '2020-04-30 14:15:06', 'thug1'),
(66, 'slime003', 'Power.mp3', 'slime1', 'Power.mp3.5eaab498e57427.06289455.mp3', '2020-04-30 14:20:56', 'thug1'),
(67, 'slime004', 'Rarri Feat Young Ralph.mp3', 'slime1', 'Rarri Feat Young Ralph.mp3.5eaab4b04ffab9.29073694.mp3', '2020-04-30 14:21:20', 'thug1'),
(70, 'slime005', 'No Way', 'slime1', '08_-_Young_Thug_-_No_Way--(MixJoint.com).mp3.5eaab4dbdd9697.60902019.mp3', '2020-04-30 14:22:03', 'thug1'),
(71, 'slime006', 'Mine', 'slime1', '09_-_Young_Thug_-_Mine--(MixJoint.com).mp3.5eaab4e2c96376.76031145.mp3', '2020-04-30 14:22:10', 'thug1'),
(72, 'slime009', 'Freaky', 'slime1', '10_-_Young_Thug_-_Freaky--(MixJoint.com).mp3.5eaab4eb60db50.58279467.mp3', '2020-04-30 14:22:19', 'thug1'),
(135, 'sofaar11', '01 - Lust For Life.mp3', 'sofar1', '01 - Lust For Life.mp3.5eaad57a489462.96223006.mp3', '2020-04-30 16:41:14', 'drake1'),
(136, 'sofaar12', '02 - Houstatlantavegas.mp3', 'sofar1', '02 - Houstatlantavegas.mp3.5eaad59ca12306.22984109.mp3', '2020-04-30 16:41:48', 'drake1'),
(137, 'sofaar13', '03 - Successful.mp3', 'sofar1', '03 - Successful.mp3.5eaad5a61d6448.88870674.mp3', '2020-04-30 16:41:58', 'drake1'),
(138, 'sofaar14', '04 - Let\'s Call It Off.mp3', 'sofar1', '04 - Let\'s Call It Off.mp3.5eaad5bf54c016.55328139.mp3', '2020-04-30 16:42:23', 'drake1'),
(139, 'sofaar15', '05 - November 18th.mp3', 'sofar1', '05 - November 18th.mp3.5eaad5f2bf2606.22257165.mp3', '2020-04-30 16:43:14', 'drake1'),
(140, 'sofaar16', '06 - Ignant Shit.mp3', 'sofar1', '06 - Ignant Shit.mp3.5eaad603d22c45.54292775.mp3', '2020-04-30 16:43:31', 'drake1'),
(141, 'sofaar17', '07 - A Night Off.mp3', 'sofar1', '07 - A Night Off.mp3.5eaad60add5481.32142534.mp3', '2020-04-30 16:43:38', 'drake1'),
(142, 'sofaar18', '08 - Say What\'s Real.mp3', 'sofar1', '08 - Say What\'s Real.mp3.5eaad625dbce31.98023593.mp3', '2020-04-30 16:44:05', 'drake1'),
(143, 'sofaar19', '09 - Little Bit.mp3', 'sofar1', '09 - Little Bit.mp3.5eaad634a265d7.73159071.mp3', '2020-04-30 16:44:20', 'drake1'),
(144, 'sofaar20', '10 - Best I Ever Had.mp3', 'sofar1', '10 - Best I Ever Had.mp3.5eaad64124b399.29604238.mp3', '2020-04-30 16:44:33', 'drake1'),
(145, 'sofaar21', '11 - Unstoppable.mp3', 'sofar1', '11 - Unstoppable.mp3.5eaad6499665e4.89207880.mp3', '2020-04-30 16:44:41', 'drake1'),
(146, 'sofaar22', '12 - Uptown.mp3', 'sofar1', '12 - Uptown.mp3.5eaad65686fe21.96215964.mp3', '2020-04-30 16:44:54', 'drake1'),
(147, 'sofaar23', '13 - Sooner Than Later.mp3', 'sofar1', '13 - Sooner Than Later.mp3.5eaad65fe10aa7.43742757.mp3', '2020-04-30 16:45:03', 'drake1'),
(148, 'sofaar24', '14 - Bria\'s Interlude.mp3', 'sofar1', '14 - Bria\'s Interlude.mp3.5eaad67111a0d9.53001780.mp3', '2020-04-30 16:45:21', 'drake1'),
(149, 'sofaar25', '15 - The Calm.mp3', 'sofar1', '15 - The Calm.mp3.5eaad680d070b4.83065366.mp3', '2020-04-30 16:45:36', 'drake1'),
(150, 'sofaar26', '16 - Outro.mp3', 'sofar1', '16 - Outro.mp3.5eaad68aeb38a6.00176665.mp3', '2020-04-30 16:45:46', 'drake1'),
(152, 'sofaar27', '17 - Brand New.mp3', 'sofar1', '17 - Brand New.mp3.5eaad6ad37d231.96267692.mp3', '2020-04-30 16:46:21', 'drake1'),
(154, 'sofaar28', '18 - Congratulations.mp3', 'sofar1', '18 - Congratulations.mp3.5eaad6cb68b032.12454309.mp3', '2020-04-30 16:46:51', 'drake1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `p_word` varchar(250) NOT NULL,
  `date_joined` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `email`, `p_word`, `date_joined`) VALUES
(11, 'cyrille', 'cyrilleotieno7@gmail.com', '$2y$10$BQ5Uw4kqMyGjVc7S6MpqG.wwZrlQsbpc1Js0/W9uPft5xmvtiyApq', '2020-05-02 14:19:27');

-- --------------------------------------------------------

--
-- Structure for view `album_pic`
--
DROP TABLE IF EXISTS `album_pic`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `album_pic`  AS  select `music_table`.`music_name` AS `music_name`,`music_table`.`album_id` AS `album_id`,`music_table`.`artist_id` AS `artist_id`,`artist`.`artist_name` AS `artist_name`,`music_table`.`musicFullname` AS `musicFullname`,`artist`.`artistPicture` AS `artistPicture`,`album`.`album_name` AS `album_name`,`album`.`albumdesc` AS `albumdesc`,`album`.`imageFullnameGallery` AS `imageFullnameGallery`,`album`.`album_release_date` AS `album_release_date`,`album`.`album_genre` AS `album_genre` from (`album` join (`artist` join `music_table` on((`artist`.`artist_id` = `music_table`.`artist_id`))) on(((`artist`.`artist_id` = `album`.`artist_id`) and (`album`.`album_id` = `music_table`.`album_id`)))) where (`music_table`.`album_id` = 'culture1') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD UNIQUE KEY `album_no` (`album_no`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`artist_id`),
  ADD UNIQUE KEY `artist_no` (`artist_no`);

--
-- Indexes for table `music_table`
--
ALTER TABLE `music_table`
  ADD PRIMARY KEY (`music_id`),
  ADD UNIQUE KEY `music_no` (`music_no`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `artist_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `music_table`
--
ALTER TABLE `music_table`
  MODIFY `music_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);

--
-- Constraints for table `music_table`
--
ALTER TABLE `music_table`
  ADD CONSTRAINT `music_table_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `music_table_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
