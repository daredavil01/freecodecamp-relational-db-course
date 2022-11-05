
CREATE TABLE galaxy(
  galaxy_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(100) NOT NULL, 
  age_in_millions_of_years NUMERIC(4,2), 
  galaxy_type VARCHAR(30),
  distance_from_earth INT
  );
CREATE TABLE star(
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(100) NOT NULL, 
  age_in_millions_of_years NUMERIC(4,2), 
  distance_from_earth INT,
  galaxy_id INT
);
CREATE TABLE planet(
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(100) NOT NULL, 
  age_in_millions_of_years NUMERIC(4,2), 
  is_spherical BOOLEAN,
  distance_from_earth INT,
  star_id INT
);
CREATE TABLE moon(
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description VARCHAR(100) NOT NULL, 
  age_in_millions_of_years NUMERIC(4,2), 
  is_spherical BOOLEAN,
  distance_from_earth INT,
  planet_id INT
);

CREATE TABLE astraiod(
  astraiod_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  description TEXT NOT NULL, 
  is_hellical BOOLEAN
);

ALTER TABLE star ADD CONSTRAINT fk_galaxy_id FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id);

ALTER TABLE planet ADD CONSTRAINT fk_star_id FOREIGN KEY(star_id) REFERENCES star(star_id);

ALTER TABLE moon ADD CONSTRAINT fk_planet_id FOREIGN KEY(planet_id) REFERENCES planet(planet_id);

INSERT INTO galaxy(name, description, age_in_millions_of_years, galaxy_type, distance_from_earth)
VALUES('galaxy1','description1',12.56,'A', 15),
      ('galaxy2','description2',10.56,'A', 1500),
      ('galaxy3','description3',13.56,'B', 100),
      ('galaxy4','description4',14.56,'B', 56),
      ('galaxy5','description5',16.56,'C', 63),
      ('galaxy6','description6',13.56,'C', 5);


INSERT INTO star(name, description, age_in_millions_of_years, distance_from_earth, galaxy_id)
VALUES('star1','description1',12.56, 15, 1),
      ('star2','description1',10.56, 15, 1),
      ('star3','description1',12.56, 15, 2),
      ('star4','description1',12.56, 15, 2),
      ('star5','description1',12.56, 15, 3),
      ('star6','description1',12.56, 15, 3);


INSERT INTO planet(name, description, age_in_millions_of_years, is_spherical, distance_from_earth, star_id)
VALUES('p1','description1',12.56, true, 15, 1),
('p2','description1',12.56, true, 15, 1),
('p3','description1',12.56, true, 15, 1),
('p4','description1',12.56, true, 15, 1),
('p5','description1',12.56, true, 15, 1),
('p6','description1',12.56, true, 15, 1),
('p7','description1',12.56, true, 15, 1),
('p8','description1',12.56, true, 15, 1),
('p9','description1',12.56, true, 15, 1),
('p10','description1',12.56, true, 15, 1),
('p11','description1',12.56, true, 15, 1),
('p12','description1',12.56, true, 15, 1);

INSERT INTO moon(name, description, age_in_millions_of_years, is_spherical, distance_from_earth, planet_id)
VALUES('m1','description1',12.56, true, 15, 1),
('m2','description1',12.56, true, 15, 1),
('m3','description1',12.56, true, 15, 1),
('m4','description1',12.56, true, 15, 1),
('m5','description1',12.56, true, 15, 1),
('m6','description1',12.56, true, 15, 1),
('m7','description1',12.56, true, 15, 1),
('m8','description1',12.56, true, 15, 1),
('m9','description1',12.56, true, 15, 1),
('m10','description1',12.56, true, 15, 1),
('m11','description1',12.56, true, 15, 1),
('m12','description1',12.56, true, 15, 1),
('m13', 'd2', 12.56, true, 15, 1),
('m14', 'd2', 12.56, true, 15, 1),
('m15', 'd2', 12.56, true, 15, 1),
('m16', 'd2', 12.56, true, 15, 1),
('m17', 'd2', 12.56, true, 15, 1),
('m18', 'd2', 12.56, true, 15, 1),
('m19', 'd2', 12.56, true, 15, 1),
('m20', 'd2', 12.56, true, 15, 1);


INSERT INTO astraiod(name, description, is_hellical)
VALUES('a1','d1', true),
('a2','d2', true),
('a3','d3', true);
