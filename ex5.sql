-- SELECT *
-- FROM Track
-- JOIN Genre
-- ON Track.GenreId = Genre.GenreId LIMIT 10;

-- SELECT Artist.Name, COUNT(*) 
-- FROM Track
-- JOIN Album
-- ON Track.Album	Id = Album.AlbumId JOIN Artist
-- ON Album.ArtistId = Artist.ArtistID LIMIT 10;

-- SELECT Genre.Name, COUNT(*)
-- FROM Track
-- JOIN Genre
-- ON track.genreid = genre.genreid
-- WHERE Genre.Name = 'Rock';

SELECT Artist.Name, COUNT(*) 
FROM Track
JOIN Album
ON Track.AlbumId = Album.AlbumId 
JOIN Artist
ON Artist.ArtistId = Album.ArtistID
WHERE Artist.Name LIKE '%R.E.M.%' AND Artist.Name NOT LIKE 'R.E.M.';

