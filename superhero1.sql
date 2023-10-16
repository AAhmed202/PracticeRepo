CREATE DATABASE `super_hero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
CREATE TABLE `hero` (
  ` Hero_id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Alias` varchar(50) NOT NULL,
  `Ability` varchar(70) DEFAULT NULL,
  `TeamID` int NOT NULL,
  PRIMARY KEY (` Hero_id`),
  KEY `TeamID` (`TeamID`),
  CONSTRAINT `TeamID` FOREIGN KEY (`TeamID`) REFERENCES `team` (`TeamID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `team` (
  `TeamID` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Objective` varchar(200) NOT NULL,
  PRIMARY KEY (`TeamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

alter table hero 
add constraint TeamID
foreign key (TeamID)
references team(TeamID);

INSERT INTO team (TeamID, Name, Objective) values (1, 'JLA', 'Protect the world'),
    (2, 'JSA', 'Defeat the Nazis'),
    (3, 'Birds of Prey', 'Fight Crime (without men)'),
    (4, 'Task Force X', 'Follow Wallers or die'),
    (5, 'Teen Titans', 'Teach young superheroes to be their best');


INSERT INTO hero (Firstname, Lastname, Alias, Ability, TeamID) values 
("Bruce"," Wayne", "Batman", "Martial Arts", 1),
  ("Clark"," Kent", "Superman", "Flight", 1),
  ("Jay"," Garrick", "The Flash", "Super-Speed", 2),
  ("Alan"," Scott", "Green Lantern", "Ring Creation", 2),
        ("Helena"," Bertenelli", "The Huntress", "Crossbow Archery", 3),
        ("Dr. Harleen"," Quinzel", "Harley Quinn", "Hammer-Fighting", 3),
        ("Floyd ","Lawton", "Deadshot", "Marksmanship", 4),
        ("Cecil ","Adams", "Count Vertigo", "Induce dizziness", 4),
        ("Damian ","Wayne", "Robin", "Swordsmanship", 5),
        ("Dick ","Grayson", "Nightwing", "Acrobatics", 5);

