-- Clubs
INSERT INTO club (name, points, games_played, wins, draws, losses, goals_for, goals_against) VALUES
('FC Bayern München', 45, 18, 14, 3, 1, 52, 15),
('Bayer 04 Leverkusen', 48, 18, 15, 3, 0, 50, 12),
('VfB Stuttgart', 34, 18, 11, 1, 6, 38, 23),
('RB Leipzig', 33, 18, 10, 3, 5, 38, 21),
('Borussia Dortmund', 30, 18, 9, 3, 6, 35, 27),
('Eintracht Frankfurt', 28, 18, 7, 7, 4, 32, 24),
('SC Freiburg', 28, 18, 8, 4, 6, 26, 29),
('1. FC Heidenheim', 23, 18, 6, 5, 7, 27, 34),
('TSG Hoffenheim', 22, 18, 6, 4, 8, 32, 36),
('Werder Bremen', 20, 18, 5, 5, 8, 25, 32),
('Borussia Mönchengladbach', 20, 18, 5, 5, 8, 34, 41),
('FC Augsburg', 18, 18, 4, 6, 8, 25, 35),
('VfL Wolfsburg', 18, 18, 5, 3, 10, 21, 34),
('1. FC Union Berlin', 14, 18, 4, 2, 12, 18, 37),
('1. FC Köln', 11, 18, 2, 5, 11, 13, 34),
('1. FSV Mainz 05', 11, 18, 1, 8, 9, 14, 31),
('SV Darmstadt 98', 11, 18, 2, 5, 11, 20, 46),
('VfL Bochum', 20, 18, 4, 8, 6, 21, 35);

-- Players
INSERT INTO player (name, position, goals_scored, yellow_cards, red_cards, club_id) VALUES
-- Bayern München
('Harry Kane', 'Striker', 22, 1, 0, 1),
('Jamal Musiala', 'Midfielder', 5, 0, 0, 1),
('Joshua Kimmich', 'Midfielder', 2, 3, 0, 1),

-- Leverkusen
('Victor Boniface', 'Striker', 10, 2, 0, 2),
('Florian Wirtz', 'Midfielder', 5, 1, 0, 2),
('Granit Xhaka', 'Midfielder', 1, 4, 0, 2),

-- Stuttgart
('Serhou Guirassy', 'Striker', 17, 1, 0, 3),
('Chris Führich', 'Midfielder', 5, 2, 0, 3),
('Waldemar Anton', 'Defender', 1, 3, 0, 3),

-- Leipzig
('Loïs Openda', 'Striker', 12, 1, 0, 4),
('Xavi Simons', 'Midfielder', 6, 1, 0, 4),
('Benjamin Henrichs', 'Defender', 1, 4, 0, 4),

-- Dortmund
('Julian Brandt', 'Midfielder', 5, 1, 0, 5),
('Marco Reus', 'Midfielder', 4, 1, 0, 5),
('Mats Hummels', 'Defender', 2, 3, 0, 5),



-- Zusätzliche Bayern Spieler
('Manuel Neuer', 'Goalkeeper', 0, 0, 0, 1),
('Alphonso Davies', 'Defender', 1, 2, 0, 1),
('Dayot Upamecano', 'Defender', 0, 5, 1, 1),
('Kim Min-jae', 'Defender', 1, 3, 0, 1),
('Leon Goretzka', 'Midfielder', 3, 2, 0, 1),
('Leroy Sané', 'Midfielder', 8, 3, 0, 1),
('Thomas Müller', 'Striker', 5, 1, 0, 1),
('Kingsley Coman', 'Striker', 4, 2, 0, 1),

-- Zusätzliche Leverkusen Spieler
('Lukas Hradecky', 'Goalkeeper', 0, 1, 0, 2),
('Jeremie Frimpong', 'Defender', 5, 3, 0, 2),
('Jonathan Tah', 'Defender', 2, 4, 0, 2),
('Edmond Tapsoba', 'Defender', 0, 2, 0, 2),
('Piero Hincapie', 'Defender', 1, 3, 0, 2),
('Exequiel Palacios', 'Midfielder', 2, 5, 0, 2),
('Jonas Hofmann', 'Midfielder', 6, 1, 0, 2),
('Patrik Schick', 'Striker', 3, 0, 0, 2),

