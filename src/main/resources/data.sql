-- Clubs
INSERT INTO club (name, points, games_played, wins, draws, losses, goals_for, goals_against) VALUES
('FC Bayern München', 0, 0, 0, 0, 0, 0, 0),
('Bayer 04 Leverkusen', 0, 0, 0, 0, 0, 0, 0),
('VfB Stuttgart', 0, 0, 0, 0, 0, 0, 0),
('RB Leipzig', 0, 0, 0, 0, 0, 0, 0),
('Borussia Dortmund', 0, 0, 0, 0, 0, 0, 0),
('Eintracht Frankfurt', 0, 0, 0, 0, 0, 0, 0),
('SC Freiburg', 0, 0, 0, 0, 0, 0, 0),
('1. FC Heidenheim', 0, 0, 0, 0, 0, 0, 0),
('TSG Hoffenheim', 0, 0, 0, 0, 0, 0, 0),
('Werder Bremen', 0, 0, 0, 0, 0, 0, 0),
('Borussia Mönchengladbach', 0, 0, 0, 0, 0, 0, 0),
('FC Augsburg', 0, 0, 0, 0, 0, 0, 0),
('VfL Wolfsburg', 0, 0, 0, 0, 0, 0, 0),
('1. FC Union Berlin', 0, 0, 0, 0, 0, 0, 0),
('1. FC Köln', 0, 0, 0, 0, 0, 0, 0),
('1. FSV Mainz 05', 0, 0, 0, 0, 0, 0, 0),
('SV Darmstadt 98', 0, 0, 0, 0, 0, 0, 0),
('VfL Bochum', 0, 0, 0, 0, 0, 0, 0);

-- Players
INSERT INTO player (name, position, goals_scored, yellow_cards, red_cards, club_id) VALUES
-- Bayern München
('Harry Kane', 'Striker', 0, 0, 0, 1),
('Jamal Musiala', 'Midfielder', 0, 0, 0, 1),
('Joshua Kimmich', 'Midfielder', 0, 0, 0, 1),

-- Leverkusen
('Victor Boniface', 'Striker', 0, 0, 0, 2),
('Florian Wirtz', 'Midfielder', 0, 0, 0, 2),
('Granit Xhaka', 'Midfielder', 0, 0, 0, 2),

-- Stuttgart
('Serhou Guirassy', 'Striker', 0, 0, 0, 3),
('Chris Führich', 'Midfielder', 0, 0, 0, 3),
('Waldemar Anton', 'Defender', 0, 0, 0, 3),

-- Leipzig
('Loïs Openda', 'Striker', 0, 0, 0, 4),
('Xavi Simons', 'Midfielder', 0, 0, 0, 4),
('Benjamin Henrichs', 'Defender', 0, 0, 0, 4),

-- Dortmund
('Julian Brandt', 'Midfielder', 0, 0, 0, 5),
('Marco Reus', 'Midfielder', 0, 0, 0, 5),
('Mats Hummels', 'Defender', 0, 0, 0, 5),



-- Zusätzliche Bayern Spieler
('Manuel Neuer', 'Goalkeeper', 0, 0, 0, 1),
('Alphonso Davies', 'Defender', 0, 0, 0, 1),
('Dayot Upamecano', 'Defender', 0, 0, 0, 1),
('Kim Min-jae', 'Defender', 0, 0, 0, 1),
('Leon Goretzka', 'Midfielder', 0, 0, 0, 1),
('Leroy Sané', 'Midfielder', 0, 0, 0, 1),
('Thomas Müller', 'Striker', 0, 0, 0, 1),
('Kingsley Coman', 'Striker', 0, 0, 0, 1),

-- Zusätzliche Leverkusen Spieler
('Lukas Hradecky', 'Goalkeeper', 0, 0, 0, 2),
('Jeremie Frimpong', 'Defender', 0, 0, 0, 2),
('Jonathan Tah', 'Defender', 0, 0, 0, 2),
('Edmond Tapsoba', 'Defender', 0, 0, 0, 2),
('Piero Hincapie', 'Defender', 0, 0, 0, 2),
('Exequiel Palacios', 'Midfielder', 0, 0, 0, 2),
('Jonas Hofmann', 'Midfielder', 0, 0, 0, 2),
('Patrik Schick', 'Striker', 0, 0, 0, 2),

