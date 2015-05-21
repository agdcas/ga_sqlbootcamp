-- SELECT Artist.Name, COUNT(TrackID)
-- FROM Track
-- JOIN Album
-- ON Track.AlbumId = Album.AlbumId 
-- JOIN Artist
-- ON Artist.ArtistId = Album.ArtistID
-- GROUP BY Artist.Name
-- ORDER BY COUNT(TrackID) DESC
-- LIMIT 10;

SELECT Artist.Name, Album.Title, SUM(Milliseconds)/60000
FROM Track
JOIN Album
ON Track.AlbumId = Album.AlbumId 
JOIN Artist
ON Artist.ArtistId = Album.ArtistID
GROUP BY Artist.Name, Album.Title
ORDER BY SUM(Milliseconds) DESC
LIMIT 10;