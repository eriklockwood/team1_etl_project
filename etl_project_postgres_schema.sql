-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/z4w5qc
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
DROP TABLE IF EXISTS
	movie,
	actor,
	movie_actor,
	lang,
	lang_movie,
	genre,
	movie_genre,
	country,
	movie_country,
	director,
	movie_drt,
	rating,
	CASCADE;

CREATE TABLE "movie" (
    "movie_id" INT   NOT NULL,
    "title" VARCHAR(255)   NOT NULL,
    "year" INT   NOT NULL,
    "duration" INT   NULL,
    "budget" NUMERIC(15,2)   NULL,
    "worlwide_gross_income" NUMERIC(15,2)   NULL,
    "netflix" BOOL NOT  NULL,
    "hulu" BOOL   NOT NULL,
    "prime" BOOL   NOT NULL,
    "disney" BOOL   NOT NULL,
    CONSTRAINT "pk_movie" PRIMARY KEY (
        "movie_id"
     )
);


CREATE TABLE "actor" (
    "actor_id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    "gender" VARCHAR(10)   NOT NULL,
    "birth_name" VARCHAR(255)   NULL,
    "height" INT   NULL,
    "birth_date" DATE   NULL,
    "death_date" DATE   NULL,
    "actor_facebook_likes" INT   NULL,
    CONSTRAINT "pk_actor" PRIMARY KEY (
        "actor_id"
     )
);

CREATE TABLE "movie_actor" (
    "movie_id" INT   NOT NULL,
    "actor_id" INT   NOT NULL
);

CREATE TABLE "lang" (
    "lang_id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_lang" PRIMARY KEY (
        "lang_id"
     )
);

CREATE TABLE "lang_movie" (
    "movie_id" INT   NOT NULL,
    "lang_id" INT   NOT NULL
);

CREATE TABLE "genre" (
    "genre_id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_genre" PRIMARY KEY (
        "genre_id"
     )
);

CREATE TABLE "movie_genre" (
    "movie_id" INT   NOT NULL,
    "genre_id" INT   NOT NULL
);

CREATE TABLE "country" (
    "country_id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_country" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "movie_country" (
    "movie_id" INT   NOT NULL,
    "country_id" INT   NOT NULL
);

CREATE TABLE "director" (
    "director_id" INT   NOT NULL,
    "name" VARCHAR(255)   NOT NULL,
    "director_facebook_likes" INT   NULL,
    CONSTRAINT "pk_director" PRIMARY KEY (
        "director_id"
     )
);

CREATE TABLE "movie_drt" (
    "movie_id" INT   NOT NULL,
    "director_id" INT   NOT NULL
);

CREATE TABLE "rating" (
    "rating_id" INT   NOT NULL,
    "movie_id" INT   NOT NULL,
    "imdb" NUMERIC(6,2),
    "rotten_tomatoes" NUMERIC(6,2),
    CONSTRAINT "pk_rating" PRIMARY KEY (
        "movie_id"
     )
);

ALTER TABLE "movie_actor" ADD CONSTRAINT "fk_movie_actor_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_actor" ADD CONSTRAINT "fk_movie_actor_actor_id" FOREIGN KEY("actor_id")
REFERENCES "actor" ("actor_id");

ALTER TABLE "lang_movie" ADD CONSTRAINT "fk_lang_movie_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "lang_movie" ADD CONSTRAINT "fk_lang_movie_lang_id" FOREIGN KEY("lang_id")
REFERENCES "lang" ("lang_id");

ALTER TABLE "movie_genre" ADD CONSTRAINT "fk_movie_genre_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_genre" ADD CONSTRAINT "fk_movie_genre_genre_id" FOREIGN KEY("genre_id")
REFERENCES "genre" ("genre_id");

ALTER TABLE "movie_country" ADD CONSTRAINT "fk_movie_country_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_country" ADD CONSTRAINT "fk_movie_country_country_id" FOREIGN KEY("country_id")
REFERENCES "country" ("country_id");

ALTER TABLE "movie_drt" ADD CONSTRAINT "fk_movie_drt_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");

ALTER TABLE "movie_drt" ADD CONSTRAINT "fk_movie_drt_director_id" FOREIGN KEY("director_id")
REFERENCES "director" ("director_id");

ALTER TABLE "rating" ADD CONSTRAINT "fk_rating_movie_id" FOREIGN KEY("movie_id")
REFERENCES "movie" ("movie_id");