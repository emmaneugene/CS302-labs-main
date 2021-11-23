CREATE DATABASE IF NOT EXISTS `notification` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `notification`;

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `data` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

  ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
