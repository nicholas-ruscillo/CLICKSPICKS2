-- credentials and database name should be changes for production instances
-- this following scripts should be run separately from the DB table and DATA scripts as ROOT

create database cp;
create user cp;
grant all on cp.* to cp@localhost identified by 'cp';



--  tables and database scripts
--  should be run as the user created from the above step

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:00";

--
-- Table structure for table `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(50)  DEFAULT NULL,
  `img_url` varchar(100)  DEFAULT NULL,
  `ad_url` varchar(100)  DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `clicks` int(11) DEFAULT '0',
  `position` varchar(5)  DEFAULT NULL,
  `pick_id` int(11) DEFAULT '0',
  `category_id` int(11) DEFAULT '0',
  `ad_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `display` char(1) COLLATE utf8_german2_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`ad_id`),
  KEY `on_impression` (`impressions`),
  KEY `on_clicks` (`clicks`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`ad_id`, `ad_name`, `img_url`, `ad_url`, `impressions`, `clicks`, `position`, `pick_id`, `category_id`, `ad_date`, `display`) VALUES
(1, 'Disney Preschool', 'images/ads/disney_preschool.jpg', 'http://disney.go.com/preschool/', 116755, 887, 'R1', 1, 1, '2017-12-22 20:46:53', 'Y'),
(2, 'Nick Jr. Kids', 'images/ads/nickjr_kids.jpg', 'http://www.nickjr.com/kids/', 116694, 803, 'R2', 2, 1, '2017-12-22 20:46:53', 'Y'),
(3, 'Treehouse TV', 'images/ads/treehouse.jpg', 'http://www.treehousetv.com/', 233301, 1126, 'R3', 3, 1, '2017-12-22 20:46:53', 'Y'),
(4, 'Kids'' CBC', 'images/ads/kids_cbc.jpg', 'http://www.cbc.ca/kidscbc/', 123011, 907, 'L1', 5, 1, '2017-12-22 19:41:02', 'Y'),
(5, 'PBS Kids', 'images/ads/pbs_kids.jpg', 'http://www.pbskids.org/', 119748, 868, 'L2', 4, 1, '2017-12-22 20:46:53', 'Y'),
(6, 'Webkinz World', 'images/ads/webkinz.jpg', 'http://www.webkinz.com/', 117802, 859, 'L3', 7, 1, '2017-12-22 20:46:53', 'Y'),
(7, 'Webkinz World', 'images/ads/webkinz.jpg', 'http://www.webkinz.com/', 32494, 431, 'R3', 20, 2, '2017-12-22 23:19:02', 'Y'),
(8, 'AppleStore', 'images/ads/apple.jpg', 'http://store.apple.com', 13797, 504, 'R1', 32, 3, '2017-12-22 14:19:44', 'Y'),
(9, 'Disney', 'images/ads/disney.jpg', 'http://www.disney.com', 32494, 450, 'R1', 29, 2, '2017-12-22 23:19:02', 'Y'),
(10, 'Facebook', 'images/ads/facebook.jpg', 'http://www.facebook.com', 32494, 497, 'R2', 18, 2, '2017-12-22 23:19:02', 'Y'),
(11, 'Facebook', 'images/ads/facebook.jpg', 'http://www.facebook.com', 13797, 474, 'R2', 24, 3, '2017-12-22 14:19:03', 'Y'),
(12, 'YouTube', 'images/ads/youtube.jpg', 'http://www.youtube.com', 16248, 420, 'L1', 19, 2, '2017-12-22 23:19:02', 'Y'),
(13, 'YouTube', 'images/ads/youtube.jpg', 'http://www.youtube.com', 13812, 486, 'L1', 25, 3, '2017-12-22 14:19:03', 'Y'),
(14, 'Barbie', 'images/ads/barbie.jpg', 'http://www.barbie.com', 32494, 523, 'L2', 16, 2, '2017-12-22 23:19:02', 'Y'),
(15, 'Barbie', 'images/ads/barbie.jpg', 'http://www.barbie.com', 119747, 984, 'L2', 22, 1, '2017-12-22 19:41:02', 'Y'),
(16, 'Rainbow Magic', 'images/ads/rainbowmagic.jpg', 'http://www.rainbowmagiconline.com', 123011, 890, 'L1', 9, 1, '2017-12-22 20:46:53', 'Y'),
(17, 'Rainbow Magic', 'images/ads/rainbowmagic.jpg', 'http://www.rainbowmagiconline.com', 16247, 416, 'L1', 21, 2, '2017-12-22 23:18:56', 'Y'),
(18, 'Polly Pocket', 'images/ads/pollypocket.jpg', 'http://www.pollypocket.com', 117801, 933, 'L3', 23, 1, '2017-12-22 19:41:02', 'Y'),
(19, 'Polly Pocket', 'images/ads/pollypocket.jpg', 'http://www.pollypocket.com', 32494, 439, 'L3', 17, 2, '2017-12-22 23:19:02', 'Y'),
(20, 'Twitter', 'images/ads/twitter.jpg', 'http://www.twitter.com', 13812, 544, 'L2', 26, 3, '2017-12-22 14:19:03', 'Y'),
(21, 'TVO Kids', 'images/ads/tvokids.jpg', 'http://www.tvokids.com', 116693, 1220, 'R2', 12, 1, '2017-12-22 19:41:02', 'Y'),
(22, 'Wiggle Time', 'images/ads/wiggletime.jpg', 'http://www.wiggletime.com/public/home.aspx/', 116754, 822, 'R1', 10, 1, '2017-12-22 19:41:02', 'Y'),
(23, 'Picnik', 'images/ads/picnik.jpg', 'http://www.picnik.com', 13797, 455, 'R3', 30, 3, '2017-12-22 14:19:03', 'Y'),
(24, 'DJBooth', 'images/ads/djbooth.jpg', 'http://www.djbooth.net', 6923, 413, 'L3', 28, 3, '2017-12-22 14:19:03', 'Y'),
(25, 'GrooveShark', 'images/ads/grooveshark.jpg', 'http://listen.grooveshark.com', 6922, 454, 'L3', 27, 3, '2017-12-22 14:16:14', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50)  DEFAULT NULL,
  `category_desc` varchar(100)  DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'kids', 'A central jump-point for kid-safe websites'),
