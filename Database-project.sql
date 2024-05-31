SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Table structure for table `breakfast_votes`
--

CREATE TABLE `breakfast_votes` (
  `food_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakfast_votes`
--

INSERT INTO `breakfast_votes` (`food_id`, `votes`) VALUES
(1, 7),
(2, 8),
(3, 4),
(4, 3),
(5, 3),
(6, 2),
(7, 0),
(8, 0),
(9, 1),
(10, 3);

--
-- Triggers `breakfast_votes`
--
DELIMITER $$
CREATE TRIGGER `b_percentage` AFTER UPDATE ON `breakfast_votes` FOR EACH ROW update votes_percentage set percentage = (SELECT b.votes from food_list a, breakfast_votes b where b.food_id=a.food_id and a.food_id=NEW.food_id)/(SELECT sum(votes) from breakfast_votes)*100 where food_id = NEW.food_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dinner_votes`
--

CREATE TABLE `dinner_votes` (
  `food_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dinner_votes`
--

INSERT INTO `dinner_votes` (`food_id`, `votes`) VALUES
(31, 5),
(32, 4),
(33, 2),
(34, 1),
(35, 1),
(36, 1),
(37, 0),
(38, 2),
(39, 0),
(40, 0);

--
-- Triggers `dinner_votes`
--
DELIMITER $$
CREATE TRIGGER `D_percentage` AFTER UPDATE ON `dinner_votes` FOR EACH ROW update votes_percentage set percentage = (SELECT b.votes from food_list a, dinner_votes b where b.food_id=a.food_id and a.food_id=NEW.food_id)/(SELECT sum(votes) from dinner_votes)*100 where food_id = NEW.food_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `food_quality` varchar(255) DEFAULT NULL,
  `staff_feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `service`, `food_quality`, `staff_feedback`) VALUES
(1, 'Good tasty food', 'Service is bad, can be improved', 'Unfriendly staff'),
(2, 'Bad..Dissapointed', 'Hygiene can be improved', 'Unfriendly staff'),
(3, 'Good! But can be improved', 'Bad', 'Unfriendly.');

-- --------------------------------------------------------

--
-- Table structure for table `food_list`
--

