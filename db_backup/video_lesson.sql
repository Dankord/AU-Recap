-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 01:23 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_lesson`
--

-- --------------------------------------------------------

--
-- Table structure for table `abm`
--

CREATE TABLE `abm` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abm`
--

INSERT INTO `abm` (`id`, `title`, `path`, `description`, `thumbnail`) VALUES
(1, 'What is ABM?', '../resource/video/abm/abm.mp4', 'In this video you will learn the definition of ABM and the give you further understanding of your chosen strand.', '../resource/img/abm/abm.jpg'),
(2, 'Fundamentals of Accountancy, Business and Management 1', '../resource/video/abm/fabam.mp4', 'In this video you will know one of the special subject of ABM known as Fundamentals of Accountancy, Business and Management 1.', '../resource/img/abm/fabam.jpg'),
(3, 'Business Finance 1', '../resource/video/abm/finance.mp4', 'In this video you will have a deeper understanding of one of the special subject of ABM, Business finance.', '../resource/img/abm/finance.jpg'),
(4, 'Lesson 1: Orientation on the Accountancy, Business and management (ABM) strand.', '../resource/video/abm/lesson1.mp4', 'In this video, You will have an orientation to your chosen strand and to know the purpose of ABM.', '../resource/img/abm/lesson1.jpg'),
(5, 'Lesson 2: Subject Orientation for Fundamentals of Accountancy, Business and Management 1.', '../resource/video/abm/lesson2.mp4', 'In this video you will have a basic understanding of the purpose of this subject. ', '../resource/img/abm/lesson2.jpg'),
(6, 'Lesson 3: Introduction to Accounting', '../resource/video/abm/lesson3.mp4', 'In this video you should have an understanding of what Accounting is and the function it has to your future dream jobs.', '../resource/img/abm/lesson3.jpg'),
(7, 'Lesson 4:  Branches of Accounting', '../resource/video/abm/lesson4.mp4', 'In this video you will have an understanding to the different branches of accounting.', '../resource/img/abm/lesson4.jpg'),
(8, 'Lesson 5: Users of Accounting Information', '../resource/video/abm/lesson5.mp4', 'In this video you will have a deeper understanding of the external and internal users of accounting information.', '../resource/img/abm/lesson5.jpg'),
(9, 'Principle of Marketing', '../resources/video/abm/marketing.mp4', 'In this video you will have a deeper understanding of one of the specialized subject in ABM, Principle of Marketing.', '../resource/img/abm/marketing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `humss`
--

CREATE TABLE `humss` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `humss`
--

INSERT INTO `humss` (`id`, `title`, `path`, `description`, `thumbnail`) VALUES
(1, 'Introduction to World religion and belief system', '../resource/video/humss/belief system.mp4', 'In this video you will learn about what is the World religion and the belief system.', '../resource/img/humss/belief system.jpg'),
(2, 'Humss Lesson introduction(Creative nonfiction)', '../resource/video/humss/creative nonfiction.mp4', 'A simple introduction to one of the special subject of Humss, Creative nonfiction', '../resource/img/humss/creative nonfiction.jpg'),
(3, 'Humss lesson introduction(Discipline and ideas in the applied Social Science)', '../resource/video/humss/disciplines and ideas.mp4', 'A simple introduction to one of Humss special subject, Discipline and ideas in the applied Social Science', '../resource/img/humss/disciplines and ideas.jpg'),
(4, 'Disciplines and Ideas in the Social Sciences', '../resource/video/humss/diss.mp4', 'In this video you will learn more about the topic, Disciplines and Ideas in the Social Sciences', '../resource/img/humss/diss.jpg'),
(5, 'HUMSS special subject overview', '../resource/video/humss/humss special subject.mp4', 'In this video you will learn more about the specialized subject of humss and have an overview of the different subject and to have a clear idea of your strand.', '../resource/img/humss/humss special subject.jpg'),
(6, 'What is HUMSS?', '../resource/video/humss/humss.mp4', 'In this video you will have a deeper understanding of what HUMSS is, And to understand more about your chosen strand.', '../resource/img/humss/humss.jpg'),
(7, 'Introduction to D.I.A.S.S (Disciplines and Ideas in the applied Social Science)', '../resource/video/humss/introduction to diass.mp4', 'In this video you will learn more about D.I.A.S.S and the difference it has on D.I.S.S', '../resource/img/humss/introduction to diass.jpg'),
(8, 'Philippine Politics and Governance', '../resource/video/humss/philippine politics.mp4', 'Introduce to the students the basic concepts and vital elements of politics and governance.', '../resource/img/humss/philippine politics.jpg'),
(9, 'Introduction to Social Science', '../resource/video/humss/social science.mp4', 'In this video you will learn what Social Science is and have a deeper understanding for your strand chosen.', '../resource/img/humss/social science.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ict`
--

CREATE TABLE `ict` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ict`
--

INSERT INTO `ict` (`id`, `title`, `path`, `description`, `thumbnail`) VALUES
(1, 'Arithmetic operators in C language', '../resource/video/ict/arithmetic C.mp4', 'In this tutorial, we delve into the fundamental arithmetic operators used in the C programming language. Whether you\'re a beginner looking to build a strong foundation or an experienced programmer seeking a refresher, this video is designed to enhance you', '../resource/img/ict/arithmetic C.jpg'),
(2, 'Basic knowledge of JAVA language', '../resource/video/ict/basic of java.mp4', 'This video is dedicated to explaining what is Java programming along with its major programming fundamentals and real-time implementation with an interesting theory so that the beginners in Java could have a detailed overview of the Java programming Langu', '../resource/img/ict/basic of java.jpg'),
(3, 'ICT and its impact on our society', '../resource/video/ict/ict.mp4', 'A simple introduction to the strand ICT, Giving you the information you need to know of what this strand is all about', '../resource/img/ict/ict.jpg'),
(4, 'a simple tutorial of C++ if else statement', '../resource/video/ict/if else c++.mp4', 'This video is a simple tutorial of how if else works in C++, Giving a simple explanation of how this statement works and the importance of using it', '../resource/img/ict/if else c++.jpg'),
(5, 'Introduction to Java program', '../resource/video/ict/java program.mp4', 'In this video, You will learn about the basis of how Java program works and a bit of insight of how some statement works.', '../resource/img/ict/java program.jpg'),
(6, 'Learn what is programming', '../resource/video/ict/learn programming.mp4', 'In this video you will have an insight of what is programming and learn how to create one yourself.', '../resource/img/ict/learn programming.jpg'),
(7, 'Learn about the Programming Language', '../resource/video/ict/programming language.mp4', 'In this video you will learn about the different programming language, And have an insight of their different usage in the world of ICT.', '../resource/img/ict/programming language.jpg'),
(8, 'What is Java?', '../resource/video/ict/what is java.mp4', 'In this video you will learn more about the history of Java and learn more about its usage and importance.', '../resource/img/ict/what is java.jpg'),
(9, 'What is VB.NET?', '../resource/video/ict/what is vbnet.mp4', 'In this video you will learn about the what is VB.NET, Having a deeper insight of what is visual basic language in programming.', '../resource/img/ict/what is vbnet.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`id`, `title`, `path`, `description`, `thumbnail`) VALUES
(1, 'Badminton basics', '../resource/video/sports/badminton.mp4', 'In this video you will learn what is Badminton and the basic moves so you could learn how to play it.', '../resource/img/sports/badminton.jpg'),
(2, 'Basic rules and regulation of athletic', '../resource/video/sports/basic rules.mp4', 'In this video you will learn about the different rules and regulation in sports.', '../resource/img/sports/basic rules.jpg'),
(3, 'The 6 blocking technique in Arnis', '../resource/video/sports/blocking.mp4', 'In this video, You will learn the 6 different type of blocking technique in Arnis.', '../resource/img/sports/blocking.jpg'),
(4, 'Physical fitness and Body movement', '../resource/video/sports/body movement.mp4', 'Inn this lesson you will learn more about body movement, five components of health related fitness, Types of locomotor movement and types of non-locomotor movement.', '../resource/img/sports/body movement.jpg'),
(5, 'Dual Sports', '../resource/video/sports/dual sports.mp4', 'In this video you will learn more about \"what is dual sports\", and the different sports that can be played between two people.', '../resource/img/sports/dual sports.jpg'),
(6, 'Dance terms in Folkdance', '../resource/video/sports/folkdance.mp4', 'In this video you will learn more about the different terms in folkdance movement.', '../resource/img/sports/folkdance.jpg'),
(7, 'Meaning of \"GYMNASTIC\"', '../resource/video/sports/gymnastic.mp4', 'In this lesson you will learn about the definition of Gymnastic and deepen your understanding in sports', '../resource/img/sports/gymnastic.jpg'),
(8, 'Individual sports', '../resource/video/sports/individual sports.mp4', 'In this lesson you will learn more about what is individual sports and the different sports that are categorize in this sport.', '../resource/img/sports/individual sports.jpg'),
(9, 'What is sports?', '../resource/video/sports/sports.mp4', 'In this video you will have a deeper understanding of what sports is, And understand the strand you chose.', '../resource/img/sports/sports.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stem`
--

CREATE TABLE `stem` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stem`
--

INSERT INTO `stem` (`id`, `title`, `path`, `description`, `thumbnail`) VALUES
(1, 'Understanding calculus in 35 minutes', '../resource/video/stem/calculus.mp4', 'In this lesson you will be understand what is calculus within 35minutes, Explaining what and how you could solve the equation.', '../resource/img/stem/calculus.jpg'),
(2, 'Evaluating limits from a graph', '../resource/video/stem/evaluating.mp4', 'In this lesson you will understand how to evaluate the limits of a graph.', '../resource/img/stem/evaluating.jpg'),
(3, 'Finding the limits of a function using table of values', '../resource/video/stem/finding.mp4', 'In this video you will learn how to find the limits of a function using the table of values.', '../resource/img/stem/finding.jpg'),
(4, 'Introduction to General Biology', '../resource/video/stem/general biology.mp4', 'In this video you will have a brief introduction of one of the specialized subject in STEM known as \"General Biology 1\"', '../resource/img/stem/general biology.jpg'),
(5, 'Introduction to General Chemistry', '../resource/video/stem/general chemistry.mp4', 'In this video you will have a brief intro into one of the specialized subject of STEM known as \"General Chemistry 1\"', '../resources/img/stem/general chemistry.jpg'),
(6, 'Introduction to General Physics', '../resource/video/stem/general physics.mp4', 'In this video you will have a brief intro into one of the specialized subject of STEM known as \"General Physics 1\"', '../resource/img/stem/general physics.jpg'),
(7, 'Specialized subject of STEM', '../resource/video/stem/stem special sub.mp4', 'In this video you will learn about the different special subject of STEM, To give you insight of your chosen strand and to prepare you to the learning ahead.', '../resource/img/stem/stem special sub.jpg'),
(8, 'STEM overview', '../resources/video/stem/stem.mp4', 'In this video we will be giving you a bit of insight of the things you may learn in taking the strand STEM.', '../resource/img/stem/stem.jpg'),
(9, 'What is STEM?', '../resource/video/stem/what is stem.mp4', 'In this video you will have a deeper understanding of your chosen strand and to give you insight of what is stem and the definition of what stem is.', '../resource/img/stem/what is stem.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`) VALUES
(3, 'WIl@gmail.com', '$2y$10$i0.qqsjbg5LC7kEs8stELO69utvWOjhT2m/Q0BKbbry.nncs5nk/q', 'Wil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abm`
--
ALTER TABLE `abm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humss`
--
ALTER TABLE `humss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ict`
--
ALTER TABLE `ict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stem`
--
ALTER TABLE `stem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abm`
--
ALTER TABLE `abm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `humss`
--
ALTER TABLE `humss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ict`
--
ALTER TABLE `ict`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stem`
--
ALTER TABLE `stem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
