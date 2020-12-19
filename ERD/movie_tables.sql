CREATE TABLE "languages" (
  "language_id" INT PRIMARY KEY,
  "language" VARCHAR(100),
  "last_updated" timestamp
);
​
CREATE TABLE "countries" (
  "country_id" INT PRIMARY KEY,
  "country" VARCHAR(100),
  "last_updated" timestamp
);
​
CREATE TABLE "movies" (
  "movie_id" INT PRIMARY KEY,
  "title" VARCHAR(100),
  "writer" VARCHAR(20),
  "awards" VARCHAR(20),
  "year" DATE,
  "plot" VARCHAR(20),
  "poster" VARCHAR(20),
  "last_updated" timestamp
);
​
CREATE TABLE "genres" (
  "genre_id" INT PRIMARY KEY,
  "genre" VARCHAR(100),
  "last_updated" timestamp
);
​
CREATE TABLE "actors" (
  "actor_id" INT PRIMARY KEY,
  "actor_name" VARCHAR(100),
  "last_updated" timestamp
);
​
CREATE TABLE "film_actors" (
  "film_actor_id" INT PRIMARY KEY,
  "film_id" INT,
  "actor_id" INT,
  "last_updated" timestamp
);
​
CREATE TABLE "film_genres" (
  "film_genre_id" INT PRIMARY KEY,
  "film_id" INT,
  "genre_id" INT,
  "last_updated" timestamp
);
​
CREATE TABLE "ratings" (
  "rating_id" INT PRIMARY KEY,
  "movie_id" INT,
  "num_reviews" INT,
  "rating" INT,
  "rank" INT,
  "last_updated" timestamp
);
​
CREATE TABLE "directors" (
  "director_id" INT PRIMARY KEY,
  "director_name" VARCHAR(100),
  "last_updated" timestamp
);
​
CREATE TABLE "film_directors" (
  "film_director_id" INT PRIMARY KEY,
  "film_id" INT,
  "director_id" INT,
  "last_updated" timestamp
);
​
CREATE TABLE "film_languages" (
  "film_language_id" INT PRIMARY KEY,
  "film_id" INT,
  "language_id" INT,
  "last_updated" timestamp
);
​
CREATE TABLE "film_countries" (
  "film_country_id" INT PRIMARY KEY,
  "film_id" INT,
  "country_id" INT,
  "last_updated" timestamp
);
​
ALTER TABLE "film_actors" ADD FOREIGN KEY ("film_id") REFERENCES "movies" ("movie_id");
​
ALTER TABLE "film_actors" ADD FOREIGN KEY ("actor_id") REFERENCES "actors" ("actor_id");
​
ALTER TABLE "film_genres" ADD FOREIGN KEY ("film_id") REFERENCES "movies" ("movie_id");
​
ALTER TABLE "film_genres" ADD FOREIGN KEY ("genre_id") REFERENCES "genres" ("genre_id");
​
ALTER TABLE "ratings" ADD FOREIGN KEY ("movie_id") REFERENCES "movies" ("movie_id");
​
ALTER TABLE "film_directors" ADD FOREIGN KEY ("film_id") REFERENCES "movies" ("movie_id");
​
ALTER TABLE "film_directors" ADD FOREIGN KEY ("director_id") REFERENCES "directors" ("director_id");
​
ALTER TABLE "film_languages" ADD FOREIGN KEY ("film_id") REFERENCES "movies" ("movie_id");
​
ALTER TABLE "film_languages" ADD FOREIGN KEY ("language_id") REFERENCES "languages" ("language_id");
​
ALTER TABLE "film_countries" ADD FOREIGN KEY ("film_id") REFERENCES "movies" ("movie_id");
​
ALTER TABLE "film_countries" ADD FOREIGN KEY ("country_id") REFERENCES "countries" ("country_id");
​
ALTER TABLE "movies" ADD FOREIGN KEY ("year") REFERENCES "movies" ("movie_id");