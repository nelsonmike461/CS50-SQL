-- Represent artists in the music database
CREATE TABLE "artists" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- Represent albums in the music database
CREATE TABLE "albums" (
    "id" INTEGER,
    "title" TEXT NOT NULL,
    "artist_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY("artist_id") REFERENCES "artists"("id")
);

-- Represent tracks in the music database
CREATE TABLE "tracks" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "album_id" INTEGER,
    "media_type_id" INTEGER,
    "genre_id" INTEGER,
    "composer" TEXT,
    "milliseconds" INTEGER,
    "bytes" INTEGER,
    "unit_price" REAL,
    PRIMARY KEY("id"),
    FOREIGN KEY("album_id") REFERENCES "albums"("id")
);

-- Represent genres in the music database
CREATE TABLE "genres" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- Represent media types in the music database
CREATE TABLE "media_types" (
    "id" INTEGER,
    "name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY("id")
);

-- Create indexes to speed common searches
CREATE INDEX "artist_name_search" ON "artists" ("name");
CREATE INDEX "album_title_search" ON "albums" ("title");
CREATE INDEX "track_name_search" ON "tracks" ("name");
CREATE INDEX "genre_name_search" ON "genres" ("name");
CREATE INDEX "media_type_name_search" ON "media_types" ("name");