CREATE TABLE `food_list` (
  `food_id` int(11) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_type` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_list`
--

INSERT INTO `food_list` (`food_id`, `food_name`, `food_type`) VALUES
(1, 'Dosa', 'B'),
(2, 'Idli', 'B'),
(3, 'Chole Bhature', 'B'),
(4, 'Poha', 'B'),
(5, 'Aloo Paratha', 'B'),
(6, 'Pav Bhaji', 'B'),
(7, 'Upma', 'B'),
(8, 'Bread Jam', 'B'),
(9, 'Lemon Rice', 'B'),
(10, 'Noodles', 'B'),
(11, 'Soyabean', 'L'),
(12, 'Daal Chawal', 'L'),
(13, 'Rice Sambhar', 'L'),
(14, 'Fried Rice', 'L'),
(15, 'Mixed Veg', 'L'),
(16, 'Kadhi Rice', 'L'),
(17, 'Baingan Bharta', 'L'),
(18, 'Lemon Rice', 'L'),
(19, 'Paneer', 'L'),
(20, 'Chole', 'L'),
(21, 'Oreo', 'S'),
(22, 'Bonda', 'S'),
(23, 'Egg Puff', 'S'),
(24, 'Bhel', 'S'),
(25, 'Cake', 'S'),
(26, 'Sandwich', 'S'),
(27, 'Potato Chips', 'S'),
(28, 'Chai', 'S'),
(29, 'Samosa', 'S'),
(30, 'Spring Roll', 'S'),
(31, 'Biriyani', 'D'),
(32, 'Roti Sabzi', 'D'),
(33, 'Rajma Chawal', 'D'),
(34, 'Chicken Gravy', 'D'),
(35, 'Gobi Munchurian', 'D'),
(36, 'Paneer Bhurji', 'D'),
(37, 'Fried Rice', 'D'),
(38, 'Egg Bhurji', 'D'),
(39, 'Chicken Kebab', 'D'),
(40, 'Mixed Veg', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `lunch_votes`
--

CREATE TABLE `lunch_votes` (
  `food_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lunch_votes`
--

INSERT INTO `lunch_votes` (`food_id`, `votes`) VALUES
(11, 3),
(12, 3),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 1),
(20, 1);

--
-- Triggers `lunch_votes`
--
DELIMITER $$
CREATE TRIGGER `L_percentage` AFTER UPDATE ON `lunch_votes` FOR EACH ROW update votes_percentage set percentage = (SELECT b.votes from food_list a, lunch_votes b where b.food_id=a.food_id and a.food_id=NEW.food_id)/(SELECT sum(votes) from lunch_votes)*100 where food_id = NEW.food_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `snacks_votes`
--

CREATE TABLE `snacks_votes` (
  `food_id` int(11) NOT NULL,
  `votes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snacks_votes`
--

INSERT INTO `snacks_votes` (`food_id`, `votes`) VALUES
(21, 2),
(22, 2),
(23, 1),
(24, 0),
(25, 0),
(26, 0),
(27, 1),
(28, 0),
(29, 0),
(30, 0);

--
-- Triggers `snacks_votes`
--
DELIMITER $$
CREATE TRIGGER `S_percentage` AFTER UPDATE ON `snacks_votes` FOR EACH ROW update votes_percentage set percentage = (SELECT b.votes from food_list a, snacks_votes b where b.food_id=a.food_id and a.food_id=NEW.food_id)/(SELECT sum(votes) from snacks_votes)*100 where food_id = NEW.food_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `usn`, `username`, `password`) VALUES
(1, 'IIT2022206', 'Prachi', 'aaaaa'),
(2, 'IIT2022208', 'Ananya', 'aaaaa'),
(3, 'IIT2022117', 'Titiksha', 'aaaaa'),
(4, 'IIT2022214', 'Sanjana', 'aaaaa'),
(6, 'IIT2022120', 'Sneha', 'aaaaa'),
(7, 'IIT2022210', 'Trisha', 'aaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `student_usn` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `room_no` varchar(4) NOT NULL,
  `sem` int(1) NOT NULL,
  `branch` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `student_usn`, `name`, `room_no`, `sem`, `branch`) VALUES
(1, 'IIT2022206', 'Prachi Kumari', '834', 4, 'IT'),
(2, 'IIT2022208', 'Ananya Garg', '832', 4, 'IT'),
(3, 'IIT2022117', 'Titiksha Sharma', '834', 4, 'IT'),
(4, 'IIT2022214', 'Sanjana Prajapati', '832', 4, 'IT'),
(6, 'IIT2022120', 'Sneha Jaiswal', '842', 4, 'IT'),
(7, 'IIT2022210', 'Trisha Bharti', '842', 4, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `votes_percentage`
--

CREATE TABLE `votes_percentage` (
  `food_id` int(11) NOT NULL,
  `percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes_percentage`
--

INSERT INTO `votes_percentage` (`food_id`, `percentage`) VALUES
(1, 22.5806),
(2, 25.8065),
(3, 12.9032),
(4, 9.67742),
(5, 9.67742),
(6, 6.45161),
(7, 0),
(8, 0),
(9, 3.22581),
(10, 9.67742),
(11, 37.5),
(12, 37.5),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 12.5),
(20, 12.5),
(21, 33.3333),
(22, 33.3333),
(23, 16.6667),
(24, 0),
(25, 0),
(26, 0),
(27, 16.6667),
(28, 0),
(29, 0),
(30, 0),
(31, 31.25),
(32, 25),
(33, 12.5),
(34, 6.25),
(35, 6.25),
(36, 6.25),
(37, 0),
(38, 12.5),
(39, 0),
(40, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breakfast_votes`
--
ALTER TABLE `breakfast_votes`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `dinner_votes`
--
ALTER TABLE `dinner_votes`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_list`
--
ALTER TABLE `food_list`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `lunch_votes`
--
ALTER TABLE `lunch_votes`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `snacks_votes`
--
ALTER TABLE `snacks_votes`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`,`usn`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`,`student_usn`);

--
-- Indexes for table `votes_percentage`
--
ALTER TABLE `votes_percentage`
  ADD PRIMARY KEY (`food_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food_list`
--
ALTER TABLE `food_list`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_details`
--
ALTER TABLE `user_details`
  ADD CONSTRAINT `user_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
