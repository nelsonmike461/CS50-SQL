-- Find all albums by a given artist
SELECT *
FROM "albums"
WHERE "artist_id" = (
    SELECT "id"
    FROM "artists"
    WHERE "name" = 'Artist Name'
);

-- Find all tracks in a given album
SELECT *
FROM "tracks"
WHERE "album_id" = (
    SELECT "id"
    FROM "albums"
    WHERE "title" = 'Album Title'
);

-- Find all tracks of a given genre
SELECT *
FROM "tracks"
WHERE "genre_id" = (
    SELECT "id"
    FROM "genres"
    WHERE "name" = 'Genre Name'
);

-- Add a new artist
INSERT INTO "artists" ("name")
VALUES ('New Artist');

-- Add a new album
INSERT INTO "albums" ("title", "artist_id")
VALUES ('New Album', 1); -- assuming the artist with ArtistId 1 exists

-- Add a new track
INSERT INTO "tracks" ("name", "album_id", "media_type_id", "genre_id", "composer", "milliseconds", "bytes", "unit_price")
VALUES ('New Track', 1, 1, 1, 'Composer Name', 200000, 5000000, 0.99); -- assuming the album, media type, and genre with Id 1 exist
