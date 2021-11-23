CREATE DATABASE IF NOT EXISTS `game` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `game`;

DROP TABLE IF EXISTS `game`;

CREATE TABLE `game` (
  `game_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL,
  `platform` varchar(10) NOT NULL,
  `price` float NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO `game` VALUES (1,'Final Fantasy VI','SNES',40,15),(2,'Legend of Zelda Skyward Sword','Switch',60.5,195),(3,'Skies of Arcadia','GameCube',18.7,1),(7,'Phantasy Star IV','Mega Drive',25.55,5),(9,'Mario is Missing','MS-DOS',100,1);

CREATE DATABASE IF NOT EXISTS `order` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `order`;

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_email` varchar(64) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `order` (`order_id`, `customer_email`, `status`, `created`) VALUES
(5, 'cposkitt@smu.edu.sg', 'NEW', '2021-08-10 00:00:00'),
(6, 'phris@coskitt.com', 'NEW', '2021-08-10 00:00:00');

DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `order_item` (`item_id`, `order_id`, `game_id`, `quantity`) VALUES
(9, 5, 1, 2),
(10, 5, 2, 1),
(11, 6, 9, 1);

ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);


ALTER TABLE `order_item`
  ADD PRIMARY KEY (`item_id`);


ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;


ALTER TABLE `order_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;