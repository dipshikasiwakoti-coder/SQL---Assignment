--  Gamer's Paradise — Online Game Leaderboard
-- players(player_id, username, country, score, level, hours_played, status)
-- Questions
-- Fetch all players who are currently 'active'. Show username and score, aliased as "high_score".
-- Find all players whose score is between 5000 and 20000 (inclusive).
-- Get players from Nepal, India, or Japan. Show username and country only.
-- Find all players whose username starts with the letter 'S'. Show all columns.
-- Show players who have played fewer than 10 hours but have a level greater than 5. Show username, hours_played (as "hrs"), and level.

drop table if exists players;
create table players
(
    player_id int primary key,
    username varchar(50),
    country varchar(50),
    score float,
    level int,
    hours_played float,
    status varchar
);

insert into players
(player_id, username, country, score, level, hours_played, status)
values(1,  'ShadowX',    'Nepal',  15000, 8,  9.5,  'active'),
(2,  'Striker99',  'India',  22000, 12, 45.0, 'active'),
(3,  'SakuraFan',  'Japan',  4500,  3,  7.0,  'inactive'),
(4,  'RamBir',     'Nepal',  8000,  6,  20.0, 'active'),
(5,  'NinjaK',     'Japan',  17000, 9,  8.5,  'active'),
(6,  'ProGamer',   'India',  3000,  2,  5.0,  'inactive'),
(7,  'Sunita22',   'Nepal',  11000, 7,  6.5,  'active'),
(8,  'BlasterZ',   'USA',    25000, 15, 60.0, 'active'),
(9,  'SniperElite','India',  6000,  4,  3.0,  'active'),
(10, 'DarkKnight', 'Japan',  19000, 11, 55.0, 'inactive');
select username, score as high_score
from players
where status='active';
select *
from players
where score between 5000 and 20000;
select username, country
from players
where country='Nepal' or country ='India' or country='Japan';
select *
from players
where username like 'S%';
select username, hours_played as hrs , level
from players
where hours_played<10 and level>5;
select*
from players
order by username asc,level desc;
select*
from players
order by score desc
limit 5;