-- Zusätzliche Stuttgart Spieler
('Alexander Nübel', 'Goalkeeper', 0, 0, 0, 3),
('Pascal Stenzel', 'Defender', 0, 0, 0, 3),
('Dan-Axel Zagadou', 'Defender', 0, 0, 0, 3),
('Hiroki Ito', 'Defender', 0, 0, 0, 3),
('Atakan Karazor', 'Midfielder', 0, 0, 0, 3),
('Angelo Stiller', 'Midfielder', 0, 0, 0, 3),
('Silas', 'Striker', 0, 0, 0, 3),
('Deniz Undav', 'Striker', 0, 0, 0, 3),

-- Zusätzliche Leipzig Spieler
('Peter Gulacsi', 'Goalkeeper', 0, 0, 0, 4),
('Mohamed Simakan', 'Defender', 0, 0, 0, 4),
('Castello Lukeba', 'Defender', 0, 0, 0, 4),
('David Raum', 'Defender', 0, 0, 0, 4),
('Amadou Haidara', 'Midfielder', 0, 0, 0, 4),
('Emil Forsberg', 'Midfielder', 0, 0, 0, 4),
('Dani Olmo', 'Midfielder', 0, 0, 0, 4),
('Benjamin Sesko', 'Striker', 0, 0, 0, 4),

-- Zusätzliche Dortmund Spieler
('Gregor Kobel', 'Goalkeeper', 0, 0, 0, 5),
('Niklas Süle', 'Defender', 0, 0, 0, 5),
('Nico Schlotterbeck', 'Defender', 0, 0, 0, 5),
('Julian Ryerson', 'Defender', 0, 0, 0, 5),
('Emre Can', 'Midfielder', 0, 0, 0, 5),
('Marcel Sabitzer', 'Midfielder', 0, 0, 0, 5),
('Karim Adeyemi', 'Striker', 0, 0, 0, 5),
('Niclas Füllkrug', 'Striker', 0, 0, 0, 5),


-- Frankfurt
('Kevin Trapp', 'Goalkeeper', 0, 0, 0, 6),
('Robin Koch', 'Defender', 0, 0, 0, 6),
('Willian Pacho', 'Defender', 0, 0, 0, 6),
('Tuta', 'Defender', 0, 0, 0, 6),
('Timothy Chandler', 'Defender', 0, 0, 0, 6),
('Mario Götze', 'Midfielder', 0, 0, 0, 6),
('Ellyes Skhiri', 'Midfielder', 0, 0, 0, 6),
('Farès Chaïbi', 'Midfielder', 0, 0, 0, 6),
('Ansgar Knauff', 'Midfielder', 0, 0, 0, 6),
('Omar Marmoush', 'Striker', 0, 0, 0, 6),
('Sasa Kalajdzic', 'Striker', 0, 0, 0, 6),

-- Freiburg
('Noah Atubolu', 'Goalkeeper', 0, 0, 0, 7),
('Matthias Ginter', 'Defender', 0, 0, 0, 7),
('Philipp Lienhart', 'Defender', 0, 0, 0, 7),
('Christian Günter', 'Defender', 0, 0, 0, 7),
('Lukas Kübler', 'Defender', 0, 0, 0, 7),
('Maximilian Eggestein', 'Midfielder', 0, 0, 0, 7),
('Nicolas Höfler', 'Midfielder', 0, 0, 0, 7),
('Vincenzo Grifo', 'Midfielder', 0, 0, 0, 7),
('Roland Sallai', 'Midfielder', 0, 0, 0, 7),
('Lucas Höler', 'Striker', 0, 0, 0, 7),
('Michael Gregoritsch', 'Striker', 0, 0, 0, 7),

-- Heidenheim
('Kevin Müller', 'Goalkeeper', 0, 0, 0, 8),
('Patrick Mainka', 'Defender', 0, 0, 0, 8),
('Benedikt Gimber', 'Defender', 0, 0, 0, 8),
('Omar Traoré', 'Defender', 0, 0, 0, 8),
('Marnon Busch', 'Defender', 0, 0, 0, 8),
('Jan-Niklas Beste', 'Midfielder', 0, 0, 0, 8),
('Lennard Maloney', 'Midfielder', 0, 0, 0, 8),
('Adrian Beck', 'Midfielder', 0, 0, 0, 8),
('Denis Thomalla', 'Midfielder', 0, 0, 0, 8),
('Tim Kleindienst', 'Striker', 0, 0, 0, 8),
('Marvin Pieringer', 'Striker', 0, 0, 0, 8),