-- Zusätzliche Stuttgart Spieler
('Alexander Nübel', 'Goalkeeper', 0, 1, 0, 3),
('Pascal Stenzel', 'Defender', 1, 3, 0, 3),
('Dan-Axel Zagadou', 'Defender', 0, 4, 0, 3),
('Hiroki Ito', 'Defender', 0, 2, 0, 3),
('Atakan Karazor', 'Midfielder', 1, 6, 0, 3),
('Angelo Stiller', 'Midfielder', 1, 3, 0, 3),
('Silas', 'Striker', 5, 2, 0, 3),
('Deniz Undav', 'Striker', 8, 2, 0, 3),

-- Zusätzliche Leipzig Spieler
('Peter Gulacsi', 'Goalkeeper', 0, 0, 0, 4),
('Mohamed Simakan', 'Defender', 2, 5, 0, 4),
('Castello Lukeba', 'Defender', 0, 3, 0, 4),
('David Raum', 'Defender', 1, 4, 0, 4),
('Amadou Haidara', 'Midfielder', 1, 3, 0, 4),
('Emil Forsberg', 'Midfielder', 4, 1, 0, 4),
('Dani Olmo', 'Midfielder', 3, 1, 0, 4),
('Benjamin Sesko', 'Striker', 7, 2, 0, 4),

-- Zusätzliche Dortmund Spieler
('Gregor Kobel', 'Goalkeeper', 0, 1, 0, 5),
('Niklas Süle', 'Defender', 0, 2, 0, 5),
('Nico Schlotterbeck', 'Defender', 1, 4, 0, 5),
('Julian Ryerson', 'Defender', 1, 3, 0, 5),
('Emre Can', 'Midfielder', 2, 7, 1, 5),
('Marcel Sabitzer', 'Midfielder', 3, 4, 0, 5),
('Karim Adeyemi', 'Striker', 4, 2, 0, 5),
('Niclas Füllkrug', 'Striker', 7, 2, 0, 5),


-- Frankfurt
('Kevin Trapp', 'Goalkeeper', 0, 2, 0, 6),
('Robin Koch', 'Defender', 1, 4, 0, 6),
('Willian Pacho', 'Defender', 0, 3, 0, 6),
('Tuta', 'Defender', 1, 5, 1, 6),
('Timothy Chandler', 'Defender', 0, 1, 0, 6),
('Mario Götze', 'Midfielder', 2, 2, 0, 6),
('Ellyes Skhiri', 'Midfielder', 3, 2, 0, 6),
('Farès Chaïbi', 'Midfielder', 4, 3, 0, 6),
('Ansgar Knauff', 'Midfielder', 2, 1, 0, 6),
('Omar Marmoush', 'Striker', 8, 3, 0, 6),
('Sasa Kalajdzic', 'Striker', 2, 1, 0, 6),

-- Freiburg
('Noah Atubolu', 'Goalkeeper', 0, 1, 0, 7),
('Matthias Ginter', 'Defender', 1, 3, 0, 7),
('Philipp Lienhart', 'Defender', 2, 2, 0, 7),
('Christian Günter', 'Defender', 1, 2, 0, 7),
('Lukas Kübler', 'Defender', 0, 4, 0, 7),
('Maximilian Eggestein', 'Midfielder', 2, 3, 0, 7),
('Nicolas Höfler', 'Midfielder', 1, 6, 1, 7),
('Vincenzo Grifo', 'Midfielder', 7, 2, 0, 7),
('Roland Sallai', 'Midfielder', 3, 4, 0, 7),
('Lucas Höler', 'Striker', 4, 1, 0, 7),
('Michael Gregoritsch', 'Striker', 5, 2, 0, 7),

-- Heidenheim
('Kevin Müller', 'Goalkeeper', 0, 1, 0, 8),
('Patrick Mainka', 'Defender', 1, 4, 0, 8),
('Benedikt Gimber', 'Defender', 0, 5, 0, 8),
('Omar Traoré', 'Defender', 0, 3, 0, 8),
('Marnon Busch', 'Defender', 0, 4, 0, 8),
('Jan-Niklas Beste', 'Midfielder', 6, 3, 0, 8),
('Lennard Maloney', 'Midfielder', 2, 5, 0, 8),
('Adrian Beck', 'Midfielder', 1, 2, 0, 8),
('Denis Thomalla', 'Midfielder', 2, 3, 0, 8),
('Tim Kleindienst', 'Striker', 8, 2, 0, 8),
('Marvin Pieringer', 'Striker', 4, 3, 0, 8),

