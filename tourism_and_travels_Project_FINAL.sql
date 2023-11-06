-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2023 at 08:29 PM
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
-- Database: `tourism_and_travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `attraction`
--

CREATE TABLE `attraction` (
  `attraction_id` int(11) NOT NULL,
  `attraction_name` varchar(100) NOT NULL,
  `attraction_description` varchar(300) DEFAULT NULL,
  `ticket_price` varchar(100) NOT NULL,
  `category` varchar(300) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attraction`
--

INSERT INTO `attraction` (`attraction_id`, `attraction_name`, `attraction_description`, `ticket_price`, `category`, `package_name`, `package_type`) VALUES
(1, 'Sylhet Tea Gardens', 'Explore lush green tea gardens in Sylhet. Guided tour and tea tasting included.', '1500', 'Nature', 'Sylhet Tour', 'Single'),
(2, 'Sundarbans Wildlife Safari', 'Exciting wildlife safari in the Sundarbans mangrove forest. Boat ride and wildlife spotting.', '2500', 'Adventure', 'Adventure in Sundarbans', 'Single'),
(3, 'Bandarban Waterfalls', 'Visit scenic waterfalls in Bandarban. Trekking and swimming in natural pools.', '1800', 'Nature', 'Hill Station Retreat: Bandarban', 'Single'),
(4, 'Cox\'s Bazar Beach', 'Enjoy the world\'s longest natural sea beach. Sunbathing, beach sports, and seafood.', '1000', 'Beach', 'Cox\'s Bazar Retreat', 'Single'),
(5, 'Kuakata Sunset Point', 'Witness stunning sunsets at Kuakata beach. Boat trips and photography.', '1200', 'Beach', 'Cox\'s Bazar Retreat', 'Single'),
(6, 'Sajek Valley', 'Discover the beauty of Sajek Valley. Hilltop views, tribal culture, and camping.', '2000', 'Nature', 'Sajek Valley Expedition', 'Single'),
(7, 'Ratnodweep Island', 'Explore Ratnodweep Island. Crystal clear waters, water sports, and coral reefs.', '1800', 'Adventure', 'Adventure in Sundarbans', 'Couple'),
(8, 'Madhabkunda Waterfall', 'Visit the Madhabkunda Waterfall. Hiking, bird watching, and lush forests.', '1500', 'Nature', 'Hill Station Retreat: Bandarban', 'Family'),
(9, 'Jaflong Tea Gardens', 'Experience tea gardens in Jaflong. Scenic beauty, tea plucking, and river cruises.', '1600', 'Nature', 'Cox\'s Bazar Retreat', 'Couple'),
(10, 'Lawachara National Park', 'Explore Lawachara National Park. Wildlife, trekking, and rainforest adventures.', '900', 'Nature', 'Cox\'s Bazar Retreat', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `user_id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_type` varchar(100) NOT NULL,
  `payment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`user_id`, `package_name`, `package_type`, `payment`) VALUES
(2001, 'Sylhet Tour', 'Single', 4500),
(2002, 'Sylhet Tour', 'Single', 9000),
(2003, 'Adventure in Sundarbans', 'Single', 2500),
(2004, 'Adventure in Sundarbans', 'Single', 4000),
(2005, 'Cox\'s Bazar Retreat', 'Single', 5500),
(2010, 'Cox\'s Bazar Retreat', 'Single', 5000),
(2011, 'Hill Station Retreat: Bandarban', 'Single', 7000),
(2012, 'Adventure in Sundarbans', 'Family', 2800),
(2013, 'Hill Station Retreat: Bandarban', 'Family', 6800),
(2014, 'Cox\'s Bazar Retreat', 'Couple', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_description` varchar(300) DEFAULT NULL,
  `hotel_address` varchar(300) DEFAULT NULL,
  `hotel_contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `hotel_description`, `hotel_address`, `hotel_contact`) VALUES
(1, 'Luxury Resort & Spa', 'A luxurious resort overlooking the beach. Spa, pool, and fine dining.', '123 Beach Road, Coxs Bazar', '01712345678'),
(2, 'Sundarbans Eco Lodge', 'Eco-friendly lodge in the heart of Sundarbans. Nature walks and eco-friendly accommodations.', '456 Mangrove Lane, Sundarbans', '01823456789'),
(3, 'Panorama Hill Resort', 'Scenic resort nestled in the hills of Bandarban. Hilltop views and cozy cabins.', '789 Hillside Drive, Bandarban', '01934567890'),
(4, 'Riverfront Retreat', 'Riverside retreat with private cottages. Fishing, boat rides, and riverside dining.', '101 Riverbank Avenue, Sylhet', '01645678901'),
(5, 'Historical Heritage Inn', 'Charming heritage inn near Mohasthangarh. Historic ambiance and guided tours.', '202 Archaeology Street, Bogura', '01556789012'),
(6, 'Tranquil Beach Resort', 'Serene resort steps away from the beach. Beachfront bungalows and water sports.', '303 Sandy Beach Road, Coxs Bazar', '01467890123'),
(7, 'Mangrove Lodge', 'Comfortable lodge in the heart of Sundarbans. Bird watching and river cruises.', '404 Mangrove Lane, Sundarbans', '01378901234'),
(8, 'Mountain View Retreat', 'Mountain resort with panoramic views. Hiking trails and mountain cottages.', '505 Mountain Drive, Bandarban', '01289012345'),
(9, 'Riverfront Bliss', 'Riverside hotel with spacious rooms. Riverside dining and boat excursions.', '606 Riverbank Avenue, Sylhet', '01190123456'),
(10, 'Bogura Heritage Inn', 'Historic inn in the heart of Bogura. Cultural experiences and heritage ambiance.', '707 History Lane, Bogura', '01012345678');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_name` varchar(100) NOT NULL,
  `package_type` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `package_price` varchar(100) NOT NULL,
  `numberoftravellers` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_name`, `package_type`, `description`, `package_price`, `numberoftravellers`) VALUES
('Adventure in Sundarbans', 'Couple', 'Wildlife expedition for couples. Explore the mangroves, luxury camps, and boat cruises.', '120000', 2),
('Adventure in Sundarbans', 'Family', 'Family adventure in the wild. Nature walks, bird watching, and cozy cottages.', '180000', 4),
('Adventure in Sundarbans', 'Single', 'Thrilling solo adventure. Jungle safaris, wildlife encounters, and rustic lodges.', '70000', 1),
('Cox\'s Bazar Retreat', 'Couple', 'Romantic beach getaway. Beachside dinners, water activities, and cozy beach cottages.', '125000', 2),
('Cox\'s Bazar Retreat', 'Single', 'Beach escape to Cox\'s Bazar. Sunbathing, water sports, and beachfront stays.', '70000', 1),
('Hill Station Retreat: Bandarban', 'Couple', 'Romantic hillside escape. Waterfalls, indigenous villages, and luxury hill resorts.', '110000', 2),
('Hill Station Retreat: Bandarban', 'Family', 'Family getaway in the mountains. Adventure activities, tribal experiences, and spacious hillside lodges.', '160000', 4),
('Hill Station Retreat: Bandarban', 'Single', 'Solo retreat in the hills. Hiking trails, tribal culture, and serene mountain resorts.', '65000', 1),
('Kuakata Exploration', 'Couple', 'Couples retreat to Kuakata. Sunset boat trips, beachside dining, and cozy cottages.', '95000', 2),
('Kuakata Exploration', 'Single', 'Kuakata beach adventure for solo travelers. Sunset views, beach sports, and coastal charm.', '55000', 1),
('Sajek Valley Expedition', 'Family', 'Family adventure to Sajek Valley. Tribal culture, camping, and scenic hilltop stays.', '160000', 4),
('Sajek Valley Expedition', 'Single', 'Solo journey to Sajek Valley. Hiking, camping, and cultural encounters.', '75000', 1),
('Sylhet Tour', 'Couple', 'Romantic getaway for couples. Private tours, cozy accommodations, and candlelight dinners.', '80000', 2),
('Sylhet Tour', 'Family', 'Fun-filled family adventure. Activities for all ages, spacious accommodations, and family-friendly meals.', '120000', 4),
('Sylhet Tour', 'Single', 'Explore the beauty of Sylhet alone. Guided tours, accommodation, and meals included.', '50000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_hotel_service`
--

CREATE TABLE `package_hotel_service` (
  `package_name` varchar(100) NOT NULL,
  `package_type` varchar(100) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_hotel_service`
--

INSERT INTO `package_hotel_service` (`package_name`, `package_type`, `hotel_id`) VALUES
('Adventure in Sundarbans', 'Single', 2),
('Adventure in Sundarbans', 'Single', 7),
('Cox\'s Bazar Retreat', 'Couple', 1),
('Cox\'s Bazar Retreat', 'Single', 1),
('Hill Station Retreat: Bandarban', 'Couple', 3),
('Hill Station Retreat: Bandarban', 'Family', 8),
('Kuakata Exploration', 'Single', 10),
('Sajek Valley Expedition', 'Family', 3),
('Sylhet Tour', 'Single', 4),
('Sylhet Tour', 'Single', 9);

-- --------------------------------------------------------

--
-- Table structure for table `pack_trans`
--

CREATE TABLE `pack_trans` (
  `transportation_id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pack_trans`
--

INSERT INTO `pack_trans` (`transportation_id`, `package_name`, `package_type`) VALUES
(1, 'Sylhet Tour', 'Single'),
(2, 'Sylhet Tour', 'Single'),
(3, 'Adventure in Sundarbans', 'Single'),
(4, 'Adventure in Sundarbans', 'Single'),
(6, 'Hill Station Retreat: Bandarban', 'Couple'),
(6, 'Hill Station Retreat: Bandarban', 'Family'),
(7, 'Cox\'s Bazar Retreat', 'Single'),
(8, 'Cox\'s Bazar Retreat', 'Couple'),
(9, 'Kuakata Exploration', 'Single'),
(10, 'Sajek Valley Expedition', 'Family');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_name` varchar(100) DEFAULT NULL,
  `package_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `comments`, `user_id`, `package_name`, `package_type`) VALUES
(1, 'Adventure Expeditions delivered a fantastic tour package! The itinerary was well-planned, and the accommodations were top-notch. An unforgettable adventure!', 2001, 'Sylhet Tour', 'Single'),
(2, 'Tranquil Tours offered a delightful escape with a good balance of leisure and exploration. We visited historic sites, though some meals fell short of expectations. Overall, a rejuvenating experience.', 2002, 'Sylhet Tour', 'Single'),
(3, 'Heritage Journeys provided an enlightening cultural tour with well-informed guides and authentic local interactions. Exploring forest places left me with a deep appreciation for the nature we encountered. Highly recommended!', 2003, 'Adventure in Sundarbans', 'Single'),
(4, 'Nature\'s Edge Tours offers an exciting journey through breathtaking natural landscapes, perfect for nature lovers. While the hiking and wildlife encounters were exceptional, the accommodations were more basic. Ideal for those seeking a close encounter with nature.', 2004, 'Adventure in Sundarbans', 'Single'),
(5, 'Cox\'s Bazar Retreat exceeded my expectations! The beach was pristine, and the accommodations were top-notch. I\'ll cherish the memories.', 2010, 'Cox\'s Bazar Retreat', 'Single'),
(6, 'Kuakata Exploration provided me with a peaceful escape. The sunsets were breathtaking, and the boat trips were serene.', 2011, 'Kuakata Exploration', 'Single'),
(7, 'Sajek Valley Expedition was a fantastic family adventure. The hilltop views and tribal experiences made it special for us.', 2012, 'Sajek Valley Expedition', 'Family'),
(8, 'Sajek Valley Expedition was breathtaking. The scenic beauty and camping experience left me in awe of nature.', 2013, 'Sajek Valley Expedition', 'Single'),
(9, 'Cox\'s Bazar Retreat was a romantic getaway. We enjoyed beachside dinners and beachfront stays.', 2014, 'Cox\'s Bazar Retreat', 'Couple'),
(10, 'Cox\'s Bazar Retreat provided a perfect solo escape. The beach sports and beach cottages were ideal for a solo traveler.', 2005, 'Cox\'s Bazar Retreat', 'Single'),
(11, 'Adventure in Sundarbans was a thrilling experience. Wildlife encounters and rustic lodges made it an adventure to remember.', 2003, 'Adventure in Sundarbans', 'Single'),
(12, 'Hill Station Retreat: Bandarban was a romantic hillside escape. We enjoyed waterfalls and hill resorts.', 2004, 'Hill Station Retreat: Bandarban', 'Couple'),
(13, 'Adventure in Sundarbans was a fantastic family adventure. The nature walks and bird watching made it memorable.', 2012, 'Adventure in Sundarbans', 'Family'),
(14, 'Hill Station Retreat: Bandarban provided a perfect family getaway. The adventure activities and spacious lodges made it special for us.', 2013, 'Hill Station Retreat: Bandarban', 'Family'),
(15, 'Cox\'s Bazar Retreat was a romantic escape. The beachside dining and cozy beach cottages were perfect for couples.', 2014, 'Cox\'s Bazar Retreat', 'Couple');

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

CREATE TABLE `transportation` (
  `transportation_id` int(11) NOT NULL,
  `departure_location` varchar(300) NOT NULL,
  `arrival_location` varchar(300) NOT NULL,
  `transportation_type` varchar(100) NOT NULL,
  `transportation_class` varchar(100) NOT NULL,
  `fare` int(11) NOT NULL,
  `route` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`transportation_id`, `departure_location`, `arrival_location`, `transportation_type`, `transportation_class`, `fare`, `route`) VALUES
(1, 'Dhaka', 'Sylhet', 'Life by Air', 'Economy', 4500, 'Direct Flight'),
(2, 'Dhaka', 'Sylhet', 'Life by Air', 'Business', 9000, 'Direct Flight with Business Class Amenities'),
(3, 'Dhaka', 'Sundarbans', 'Life by Water', 'Economy', 2000, 'Launch Journey'),
(4, 'Dhaka', 'Sundarbans', 'Life by Water', 'Business', 4000, 'Luxury Cruise'),
(5, 'Dhaka', 'Sylhet', 'Life by Train', 'Economy', 490, 'Direct train'),
(6, 'Dhaka', 'Sylhet', 'Life by Train', 'Business', 9000, 'Direct Flight with Business Class Amenities'),
(7, 'Dhaka', 'Cox\'s Bazar', 'Life by Air', 'Economy', 4500, 'Direct Flight'),
(8, 'Dhaka', 'Cox\'s Bazar', 'Life by Air', 'Business', 9000, 'Direct Flight with Business Class Amenities'),
(9, 'Dhaka', 'Kuakata', 'Life by Air', 'Economy', 3500, 'Direct Flight'),
(10, 'Dhaka', 'Sajek Valley', 'Life by Air', 'Economy', 4000, 'Direct Flight');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_nid` varchar(100) DEFAULT NULL,
  `user_contact` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_nid`, `user_contact`) VALUES
(2000, 'Md. Rahman', 'rahman@example.com', '123456789012', '01712345678'),
(2001, 'Fatima Akter', 'fatima@example.com', '234567890123', '01987654321'),
(2002, 'Sadia Ahmed', 'sadia@example.com', '345678901234', '01876543210'),
(2003, 'Aminul Islam', 'aminul@example.com', '456789012345', '01654321098'),
(2004, 'Nadia Khan', 'nadia@example.com', '567890123456', '01543210987'),
(2005, 'Kamal Hossain', 'kamal@example.com', '678901234567', '01432109876'),
(2006, 'Mehnaz Begum', 'mehnaz@example.com', '789012345678', '01321098765'),
(2007, 'Farid Ahmed', 'farid@example.com', '890123456789', '01210987654'),
(2008, 'Nusrat Jahan', 'nusrat@example.com', '901234567890', '01109876543'),
(2009, 'Abdul Khaleq', 'khaleq@example.com', '012345678901', '01098765432'),
(2010, 'Sara Rahman', 'sara@example.com', '123456789013', '01712345679'),
(2011, 'Ahmed Khan', 'ahmed@example.com', '234567890124', '01987654322'),
(2012, 'Nadia Islam', 'nadia@example.com', '345678901235', '01876543211'),
(2013, 'Farhan Ahmed', 'farhan@example.com', '456789012346', '01654321099'),
(2014, 'Amina Khan', 'amina@example.com', '567890123457', '01543210988');

-- --------------------------------------------------------

--
-- Table structure for table `user_hotel`
--

CREATE TABLE `user_hotel` (
  `user_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_hotel`
--

INSERT INTO `user_hotel` (`user_id`, `hotel_id`) VALUES
(2001, 9),
(2002, 9),
(2003, 2),
(2004, 7),
(2010, 1),
(2011, 1),
(2012, 10),
(2013, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attraction`
--
ALTER TABLE `attraction`
  ADD PRIMARY KEY (`attraction_id`),
  ADD KEY `package_name` (`package_name`,`package_type`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`user_id`,`package_name`,`package_type`),
  ADD KEY `package_name` (`package_name`,`package_type`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_name`,`package_type`);

--
-- Indexes for table `package_hotel_service`
--
ALTER TABLE `package_hotel_service`
  ADD PRIMARY KEY (`package_name`,`package_type`,`hotel_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Indexes for table `pack_trans`
--
ALTER TABLE `pack_trans`
  ADD PRIMARY KEY (`transportation_id`,`package_name`,`package_type`),
  ADD KEY `package_name` (`package_name`,`package_type`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `package_name` (`package_name`,`package_type`);

--
-- Indexes for table `transportation`
--
ALTER TABLE `transportation`
  ADD PRIMARY KEY (`transportation_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_hotel`
--
ALTER TABLE `user_hotel`
  ADD PRIMARY KEY (`user_id`,`hotel_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attraction`
--
ALTER TABLE `attraction`
  ADD CONSTRAINT `attraction_ibfk_1` FOREIGN KEY (`package_name`,`package_type`) REFERENCES `package` (`package_name`, `package_type`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`package_name`,`package_type`) REFERENCES `package` (`package_name`, `package_type`);

--
-- Constraints for table `package_hotel_service`
--
ALTER TABLE `package_hotel_service`
  ADD CONSTRAINT `package_hotel_service_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `package_hotel_service_ibfk_2` FOREIGN KEY (`package_name`,`package_type`) REFERENCES `package` (`package_name`, `package_type`);

--
-- Constraints for table `pack_trans`
--
ALTER TABLE `pack_trans`
  ADD CONSTRAINT `pack_trans_ibfk_1` FOREIGN KEY (`transportation_id`) REFERENCES `transportation` (`transportation_id`),
  ADD CONSTRAINT `pack_trans_ibfk_2` FOREIGN KEY (`package_name`,`package_type`) REFERENCES `package` (`package_name`, `package_type`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`package_name`,`package_type`) REFERENCES `package` (`package_name`, `package_type`);

--
-- Constraints for table `user_hotel`
--
ALTER TABLE `user_hotel`
  ADD CONSTRAINT `user_hotel_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotels` (`hotel_id`),
  ADD CONSTRAINT `user_hotel_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