-- Hoffenheim
('Oliver Baumann', 'Goalkeeper', 0, 0, 0, 9),
('Kevin Vogt', 'Defender', 0, 0, 0, 9),
('John Brooks', 'Defender', 0, 0, 0, 9),
('Pavel Kadeřábek', 'Defender', 0, 0, 0, 9),
('Kevin Akpoguma', 'Defender', 0, 0, 0, 9),
('Anton Stach', 'Midfielder', 0, 0, 0, 9),
('Florian Grillitsch', 'Midfielder', 0, 0, 0, 9),
('Grischa Prömel', 'Midfielder', 0, 0, 0, 9),
('Robert Skov', 'Midfielder', 0, 0, 0, 9),
('Andrej Kramarić', 'Striker', 0, 0, 0, 9),
('Wout Weghorst', 'Striker', 0, 0, 0, 9),

-- Werder Bremen
('Michael Zetterer', 'Goalkeeper', 0, 0, 0, 10),
('Milos Veljkovic', 'Defender', 0, 0, 0, 10),
('Marco Friedl', 'Defender', 0, 0, 0, 10),
('Niklas Stark', 'Defender', 0, 0, 0, 10),
('Mitchell Weiser', 'Defender', 0, 0, 0, 10),
('Leonardo Bittencourt', 'Midfielder', 0, 0, 0, 10),
('Senne Lynen', 'Midfielder', 0, 0, 0, 10),
('Romano Schmid', 'Midfielder', 0, 0, 0, 10),
('Jens Stage', 'Midfielder', 0, 0, 0, 10),
('Marvin Ducksch', 'Striker', 0, 0, 0, 10),
('Rafael Borré', 'Striker', 0, 0, 0, 10),

-- Borussia Mönchengladbach
('Moritz Nicolas', 'Goalkeeper', 0, 0, 0, 11),
('Ko Itakura', 'Defender', 0, 0, 0, 11),
('Nico Elvedi', 'Defender', 0, 0, 0, 11),
('Luca Netz', 'Defender', 0, 0, 0, 11),
('Joe Scally', 'Defender', 0, 0, 0, 11),
('Julian Weigl', 'Midfielder', 0, 0, 0, 11),
('Florian Neuhaus', 'Midfielder', 0, 0, 0, 11),
('Manu Koné', 'Midfielder', 0, 0, 0, 11),
('Alassane Plea', 'Midfielder', 0, 0, 0, 11),
('Tomas Cvancara', 'Striker', 0, 0, 0, 11),
('Jordan Siebatcheu', 'Striker', 0, 0, 0, 11),

-- FC Augsburg
('Finn Dahmen', 'Goalkeeper', 0, 0, 0, 12),
('Jeffrey Gouweleeuw', 'Defender', 0, 0, 0, 12),
('Felix Uduokhai', 'Defender', 0, 0, 0, 12),
('Patric Pfeiffer', 'Defender', 0, 0, 0, 12),
('Kevin Mbabu', 'Defender', 0, 0, 0, 12),
('Elvis Rexhbecaj', 'Midfielder', 0, 0, 0, 12),
('Niklas Dorsch', 'Midfielder', 0, 0, 0, 12),
('Ermedin Demirovic', 'Midfielder', 0, 0, 0, 12),
('Arne Engels', 'Midfielder', 0, 0, 0, 12),
('Phillip Tietz', 'Striker', 0, 0, 0, 12),
('Dion Beljo', 'Striker', 0, 0, 0, 12),

-- VfL Wolfsburg
('Koen Casteels', 'Goalkeeper', 0, 0, 0, 13),
('Maxence Lacroix', 'Defender', 0, 0, 0, 13),
('Moritz Jenz', 'Defender', 0, 0, 0, 13),
('Sebastiaan Bornauw', 'Defender', 0, 0, 0, 13),
('Ridle Baku', 'Defender', 0, 0, 0, 13),
('Mattias Svanberg', 'Midfielder', 0, 0, 0, 13),
('Maximilian Arnold', 'Midfielder', 0, 0, 0, 13),
('Lovro Majer', 'Midfielder', 0, 0, 0, 13),
('Jonas Wind', 'Midfielder', 0, 0, 0, 13),
('Tiago Tomás', 'Striker', 0, 0, 0, 13),
('Kevin Paredes', 'Striker', 0, 0, 0, 13),

