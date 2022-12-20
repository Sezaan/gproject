SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `projects` (
  `name` varchar(600) NOT NULL,
  `location` varchar(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(300) NOT NULL,
  `Exec` varchar(100) NOT NULL,
  `Cost` varchar(40) NOT NULL,
  `Timespan` varchar(40) NOT NULL,
  `Project_id` varchar(100) NOT NULL,
  `Goal` varchar(600) NOT NULL,
  `Start_date` varchar(20) NOT NULL,
  `Completion` varchar(20) NOT NULL,
  `Actual_cost` varchar(40) NOT NULL,
   PRIMARY KEY (`Project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `proposals`;
CREATE TABLE IF NOT EXISTS `proposals` (
  `name` varchar(600) NOT NULL,
  `location` varchar(100) NOT NULL,
  `Latitude` varchar(100) NOT NULL,
  `Longitude` varchar(300) NOT NULL,
  `Exec` varchar(100) NOT NULL,
  `Cost` varchar(40) NOT NULL,
  `Timespan` varchar(40) NOT NULL,
  `Project_id` varchar(100) NOT NULL,
  `Goal` varchar(600) NOT NULL,
  `proposal_date` varchar(20) NOT NULL,
   PRIMARY KEY (`Project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `components`;
CREATE TABLE IF NOT EXISTS `components` (
  `Project_id` varchar(100) NOT NULL,
  `Executing_agency` varchar(600) NOT NULL,
  `component_id` varchar(100) NOT NULL,
  `Component_type` varchar(20) NOT NULL,
  `depends_on` varchar(40),
  `budget ratio` varchar(20) NOT NULL,
   PRIMARY KEY (`component_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `agencies`;
CREATE TABLE IF NOT EXISTS `agencies` (
  `Code` varchar(20) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Description` varchar(600) NOT NULL,
   PRIMARY KEY (`Code`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `constraints`;
CREATE TABLE IF NOT EXISTS `constraints` (
  `Code` varchar(20) NOT NULL,
  `max_limit` varchar(40) NOT NULL,
  `constranst_type` varchar(60) NOT NULL,
  PRIMARY KEY (`Code`, `constranst_type`)

) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `user_types`;
CREATE TABLE IF NOT EXISTS `user_types` (
  `Code` varchar(20) NOT NULL,
  `Committee` varchar(100) NOT NULL,
  `Description` varchar(600) NOT NULL,
   PRIMARY KEY (`Code`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `progress_data`;
CREATE TABLE IF NOT EXISTS `progress_data` (
  `Project_id` varchar(100) NOT NULL,
  `component_id` varchar(100) NOT NULL,
  `percentage_budget` varchar(50) NOT NULL,
   PRIMARY KEY (`Project_id`, `component_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1