--  Scenario 1: Game Leaderboard
-- Table: leaderboard Columns: player_id PK, username, game, score, level
-- Insert 6 players with different games (e.g., Chess, Valorant, FIFA). Make two players share the same game.
-- Select only the username and score columns.
-- Select all players and their games.
-- What happens if you insert a player with no score? Try it.

DROP TABLE IF EXISTS game_leaderboard;

--DDL
CREATE TABLE game_leaderboard
(
    player_id int PRIMARY KEY,
    username  varchar(50),
    game      varchar(30),
    score     float,
    level     int
);

--DML
INSERT INTO game_leaderboard
(player_id, username, game, score, level)
values (121,'anbeshak','chess',8,10),
       (122,'aadarsha','valorant',9,10),
       (123,'mohit','fifa',10, 12),
       (124,'dipshika','chess',7,5),
       (125,'sadikshya','valorant',9,10);


INSERT INTO game_leaderboard
(player_id, username, game, level)
values(126,'libita','fifa',13);

SELECT username, score FROM game_leaderboard;
SELECT username, game FROM game_leaderboard;
