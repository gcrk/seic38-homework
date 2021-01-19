CREATE TABLE centers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  country TEXT,
  website TEXT
);

-- seed data
INSERT INTO centers (name, country, website) VALUES ("Cat's Inn Kerama", "Japan", "http://www.catsinnkerama.com");
INSERT INTO centers (name, country, website) VALUES ("Plongee Malte", "Malta", "http://www.plongeemalte.com");
INSERT INTO centers (name, country, website) VALUES ("Prodive", "Australia", "http://www.prodive.com");

CREATE TABLE instructors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  age INTEGER,
  center_id INTEGER
);

INSERT INTO instructors (name, age, center_id) VALUES ("Clara", 29, 1);
INSERT INTO instructors (name, age, center_id) VALUES ("Jim", 34, 2);
INSERT INTO instructors (name, age, center_id) VALUES ("George", 46, 3);
INSERT INTO instructors (name, age, center_id) VALUES ("Kim", 24, 1);
INSERT INTO instructors (name, age, center_id) VALUES ("Sara", 31, 2);
INSERT INTO instructors (name, age, center_id) VALUES ("John", 36, 3);
