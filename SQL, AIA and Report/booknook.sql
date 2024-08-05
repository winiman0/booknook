-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 04:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booknook`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `study_field` varchar(100) DEFAULT NULL,
  `synopsis` text DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `isbn10` varchar(13) DEFAULT NULL,
  `isbn13` varchar(15) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `university`, `semester`, `study_field`, `synopsis`, `edition`, `publication_year`, `isbn10`, `isbn13`, `file_path`) VALUES
(1, 'Architecture in Milan', ' Nicolò Castellini Baldissera ', 'Monash University', 2, 'Architecture', 'Interior designer Nicolò Castellini Baldissera and fashion and interiors photographer Guido Taroni offer a privileged glimpse into the homes of Milan’s foremost creative residents.\n\nInside Milan ventures behind closed doors in this unique cultural capital that is renowned as a world leader in fashion, design, art, and industry. In this beautifully photographed book, icons such as Veronica and Jacopo Etro, Martina Mondadori, JJ Martin, and Barnaba Fornasetti reveal why they call this notoriously elusive city home.\n\nFrom sophisticated clean lines and muted tones to rooms bursting with art and color, the palazzos and apartments showcased in this stunning volume uncover the creative heart of this vibrant and cosmopolitan metropolis. Nicolò Castellini Baldissera’s carefully curated collection of interiors features the homes of an array of leading creatives of Milan society, including—in addition to the aforementioned—artist Lola Schnabel; designers Hannes Peer, Emiliano Salci, and Osanna Visconti; and fashion designer Luisa Beccaria, among others.', '1st', 2022, '67676234', '2352352525', 'https://drive.google.com/file/d/1KokFBK4G-ZOzSQBh3tgrgzMVJoQ2yHsm/view?usp=sharing'),
(2, 'French Architecture', 'Billy Au Robaussen', 'Universiti Pendidikan Sultan Idris (UPSI)', 1, 'Architecture', 'Buildings have the potential to be more than just useful buildings; they may also serve as symbols of a culture\'s identity. For instance, the architecture of religious structures typically incorporates aspects that mirror the spirituality and beliefs of the particular faith for which the structure was designed.', '2nd', 2004, '23123234', '232343243', 'https://drive.google.com/file/d/1oHqbYwd7MCVkhYW5DDtdLHFsLCUwogSC/view?usp=drive_link'),
(3, '101 Things I Learned In Architecture School', 'Matthew Frederick', 'Universiti Malaysia Pahang (UMP)', 3, 'Architecture', 'Concise lessons in design, drawing, the creative process, and presentation, from the basics of “How to Draw a Line” to the complexities of color theory.', '1st', 2007, '0262062666', '978-026206266', 'https://drive.google.com/file/d/1r_wVEMR90BEEc8IfuRtnjR7MSuYVdKaB/view?usp=drive_link'),
(4, 'Architecture Now Vol. 1 ', 'Philip Jodidio', NULL, 4, 'Architecture', 'A tri-lingual overview of recent contemporary architecture taking examples from all over the world and trying to distill them into some semblance of trends and evolution. Lavish, often full-page, color photographs, plans, diagrams, and drawings provide focus for the minimal text.', '1st', 2001, '3836534401', '978-3836534406', 'https://drive.google.com/file/d/1EbtCVyOxbpBMmrj6kNdnehjaa0lFPPFe/view?usp=drive_link'),
(5, 'Biochemistry', 'Berg, Jeremy M., Tymoczko, John L., Gatto Jr. etc.', 'Universiti Pendidikan Sultan Idris (UPSI)', 5, 'Natural sciences', 'Clear and concise in their writing and illustration, the authors emphasize physiological and medical relevance. This 7th edition includes new coverage on gene regulation, new examples from medicine and the latest experimental techniques.', '7th', 2011, '1429276355', '978-1429276351', '/booknook/book/Biochemistry%20(Berg,%20Jeremy%20M.,%20Tymoczko,%20John%20L.,%20Gatto%20Jr.%20etc.)%20(z-lib.org).pdf'),
(6, 'Computer Security: Principles and Practice ', 'William Stallings ', 'Universiti Malaya (UM)', 3, 'Cybersecurity', 'Balancing principle and practice–an updated survey of the fast-moving world of computer and network security\r\n\r\nComputer Security: Principles and Practice, 4th Edition, is ideal for courses in Computer/Network Security. The need for education in computer security and related topics continues to grow at a dramatic rate–and is essential for anyone studying Computer Science or Computer Engineering. Written for both an academic and professional audience, the 4th Edition continues to set the standard for computer security with a balanced presentation of principles and practice. The new edition captures the most up-to-date innovations and improvements while maintaining broad and comprehensive coverage of the entire field. The extensive offering of projects provides hands-on experience to reinforce concepts from the text. The range of supplemental online resources for instructors provides additional teaching support for this fast-moving subject.', '3rd', 2002, '9780134794105', '978-0134794105', 'https://drive.google.com/file/d/1ZI3eMEeVd1zu65vuk3_wX64KL-UD3SBJ/view?usp=drive_link'),
(7, 'Lehninger Principles of Biochemistry', ' David L. Nelson', 'Universiti Teknikal Malaysia Melaka (UTeM)', 4, 'Natural sciences', 'Lehninger’s Principles of Biochemistry earned acclaim for its presentation and organization of complex concepts and connections, anchored in the principles of biochemistry. This legacy continues in the eighth edition with a new framework that highlights the principles and supports student learning.', '8th', 2021, '1319228003', '978-1319228002', 'https://drive.google.com/file/d/1ZuNY2YgN1hlkpsIfB28d6ODMLkM2R1z0/view?usp=drive_link'),
(8, 'Theoretical Physics 1: Classical Mechanics', 'Wolfgang Nolting', 'Sunway University', 5, 'Natural sciences', 'This textbook offers a clear and comprehensive introduction to classical mechanics, one of the core components of undergraduate physics courses. The book starts with a thorough introduction to the mathematical tools needed, to make this textbook self-contained for learning. The second part of the book introduces the mechanics of the free mass point and details conservation principles. The third part expands the previous to mechanics of many particle systems. Finally the mechanics of the rigid body is illustrated with rotational forces, inertia and gyroscope movement.\r\n\r\nIdeally suited to undergraduate students in their first year, the book is enhanced throughout with learning features such as boxed inserts and chapter summaries, with key mathematical derivations highlighted to aid understanding. The text is supported by numerous worked examples and end of chapter problem sets.', '1st', 2016, '9783319401072', '978-3319401072', 'https://drive.google.com/file/d/1AwVCbuSGz29boonalas5kS-CnSqIUckG/view?usp=drive_link'),
(9, 'Lewin\'s GENES XII', 'Jocelyn E. Krebs', 'International Islamic University Malaysia', 4, 'Natural sciences', 'Long considered the quintessential molecular biology textbook, for decades Lewin\'s GENES has provided the most modern presentation to this transformative and dynamic science. Now in its twelfth edition, this classic text continues to lead with new information and cutting-edge developments, covering gene structure, sequencing, organization, and expression. Leading scientists provide revisions and updates in their respective areas of study offering readers current research and relevant information on the rapidly changing subjects in molecular biology. No other text offers a broader understanding of this exciting and vital science or does so with higher quality art and illustrations. Lewin\'s GENES XII continues to be the clear choice for molecular biology and genetics.', '12th', 2017, '1284104494', '978-1284104493', 'https://drive.google.com/file/d/1g9Q1if5Y3Qfyz7pLEERenZZL-tkcF85L/view?usp=drive_link'),
(10, 'Applied Partial Differential Equations', 'J. David Logan', 'SEGi University', 3, 'Mathematics', 'This textbook is for the standard, one-semester, junior-senior course that often goes by the title \"Elementary Partial Differential Equations\" or \"Boundary Value Problems\". The audience consists of students in mathematics, engineering, and the sciences. The topics include derivations of some of the standard models of mathematical physics and methods for solving those equations on unbounded and bounded domains, and applications of PDE\'s to biology. The text differs from other texts in its brevity; yet it provides coverage of the main topics usually studied in the standard course, as well as an introduction to using computer algebra packages to solve and understand partial differential equations.\r\n\r\nFor the 3rd edition the section on numerical methods has been considerably expanded to reflect their central role in PDE\'s. A treatment of the finite element method has been included and the code for numerical calculations is now written for MATLAB. Nonetheless the brevity of the text has been maintained. To further aid the reader in mastering the material and using the book, the clarity of the exercises has been improved, more routine exercises have been included, and the entire text has been visually reformatted to improve readability.\r\n\r\n', '3rd', 2015, '3319124927', '978-3319124926', 'https://drive.google.com/file/d/14hSXFo8HB9kq0RMbSV163ZUkon2yLcnB/view?usp=drive_link');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `usefulness_rating` int(11) DEFAULT NULL CHECK (`usefulness_rating` between 1 and 5),
  `helpful_rating` int(11) DEFAULT NULL CHECK (`helpful_rating` between 1 and 5),
  `comment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `book_id`, `user_id`, `usefulness_rating`, `helpful_rating`, `comment`) VALUES
