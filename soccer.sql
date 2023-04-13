CREATE TABLE league
(
  title VARCHAR(50) PRIMARY KEY,
  startdate TIMESTAMP NOT NULL,
  enddate TIMESTAMP NOT NULL
)

CREATE TABLE teams
(
  title VARCHAR(50) PRIMARY KEY,
  ranking INT NOT NULL,
  league REFERENCES leagues
);

CREATE TABLE players
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  team REFERENCES teams,
)

CREATE TABLE match
(
  id SERIAL PRIMARY KEY,
  team1 REFERENCES teams,
  team2 REFERENCES teams,
  refs VARCHAR(50),
);

CREATE TABLE point
(
  player REFERENCES players,
  match REFERENCES match,

);

CREATE TABLE ticket
(
  refid REFERENCES refs,
  player REFERENCES players,
  violation VARCHAR(50)
);
