CREATE DATABASE IF NOT EXISTS cinema;
USE cinema;

CREATE TABLE diretores (
    id_diretor INT AUTO_INCREMENT PRIMARY KEY,
    nome_diretor VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento YEAR,
    id_diretor INT NOT NULL,
    FOREIGN KEY (id_diretor) REFERENCES diretores(id_diretor)
);

INSERT INTO diretores (nome_diretor, nacionalidade) VALUES
('Steven Spielberg','EUA'),('Christopher Nolan','Reino Unido'),('Martin Scorsese','EUA'),
('Quentin Tarantino','EUA'),('James Cameron','Canadá'),('Peter Jackson','Nova Zelândia'),
('Ridley Scott','Reino Unido'),('Alfred Hitchcock','Reino Unido'),('Stanley Kubrick','EUA'),
('Francis Ford Coppola','EUA'),('Wes Anderson','EUA'),('Guillermo del Toro','México'),
('Tim Burton','EUA'),('Clint Eastwood','EUA'),('Ang Lee','Taiwan'),('George Lucas','EUA'),
('Joel Coen','EUA'),('Ethan Coen','EUA'),('Patty Jenkins','EUA'),('Denis Villeneuve','Canadá'),
('James Wan','Malásia'),('David Fincher','EUA'),('Sofia Coppola','EUA'),('Robert Zemeckis','EUA'),
('Mel Gibson','EUA'),('Richard Linklater','EUA'),('Guy Ritchie','Reino Unido'),('Baz Luhrmann','Austrália'),
('David Lynch','EUA'),('Michael Bay','EUA'),('Ron Howard','EUA'),('Jean-Pierre Jeunet','França'),
('Zack Snyder','EUA'),('Hayao Miyazaki','Japão'),('Makoto Shinkai','Japão'),('Peter Weir','Austrália'),
('Pedro Almodóvar','Espanha'),('Alejandro González Iñárritu','México'),('Fernando Meirelles','Brasil'),
('Walter Salles','Brasil'),('Gus Van Sant','EUA'),('Paul Thomas Anderson','EUA'),('Spike Lee','EUA'),
('Angelo Orlando','EUA'),('Lars von Trier','Dinamarca'),('Terry Gilliam','Reino Unido'),
('Jonathan Demme','EUA'),('M. Night Shyamalan','EUA'),('Robert Rodriguez','EUA'),('Wong Kar-wai','China'),
('Guillermo Arriaga','México'),('Tom Hooper','Reino Unido'),('Danny Boyle','Reino Unido'),
('Oliver Stone','EUA'),('John Woo','Hong Kong'),('Sergio Leone','Itália'),('Ken Loach','Reino Unido'),
('Spike Jonze','EUA'),('Darren Aronofsky','EUA'),('Roberto Benigni','Itália'),('Hirokazu Kore-eda','Japão'),
('Lilly Wachowski','EUA'),('Lana Wachowski','EUA'),('Clint Mansell','Reino Unido'),('Terrence Malick','EUA'),
('Richard Curtis','Reino Unido'),('Shane Black','EUA'),('Sam Mendes','Reino Unido'),('Brad Bird','EUA'),
('Chris Columbus','EUA'),('James L. Brooks','EUA'),('Norman Jewison','Canadá'),('Ivan Reitman','Canadá'),
('Robert Altman','EUA'),('John Carpenter','EUA'),('Terry Zwigoff','EUA'),('Peter Bogdanovich','EUA'),
('Frank Darabont','EUA'),('Bong Joon-ho','Coreia do Sul'),('Park Chan-wook','Coreia do Sul'),
('Hideo Nakata','Japão'),('Koreyoshi Kurahara','Japão'),('Yasujiro Ozu','Japão'),('Akira Kurosawa','Japão'),
('Jean-Luc Godard','França'),('François Truffaut','França'),('Luc Besson','França'),('Claude Chabrol','França'),
('Andrei Tarkovsky','Rússia'),('Sergei Eisenstein','Rússia'),('Alejandro Amenábar','Espanha'),
('Victor Fleming','EUA'),('John Huston','EUA'),('Fred Zinnemann','EUA'),('Nicholas Ray','EUA'),
('Vittorio De Sica','Itália'),('Luchino Visconti','Itália'),('Federico Fellini','Itália'),
('Bernardo Bertolucci','Itália'),('Ingmar Bergman','Suécia'),('Roy Andersson','Suécia'),
('Michael Haneke','Áustria'),('Gus Meins','EUA'),('Rian Johnson','EUA'),('Taika Waititi','Nova Zelândia');