-- Hoffenheim
('Oliver Baumann', 'Goalkeeper', 0, 1, 0, 9),
('Kevin Vogt', 'Defender', 0, 3, 0, 9),
('John Brooks', 'Defender', 1, 4, 0, 9),
('Pavel Kadeřábek', 'Defender', 1, 2, 0, 9),
('Kevin Akpoguma', 'Defender', 0, 3, 0, 9),
('Anton Stach', 'Midfielder', 1, 5, 0, 9),
('Florian Grillitsch', 'Midfielder', 1, 4, 0, 9),
('Grischa Prömel', 'Midfielder', 2, 3, 0, 9),
('Robert Skov', 'Midfielder', 4, 2, 0, 9),
('Andrej Kramarić', 'Striker', 7, 1, 0, 9),
('Wout Weghorst', 'Striker', 5, 3, 0, 9),

-- Werder Bremen
('Michael Zetterer', 'Goalkeeper', 0, 1, 0, 10),
('Milos Veljkovic', 'Defender', 0, 4, 0, 10),
('Marco Friedl', 'Defender', 0, 5, 0, 10),
('Niklas Stark', 'Defender', 1, 3, 0, 10),
('Mitchell Weiser', 'Defender', 2, 4, 0, 10),
('Leonardo Bittencourt', 'Midfielder', 2, 6, 0, 10),
('Senne Lynen', 'Midfielder', 1, 3, 0, 10),
('Romano Schmid', 'Midfielder', 3, 2, 0, 10),
('Jens Stage', 'Midfielder', 2, 4, 0, 10),
('Marvin Ducksch', 'Striker', 7, 2, 0, 10),
('Rafael Borré', 'Striker', 4, 3, 0, 10),

-- Borussia Mönchengladbach
('Moritz Nicolas', 'Goalkeeper', 0, 1, 0, 11),
('Ko Itakura', 'Defender', 2, 3, 0, 11),
('Nico Elvedi', 'Defender', 1, 4, 0, 11),
('Luca Netz', 'Defender', 1, 2, 0, 11),
('Joe Scally', 'Defender', 0, 3, 0, 11),
('Julian Weigl', 'Midfielder', 1, 4, 0, 11),
('Florian Neuhaus', 'Midfielder', 2, 2, 0, 11),
('Manu Koné', 'Midfielder', 1, 5, 0, 11),
('Alassane Plea', 'Midfielder', 4, 3, 0, 11),
('Tomas Cvancara', 'Striker', 5, 2, 0, 11),
('Jordan Siebatcheu', 'Striker', 3, 1, 0, 11),

-- FC Augsburg
('Finn Dahmen', 'Goalkeeper', 0, 2, 0, 12),
('Jeffrey Gouweleeuw', 'Defender', 1, 5, 0, 12),
('Felix Uduokhai', 'Defender', 1, 3, 0, 12),
('Patric Pfeiffer', 'Defender', 0, 4, 0, 12),
('Kevin Mbabu', 'Defender', 0, 3, 0, 12),
('Elvis Rexhbecaj', 'Midfielder', 2, 6, 0, 12),
('Niklas Dorsch', 'Midfielder', 0, 4, 0, 12),
('Ermedin Demirovic', 'Midfielder', 7, 3, 0, 12),
('Arne Engels', 'Midfielder', 1, 2, 0, 12),
('Phillip Tietz', 'Striker', 6, 2, 0, 12),
('Dion Beljo', 'Striker', 3, 1, 0, 12),

-- VfL Wolfsburg
('Koen Casteels', 'Goalkeeper', 0, 1, 0, 13),
('Maxence Lacroix', 'Defender', 1, 6, 1, 13),
('Moritz Jenz', 'Defender', 0, 4, 0, 13),
('Sebastiaan Bornauw', 'Defender', 1, 3, 0, 13),
('Ridle Baku', 'Defender', 2, 2, 0, 13),
('Mattias Svanberg', 'Midfielder', 3, 4, 0, 13),
('Maximilian Arnold', 'Midfielder', 1, 5, 0, 13),
('Lovro Majer', 'Midfielder', 2, 2, 0, 13),
('Jonas Wind', 'Midfielder', 9, 3, 0, 13),
('Tiago Tomás', 'Striker', 3, 2, 0, 13),
('Kevin Paredes', 'Striker', 2, 1, 0, 13),

