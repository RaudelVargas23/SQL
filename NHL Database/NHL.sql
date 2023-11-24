CREATE DATABASE NHL;  
USE NHL;

CREATE TABLE player(
	Name VARCHAR(100) NOT NULL,
	Position VARCHAR(100),
	Skill VARCHAR(100),
	PRIMARY KEY (Name,Position)
 );

 CREATE TABLE captain(
 	Name VARCHAR(100) NOT NULL,
	Position VARCHAR(100),
 	Skill VARCHAR(100),
	PRIMARY KEY (Name)
 );
CREATE TABLE team(
 	Name VARCHAR(100) NOT NULL,
	City VARCHAR(100) NOT NULL,
 	Coach VARCHAR(100),
	Captain_Name VARCHAR(100),
	Player_Set VARCHAR(255),
	FOREIGN KEY(Captain_Name) REFERENCES captain(Name),
	FOREIGN KEY(Player_Set) REFERENCES player(Name),
	PRIMARY KEY (Name,City)
 );
 CREATE TABLE game_played(
 	Host_Team VARCHAR(100) NOT NULL,
	Guest_Team VARCHAR(100) NOT NULL ,
 	Date DATE NOT NULL,
	Score VARCHAR(20) NOT NULL,
 	FOREIGN KEY(Host_Team) REFERENCES team(Name),
	FOREIGN KEY(Guest_Team) REFERENCES team(Name),
	PRIMARY KEY (Host_Team,Guest_Team,Date)
 );
 CREATE TABLE injury_record(
 	ID INT NOT NULL,
	Description VARCHAR(100),
	Player_Name VARCHAR(100),
 	FOREIGN KEY(Player_Name) REFERENCES player(Name),
 	PRIMARY KEY (ID)
 );
 
 INSERT INTO player VALUES("Chris Kreider","Goaltender","Pro");
 
 INSERT INTO player VALUES("Tony DeAngelo","Utility ","Pro");
 
 INSERT INTO player VALUES("Oliver Ekman-Larsson","Center","Pro");
 
 INSERT INTO player VALUES("Lawson Crouse","Defenseman","Rookie");
 
 INSERT INTO captain VALUES("Chris Kreider","Goaltender","Pro");
 
 INSERT INTO captain VALUES("Oliver Ekman-Larsson","Center","Pro");
 
 INSERT INTO team VALUES("Rangers","New York","David Quinn","Chris Kreider",NULL);
 
INSERT INTO team VALUES("Coyotes ","Arizona","Rick Tocchet","Oliver Ekman-Larsson",NULL);
 
 INSERT INTO game_played VALUES("Rangers","Coyotes ",'2019-03-04',"4-2");
  
 INSERT INTO game_played VALUES("Coyotes ","Rangers",'2020-10-22',"3-4");
 
 INSERT INTO injury_record VALUES(4565," Pulled hamstring on 10/22/2020. Cannot play for two weeks.","Tony DeAngelo");
 
 