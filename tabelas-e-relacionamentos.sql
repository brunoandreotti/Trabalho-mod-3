CREATE TABLE `games` (
  `GAME_DATE_EST` text,
  `GAME_ID` int PRIMARY KEY,
  `HOME_TEAM_ID` int,
  `VISITOR_TEAM_ID` int,
  `SEASON` int,
  `PTS_home` int,
  `PTS_away` int,
  `HOME_TEAM_WINS` int
);

CREATE TABLE `game_details` (
  `GAME_ID` int,
  `TEAM_ID` int,
  `TEAM_ABBREVIATION` text,
  `PLAYER_ID` int,
  `PLAYER_NAME` text
);

CREATE TABLE `players` (
  `PLAYER_NAME` text,
  `TEAM_ID` int,
  `PLAYER_ID` int PRIMARY KEY,
  `SEASON` int
);

CREATE TABLE `teams` (
  `LEAGUE_ID` text,
  `TEAM_ID` int PRIMARY KEY,
  `ABBREVIATION` text
);

ALTER TABLE `games` ADD FOREIGN KEY (`HOME_TEAM_ID`) REFERENCES `teams` (`TEAM_ID`);

ALTER TABLE `games` ADD FOREIGN KEY (`VISITOR_TEAM_ID`) REFERENCES `teams` (`TEAM_ID`);

ALTER TABLE `game_details` ADD FOREIGN KEY (`TEAM_ID`) REFERENCES `teams` (`TEAM_ID`);

ALTER TABLE `game_details` ADD FOREIGN KEY (`GAME_ID`) REFERENCES `games` (`GAME_ID`);

ALTER TABLE `game_details` ADD FOREIGN KEY (`PLAYER_ID`) REFERENCES `players` (`PLAYER_ID`);
