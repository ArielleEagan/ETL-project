-- Tables created using jupyter notebook

-- Table: public.films_master

CREATE TABLE IF NOT EXISTS public.films_master
(
    "Film" text COLLATE pg_catalog."default",
    "Year of Release" bigint,
    id bigint
)

TABLESPACE pg_default;

ALTER TABLE public.films_master
    OWNER to postgres;
	

-- Table: public.oscars

CREATE TABLE IF NOT EXISTS public.oscars
(
    "Film" text COLLATE pg_catalog."default",
    "Year of Release" bigint,
    id bigint,
    "Award" text COLLATE pg_catalog."default",
    "IMDB Rating" double precision,
    "IMDB Votes" text COLLATE pg_catalog."default",
    "Movie Genre" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.oscars
    OWNER to postgres;
	

-- Table: public.streaming

CREATE TABLE IF NOT EXISTS public.streaming
(
    "Film" text COLLATE pg_catalog."default",
    "Year of Release" bigint,
    id bigint,
    "IMDB Rating" text COLLATE pg_catalog."default",
    "Rotten Tomatoes Rating" text COLLATE pg_catalog."default",
    "Netflix" text COLLATE pg_catalog."default",
    "Hulu" text COLLATE pg_catalog."default",
    "Prime Video" text COLLATE pg_catalog."default",
    "Disney+" text COLLATE pg_catalog."default",
    "Movie Genre" text COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.streaming
    OWNER to postgres;
	

-- altered the three tables to establish primary and foreign keys
	
ALTER TABLE films_master
ADD PRIMARY KEY (id);

ALTER TABLE oscars
ADD CONSTRAINT fk_id FOREIGN KEY (id)
REFERENCES films_master (id);

ALTER TABLE streaming
ADD CONSTRAINT fk_id FOREIGN KEY (id)
REFERENCES films_master (id);