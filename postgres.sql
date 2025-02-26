CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE books (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    title TEXT,
    authors TEXT,
    genre TEXT,
    publication_year INTEGER,
    synopsis TEXT
);


INSERT INTO books (title, authors, genre, publication_year, synopsis)
VALUES
  ('Shadows of Dawn', 'Eleanor West', 'Fantasy', 2001, 'In the mystical lands of Eldoria, young warrior Aelina embarks on a perilous quest to discover the truth behind the ancient prophecy. Battling formidable foes and unraveling magical secrets, she discovers her destiny is intertwined with the fate of her world.'),
  ('Echoes of Eternity', 'Marcus Reed', 'Science Fiction', 1998, 'In a distant future where humanity has colonized Mars, a brilliant scientist discovers an ancient artifact that challenges the foundations of time and space. Her journey unveils secrets that could reshape the destiny of mankind.'),
  ('Whispers in the Wind', 'Samuel Grey', 'Mystery', 2010, 'A renowned detective investigates a series of baffling disappearances in a small coastal town. With subtle clues hidden in the wind and secrets among the residents, the case unravels into a labyrinth of deception and unforeseen danger.'),
  ('The Last Horizon', 'Clara Jensen', 'Adventure', 2005, 'In a world teetering on the edge of collapse, a courageous explorer sets out to find a fabled sanctuary beyond the known horizon. Her journey through treacherous lands reveals unexpected allies and hidden truths that challenge her beliefs.'),
  ('Fragments of Memory', 'Liam Carter', 'Drama', 2015, 'A struggling artist battles personal demons while reconnecting with fragmented memories of a lost childhood. Through expressive paintings and encounters with enigmatic strangers, he pieces together his past and finds a path toward healing and self-discovery.'),
  ('Celestial Bonds', 'Nina Kumar', 'Romance', 2020, 'A love story unfolds between two souls from different worlds. Their cosmic connection defies cultural boundaries and time, as they navigate challenges, family expectations, and unforeseen obstacles. Their bond grows stronger, igniting hope and resilience in the face of adversity.'),
  ('The Clockwork Enigma', 'Oliver Swift', 'Steampunk', 2012, 'In a Victorian-inspired world filled with intricate gears and mechanical marvels, an ingenious inventor uncovers a mysterious device that could alter the balance of power. His discovery thrusts him into a conspiracy filled with peril, wonder, and betrayal.'),
  ('Mystic Waters', 'Sofia Rivera', 'Magical Realism', 2008, 'A young woman returns to her ancestral village, where mystical waters are believed to possess healing properties. As she delves into folklore and encounters enigmatic traditions, she begins to understand the hidden magic that connects her to nature.'),
  ('Beneath the Surface', 'Gavin Lee', 'Thriller', 2018, 'A marine biologist discovers a secret underwater facility during a routine expedition. As she uncovers a conspiracy involving environmental exploitation and technological horrors, she must race against time to expose the truth before it destroys an entire ecosystem.'),
  ('Dance of the Fireflies', 'Isabella Martinez', 'Young Adult', 2013, 'In a small town where fireflies illuminate the nights, two teenagers form an unexpected bond through shared dreams and clandestine adventures. Their journey weaves together elements of magic, friendship, and first love, transforming their ordinary lives forever.'),
  ('The Iron Labyrinth', 'Derek Thomson', 'Historical Fiction', 1995, 'Set against the backdrop of a war-torn empire, a cunning strategist navigates a labyrinth of political intrigue and shifting alliances. His relentless pursuit of justice and power leads him through treacherous landscapes filled with betrayal and sacrifice.'),
  ('Neon Shadows', 'Ava Chen', 'Cyberpunk', 2022, 'In a futuristic metropolis dominated by corporate power and neon-lit streets, a skilled hacker uncovers a plot that could shatter the fragile balance between technology and humanity. Risking everything, she navigates digital realms to expose the hidden conspiracies.'),
  ('Rivers of Destiny', 'Benjamin Ortiz', 'Adventure', 2007, 'A fearless explorer embarks on a journey down an untamed river, encountering perilous rapids and ancient ruins. Along the way, he unravels the mystic legends of his ancestors and finds that destiny is as unpredictable as the water''s flow.'),
  ('Siren Song', 'Olivia King', 'Fantasy', 2019, 'When an alluring siren casts a spell over a coastal town, its inhabitants find themselves entangled in a web of magic and mystery. A brave local musician unravels the secret behind the mesmerizing melodies to save his community from doom.'),
  ('Veil of Secrets', 'James Park', 'Mystery', 2003, 'A journalist stumbles upon a series of encrypted messages leading to a hidden network of espionage and forgotten secrets. As the investigation deepens, dangerous forces conspire to silence the truth, forcing him to confront perilous risks in pursuit of justice.'),
  ('Crimson Empire', 'Natalie Ford', 'Historical Fiction', 1990, 'Set in a turbulent era of conquest and betrayal, a rebellious noblewoman challenges the oppressive regime of a crimson empire. Her daring exploits and strategic brilliance ignite a revolution, uniting disparate factions in the fight for freedom and honor.'),
  ('The Silent Archive', 'Ethan Brooks', 'Thriller', 2016, 'An archivist at a secluded library stumbles upon classified documents that reveal a shadowy government agenda. As she delves deeper into the silent archives, dangerous truths emerge, thrusting her into a world of espionage and life-threatening secrets.'),
  ('Garden of Whispers', 'Mia Collins', 'Literary Fiction', 2011, 'In a secluded estate filled with ancient gardens, a family confronts long-buried secrets and generational conflicts. Amid whispers of the past, love and loss intertwine, revealing the delicate balance between memory and the inexorable passage of time.'),
  ('Celestial Journey', 'Victor Morales', 'Science Fiction', 2004, 'A daring astronaut embarks on an interstellar voyage, seeking a new home for humanity. Along the way, unexpected cosmic phenomena and encounters with alien life challenge his understanding of existence, forcing him to redefine the limits of exploration and discovery.'),
  ('Emerald Veil', 'Hannah Price', 'Fantasy', 2017, 'In a land cloaked in mystery, a young mage embarks on a journey to unveil the secrets of an ancient emerald veil. Along the way, she encounters mythical creatures, unravels hidden lore, and embraces her emerging magical powers with determination.');