-- Union Berlin
('Frederik Rønnow', 'Goalkeeper', 0, 2, 0, 14),
('Robin Knoche', 'Defender', 1, 4, 0, 14),
('Diogo Leite', 'Defender', 0, 5, 0, 14),
('Leonardo Bonucci', 'Defender', 0, 3, 0, 14),
('Josip Juranovic', 'Defender', 1, 4, 0, 14),
('Rani Khedira', 'Midfielder', 0, 6, 1, 14),
('Lucas Tousart', 'Midfielder', 2, 4, 0, 14),
('Janik Haberer', 'Midfielder', 1, 3, 0, 14),
('Brenden Aaronson', 'Midfielder', 1, 2, 0, 14),
('Kevin Behrens', 'Striker', 4, 3, 0, 14),
('David Datro Fofana', 'Striker', 2, 2, 0, 14),

-- 1. FC Köln
('Marvin Schwäbe', 'Goalkeeper', 0, 1, 0, 15),
('Timo Hübers', 'Defender', 1, 5, 0, 15),
('Jeff Chabot', 'Defender', 0, 6, 1, 15),
('Julian Chabot', 'Defender', 0, 4, 0, 15),
('Benno Schmitz', 'Defender', 0, 3, 0, 15),
('Eric Martel', 'Midfielder', 1, 5, 0, 15),
('Dejan Ljubicic', 'Midfielder', 2, 4, 0, 15),
('Florian Kainz', 'Midfielder', 3, 4, 0, 15),
('Denis Huseinbasic', 'Midfielder', 1, 2, 0, 15),
('Davie Selke', 'Striker', 4, 3, 0, 15),
('Steffen Tigges', 'Striker', 2, 2, 0, 15),

-- Mainz 05
('Robin Zentner', 'Goalkeeper', 0, 2, 0, 16),
('Silvan Widmer', 'Defender', 0, 3, 0, 16),
('Stefan Bell', 'Defender', 0, 4, 0, 16),
('Andreas Hanche-Olsen', 'Defender', 1, 5, 0, 16),
('Edimilson Fernandes', 'Defender', 0, 6, 1, 16),
('Dominik Kohr', 'Midfielder', 1, 7, 1, 16),
('Leandro Barreiro', 'Midfielder', 2, 5, 0, 16),
('Anton Stach', 'Midfielder', 1, 4, 0, 16),
('Lee Jae-sung', 'Midfielder', 4, 2, 0, 16),
('Ludovic Ajorque', 'Striker', 3, 2, 0, 16),
('Karim Onisiwo', 'Striker', 2, 3, 0, 16),

-- Darmstadt 98
('Marcel Schuhen', 'Goalkeeper', 0, 1, 0, 17),
('Matthias Bader', 'Defender', 1, 4, 0, 17),
('Christoph Klarer', 'Defender', 2, 5, 0, 17),
('Clemens Riedel', 'Defender', 0, 3, 0, 17),
('Fabian Holland', 'Defender', 1, 4, 0, 17),
('Tobias Kempe', 'Midfielder', 2, 3, 0, 17),
('Fabian Schnellhardt', 'Midfielder', 0, 4, 0, 17),
('Marvin Mehlem', 'Midfielder', 3, 2, 0, 17),
('Tim Skarke', 'Midfielder', 2, 3, 0, 17),
('Luca Pfeiffer', 'Striker', 2, 1, 0, 17),
('Oscar Vilhelmsson', 'Striker', 3, 2, 0, 17),

-- VfL Bochum
('Manuel Riemann', 'Goalkeeper', 0, 3, 0, 18),
('Ivan Ordets', 'Defender', 0, 4, 0, 18),
('Erhan Masovic', 'Defender', 3, 5, 0, 18),
('Bernardo', 'Defender', 0, 6, 0, 18),
('Cristian Gamboa', 'Defender', 0, 3, 0, 18),
('Anthony Losilla', 'Midfielder', 2, 5, 0, 18),
('Kevin Stöger', 'Midfielder', 3, 4, 0, 18),
('Christopher Antwi-Adjei', 'Midfielder', 2, 2, 0, 18),
('Takuma Asano', 'Midfielder', 5, 2, 0, 18),
('Philipp Hofmann', 'Striker', 4, 2, 0, 18),
('Moritz Broschinski', 'Striker', 2, 1, 0, 18);