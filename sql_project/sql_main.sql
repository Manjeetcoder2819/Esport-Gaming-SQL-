-- use esports;

-- ========================================
--        ESPORTS TOURNAMENT DATABASE
-- ========================================

-- 1. Teams Table
-- CREATE TABLE Teams (
--     team_id INT PRIMARY KEY AUTO_INCREMENT,
--     team_name VARCHAR(50) NOT NULL,
--     country VARCHAR(50),
--     founded_year YEAR,
--     coach_name VARCHAR(50),
--     total_wins INT DEFAULT 0
-- );

-- -- 2. Games Table
-- CREATE TABLE Games (
--     game_id INT PRIMARY KEY AUTO_INCREMENT,
--     game_name VARCHAR(50) NOT NULL,
--     genre VARCHAR(50),            
--     release_year YEAR,
--     developer VARCHAR(50),
--     rating DECIMAL(3,1)           
-- );

-- -- 3. Players Table
-- CREATE TABLE Players (
--     player_id INT PRIMARY KEY AUTO_INCREMENT,
--     player_name VARCHAR(50) NOT NULL,
--     age INT,
--     nationality VARCHAR(50),
--     role VARCHAR(50),         
--     team_id INT,              
--     join_date DATE,
--     FOREIGN KEY (team_id) REFERENCES Teams(team_id)
-- );

-- 4. Tournaments Table
CREATE TABLE Tournaments (
    tournament_id INT PRIMARY KEY AUTO_INCREMENT,
    tournament_name VARCHAR(100) NOT NULL,
    game_id INT,                  
    location VARCHAR(100),
    prize_pool DECIMAL(15,2),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (game_id) REFERENCES Games(game_id)
);

-- -- 5. Matches Table
-- CREATE TABLE Matches (
--     match_id INT PRIMARY KEY AUTO_INCREMENT,
--     tournament_id INT,            
--     team1_id INT,                 
--     team2_id INT,                 
--     match_date DATE,
--     winner_team_id INT,           
--     score VARCHAR(10),            
--     FOREIGN KEY (tournament_id) REFERENCES Tournaments(tournament_id),
--     FOREIGN KEY (team1_id) REFERENCES Teams(team_id),
--     FOREIGN KEY (team2_id) REFERENCES Teams(team_id),
--     FOREIGN KEY (winner_team_id) REFERENCES Teams(team_id)
-- );

-- -- ========================================
-- --        OPTIONAL SAMPLE DATA
-- -- ========================================

-- -- Teams
-- INSERT INTO Teams (team_name, country, founded_year, coach_name, total_wins) VALUES
-- ('Team Alpha', 'USA', 2015, 'John Smith', 12),
-- ('Team Bravo', 'South Korea', 2012, 'Kim Lee', 18),
-- ('Team Charlie', 'Germany', 2018, 'Hans Muller', 9);

-- -- Games
-- INSERT INTO Games (game_name, genre, release_year, developer, rating) VALUES
-- ('League of Legends', 'MOBA', 2009, 'Riot Games', 9.5),
-- ('CS:GO', 'FPS', 2012, 'Valve', 9.0),
-- ('DOTA 2', 'MOBA', 2013, 'Valve', 9.2);

-- -- Players
-- INSERT INTO Players (player_name, age, nationality, role, team_id, join_date) VALUES
-- ('John Doe', 22, 'USA', 'ADC', 1, '2022-01-15'),
-- ('Kim Min', 20, 'South Korea', 'Support', 2, '2021-03-20'),
-- ('Hans Becker', 25, 'Germany', 'Mid', 3, '2023-06-10');

-- -- Tournaments
-- INSERT INTO Tournaments (tournament_name, game_id, location, prize_pool, start_date, end_date) VALUES
-- ('World Championship', 1, 'USA', 500000.00, '2025-12-01', '2025-12-15'),
-- ('Global Showdown', 2, 'South Korea', 300000.00, '2025-11-05', '2025-11-20');

-- -- Matches
-- INSERT INTO Matches (tournament_id, team1_id, team2_id, match_date, winner_team_id, score) VALUES
-- (1, 1, 2, '2025-12-05', 1, '2-1'),
-- (2, 2, 3, '2025-11-10', 2, '3-0');
-- use esports;