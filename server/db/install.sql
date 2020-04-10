
CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(12) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `address` varchar(33) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

INSERT INTO `persons` (`id`, `fname`, `lname`, `address`) VALUES
(1, 'Sylvester', 'Stallone', 'Chicago'),
(2, 'Jason', 'Statham', 'Louisiana'),
(3, 'Arnold', 'Schwarzenegger', 'California'),
(4, 'Chuck', 'Norris', 'Plovdiv'),
(5, 'Bruce', 'Willis', 'California');

CREATE TABLE IF NOT EXISTS `telephones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `teltype_id` int(11) NOT NULL,
  `number` varchar(33) NOT NULL,
  `email` varchar(33) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `telephones` (`id`, `person_id`, `teltype_id`, `number`, `email`) VALUES
(1, 1, 1, '032 / 123 456','m0@m.bg'),
(2, 2, 2, '011 / 103 482','m0@m.bg'),
(3, 3, 3, '044 / 333 333','m0@m.bg'),
(4, 4, 1, '032 / 456 879','m0@m.bg'),
(5, 5, 1, '032 / 666 666','m0@m.bg');

CREATE TABLE IF NOT EXISTS `teltypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `teltypes` (`id`, `name`) VALUES
(1, 'Home'),
(2, 'Mobile'),
(3, 'Office');

CREATE TABLE IF NOT EXISTS `pmails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `mailtype_id` int(11) NOT NULL,
  `email` varchar(33) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `pmails` (`id`, `person_id`, `mailtype_id`, `email`) VALUES
(1, 1, 1, 'm0@m.bg'),
(2, 2, 2, 'm1@m.bg'),
(3, 3, 3, 'm2@m.bg'),
(4, 4, 1, 'm3@m.bg'),
(5, 5, 1, 'm4@m.bg');

CREATE TABLE IF NOT EXISTS `mailtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `mailtypes` (`id`, `name`) VALUES
(1, 'Personal'),
(2, 'Mobile'),
(3, 'Office');