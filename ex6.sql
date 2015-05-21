-- select sum(total)
-- from invoice 
-- where invoicedate between '2010-01-01' AND '2010-01-31';

SELECT AVG(Milliseconds)/60000 AS Minutes
FROM Track
JOIN Album
ON Track.AlbumId = Album.AlbumId 
JOIN Artist
ON Artist.ArtistId = Album.ArtistID
WHERE Artist.Name = 'R.E.M.';