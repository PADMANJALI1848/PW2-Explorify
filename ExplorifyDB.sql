-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2022 at 07:53 PM
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
-- Database: `explorify`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_img` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_img`) VALUES
(1, 'Cuisines', 'https://images.squarespace-cdn.com/content/v1/53b839afe4b07ea978436183/1608506201082-GU22QYZJC5TWXRSY24RX/traditional-food-around-the-world-Travlinmad.jpg?format=750w'),
(2, 'Entertainment', 'https://s4.scoopwhoop.com/v4/category/entertainment.png\n  '),
(3, 'Parks', 'https://www.karnatakatourism.org/wp-content/uploads/2021/09/Cubbon-Park.jpg'),
(4, 'Lakes', 'https://images.unsplash.com/photo-1620065263283-f084beb12754?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFrZXN8ZW58MHx8MHx8&w=1000&q=80'),
(5, 'Hill Tops', 'https://www.newsnetnow.com/wp-content/uploads/2020/03/hill-stations-scaled.jpg'),
(6, 'Historical Places', 'https://www.transindiatravels.com/wp-content/uploads/mysore-palace7.jpg'),
(7, 'Sports Arena', 'https://content3.jdmagicbox.com/comp/def_content/sports-ground/sports-ground1-sports-ground-1-7d9x4.jpg?clr=523914'),
(8, 'Temples', 'https://www.tripsavvy.com/thmb/0KVl6nc01c8GpBJxSnn_1kK57Rc=/1280x853/filters:no_upscale():max_bytes(150000):strip_icc()/160317893-56a3befb5f9b58b7d0d394fe.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `logindata`
--

CREATE TABLE `logindata` (
  `userid` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logindata`
--

INSERT INTO `logindata` (`userid`, `username`, `email`, `password`) VALUES
(1, 'abcd', 'abcd@gmail.com', '1234'),
(2, 'Padmanjali', 'padmanjalianjinalli@gmail.com', '421565');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(50) NOT NULL,
  `userid` int(8) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `descr` varchar(5000) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `p_img` longtext NOT NULL,
  `time_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`p_id`, `p_name`, `userid`, `cat_id`, `descr`, `address`, `p_img`, `time_added`) VALUES
(1, 'Glen\'s Bake House', 1, 1, 'The Bake House gained popularity and became a Go To place for many. The Bake House caters to a young and vibrant crowd, as well as the family segment. The menu offers a balanced selection of food both for when you are feeling peckish and for those who are ravenous! A tasty selection of cakes is available for those who wish to have some sugar rush .They serve a variety of freshly prepared Italian and Continental cuisines, cakes and savories, complemented with a wide range of desserts and non-alcoholic drinks. ', 'Indiranagar - 297, 100 Feet Road\r\nIndiranagar II stage, Bangalore - 560068 <br>\r\nLavelle Road - 24/ 1, Lavelle Road\r\nBangalore - 560001<br>\r\nWhitefield - # 100, Whitefield Main Road\r\nWhitefield, Bangalore - 560066 (Next to Riverside bar and Kitchen)<br>\r\nJAYANAGAR - #275/A 9th main road,\r\n5th block Jayanagar, Bangalore - 560041<br>\r\nKalyan Nagar - #426, 7th Main Rd, HRBR Layout 1st Block,\r\nHRBR Layout, Kalyan Nagar, Bengaluru - 560043<br>\r\nNew Bel Road - #88 MGECHBS, RMV 2ND STAGE,\r\n80 FEET ROAD, DEVASANDRA, BANGALORE - 560094', 'https://media-cdn.tripadvisor.com/media/photo-s/15/2c/29/21/inside.jpg', '2022-09-12 01:07:18'),
(2, 'Toit Brewpub', 1, 1, 'Brick-walled microbrewery offering naturally crafted beers, variety cuisines , hearty pub grub & brewery tours.', 'Indiranagar, 100 Feet Rd, Near Drops Total Spirites, Bengaluru, Karnataka 560038', 'https://media-cdn.tripadvisor.com/media/photo-s/09/68/d4/06/toit-brewpub.jpg', '2022-09-05 01:04:43'),
(3, 'Secret Story', 1, 1, 'Creative international snacks , cuisines & cocktails offered in opulent surrounds that have whimsical decor.', '968, 3rd & 4th Floor, 12th Main Rd, HAL 2nd Stage, Indiranagar, Bengaluru, Karnataka 560008', 'https://b.zmtcdn.com/data/pictures/1/19890381/4e01dcfef5c7b9d74207603145010660.jpg?output-format=webp&fit=around|771.75:416.25&crop=771.75:416.25;*,*', '2022-08-03 14:43:36'),
(4, 'Jet Lag', 1, 1, 'Amidst the hustle bustle of Malleshwaram, Jetlag is a delightful casual dining that will amuse you. With an outspread menu that is fairly priced, It\'s definitely worth a visit more than once. Visit here with the company of friends and family for lip smacking food , wide variety of cuisines and some fun times.', 'Industrial Suburb, 3, Dr Rajkumar Rd, opp. to Sherton Hotel, Rajajinagar, Bengaluru, Karnataka 560010', 'https://b.zmtcdn.com/data/pictures/7/18777147/0038b5f806ba7a1415e58d2f9476262f.jpg?output-format=webp&fit=around|771.75:416.25&crop=771.75:416.25;*,*', '2022-08-03 14:47:37'),
(5, 'Plan B', 1, 1, 'Taking care of hunger pangs till as late as 11:30PM, Plan B is a casual dining restaurant serving American preparations. It serves variety cuisines A highly-rated place in Brigade Road, it is praised for its timely service and is a nice joint to visit when one is looking to satiate hunger pangs with tasty, hygienic food at reasonable prices.', '148 & 149, St, Thomas Building, Ashok Nagar, Brigade Road, Bangalore', 'https://im1.dineout.co.in/images/uploads/restaurant/sharpen/8/k/g/p85575-16162391976055da5d128fb.jpg?tr=tr:n-medium', '2022-08-03 14:48:40'),
(6, 'Communiti', 1, 1, 'Indoor-outdoor hangout offering drinks ,cuisines & global bites in a relaxed, refined atmosphere.', 'Brigade Solitare, 67/68, Residency Rd, Bengaluru, Karnataka 560025', 'https://media-cdn.tripadvisor.com/media/photo-s/14/2a/3c/b1/communiti.jpg', '2022-09-05 01:10:27'),
(7, 'Fat-owl Gastropub', 1, 1, 'Fat Owl is a neighborhood bar of warmth, happiness, and conversations. Where for the space of a day you can enjoy a glorious sense of disconnection from the outside world. So let the conversations flow over beers and Indo-Asian flavors and more cuisines.', 'No 610, 100ft Ring Road, 15th Cross Rd, 1st Phase, J. P. Nagar, Bengaluru, Karnataka 560078', 'https://b.zmtcdn.com/data/pictures/2/19155882/50625e879c353422d74ab8638d7a3546.jpg?output-format=webp&fit=around|771.75:416.25&crop=771.75:416.25;*,*', '2022-09-05 01:10:27'),
(8, 'Daddy Banglore', 1, 1, 'Vibrant pub & restaurant with multi cuisines options & sports screenings, plus outdoor seating.', ' 963, 12th Main Rd, HAL 2nd Stage, Doopanahalli, Indiranagar, Bengaluru, Karnataka 560008', 'https://b.zmtcdn.com/data/pictures/6/19092616/782146b61bc0bcf7646622590531d148.jpg?output-format=webp&fit=around|771.75:416.25&crop=771.75:416.25;*,*', '2022-09-05 01:11:33'),
(9, 'Orion Mall', 1, 2, 'Situated in Malleshwaram in Bangalore, Orion Mall is one of the busiest, largest and most popular malls in the city. It is situated adjacent to a lake and the beautiful location makes the mall even more appealing. The mall boasts of a number of apparel stores, footwear stores, accessory outlets, electronic etc.', 'Dr Rajkumar Rd, Rajajinagar, Bengaluru, Karnataka 560055', 'https://cdn.brigadegroup.com/properties/gallery/15335332445b67dc3c87dc6.jpg', '2022-09-05 01:16:09'),
(10, 'Lulu Mall', 1, 2, 'LuLu Global Mall Bengaluru located on 14 acres of mixed-use property behind the city railway station at Rajaji Nagar opened on 11th October 2021.Family Entertainment Centre, which is the biggest Entertainment Centre in Bengaluru. The Mall will also feature the Lulu Hypermarket spread across 1.5 lakh sq. ft.', 'LuLu Global Mall ,Minerva Mills Compound, Opposite Sujata Theatre Rajaji Nagar,560023 Bengaluru', 'https://globalmall.lulumall.in/media/10735/about3.jpg?anchor=center&mode=crop&width=1400&height=500&rnd=132784196600000000', '2022-09-05 01:16:09'),
(11, 'Pheonix Market City', 1, 2, 'Phoenix Marketcity Bangalore is an architecturally path-breaking, iconic destination located on Whitefield Main Road, Mahadevapura. With over 300 stores, representing an exhaustive mix of International, National and Regional premium brands, the mall offers the most comprehensive and compelling lifestyle shopping experience in Bangalore. ', 'Whitefield Main Rd, Devasandra Industrial Estate, Mahadevapura, Bengaluru, Karnataka 560048', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Phoenix-marketcity-BLR-1.jpg/800px-Phoenix-marketcity-BLR-1.jpg', '2022-09-05 01:16:09'),
(12, 'Mantri Mall', 1, 2, 'Situated in Malleswaram West in Bangalore, Mantri Square Mall is one of the most popular mall of the city. It is one of the largest malls in India and it boasts of a huge gaming zone, food court, PVR multiplex, in addition to a plethora of big brand stores.', 'No 1, Sampige Rd, Malleshwaram, near Central bus stop, Bengaluru, Karnataka 560003', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/68/3e/36/inside.jpg?w=800&h=-1&s=1', '2022-09-05 01:16:09'),
(13, 'Forum Mall', 1, 2, 'Forum Mall in Koramangala, one of Bangalore’s oldest malls has top brands for men and women such as Aeropostale, Adidas, and United Colors of Benetton', ' 21, Hosur Road, Chikku Lakshmaiah Layout, Koramangala, Bengaluru', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Forum_Vijaya_Arcot_Road_Entry.jpg/800px-Forum_Vijaya_Arcot_Road_Entry.jpg', '2022-09-05 01:16:09'),
(14, 'Church Street', 1, 2, 'Church Street is one of the busiest streets in the Central Business District of Bangalore, India. A tourist hotspot, the street is a major revenue-generating area and a popular New Year’s Eve celebration centre.', 'Church St, Shanthala Nagar, Ashok Nagar, Bengaluru, Karnataka 560001', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Bangalore_Church_street_trees_3.jpg/800px-Bangalore_Church_street_trees_3.jpg', '2022-09-05 01:16:09'),
(15, 'Commercial Street', 1, 2, 'Commercial Street is a fix for all your shopping needs and weekend entertainment. Needless to say, it is one of the most popular and visited shopping destinations in Bangalore. The lively atmosphere which is always abuzz with activity and the mad, mad rush of the local market make Commercial Street every shopaholic’s delight.', 'Commercial Street, Tasker Town, Shivaji Nagar, Bengaluru, Karnataka 560001', 'https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/sites/2/2016/05/CommercialStreet.jpg?fm=webp&w=250&h=250&dpr=2\n\n ', '2022-09-05 01:16:09'),
(16, 'Wonderla', 1, 2, 'Amusement place with roller coasters, a ferris wheel & water rides, plus virtual reality experiences.This could be the best place for entertainment', '28th Km, Mysore Rd, Bengaluru, Karnataka 562109', 'https://res.klook.com/image/upload/c_fill,w_960,h_460,f_auto/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/gudx5cujczjtcqoxv2st.webp', '2022-09-05 01:17:33'),
(17, 'Cubbon Park', 1, 3, 'Spread over an area of 300 acres, Cubbon Park in the city of Bangalore is a major sightseeing attraction rich in green foliage. It is a green belt region of the city and is an ideal place for nature lovers and those seeking a calm atmosphere.', 'Kasturba Road, Behind High Court of Karnataka Ambedkar Veedhi, Sampangi Rama Nagara , Bengaluru, Karnataka 560001', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/d8/95/4b/excellent-for-morning.jpg?w=800&h=-1&s=1', '2022-09-05 01:24:47'),
(18, 'Lalbagh', 1, 3, 'This botanical garden, a delight for photographers, also consists of the famous glass house where an annual flower show is held every year and is also a home to an aquarium and a lake. Lalbagh Botanical Garden/Park has one of the world’s largest collection of rare plants. In addition to being rich in foliage, this garden also houses a number of birds such as Myna, Parakeets, Crows, Brahminy Kite, Pond Heron, Common Egret and Purple Moor Hen.', 'Mavalli, Bengaluru, Karnataka 560004', ' https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Lalbagh_Glasshouse_night_panorama.jpg/800px-Lalbagh_Glasshouse_night_panorama.jpg', '2022-09-05 01:24:47'),
(19, 'Jayamahal Park', 1, 3, 'Jayamahal Park is situated in Jayamahal Extension, Bangalore. With a plethora of swings, well-paved pathways, fountains, sculptures, sturdy benches and a lot of plants and trees, the park is a common favourite among the adults and kids alike.', '127, 4th Main Rd, Jayamahal Extension, Jayamahal, Bengaluru, Karnataka 560046', 'https://lh5.googleusercontent.com/p/AF1QipMIE3p4Tp6gD46ciVXsD5YBk4EoXI0u8uHRSZOp=w1080-k-no\n\n ', '2022-09-05 01:24:47'),
(20, 'Freedom Park', 1, 3, 'The former prison of Bangalore known as Central Jail has been revamped and reformed as a park. Inaugurated to the public in November 2008, the park has a library, a joggers’ stretch, a children’s play area and a part of it has been dedicated for holding protests. It also has brilliant sculptures of olden days prisoners.', 'Seshadri Rd, Gandhi Nagar, Bengaluru, Karnataka 560009', 'https://travel2karnataka.com/images/freedom_park.jpg\n\n ', '2022-09-05 01:24:47'),
(21, 'Indira Gandhi Musical Fountain Park', 1, 3, 'Indira Gandhi Musical Fountain is probably the most technically advanced and one of the biggest artificially created fountains in India.The magnanimous fountains surrounded by pleasant lush gardens hosts two nightly light and sound shows per day. The show together with rhythmic dancing of the sparkling water is an enchanting site.', 'Raj Bhavan Rd, Opposite to Jawahar Lal Nehru Planetarium, Vasanth Nagar, Bengaluru, Karnataka 560051', 'https://bangalore247.in/wp-content/uploads/2021/02/Indira-Gandhi-Musical-Fountain-Park.jpg', '2022-09-05 01:24:47'),
(22, 'Butterfly Park', 1, 3, 'Butterfly park is located inside Bannerghatta National Park .A large multicolored butterfly door welcomes the tourists into the butterflies’ den, which is a pretty good spot from some pictures and selfies. There is also a man made pond with a few fishes swimming around and tortoises. A well maintained green house, houses a large variety of beautiful and colorful butterflies amid attractive flowering bushes and shrubs. A small stroll in this tiny trail is soothing, mesmerizing and refreshing. At the end of the trail is a butterfly museum.', ' Inside Bannerughatta Biological Park, Bannerughatta, Bengaluru, Karnataka 560083', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/09/70/71/b9/bengaluru-bangalore.jpg?w=800&h=-1&s=1', '2022-09-05 01:24:47'),
(23, 'Lumbini Garden', 1, 3, 'Lumbini Gardens is a public park on the banks of the Nagawara Lake in Bangalore, Karnataka named after Lumbini of Nepal. It is dedicated to Lord Budhha. Although the garden is mainly a national park, it is a treat to the eyes with its serene landscapes and lots of greenery.The garden also houses some beautiful statues and a host of rare plants. At night, the garden is illuminated with various lights which is a pleasure to see. The Lumbini garden is also known for the food stalls and famous eateries nearby. Undoubtedly, Lumbini garden has made its place among the crowd’s favourite weekend destinations.', ' Nagavara, Bengaluru, Karnataka 560024', 'https://www.holidify.com/images/cmsuploads/compressed/Bangalore-1859_0_20171016200414.JPG', '2022-09-05 01:25:51'),
(24, 'Bugle Rock Park', 1, 3, 'Serene park shaded by a tree canopy featuring gardens, waterfalls & fountains, plus three temples. It is an abrupt rise above the ground of peninsular gneiss as the main rock formation and with an assessed age of about 3,000 million years. Bugle Rock has generated wide interest among the scientific community.', 'WHV9+3QM, Bull Temple Rd, Basavanagudi, Bengaluru, Karnataka 560019', 'https://bangalore247.in/wp-content/uploads/2021/02/Bugle-Rock-Park.jpg', '2022-09-05 01:26:39'),
(25, 'Ulsoor Lake', 1, 4, 'One of the largest lakes in Bangalore, the Ulsoor Lake is sprawled over an area of 50 hectares. Ulsoor lake was built by Sir Lewin Bentham Bowring, who was Bangalore’s commissioner at that time. Sit back or walk in the periphery of the park or click a few shots of the endemic birds that call this destination their home. One of the most popular activities in Ulsoor Lake is boating.', ' Sivanchetti Gardens, Halasuru, Karnataka 560042', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Ulsoor_lake_Bangalore_India.jpg/396px-Ulsoor_lake_Bangalore_India.jpg\n\n ', '2022-09-05 01:29:21'),
(26, 'Sankey Tank', 1, 4, 'Sankey Tank is a manmade lake, spread across an area of 37.5 acres near Vyalikaval, Malleshwaram and Sadashivanagar. The State Forest Department takes care of the lake. The Maurya Sankey Boat Club offers guests a wide variety of boat rides, for example, rowboats, pedal boats and motorboats. One can enjoy boating and drop to and from the island which is situated in the middle of the lake at minimum charges.', ' Kodandarampura, Malleswara, Bengaluru, Karnataka 560080', 'https://static.india.com/wp-content/uploads/2019/02/Sankey-Tank.jpg?impolicy=Medium_Widthonly&w=700&h=467%20widht=', '2022-09-05 01:29:21'),
(27, 'Hebbal Lake', 1, 4, 'One of the most popular sightseeing places in Bangalore is the charming Hebbal Lake, which is located along the junction of Bellary Road and the Outer Ring Road (ORR). If you are someone who is interested in spending time in the lap of nature, this magnificent lake is a must visit! Surrounded by the ever growing sky high concrete buildings of the city, this lake is a treat to your eyes and soul.', 'Hebbal Kempapura, Bengaluru, Karnataka, 560024,India', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/af/69/89/hebbal-lake.jpg?w=1100&h=-1&s=1', '2022-09-05 01:29:21'),
(28, 'Jakkur Lake', 1, 4, 'Jakkur lake is another one of the famous lakes in Bangalore. The lake was originally built to meet the requirements of people in Jakkur Village. But, it has now turned into a bird place as it is swarmed by several species, especially in the migratory season. Moreover, the fish population has also increased in the lake which has attracted more and more birds over the years. You can easily spot pelicans at this lake.', 'Agrahara, Bengaluru, Karnataka 560064', 'https://www.nativeplanet.com/img/2018/05/sunset-jakkur-lake-1527078574.jpg', '2022-09-05 01:29:21'),
(30, 'Bull Temple', 1, 8, 'The temple was built in 1537 by Kempe Gowda under the Vijayanagara empire in the Vijayanagara architectural style, he also founded the city of Bengaluru.The temple is named after the large granite Nandi monolith placed on a plinth in the temples shrine (garbhagriha) which has become blackened from years of being rubbed with charcoal and oil.The temple is a small one, consisting only of the shrine fronted by a porch in the Vijayanagara style. The current tower (vimana) over the shrine was constructed in the early 20th century and is adorned with Saivite figures and motifs.It is said to house one of the largest Nandi murthis in the world. ', 'Bull Temple Rd, Basavanagudi, Bengaluru, Karnataka 560019', 'https://www.holidify.com/images/cmsuploads/compressed/3560_20190222111237jpg', '2022-09-05 01:35:09'),
(31, 'ISKCON Temple', 1, 8, 'Located in the Rajajinagar area, ISKCON Temple is a revered shrine dedicated to Lord Krishna.Apart from a religious shrine, ISKCON temple is a cultural complex accommodating dedicated deities of Sri Sri Radha Krishnachandra, Sri Sri Krishna Balarama, Sri Sri Nitai Gauranga, Sri Srinivasa Govinda and Sri Prahlada Narasimha.', 'Hare Krishna Hill, Chord Rd, Rajajinagar, Bengaluru, Karnataka 560010', 'https://www.astroved.com/astropedia/assets/images/temples/Iskcon-bengalore.jpg\n\n ', '2022-09-05 01:35:09'),
(32, 'Panchamukhi Ganesha Temple', 1, 8, 'Located just beyond the intersection of the Mysore Road with the NICE Ring Road, the large statue of Lord Ganesha with five heads (hence, named Panchamukhi) .The idol of Lord Ganesha inside the temple in the panchamukhi form is really unique and so blissful ', ' Mysore Road, Bengaluru 560060', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/10/48/e4/30/panchamukhi-ganesha-temple.jpg?w=1200&h=-1&s=1', '2022-09-05 01:35:09'),
(33, 'Holy Trinity Church', 1, 8, 'Holy Trinity Church, located at Trinity circle at the east end of the MG Road, is a major landmark in Bangalore. It was built in 1851, for the British Regiment stationed in Bangalore. Built in the English Renaissance style, the church can accommodate 700 people and is regarded as the largest “military” church in southern India. ', 'Trinity Circle-8, Mahatma Gandhi Rd, Near Vijaya Bank, Jogupalya, Bengaluru, Karnataka 560007', 'https://i0.wp.com/solopassport.com/wp-content/uploads/2019/09/img_2189.jpg?ssl=1', '2022-09-05 01:35:09'),
(34, 'All Saint\'s Church', 1, 8, 'One of Bengaluru’s heritage buildings that is in the news now is All Saints’ Church.Inside, the open iron and wooden arched and scissor trusses are very visually arresting. Unusually, the truss ribs spring from a height of just 7 feet. The large rose window at the entrance has some lovely stained glass as does the altar end.', 'No.1, Hosur Rd, Richmond Town, Bangalore – 560025', 'https://images.newindianexpress.com/uploads/user/imagelibrary/2018/3/21/w600X300/ALL.jpg?w=900&dpr=1.0', '2022-09-05 01:35:09'),
(35, 'St. Mary\'s Basilica', 1, 8, 'Built in 1882, St. Mary’s Basilica is the oldest church in Bangalore and is the only church in the state that has been elevated to the status of a minor basilica. It is famous for the festivities it holds during the St. Mary’s Feast, in September each year. It is a marvellous sight to behold with its towering façade, glass windows, and the loving statues of Mother Mary.', ' MF Norrona St, Shivaji Nagar, Bengaluru, Karnataka 560051', 'https://www.deccanherald.com/sites/dh/files/styles/article_detail/public/articleimages/2020/09/05/st-marys-basilica-1-882737-1599291438.jpg?itok=lJQTBZ9l', '2022-09-05 01:35:09'),
(36, 'Gurudwara Sahib Sri Guru Singh Sabha', 1, 8, 'Every Sunday Sri Guru Singh Sabha Gurudwara offers free meals, known as Guru Ka Langar to all devotees. Gurudwara management also runs a convention hall and a high school. Visitors can see Guru’s Takhat (a table) and an imposing marble made Palki (Palanquin in which senior Sikh gurus are carried from one place to another) located in a large prayer hall. Thousands of people visit Sri Guru Singh Sabha Gurudwara every Sunday.', 'Gurdwara Road ,Near M G Road , Ulsoor, Nala Rd, Someshwarpura , Bengaluru, Karnataka 560008', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Gurdwara_Sri_Guru_Singh_Sabha-001.jpg/800px-Gurdwara_Sri_Guru_Singh_Sabha-001.jpg?20081220213615\n\n', '2022-09-05 01:35:09'),
(37, 'Chinnaswamy Stadium', 1, 7, 'The M. Chinnaswamy Stadium is one of the premier cricket stadiums of India. It is located in the\r\nheart of the city of Bangalore, Karnataka. It can accommodate approximately 40000 spectators\r\nduring a match. The Chinnaswamy Stadium has also housed India’s National Cricket Academy since\r\n2000.\r\n', 'Cubbon Rd, Shivaji Nagar, Bengaluru, Karnataka', 'https://thumbs.dreamstime.com/b/chinnaswamy-stadium-bangalore-m-chinnaswamy-stadium-located-bengaluru-karnataka-stadium-owned-government-138091917.jpg', '2022-09-18 22:02:46'),
(38, 'Kanteerava Stadium', 1, 7, 'The Sree Kanteerava Outdoor Stadium, formerly known as the Sampangi Stadium, is a multi-purpose\r\nstadium in Bengaluru, India. It houses a running track, a football field, a volleyball court and two\r\noutdoor rock climbing walls.', '23, Fort Rd, near by kanteerava stadium, Nunegundlapalli, Sampangi Rama Nagara,\r\nBengaluru, Karnataka 560027', 'https://images.newindianexpress.com/uploads/user/imagelibrary/2019/10/5/w900X450/Kanteerava.jpg?w=400&dpr=2.6', '2022-09-18 22:02:46'),
(39, 'V V Puram Food Street', 1, 1, 'VV Puram is the most famous food street in Bangalore, and a must-visit for any food lover while in this buzzy Indian city.This food street (or thindi beedi – eat street – as it’s known in Kannada) is beloved in Bangalore by locals and tourists alike, and is where you’ll find some of the best eats in\r\nthe city. From stickily sweet jalebis to buttery dosas and much more.', 'gali, Food St, Vishweshwarapura, Basavanagudi, Bengaluru, Karnataka 560004', 'https://cdn.trell.co/w=640,h=640,fit=scale-down/format=webp,quality=50/user-images/images/orig/oQiKglh3xlZVFjUtRgDa.jpg', '2022-09-18 22:05:25'),
(40, 'Vidhana Soudha', 1, 6, 'Described by Pandit Jawaharlal Nehru as ‘a temple dedicated to the nation’, Vidhana Soudha houses the State Legislature and the Secretariat of Karnataka and is one of the most popular attractions in the lively and colorful city of Bengaluru. It also proudly boasts the title of being the largest state\r\nlegislative building in the country.', 'Ambedkar Bheedhi, Sampangi Rama Nagara, Bengaluru, Karnataka 560001', 'https://assets-news.housing.com/news/wp-content/uploads/2020/12/01163300/Bengaluru%E2%80%99s-Vidhana-Soudha-could-be-worth-over-Rs-3900-crores-FB-1200x700-compressed.jpg', '2022-09-18 22:37:07'),
(41, 'Bengaluru Palace', 1, 6, 'Apart from being a major tourist destination, the palace is a host to different cultural events, rock shows, and marriages.A visit to the palace gives you a chance to witness the elegant and lavish splendour of one of the most powerful dynasties of South India. An audio tape is available inside the Palace, both in Hindi and English, to help the people having language issues, understand its history better.', 'Vasanth Nagar, Bengaluru, Karnataka 560052', 'https://a.travel-assets.com/findyours-php/viewfinder/images/res40/98000/98128-Bangalore-Palace.jpg', '2022-09-18 22:37:07'),
(42, 'Bengaluru Fort', 1, 6, 'It was built by Kempe Gowda I, the founder of Bangalore, as a mud fort extending over a one-mile perimeter; it had nine large gates. Hyder Ali, after he took control of it in 1761, reinforced it with stones. However, much of this historical structure has lost out to the tides of time. You may not be able to see many of these structures today', 'XH7G+49C, Krishna Rajendra Rd, New Tharagupet, Bengaluru, Karnataka 560002', 'https://bangalore247.in/wp-content/uploads/2021/02/Bangalore-Fort.jpg', '2022-09-18 22:47:11'),
(43, 'Mayo Hall', 1, 6, 'In the heart of Bangalore stands Mayo Hall, a remarkable monument built in honor of the 4th Viceroy of India, Lord Mayo. It is a beautiful two-storey structure that dates back to 1883. Strategically located, it offers a panoramic view of the Bangalore Race Course and the Brigade Grounds on one side and Parade Grounds on the other side.', ' 14, 7, Mahatma Gandhi Rd, FM Cariappa Colony, Ashok Nagar, Bengaluru, Karnataka 560001', 'https://bangalore247.in/wp-content/uploads/2021/03/Mayo-Hall-Bangalore-1280x720.jpg', '2022-09-18 22:47:11'),
(44, 'Attara Kacheri', 1, 6, 'The building also houses a one-of-its-kind museum on the ground floor that brings alive the history of the court through a number of artifacts .The building also houses a one-of-its-kind museum on the ground floor that brings alive the history of the court through a number of artifacts.', 'Dr. B. R. Ambedkar Road, Bangalore, Karnataka', 'https://travel2karnataka.com/images/attara_kacheri.jpg', '2022-09-18 22:54:46'),
(45, 'Seshadri Iyer Memorial Hall', 1, 6, 'This building houses the Seshadri Memorial Library. It boasts a huge collection of around 2.65 lakh books and includes a Braille section as well. The library, spread across an area of 300 sq. m, is a reader’s paradise.\r\nConstructed in the year 1915, the building exhibits a classic European architectural style, replete with Corinthian and Tuscan columns. Dedicated to Sir K. Seshadri Iyer , the Dewan of Mysore between 1883 and 1901, the imposing red building stands in the middle of Cubbon Park and is hence surrounded by greenery.', 'Cubbon Park Road Near Ambedkar Veedhi, Sampangi Rama Nagara, Bengaluru, Karnataka 560001', 'https://live.staticflickr.com/65535/47606334432_4fc0365aa8_b.jpg', '2022-09-18 22:54:46'),
(46, 'Government Museum', 1, 6, 'The museum, built in the Neo-Classical architectural style, comprises two exhibition floors that are compartmentalized into eighteen galleries, each of which will take you down the lanes of history. The museum also houses a captivating model of Srirangapatna Fort of Tipu Sultan. You can also find a number of historical musical instruments at this museum.', 'XHGW+5VX, Kasturba Rd, Ambedkar Veedhi, Sampangi Rama Nagar, Bengaluru, Karnataka 560001', 'https://bangaloretourism.in/images/v2/headers/government-museum-bangalore-timings-entry-fee-bangalore-tourism-header-cr-skylinegtr.jpg', '2022-09-18 22:54:46'),
(47, ' Tipu Sultan’s Fort and Palace', 1, 6, 'It was Hyder Ali who started the construction of the fort and it was completed during the reign of his son Tipu Sultan, in 1791. Adorned with elaborate arches, pillars, and balconies, the palace reflects the Indo-Islamic style of architecture. The entire palace, built with teak wood, is embellished with floral motifs on the walls.', 'XH5F+PFR, Tippu Sultan Palace Rd, Chamrajpet, Bengaluru, Karnataka 560018', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Tipu_Sultan%27s_Palace%2C_Bangalore.JPG/1200px-Tipu_Sultan%27s_Palace%2C_Bangalore.JPG', '2022-09-18 22:57:02'),
(48, 'Madiwala Lake', 1, 4, 'Spread over an area of 114.3 hectares, Madiwala Lake is one of the largest lakes in Bangalore. The lake is maintained by the Karnataka State Forest Department and is blessed with incredible beauty.Children engage themselves with different activities while adults enjoy a pleasant and calm environment.', 'Bannerghatta Main Road, BTM 2nd stage, Bangalore', 'https://www.holidify.com/images/cmsuploads/compressed/800px-Madiwala_Lake-01_20200119184124.JPG', '2022-09-18 23:23:58'),
(49, 'Varthur Lake', 1, 4, 'As one of the man-made lakes in Bangalore, Varthur Lake serves its sole purpose of existence to maintain balance in the ecosystem and catering to farming related needs. Not to mention, it’s a major tourist hub and, witnesses the gathering of lots of visitors. The pleasant view of Sunset and Sunrise remains an adorable aspect for everyone, especially photographers.', 'XP2R+397, Varthur Kere, Varthur, Bengaluru, Bengaluru east, Karnataka 560087', 'http://photos.wikimapia.org/p/00/02/15/48/92_full.jpeg', '2022-09-18 23:23:58'),
(50, 'Hesaraghatta Lake', 1, 4, 'Sprawled over an area of 1,000 acres, Hesaraghatta Lake is another hotspot in Bangalore which is explored by nature-lovers. Hesaraghatta Lake is referred to as a small bird sanctuary that houses different species of birds such as Bush Larks, Bulbuls, and Myna. The exotic beauty of this lake accompanied by its lush green surroundings lets you get rid of the stress level.', '18 km to the north-west of Bangalore', 'https://static2.tripoto.com/media/filter/tst/img/296522/TripDocument/1526225025_3.jpg', '2022-09-18 23:23:58'),
(51, 'Kengeri Lake', 1, 4, 'Spend some quality time with your family and create fantastic memories that you can preserve for the whole life. Sprawled over 25 acres, Kengeri Lake is the most happening place for boating, while rejuvenating in a pleasant environment. Apart from boating, this lake is blessed with other facilities as well like the islet, recreational area, kid’s play zone, and many more.\r\n\r\n', 'Kengeri Satellite Town, Bangalore', 'https://i.ytimg.com/vi/vAjHgjqShic/maxresdefault.jpg', '2022-09-18 23:23:58'),
(52, 'Nandi Hills', 1, 5, 'Nandi Hills is a set of breathtaking cliffs that provide a complete natural retreat to visitors. People come here to indulge in a variety of activities such as catching the stunning views of the rising sun, beautiful sunset views, camping, trekking, and so on.', 'Chikkaballapur, Bangalore ', 'http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcS1LMQ_zH09qS95fR2Uomq5_hroDs3pKUwBpkvcVK9j-nLCD6sfnMg93GiVeBxqUWWa', '2022-09-20 21:43:32'),
(53, 'Devarayanadurga Hills', 1, 5, 'This place is famous for trekking, wonderful climate and scenery. Overall the rocky hills of Devarayanadurga, encircled by green dense forests, make a visit to this hill station very pleasant indeed.', 'Tumkur district, Karnataka', 'https://www.explorebees.com/uploads/devarayanadurga%20hill%20(8).jpg', '2022-09-21 13:41:15'),
(54, 'Savanadurga Hills', 1, 5, 'Situated 60 kms to the west of Bangalore, Savandurga, considered to be one of the largest single rock formations in the whole of Asia. It comprises of two hills, Billigudda (white hill) and Karigudda (black hill) and has a temple situated at the foothill and a pond nearby. Most trekkers choose Billigudda due to its gentler slopes. The weekend travellers from Bangalore frequent it for trekking, camping and rock climbing.', 'Magadi Road', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_y4LQo2G6QMfpAsX9Nh_jVEpIh_dNoWwP-Q&usqp=CAU', '2022-09-21 13:41:15'),
(55, 'Horsley Hills', 1, 5, 'Located near the southwestern border between Andhra Pradesh and Karnataka, Horsley Hills refers to a hill station that is the perfect amalgam of the charms of Andhra Pradesh and the beauty of the hills.This natural marvel is situated at an astonishing height of 4312 metres and is well-known for its breathtaking landscapes. The picturesque landscape of Horsley Konda also doubles up as a destination for adventure sports and activities such as trampoline, shooting, bow and arrow, wall climbing, water walking, rappelling, swimming pool, fish spa and a mini zoo.', 'Madanapalle Taluka of Annamayya district , Andhra Pradesh', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/201610/story_insta-vinaysindhe_647_102316035427.jpg?size=770:433', '2022-09-21 13:41:15'),
(56, 'Chikmanglur Hills', 1, 5, 'Chikmagalur is a famous hill station located in the mountain range of the Western Ghats. It is situated in the south-western Indian state of Karnataka. It is a nature-lovers\' paradise and there are a plethora of places to visit in Chikmagalur.These places are best for mountains in Chikmagalur:\nMullayanagiri ,  Baba Budangiri , Kudremukh Peak , Doddabale Siddaragudda Peak(Shivgiri Trails) , Gangamoola Hill', 'Chikmagaluru', 'https://1.bp.blogspot.com/-zxDgpxhpWVg/XloZGMgO0bI/AAAAAAAAA-A/Gaa8JeuHLvoSP-lzLQi6irGh7sgha2ELQCLcBGAsYHQ/s1600/IMG_20180908_123745_HDR.jpg', '2022-09-21 13:41:15'),
(57, 'Wayanad Hills', 1, 5, 'Banasura hill is famous for being the highest mountain range in the Western ghats. The elevation of Banasura peak being 6800 ft above sea level makes the Banasura hill trekking truly astonishing and worthy to be availed when you look forward to some great adventures. The Banasura hill trekking lets you witness a wide set of unique animals when you pass through the charming trails like wild boars, elephant and dears. The trail of Wayanad\'s second-highest peak contains some spectacular aspects such as lush green hills, thick forests, steepy rock terrain and plain grasslands. Trek for about 9 km and reach the peak to enjoy the breathtaking views of such a brilliant landscape of green hills and floating clouds.The Banasura hill trekking lets you witness a wide set of unique animals when you pass through the charming trails like wild boars, elephant and dears. The trail of Wayanad\'s second-highest peak contains some spectacular aspects such as lush green hills, thick forests, steepy rock terrain and plain grasslands. Trek for about 9 km and reach the peak to enjoy the breathtaking views of such a brilliant landscape of green hills and floating clouds.  ', ' Banasura Hills, Wayanad', 'https://img.onmanorama.com/content/dam/mm/en/travel/kerala/images/2022/5/13/wayanad-full-width.jpg', '2022-09-21 13:41:15'),
(58, 'Ooty Hills', 1, 5, 'Ooty has many trek routes to offer.To get the true experience take a toy train ride to Ooty from Metupalayam, or from Ooty – Coonoor on the reverse route to enjoy the nature and the plains so closely and would give you a different and a thrilling experience to travel. Ooty is huddled in an a space generated by 04 royal hills like they Club hill, Dodabetta, snowdon and Elk hills.', 'Ooty , Tamil Nadu', 'https://magikindia.com/wp-content/uploads/2015/12/ooty-3-1024x685.jpg', '2022-09-21 13:41:15'),
(59, 'Coorg', 1, 5, 'Coorg, popularly known as the Scotland of India, is a quaint hill station snuggled in the lap of nature. It is one of the most beautiful hill stations of South India. The places to visit in Coorg never fail to mesmerise the traveller’s mind, body and soul. The foggy hills, verdant forests and tumbling waterfalls create an enchanting aura that keeps pulling you back to Coorg whenever you are in search of serenity. This small district in Karnataka is inhabited by the “Kodavas”, who are known for their hospitality. Some of the places to visit in Coorg are the Dubare elephant camp, Raja’s Seat in Coorg, Abbey falls, Mandalpatti Coorg, Golden temple Coorg, Irupu falls etc.', 'Coorg', 'https://www.tourmyindia.com/blog/wp-content/uploads/2022/06/Best-Places-to-Visit-in-Coorg-Karnataka.jpg', '2022-09-21 13:41:15'),
(60, 'Hockey Stadium', 1, 7, 'Hockey Stadium in Benniganahalli has a wide range of products and / or services to cater to the varied requirements of their customers. The staff at this establishment are courteous and prompt at providing any assistance. They readily answer any queries or questions that you may have', 'XJQJ+64Q, Rhenius Street, Langford Town, Halasuru, Kalhalli, Karnataka 560025', 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/b0/37/3d/ksha-hockey-stadium.jpg?w=1200&h=1200&s=1', '2022-09-21 14:31:37');

-- --------------------------------------------------------

--
-- Table structure for table `review_rating`
--

CREATE TABLE `review_rating` (
  `review_id` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_rating` int(3) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `p_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_rating`
--

INSERT INTO `review_rating` (`review_id`, `email`, `user_name`, `user_rating`, `user_review`, `datetime`, `p_id`) VALUES
(1, 'abcd@gmail.com', 'abcd', 4, 'My review', '0000-00-00 00:00:00', 3),
(2, 'abcd@gmail.com', 'abcd', 3, 'Second review', '2022-09-04 18:56:06', 3),
(3, 'abcd@gmail.com', 'abcd', 5, 'nice place good ambience sweet cakes', '2022-09-05 06:32:48', 1),
(4, 'padmanjalianjinalli@gmail.com', 'Padmanjali', 3, 'aj,nxwjd', '2022-09-21 13:54:10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);
ALTER TABLE `categories` ADD FULLTEXT KEY `cat_name` (`cat_name`);

--
-- Indexes for table `logindata`
--
ALTER TABLE `logindata`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `cat_id` (`cat_id`);
ALTER TABLE `places` ADD FULLTEXT KEY `p_name_2` (`p_name`,`descr`,`address`);

--
-- Indexes for table `review_rating`
--
ALTER TABLE `review_rating`
  ADD PRIMARY KEY (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logindata`
--
ALTER TABLE `logindata`
  MODIFY `userid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `review_rating`
--
ALTER TABLE `review_rating`
  MODIFY `review_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