(1, 1, 1, 4, 3, 'just buy \"Milan, the rest\" by Robert Lan instead'),
(15, 1, 1, 2, 4, 'Learning Space Roles in Architecture is better'),
(16, 1, 1, 1, 4, 'space in japanese homes is better');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `saveid` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`saveid`, `book_id`, `user_id`) VALUES
(1, 2, 1),
(2, 1, 1),
(3, 1, 1),
(4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `university` varchar(100) DEFAULT NULL,
  `study_field` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `userPassword`, `university`, `study_field`) VALUES
(1, 'winiman', 'nurinimane@gmail.com', '1234', 'Universiti Utara Malaysia (UUM)', 'Architecture'),
(2, 'yutr', 'entherh', '123434', 'Universiti Islam Antarabangsa Malaysia (UIAM)', 'Natural sciences'),
(3, 'tyru', 'tyrabanks@gmail.com', '12334', 'Universiti Pendidikan Sultan Idris (UPSI)', NULL),
(4, 'nurinm', 'nurinigneg', '12334', NULL, 'Cybersecurity'),
(12, 'nurinr', 'nurinsfsfigneg', '12334', 'Universiti Teknologi Mara (UiTM)', NULL),
(14, 'nurinwfwefewfr', 'nurinsfsfwfewfigneg', '12334', 'Universiti Islam Antarabangsa Malaysia (UIAM)', 'Engineering'),
(15, 'dgddgdd', 'melhot@gmail.com', '12345', 'Universiti Malaya (UM)', 'Engineering'),
(16, 'rtey', 'merty@gmail.com', '12345', 'Universiti Teknologi Mara (UiTM)', 'Information Technology'),
(17, 'yutu', 'inmn@gmail.com', '12345', 'Universiti Malaysia Kelantan (UMK)', NULL),
(19, 'nurininin', 'nutini@gmail.com', '1234', NULL, NULL),
(20, 'tyerfy', 'nurinimenre@gmail.com', '1234', NULL, NULL),
(21, 'nutinoet', 'nurinijg@gmail.com', '1234', NULL, NULL),
(22, 'yunbt', 'nuyin@gmail.com', '1234', NULL, NULL),
(23, 'nutinrgr', 'nutinrt@gmail.com', '1234', NULL, NULL),
(24, 'uinui', 'nurtin@gmail.com', '1234', NULL, NULL),
(25, 'nuiubfuf', 'nurinimang@gmail.com', '1234', NULL, NULL),
(26, 'tyriorg', 'nurinimerg@gmail.com', '1234', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`saveid`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `saveid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `saved`
--
ALTER TABLE `saved`
  ADD CONSTRAINT `saved_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `saved_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
