-- Drop table if exists
DROP TABLE lookup;
DROP TABLE gamestats;
DROP TABLE games;
DROP TABLE payroll;
DROP TABLE teaminformation;
DROP TABLE postseason;



-- Create lookup table
CREATE TABLE lookup (
  teamid_pk INT PRIMARY KEY,
  teamname VARCHAR(30)
);

-- Create gamestats table
CREATE TABLE gamestats (
  teamid_pk INT PRIMARY KEY,
  runs INT,
  hits INT,
  homeruns INT,
  strikeouts FLOAT,
  opponentruns INT,
  earnedruns FLOAT,
  era FLOAT
);

-- Create games table
CREATE TABLE games (
  teamid_pk INT PRIMARY KEY,
  games INT,
  wins INT,
  losses INT
);


-- Create payroll table
CREATE TABLE payroll (
  teamid_pk INT PRIMARY KEY,
  teamname VARCHAR,
  openingdaypayroll MONEY
);


-- Create teaminformation table
CREATE TABLE teaminformation (
  teamid_pk INT PRIMARY KEY,
  teamname VARCHAR,
  park VARCHAR,
  attendance FLOAT,
  league VARCHAR
);

-- Create gamestats table
CREATE TABLE postseason (
  teamid_pk INT PRIMARY KEY,
  wildcardwin BOOL not null,
  divisionchamp BOOL not null, 
  worldserieschamp BOOL not null
);


--Proof of Concept#1
-- Create the subquery Team Name and Wins
SELECT teamid_pk,teamname,
(SELECT (games.wins)
 	FROM games
 	WHERE lookup.teamid_pk = games.teamid_pk) AS "Wins"
FROM lookup;


-- Create View Win Counts
CREATE VIEW win_counts AS
SELECT teamname, teamid_pk,
(SELECT (games.wins)
	FROM games
	WHERE lookup.teamid_pk = games.teamid_pk) AS "Number of Wins"
FROM lookup

	
--Query the view to the teams with wins greater than 81 
-- Over 81 games = .500+ win percentage
SELECT teamname, teamid_pk, "Number of Wins"
FROM win_counts
WHERE "Number of Wins" > 90
ORDER BY teamid_pk



--Proof of Concept#2
-- Create the subquery Team Name and PostSeason
SELECT teamid_pk,teamname,
(SELECT (postseason.divisionchamp)
 	FROM postseason
 	WHERE lookup.teamid_pk = postseason.teamid_pk) AS "Division Champ"
FROM lookup;


-- Create View World Series Teams
CREATE VIEW ws_team AS
SELECT teamname, teamid_pk,
(SELECT (postseason.divisionchamp)
	FROM postseason
	WHERE lookup.teamid_pk = postseason.teamid_pk) AS "WS Team"
FROM lookup

	
--Query the view to the teams that played in the World Series 
SELECT teamname, teamid_pk, "WS Team"
FROM ws_team
WHERE "WS Team" = true
ORDER BY teamid_pk



--Create Query of win and loss totals compared to Payroll rank
SELECT lookup.teamid_pk,
  lookup.teamname,
  games.wins,
  games.losses
FROM lookup
INNER JOIN games ON
lookup.teamid_pk = games.teamid_pk;


--Additional Queries
--Locate World Series Championship in respect to Payroll Rank
SELECT *
    FROM lookup INNER JOIN postseason ON (lookup.teamid_pk = postseason.teamid_pk)
	WHERE worldserieschamp = true;
		
--Additional Queries
--Find 10 lowest team payrolls compared to losses
SELECT lookup.teamid_pk,
  lookup.teamname,
  games.losses
FROM lookup
INNER JOIN games ON lookup.teamid_pk = games.teamid_pk
WHERE lookup.teamid_pk > 20
ORDER BY lookup.teamid_pk;

--Additional Queries
SELECT teamname, teamid_pk
FROM ws_team
WHERE "WS Team" = true
ORDER BY teamid_pk
	
