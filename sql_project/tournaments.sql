-- create database Esports;

-- INSERT INTO Tournaments (tournament_name, game_id, location, prize_pool, start_date, end_date) VALUES
-- ('Tournament 51', 1, 'Los Angeles', 50000.00, '2024-02-01', '2024-02-05'),
-- ('Tournament 52', 2, 'New York', 60000.00, '2024-02-06', '2024-02-10'),
-- ('Tournament 53', 3, 'London', 70000.00, '2024-02-11', '2024-02-15'),
-- ('Tournament 54', 4, 'Paris', 80000.00, '2024-02-16', '2024-02-20'),
-- ('Tournament 55', 5, 'Tokyo', 90000.00, '2024-02-21', '2024-02-25'),
-- ('Tournament 56', 6, 'Berlin', 55000.00, '2024-02-26', '2024-03-01'),
-- ('Tournament 57', 7, 'Sydney', 65000.00, '2024-03-02', '2024-03-06'),
-- ('Tournament 58', 8, 'Moscow', 75000.00, '2024-03-07', '2024-03-11'),
-- ('Tournament 59', 9, 'Seoul', 85000.00, '2024-03-12', '2024-03-16'),
-- ('Tournament 60', 10, 'Dubai', 95000.00, '2024-03-17', '2024-03-21'),

-- ('Tournament 61', 11, 'Toronto', 60000.00, '2024-03-22', '2024-03-26'),
-- ('Tournament 62', 12, 'Rome', 70000.00, '2024-03-27', '2024-03-31'),
-- ('Tournament 63', 13, 'Madrid', 80000.00, '2024-04-01', '2024-04-05'),
-- ('Tournament 64', 14, 'Cairo', 90000.00, '2024-04-06', '2024-04-10'),
-- ('Tournament 65', 15, 'Istanbul', 55000.00, '2024-04-11', '2024-04-15'),
-- ('Tournament 66', 16, 'Bangkok', 65000.00, '2024-04-16', '2024-04-20'),
-- ('Tournament 67', 17, 'Singapore', 75000.00, '2024-04-21', '2024-04-25'),
-- ('Tournament 68', 18, 'Mexico City', 85000.00, '2024-04-26', '2024-04-30'),
-- ('Tournament 69', 19, 'Johannesburg', 95000.00, '2024-05-01', '2024-05-05'),
-- ('Tournament 70', 20, 'Delhi', 60000.00, '2024-05-06', '2024-05-10'),

-- -- continuing the same pattern up to Tournament 150
-- ('Tournament 71', 21, 'Beijing', 70000.00, '2024-05-11', '2024-05-15'),
-- ('Tournament 72', 22, 'Rio de Janeiro', 80000.00, '2024-05-16', '2024-05-20'),
-- ('Tournament 73', 23, 'San Francisco', 90000.00, '2024-05-21', '2024-05-25'),
-- ('Tournament 74', 24, 'Chicago', 55000.00, '2024-05-26', '2024-05-30'),
-- ('Tournament 75', 25, 'Houston', 65000.00, '2024-06-01', '2024-06-05'),
-- ('Tournament 76', 26, 'Miami', 75000.00, '2024-06-06', '2024-06-10'),
-- ('Tournament 77', 27, 'Boston', 85000.00, '2024-06-11', '2024-06-15'),
-- ('Tournament 78', 28, 'Las Vegas', 95000.00, '2024-06-16', '2024-06-20'),
-- ('Tournament 79', 29, 'Vancouver', 60000.00, '2024-06-21', '2024-06-25'),
-- ('Tournament 80', 30, 'Montreal', 70000.00, '2024-06-26', '2024-06-30'),

-- -- ... Continue this sequence until Tournament 150
-- ('Tournament 150', 50, 'Los Angeles', 95000.00, '2024-11-21', '2024-11-25');

-- select * from tournaments;

-- SELECT location, SUM(prize_pool) 
-- FROM Tournaments
-- GROUP BY location
-- HAVING SUM(prize_pool) > 1000000;


-- SELECT * from tournaments;

-- SELECT location, SUM(prize_pool)
--     FROM Tournaments
--     GROUP BY location
--      HAVING SUM(prize_pool) > 1000000;

-- SELECT tournament_name, location, prize_pool
-- FROM Tournaments
-- WHERE prize_pool > (
--     SELECT AVG(prize_pool) 
--     FROM Tournaments
-- );
-- SELECT tr.tournament_name, tr.prize_pool, g.genre
-- FROM tournaments tr, games g where tr.game_id = g.game_id
-- and prize_pool > 100000;

-- SELECT p.player_name, p.nationality, t.team_name, t.country
-- FROM Players p, Teams t
-- WHERE p.nationality = t.country;


-- SELECT p.player_name, t.team_name
-- FROM players p,teams t where p.team_id = t.team_id
-- AND p.age BETWEEN (
--     SELECT MIN(p2.age)
--     FROM players p2,teams t2 where p2.team_id = t2.team_id
--     and t2.country = 'USA'
-- ) AND (
--     SELECT MAX(p3.age)
--     FROM players p3,teams t3 where p3.team_id = t3.team_id
--     and t3.country = 'USA'
-- );


-- SELECT player_name, role, team_id
-- FROM Players
-- WHERE role <> 'Coach'
--   AND player_name IN (
--       SELECT player_name
--       FROM Players
--       WHERE player_name LIKE '%i_'
--   );


SELECT t.team_name, t.country
FROM Teams t
WHERE t.team_id IN (
    SELECT DISTINCT m.team1_id
    FROM Matches m,Tournaments tr 
    where m.tournament_id = tr.tournament_id
    and tr.prize_pool > 50000
);



