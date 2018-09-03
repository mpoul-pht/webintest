
CREATE DATABASE IF NOT EXISTS `webinarru` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `webinarru`;

CREATE TABLE `firstnames` (
  `id` int(11) NOT NULL,
  `firstname` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `firstnames` (`id`, `firstname`) VALUES
(1, 'fn1'),
(2, 'fn2'),
(3, 'fn3'),
(4, 'fn4'),
(5, 'fn5'),
(6, 'fn6'),
(7, 'fn7'),
(8, 'fn8'),
(9, 'fn9'),
(10, 'fn10');

CREATE TABLE `lastnames` (
  `id` int(11) NOT NULL,
  `lastname` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `lastnames` (`id`, `lastname`) VALUES
(1, 'n1'),
(2, 'n2'),
(3, 'n3'),
(4, 'n4'),
(5, 'n5'),
(6, 'n6'),
(7, 'n7'),
(8, 'n8'),
(9, 'n9'),
(10, 'n10');


ALTER TABLE `firstnames`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `lastnames`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `firstnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
ALTER TABLE `lastnames`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
