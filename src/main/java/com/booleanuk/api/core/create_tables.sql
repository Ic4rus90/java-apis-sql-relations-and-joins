CREATE TABLE IF NOT EXISTS Film(
    film_id serial PRIMARY KEY,
    film_name VARCHAR(255) NOT NULL UNIQUE,
    film_genre VARCHAR(50) NOT NULL,
    film_release_year INT NOT NULL CHECK (1800 <= film_release_year AND film_release_year <= 9999),
    film_score INT NOT NULL CHECK (0 <= film_score AND film_score <= 10),
    director_id INT REFERENCES Director(director_id) NOT NULL,
    star_id INT REFERENCES Star(star_id) NOT NULL,
    writer_id INT REFERENCES Writer(writer_id) NOT NULL
);

CREATE TABLE IF NOT EXISTS Director(
    director_id SERIAL PRIMARY KEY,
    director_name VARCHAR(50) NOT NULL,
    director_country VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Star(
    star_id SERIAL PRIMARY KEY,
    star_name VARCHAR(50) NOT NULL,
    star_dob DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Writer(
    writer_id SERIAL PRIMARY KEY,
    writer_name VARCHAR(50) NOT NULL,
    writer_email VARCHAR(50) NOT NULL
);