INSERT INTO filmes (titulo, ano_lancamento, id_diretor) VALUES
('Jurassic Park',1993,1),('Inception',2010,2),('The Irishman',2019,3),('Pulp Fiction',1994,4),
('Titanic',1997,5),('The Lord of the Rings: The Fellowship of the Ring',2001,6),('Gladiator',2000,7),
('Psycho',1960,8),('2001: A Space Odyssey',1968,9),('The Godfather',1972,10),
('The Grand Budapest Hotel',2014,11),('Pan''s Labyrinth',2006,12),('Edward Scissorhands',1990,13),
('Million Dollar Baby',2004,14),('Crouching Tiger, Hidden Dragon',2000,15),('Star Wars: A New Hope',1977,16),
('No Country for Old Men',2007,17),('Fargo',1996,18),('Wonder Woman',2017,19),('Dune',2021,20),
('The Conjuring',2013,21),('Fight Club',1999,22),('Lost in Translation',2003,23),('Forrest Gump',1994,24),
('Braveheart',1995,25),('Boyhood',2014,26),('Snatch',2000,27),('Moulin Rouge!',2001,28),
('Mulholland Drive',2001,29),('Transformers',2007,30),('A Beautiful Mind',2001,31),('Amélie',2001,32),
('Watchmen',2009,33),('Spirited Away',2001,34),('Your Name',2016,35),('Dead Poets Society',1989,36),
('Talk to Her',2002,37),('Birdman',2014,38),('City of God',2002,39),('Central Station',1998,40),
('Good Will Hunting',1997,41),('Magnolia',1999,42),('Do the Right Thing',1989,43),('Billy Madison',1995,44),
('Melancholia',2011,45),('Breaking the Waves',1996,46),('12 Monkeys',1995,47),('Silence of the Lambs',1991,48),
('Desperado',1995,49),('In the Mood for Love',2000,50),('Amores Perros',2000,51),('The King''s Speech',2010,52),
('Slumdog Millionaire',2008,53),('Trainspotting',1996,54),('The Aviator',2004,55),('Heat',1995,56),
('The Fisher King',1991,57),('Black Swan',2010,58),('Life is Beautiful',1997,59),('Still Walking',2008,60),
('The Matrix',1999,61),('Cloud Atlas',2012,62),('Love Actually',2003,63),('Kiss Kiss Bang Bang',2005,64),
('Skyfall',2012,65),('The Incredibles',2004,66),('Home Alone',1990,67),('Terms of Endearment',1983,68),
('Ghostbusters',1984,69),('M*A*S*H',1970,70),('The Shawshank Redemption',1994,71),('Parasite',2019,72),
('Oldboy',2003,73),('Ring',1998,74),('The Warped Forest',1978,75),('Tokyo Story',1953,76),
('Seven Samurai',1954,77),('Breathless',1960,78),('The 400 Blows',1959,79),('Léon: The Professional',1994,80),
('Solaris',1972,81),('Battleship Potemkin',1925,82),('The Others',2001,83),('Gone with the Wind',1939,84),
('The Wizard of Oz',1939,85),('High Noon',1952,86),('Escape from Alcatraz',1979,87),('Ghost World',2001,88),
('The Last Picture Show',1971,89),('The Green Mile',1999,90),('Parasite',2019,91),('Oldboy',2003,92),
('The Ring',1998,93),('Melancholia',2011,94),('Love & Death',1975,95),('Knives Out',2019,96),
('The Piano',1993,97),('Jojo Rabbit',2019,98),('The Lighthouse',2019,99),('Thor: Ragnarok',2017,100);