
DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space



CREATE TABLE planet_moons
(
  id SERIAL PRIMARY KEY, 
  moons TEXT[]
);

 INSERT INTO planet_moons (moons)

 VALUES 
  ('{"The Moon"}'),
  ('{"Phobos", "Deimos"}'),
  ('{}'),
  ('{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('{}'),
  ( '{}');


CREATE TABLE planet
(id SERIAL PRIMARY KEY, name TEXT NOT NULL, moon_id INTEGER NOT NULL REFERENCES planet_moons, orbital_period_in_years FLOAT NOT NULL, orbits_around TEXT NOT NULL, galaxy TEXT NOT NULL);

INSERT INTO planet
  (name, orbital_period_in_years, orbits_around, galaxy)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way'),
  ('Mars', 1.88, 'The Sun', 'Milky Way'),
  ('Venus', 0.62, 'The Sun', 'Milky Way'),
  ('Neptune', 164.8,  'The Sun', 'Milky Way'),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way'),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way');

