-- Scenario 4: App Store
-- Table: apps Columns: app_id PK, app_name, developer, category, rating, downloads
-- Insert 7 apps. Include at least 2 from the same developer.
-- Select all apps — how many rows do you get?
-- Select only app_name and rating.
-- What is the maximum value you can store in rating given NUMERIC(2,1)? Try inserting rating = 10.0 and see what happens.

CREATE TABLE apps
(
    app_id INT PRIMARY KEY,
    app_name VARCHAR(50),
    developer VARCHAR(100),
    category VARCHAR(100),
    rating NUMERIC(2,1),
    downloads INT
);
INSERT INTO apps (app_id, app_name, developer, category, rating, downloads)
VALUES
(1, 'SnapChat',     'Snap Inc',      'Social',        4.2, 5000000),
(2, 'InstaFilter',  'Snap Inc',      'Photography',   3.8, 2000000),
(3, 'QuickPay',     'PayCorp',       'Finance',       4.7, 8000000),
(4, 'FitTrack',     'HealthApps',    'Health',        4.5, 3000000),
(5, 'GameZone',     'PlayStudios',   'Gaming',        3.5, 1500000),
(6, 'CloudNotes',   'NoteDevs',      'Productivity',  4.1, 2500000),
(7, 'MusicWave',    'SoundCorp',     'Music',         4.9, 9000000);
SELECT * FROM apps;
SELECT app_name, rating from apps;
