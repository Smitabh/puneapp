


CREATE TABLE `dimcountry` (
  `idCountry` int(11) NOT NULL AUTO_INCREMENT,
  `center_country` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idCountry`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `dimzone` (
  `idZone` int(11) NOT NULL AUTO_INCREMENT,
  `center_zone` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `StateId` int(11) NOT NULL,
  PRIMARY KEY (`idZone`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `dimstate` (
  `idState` int(11) NOT NULL AUTO_INCREMENT,
  `center_state` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CountryId` int(11) NOT NULL,
  PRIMARY KEY (`idState`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tblcenter` (
  `idcenter` int(11) NOT NULL AUTO_INCREMENT,
  `center_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `zoneId` int(11) NOT NULL,
    `stateId` int(11) NOT NULL,
     `center_address` varchar(132) COLLATE utf8_unicode_ci NOT NULL,
`contact` int(11) NOT NULL,
  PRIMARY KEY (`idcenter`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `dimcountry` (`idCountry`, `center_country`) VALUES
(1, 'India'),
(2, 'USA');

INSERT INTO `dimstate` (`idState`, `center_state`, `CountryId`) VALUES
(1, 'Maharashtra', 1),
(2, 'Delhi', 1),
(3, 'Gujrat', 1),
(4, 'Rajsthan', 1);

INSERT INTO `dimzone` (`idZone`, `center_zone`, `StateId`) VALUES
(1, 'Maharashtra', 1),
(2, 'New Delhi', 2);

INSERT INTO `tblcenter` (`idcenter`, `center_name`, `zoneId`, `stateId`, `center_address`, `contact`) VALUES
(1, 'Meera Society', 1, 1, 'Shankar Sheth Road, Pune', 2147483647),
(2, 'Retreat Center', 2, 2, 'S No. 126/2, Raikar Farm, Behind Yahma Kings Motor,New Delhi', 2147483647);