-- Union Berlin
('Frederik Rønnow', 'Goalkeeper', 0, 0, 0, 14),
('Robin Knoche', 'Defender', 0, 0, 0, 14),
('Diogo Leite', 'Defender', 0, 0, 0, 14),
('Leonardo Bonucci', 'Defender', 0, 0, 0, 14),
('Josip Juranovic', 'Defender', 0, 0, 0, 14),
('Rani Khedira', 'Midfielder', 0, 0, 0, 14),
('Lucas Tousart', 'Midfielder', 0, 0, 0, 14),
('Janik Haberer', 'Midfielder', 0, 0, 0, 14),
('Brenden Aaronson', 'Midfielder', 0, 0, 0, 14),
('Kevin Behrens', 'Striker', 0, 0, 0, 14),
('David Datro Fofana', 'Striker', 0, 0, 0, 14),

-- 1. FC Köln
('Marvin Schwäbe', 'Goalkeeper', 0, 0, 0, 15),
('Timo Hübers', 'Defender', 0, 0, 0, 15),
('Jeff Chabot', 'Defender', 0, 0, 0, 15),
('Julian Chabot', 'Defender', 0, 0, 0, 15),
('Benno Schmitz', 'Defender', 0, 0, 0, 15),
('Eric Martel', 'Midfielder', 0, 0, 0, 15),
('Dejan Ljubicic', 'Midfielder', 0, 0, 0, 15),
('Florian Kainz', 'Midfielder', 0, 0, 0, 15),
('Denis Huseinbasic', 'Midfielder', 0, 0, 0, 15),
('Davie Selke', 'Striker', 0, 0, 0, 15),
('Steffen Tigges', 'Striker', 0, 0, 0, 15),

-- Mainz 05
('Robin Zentner', 'Goalkeeper', 0, 0, 0, 16),
('Silvan Widmer', 'Defender', 0, 0, 0, 16),
('Stefan Bell', 'Defender', 0, 0, 0, 16),
('Andreas Hanche-Olsen', 'Defender', 0, 0, 0, 16),
('Edimilson Fernandes', 'Defender', 0, 0, 0, 16),
('Dominik Kohr', 'Midfielder', 0, 0, 0, 16),
('Leandro Barreiro', 'Midfielder', 0, 0, 0, 16),
('Anton Stach', 'Midfielder', 0, 0, 0, 16),
('Lee Jae-sung', 'Midfielder', 0, 0, 0, 16),
('Ludovic Ajorque', 'Striker', 0, 0, 0, 16),
('Karim Onisiwo', 'Striker', 0, 0, 0, 16),

-- Darmstadt 98
('Marcel Schuhen', 'Goalkeeper', 0, 0, 0, 17),
('Matthias Bader', 'Defender', 0, 0, 0, 17),
('Christoph Klarer', 'Defender', 0, 0, 0, 17),
('Clemens Riedel', 'Defender', 0, 0, 0, 17),
('Fabian Holland', 'Defender', 0, 0, 0, 17),
('Tobias Kempe', 'Midfielder', 0, 0, 0, 17),
('Fabian Schnellhardt', 'Midfielder', 0, 0, 0, 17),
('Marvin Mehlem', 'Midfielder', 0, 0, 0, 17),
('Tim Skarke', 'Midfielder', 0, 0, 0, 17),
('Luca Pfeiffer', 'Striker', 0, 0, 0, 17),
('Oscar Vilhelmsson', 'Striker', 0, 0, 0, 17),

-- VfL Bochum
('Manuel Riemann', 'Goalkeeper', 0, 0, 0, 18),
('Ivan Ordets', 'Defender', 0, 0, 0, 18),
('Erhan Masovic', 'Defender', 0, 0, 0, 18),
('Bernardo', 'Defender', 0, 0, 0, 18),
('Cristian Gamboa', 'Defender', 0, 0, 0, 18),
('Anthony Losilla', 'Midfielder', 0, 0, 0, 18),
('Kevin Stöger', 'Midfielder', 0, 0, 0, 18),
('Christopher Antwi-Adjei', 'Midfielder', 0, 0, 0, 18),
('Takuma Asano', 'Midfielder', 0, 0, 0, 18),
('Philipp Hofmann', 'Striker', 0, 0, 0, 18),
('Moritz Broschinski', 'Striker', 0, 0, 0, 18);