(2, 'youths', 'A central jump-point for youth-safe websites'),
(3, 'teens', 'A central jump-point for teen-safe websites'),
(4, 'adult', NULL),
(5, 'seniors', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `pick_id` int(11) DEFAULT NULL,
  `review` varchar(512)  NOT NULL,
  `name` varchar(64)  DEFAULT NULL,
  `city` varchar(64)  DEFAULT NULL,
  `country` varchar(64)  DEFAULT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `recommended` char(1) DEFAULT 'Y',
  `approved` char(1)  DEFAULT 'N',
  PRIMARY KEY (`comment_id`),
  KEY `on_date` (`cdate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `pick_id`, `review`, `name`, `city`, `country`, `cdate`, `recommended`, `approved`) VALUES
(1, 37, 'This is a great site for kids to learn while having fun. This site is recommended by the public school board of Ontario.', 'anonymous', 'not provided', 'not provided', '2010-10-04 04:12:40', 'Y', 'Y'),
(3, 6, 'I want playskoolkids to come back this year.\r\nI miss that website. It will be back this winter.\r\nIt is my favorite hasbro website featuring Digger the Dog, Kitty Kandu, Go-Go Dino and Tubby Turtle.\r\nMy favorite playskool characters are Digger the Dog, Kitty Kandu, Go-Go Dino and Tubby Turtle.\r\n\r\n', 'Mason', 'Crystal Lake', 'United States', '2011-07-29 05:09:05', 'Y', 'Y'),
(10, 6, 'Hasbro, can you bring back old Hasbro websites from 2005-2010, including Playskoolkids, please?', 'Mason', 'Crystal Lake', 'United States', '2017-01-10 18:11:33', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `picks`
--

CREATE TABLE IF NOT EXISTS `picks` (
  `pick_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT '0',
  `url` varchar(128)  NOT NULL,
  `title` varchar(50)  NOT NULL,
  `desc` varchar(512)  DEFAULT NULL,
  `clicks` int(11) DEFAULT '0',
  `comments` int(11) DEFAULT '0',
  `positive` int(11) DEFAULT '0',
  `negative` int(11) DEFAULT '0',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` char(1) NOT NULL DEFAULT 'N',
  `thumb_img` varchar(100)  DEFAULT NULL,
  PRIMARY KEY (`pick_id`),
  KEY `on_category` (`category_id`),
  KEY `on_clicks` (`clicks`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ;

--
-- Dumping data for table `picks`
--

INSERT INTO `picks` (`pick_id`, `category_id`, `url`, `title`, `desc`, `clicks`, `comments`, `positive`, `negative`, `reg_date`, `approved`, `thumb_img`) VALUES
(1, 1, 'http://disney.go.com/preschool/', 'Disney Preschool', 'Games, activities, music and videos for you child with the magic of Disney.', 2155, 0, 0, 0, '2017-12-22 09:27:39', 'Y', 'images/thumbs/disney_preschool_thumb.jpg'),
(2, 1, 'http://www.nickjr.com/kids/', 'Nick Jr.', 'Play games, see videos and do activities with all your favourite kid-tv characters.', 1978, 0, 0, 0, '2017-12-22 14:16:33', 'Y', 'images/thumbs/nickjr_thumb.jpg'),
(3, 1, 'http://www.treehousetv.com/', 'Treehouse', 'You&#39;re playing games, colouring and watching videos from all your favourite characters from Treehouse tv.', 2488, 0, 0, 0, '2017-12-22 09:27:42', 'Y', 'images/thumbs/treehouse_thumb.jpg'),
(4, 1, 'http://www.pbskids.org/', 'PBS Kids', 'Educational games videos and activities for kids with all your favourite PBS Kids characters.', 2012, 0, 0, 0, '2017-12-22 09:27:31', 'Y', 'images/thumbs/pbskids_thumb.jpg'),
(5, 1, 'http://www.cbc.ca/kidscbc/', 'Kids'' CBC', 'Fun interactive games, activities and videos with your favourite Kids''CBC morning characters.', 1961, 1, 1, 0, '2017-12-22 09:27:30', 'Y', 'images/thumbs/cbckids_thumb.jpg'),
(6, 1, 'http://kids.hasbro.com/playskoolkids/', 'Hasbro PlaySkoolKids', 'Play with Hasbro toys online with interactive and educational games.', 1164, 3, 3, 0, '2017-12-22 09:27:36', 'Y', 'images/thumbs/hasbro_thumb.jpg'),
(7, 1, 'http://www.webkinz.com/', 'Webkinz World', 'Adopt your Webkinz pet - then play, care-for and build their home in this interactive world.', 2128, 0, 0, 0, '2017-12-22 09:27:34', 'Y', 'images/thumbs/webkinz_thumb.jpg'),
(8, 1, 'http://www.buildabear.com/', 'Build-A-Bear', 'The same fun as the Build-A-Bear Workshop stores, but with online interactive games.', 990, 0, 0, 0, '2017-12-22 09:27:26', 'Y', 'images/thumbs/buildabear_thumb.jpg'),
(9, 1, 'http://www.rainbowmagiconline.com/', 'Rainbow Magic', 'Games, activities and printables with your favourite fairies from the Rainbow Magic collection.', 1960, 0, 0, 0, '2017-12-20 04:50:21', 'Y', 'images/thumbs/rainbowmagic_thumb.jpg'),
(10, 1, 'http://www.wiggletime.com/public/home.aspx/', 'Wiggle Time', 'Play games, do activities and learn online with The Wiggles!', 1840, 0, 0, 0, '2017-12-21 07:59:50', 'Y', 'images/thumbs/wiggletime_thumb.jpg'),
(11, 1, 'http://www.wordworld.com/', 'Word World', 'Interactive learning through games from Word World - where words come alive.', 965, 0, 0, 0, '2017-12-20 04:49:52', 'Y', 'images/thumbs/wordworld_thumb.jpg'),
(12, 1, 'http://www.tvokids.com/', 'TVO Kids', 'Educational games and activities with all your favourite characters from TVO Kids morning shows.', 2409, 0, 0, 0, '2017-12-22 09:27:48', 'Y', 'images/thumbs/tvokids_thumb.jpg'),
(15, 1, 'http://www.jimjam.tv', 'JIMJAM', 'Play games and do online activities with your favorite characters from JimJam TV.', 1033, 0, 0, 0, '2017-12-20 04:49:37', 'Y', 'images/thumbs/jimjam_thumb.jpg'),
(16, 2, 'http://www.barbie.com', 'Barbie', 'Play games, watch videos and more with Barbie and her friends.', 1111, 0, 0, 0, '2017-12-20 04:50:42', 'Y', 'images/thumbs/barbie_thumb.jpg'),
(17, 2, 'http://www.pollypocket.com', 'PollyPocket', 'Lots of fun things to do in PollyWorld. Lots of interactive games and activities with Polly and her friends.', 959, 0, 0, 0, '2017-12-22 14:20:40', 'Y', 'images/thumbs/pollypocket_thumb.jpg'),
(18, 2, 'http://www.facebook.com', 'Facebook', 'Connect with your friends online; chat, play games, post pictures. Tell everyone what you&#39;re up to.', 1065, 0, 0, 0, '2017-12-20 04:52:32', 'Y', 'images/thumbs/facebook_thumb.jpg'),
(19, 2, 'http://www.youtube.com', 'YouTube', 'View videos of just about anything and post some of your own if you&#39;re so inclined.', 986, 0, 0, 0, '2017-12-21 21:10:20', 'Y', 'images/thumbs/youtube_thumb.jpg'),
(20, 2, 'http://www.webkinz.com/', 'Webkinz World', 'Adopt your Webkinz pet - then play, care-for and build their home in this interactive world.', 938, 0, 0, 0, '2017-12-22 14:16:59', 'Y', 'images/thumbs/webkinz_thumb.jpg'),
(21, 2, 'http://www.rainbowmagiconline.com/', 'Rainbow Magic', 'Games, activities and printables with your favorite fairies from the Rainbow Magic collection.', 926, 0, 0, 0, '2017-12-20 04:53:37', 'Y', 'images/thumbs/rainbowmagic_thumb.jpg'),
(22, 1, 'http://www.barbie.com', 'Barbie', 'Play games, watch videos and more with Barbie and her friends.', 2288, 0, 0, 0, '2017-12-22 09:27:55', 'Y', 'images/thumbs/barbie_thumb.jpg'),
(23, 1, 'http://www.pollypocket.com', 'PollyPocket', 'Lots of fun things to do in PollyWorld. Lots of interactive games and activities with Polly and her friends.', 2105, 0, 0, 0, '2017-12-22 09:27:50', 'Y', 'images/thumbs/pollypocket_thumb.jpg'),
(24, 3, 'http://www.facebook.com', 'Facebook', 'Connect with your friends online; chat, play games, post pictures. Tell everyone what you\\&#39;re up to.', 1018, 0, 0, 0, '2017-12-22 14:19:23', 'Y', 'images/thumbs/facebook_thumb.jpg'),
(25, 3, 'http://www.youtube.com', 'YouTube', 'View videos of just about anything and post some of your own if you&#39;re so inclined.', 997, 0, 0, 0, '2017-12-22 14:15:03', 'Y', 'images/thumbs/youtube_thumb.jpg'),
(26, 3, 'http://www.twitter.com', 'Twitter', 'Tell everyone what you\\&#39;re up to in 140 characters or less. Follow the tweets of some famous people, see what they\\&#39;re doing.', 1124, 0, 0, 0, '2017-12-22 14:12:32', 'Y', 'images/thumbs/twitter_thumb.jpg'),
(27, 3, 'http://listen.grooveshark.com', 'Groove Shark', 'A great site for searching, listening and downloading music.', 999, 0, 0, 0, '2017-12-22 14:09:21', 'Y', 'images/thumbs/grooveshark_thumb.jpg'),
(28, 3, 'http://www.djbooth.net', 'DJBooth', 'Listen, search and download the latest tunes.', 889, 0, 0, 0, '2017-12-20 04:53:39', 'Y', 'images/thumbs/djbooth_thumb.jpg'),
(29, 2, 'http://www.disney.com', 'Disney.com', 'See the latest everything Disney. Movie trailers, Disney channel shows, interactive games, activities and access to all other Disney sites.', 959, 0, 0, 0, '2017-12-22 19:38:54', 'Y', 'images/thumbs/disney_thumb.jpg'),
(30, 3, 'http://www.picnik.com', 'Picnik', 'Easy online photo upload, editing and library.', 1009, 0, 0, 0, '2017-12-22 05:40:25', 'Y', 'images/thumbs/picnik_thumb.jpg'),
(31, 3, 'http://www.imdb.com', 'IMDb', 'Internet Movie Database: view trailers and samples from your favorite or upcoming movies.', 475, 0, 0, 0, '2017-12-20 04:53:27', 'Y', 'images/thumbs/imdb_thumb.jpg'),
(32, 3, 'http://store.apple.com', 'Apple Store', 'Buy everything Apple online: iPod, iPhones, iPads, iTunes and more!', 1093, 0, 0, 0, '2017-12-22 14:19:44', 'Y', 'images/thumbs/applestore_thumb.jpg'),
(33, 2, 'http://www.bratz.com', 'Bratz', 'Games, music and videos with the Bratz gang.', 488, 0, 0, 0, '2017-12-20 04:52:10', 'Y', 'images/thumbs/bratz_thumb.jpg'),
(35, 1, 'http://www.thomasandfriends.com', 'Thomas the Tank Engine', 'Join Thomas and his friends for games, activities, videos, music and more!', 1067, 0, 0, 0, '2017-12-20 04:49:32', 'Y', 'images/thumbs/thomas_thumb.jpg'),
(36, 1, 'http://www.starfall.com', 'Starfall', 'Learn to read with fun interactive games and activities.', 1083, 0, 0, 0, '2017-12-20 04:49:26', 'Y', 'images/thumbs/starfall_thumb.jpg'),
(37, 1, 'http://www.linktolearning.com/', 'LinkToLearning', 'A website full of safe and fun activities for kids to learn.', 1122, 2, 2, 0, '2017-12-21 15:06:47', 'Y', 'images/thumbs/linktolearning_thumb.jpg'),
(39, 2, 'http://kids.yahoo.com', 'Yahoo! Kids', 'A collection of games, movies, music, jokes and more!', 585, 0, 0, 0, '2017-12-20 05:32:31', 'Y', 'images/thumbs/yahookids_thumb.jpg'),
(40, 1, 'http://www.sesamestreet.org/games', 'Sesame Street Games', 'Fun and educational games from your favourite gang on Sesame Street!', 1019, 0, 0, 0, '2017-12-20 04:49:41', 'Y', 'images/thumbs/sesamestreet_thumb.jpg'),
(41, 2, 'http://play.lego.com', 'Lego Play', 'Action, puzzle, creative games and more; all with the Lego touch.', 685, 0, 0, 0, '2017-12-20 04:51:18', 'Y', 'images/thumbs/lego_thumb.jpg'),
(42, 2, 'http://www.family.ca/', 'Family Channel', 'Watch clips, play games, enter contests and more with all the characters from Family channel.', 551, 0, 0, 0, '2017-12-20 04:51:47', 'Y', 'images/thumbs/familychannel_thumb.jpg'),
(43, 3, 'http://zone.msn.com', 'MSN Games', 'Microsoft&#39;s online game zone. Play puzzle, action, arcade, card, board-style games and more!', 556, 0, 0, 0, '2017-12-20 04:53:14', 'Y', 'images/thumbs/msnzone_thumb.jpg'),
(44, 3, 'http://www.mindjolt.com', 'Mind Jolt', 'A site with a huge selection of online games: puzzle, strategy, action and more! For kids of all ages.', 488, 0, 0, 0, '2017-12-20 04:53:22', 'Y', 'images/thumbs/mindjolt_thumb.jpg'),
(45, 2, 'http://www.mindjolt.com', 'Mind Jolt', 'A site with a huge selection of online games: puzzle, strategy, action and more! For kids of all ages.', 974, 0, 0, 0, '2017-12-21 12:10:00', 'Y', 'images/thumbs/mindjolt_thumb.jpg'),
(46, 1, 'http://www.mattel.com/games', 'Mattel Games', 'Fun and educational games online for your kids. Click on the "preschool" button for younger children.', 1109, 0, 0, 0, '2017-12-21 18:57:07', 'Y', 'images/thumbs/mattel_thumb.jpg'),
(47, 2, 'http://www.mattel.com/games', 'Mattel Games', 'Fun educational games online for boys and girls in true Mattel style.', 472, 0, 0, 0, '2017-12-20 04:52:14', 'Y', 'images/thumbs/mattel_thumb.jpg'),
(48, 2, 'http://www.teletoon.com/teletoon3/teletoon.php?language=En&func=php|templates/play.php|0&xVar=0', 'Teletoon Games', 'Free online games starring all your favourite characters from Teletoon.', 553, 0, 0, 0, '2017-12-20 04:51:43', 'Y', 'images/thumbs/teletoon_thumb.jpg'),
(49, 2, 'http://www.hotwheels.com/games', 'HotWheels Games', 'HotWheels doesn&#39;t only have cool cars - it has cool online games too! Check it out!', 548, 0, 0, 0, '2017-12-22 12:19:30', 'Y', 'images/thumbs/hotwheels_thumb.jpg'),
(50, 2, 'http://games.yahoo.com', 'YAHOO Games', 'Arcarde, board, card, puzzle, word games and more. YAHOO brings them all to your PC online, even some downloadable.', 518, 0, 0, 0, '2017-12-20 04:52:07', 'Y', 'images/thumbs/yahoo_thumb.jpg'),
(51, 3, 'http://games.yahoo.com', 'YAHOO Games', 'Arcarde, board, card, puzzle, word games and more. YAHOO brings them all to your PC online, even some downloadable.', 493, 0, 0, 0, '2017-12-20 04:53:18', 'Y', 'images/thumbs/yahoo_thumb.jpg'),
(52, 2, 'http://myscene.everythinggirl.com/games/games.aspx', 'Everything Girl Games', 'A site for girl games: fashion designer, makeovers, shopping-spree and more!', 568, 0, 0, 0, '2017-12-20 04:51:38', 'Y', 'images/thumbs/everythinggirl_thumb.jpg'),
(53, 1, 'http://www.playhousedisney.ca/index_en.php', 'Playhouse Disney', 'Join all your Playhouse Disney characters you see on tv for games, activities, videos and learning.', 1146, 0, 0, 0, '2017-12-20 04:49:12', 'Y', 'images/thumbs/playhousedisney_thumb.jpg'),
(54, 2, 'http://www.hasbro.com/hasbrokids/', 'Hasbro Kids', 'Games, videos and comics from all your favourite Hasbro toys and characters!', 532, 0, 0, 0, '2017-12-20 04:51:56', 'Y', 'images/thumbs/hasbrokids_thumb.jpg'),
(55, 2, 'http://www.poptropica.com', 'PopTropica', 'A site for exploring different animated worlds with you character. You can also go on secret missions.', 573, 0, 0, 0, '2017-12-21 15:39:40', 'Y', 'images/thumbs/poptropica.png'),
(56, 2, 'http://www.bbc.co.uk/schools/typing/', 'BBC Typing', 'A typing tutorial site for all ages. Learn the proper way to type with graduated levels and lots of exercises', 523, 0, 0, 0, '2017-12-20 04:52:02', 'Y', 'images/thumbs/bbc_typing.png'),
(57, 2, 'http://www.kerpoof.com', 'Kerpoof Studio', 'Explore your creativity - make your own movies, cards, pictures and more - easy and fun! Tools available for teachers and educators.', 578, 1, 1, 0, '2017-12-20 04:51:30', 'Y', 'images/thumbs/kerpoof_thumb.jpg'),
(58, 1, 'http://www.harrypurplemonkey.com', 'Harry Purple Monkey Dishwasher', 'Come join us on our fun, educational and interactive website. ', 777, 0, 0, 0, '2017-12-20 04:50:00', 'Y', 'images/thumbs/purplemonkey_thumb.jpg'),
(59, 1, 'http://www.dressupgamesite.com', 'Dress Up Games', 'Pick from some of your favourite online characters and dress them up! Be creative and have fun!', 891, 0, 0, 0, '2017-12-22 09:27:57', 'Y', 'images/thumbs/Screen Shot 2012-02-16 at 6.11.41 AM.png'),
(60, 2, 'http://gameninja.com', 'Game Ninja', 'Free online action, adventure, puzzle, sport, strategy and more game for youths.', 594, 0, 0, 0, '2017-12-21 11:50:51', 'Y', 'images/thumbs/gameninjathumb.jpg'),
(92, 2, 'http://coolmath4kids.com', 'Cool Math For Kids', 'Fun site for kids filled with educational games.', 440, 0, 0, 0, '2017-12-20 04:52:21', 'Y', 'images/thumbs/coolmath4kids.png'),
(93, 2, 'http://sumdog.com', 'SumDog', 'Free games that make learning fun. Separate teacher and parent/kids login so kids can learn and teachers can check progress.', 393, 0, 0, 0, '2017-12-20 04:52:25', 'Y', 'images/thumbs/sumdog.png'),
(94, NULL, 'http://affordablecarinsurancehnb.org/', 'ioihqxostv', 'car insurance companies - https://affordablecarinsurancehnb.org/ \r\nauto insurance quote <a href=https://affordablecarinsurancehnb.org/>best auto insurance</a> ’', 0, 0, 0, 0, '2017-06-05 06:48:08', 'N', NULL),
(95, NULL, 'http://ruwordpress.ru/aileron/', 'Aileron — ??????? WordPress. ??????? ????????? ???', 'Aileron — ??????? WordPress. ??????? ????????? ??????? ?????? ?????????   <a href=http://ruwordpress.ru/aileron/>Show more...</a>', 0, 0, 0, 0, '2017-08-27 14:09:25', 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isadmin` char(1) DEFAULT 'N',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `name`, `city`, `country`, `reg_date`, `isadmin`) VALUES
(1, 'nic@285solutions.com', '6b7650c2bf078561af2489fb5dfbaf47', 'NULL', 'NULL', 'NULL', '2010-06-11 16:39:49', 'Y');