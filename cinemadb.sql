SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- Create Database `cinemaDB`

CREATE TABLE `movies` (
  `movie_id` int(30) Primary key NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `cover_img` text NOT NULL,
  `description` text NOT NULL,
  `duration` float NOT NULL,
  `date_showing` date NOT NULL,
  `end_date` date NOT NULL,
  `trailer_yt_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `theater` (
  `theater_id` int(30) Primary key NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `theater_settings` (
  `ts_id` int(30) Primary key NOT NULL AUTO_INCREMENT,
  `theater_id` int(30) NOT NULL,
  foreign key (theater_id) references theater (theater_id),
  `seat_group` varchar(250) NOT NULL,
  `seat_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `books` (
  `book_id` int(30) Primary key NOT NULL AUTO_INCREMENT,
  `movie_id` int(30) NOT NULL,
  foreign key (movie_id) references movies (movie_id),
  `ts_id` int(30) NOT NULL,
  foreign key (ts_id) references theater_settings (ts_id),
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `receipt` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `users` (
  `id` int(30) Primary key NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `book_id` int(30) NOT NULL,
  foreign key (book_id) references books (book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data


INSERT INTO `movies` (`movie_id`, `title`, `cover_img`, `description`, `duration`, `date_showing`, `end_date`, `trailer_yt_link`) VALUES
(1, 'Batman', 'batman.jpg', 'Action', 2.5, '2022-06-15', '2022-07-30', ''),
(2, 'Avatar2', 'Avatar2.jpg', 'Adventure', 3.75, '2022-09-17', '2022-10-29', ''),
(3, 'Minions', 'minions.jpg', 'Adventure', 3, '2022-09-01', '2022-11-25', ''),
(4, 'Nope', 'nope.jpg', 'horror', 2.75, '2022-07-22', '2022-12-01', ''),
(5, 'Jurassic World', 'jurassicworld.jpg', 'Adventure', 3, '2022-05-12', '2022-06-12', '');

INSERT INTO `theater` (`theater_id`, `name`) VALUES
(1, '3D'),
(2, 'Theater 1');

INSERT INTO `theater_settings` (`ts_id`, `theater_id`, `seat_group`, `seat_count`) VALUES
(2, 2, 'Box 1', 20),
(3, 2, 'Box 2', 30),
(4, 1, 'Box 1', 30),
(5, 1, 'Box 2', 30);

INSERT INTO `books` (`book_id`, `movie_id`, `ts_id`, `lastname`, `firstname`, `contact_no`, `qty`, `date`, `time`, `receipt`) VALUES
(1, 5, 2, 'Fatasya', 'Iman', '01157543466', 1, '2022-05-18', '09:00:00', 'receipt1.jpeg');

INSERT INTO `users` (`id`, `name`, `username`, `password`, `book_id`) VALUES
(1, 'Administrator', 'admin', 'admin123', '1');


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
