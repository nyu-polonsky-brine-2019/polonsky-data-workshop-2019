CREATE TABLE director (
	id INTEGER NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	PRIMARY KEY (id)
);

INSERT INTO director (id, first_name, last_name)
	VALUES
		(1, 'David', 'Lynch'),
		(2, 'Kathryn', 'Bigelow'),
		(3, 'Ridley', 'Scott'),
		(4, 'Denis', 'Villeneuve'),
		(5, 'Wong', 'Kar-wai'),
		(6, 'Patty', 'Jenkins'),
		(7, 'Pedro', 'Almodóvar'),
		(8, 'Guillermo', 'del Toro');

CREATE TABLE movie (
	id INTEGER NOT NULL AUTO_INCREMENT,
	title VARCHAR(50),
	director_id INTEGER,
	release_year TIMESTAMP,
	runtime INTEGER,
	genre VARCHAR(255),
	budget DECIMAL(13, 4),
	gross DECIMAL(13, 4),
	PRIMARY KEY (id),
	FOREIGN KEY(director_id) REFERENCES director(id)
);

INSERT INTO movie (title, director_id, release_year, runtime, genre, budget, gross)
	VALUES
		('Blue Velvet', 1, '1986-01-01', 120, 'Neo Noir Mystery Thriller', 6000000, 8600000),
		('Dune', 1, '1984-01-01', 136, 'Science Fiction', 40000000, 30900000),
		('Strange Days', 2, '1995-01-01', 145, 'Science Fiction', 42000000, 8000000),
		('Point Break', 2, '1991-01-01', 122, 'Crime Thriller', 24000000, 83500000),
		('Zero Dark Thirty', 2, '2012-01-01', 157, 'Political Thriller', 40000000, 132800000),
		('Blade Runner', 3, '1982-01-01', 117, 'Sci-Fi', 28000000, 33800000),
		('Blade Runner 2049', 4, '2017-01-01', 163, 'Science Fiction', 185000000, 259200000),
		('Alien', 3, '1979-01-01', 117, 'Sci-Fi', 11000000, 203600000),
		('Alien Covenant', 3, '1982-01-01', 122, 'Science Fiction', 111000000, 240900000),
		('2046', 5, '1982-01-01', 122, 'Drama', 12000000, 19500000),
		('Wonder Woman', 6, '2017-01-01', 141, 'Super Hero', 150000000, 821000000),
		('La Piel Que Habito (The Skin I Live In)', 7, '2011-01-01', 120, 'Horror', 13500000, 30800000),
		('Los Abrazos Rotos (Broken Embraces)', 7, '2009-01-01', 128, 'Romantic Thriller', 18000000, 31000000),
		('El Laberinto del Fauno (Pan''s Labyrinth)', 8, '2006-01-01', 119, 'Dark Fantasy Horror', 19000000, 83300000),
		('Shape of Water', 8, '2017-01-01', 123, 'Romantic Dark Fantasy Drama', 20000000, 195200000),
		('Pacific Rim', 8, '2013-01-01', 132, 'Sci-Fi', 200000000, 411000000),
		('Hellboy', 8, '2004-01-01', 122, 'Super Hero', 66000000, 99300000);

