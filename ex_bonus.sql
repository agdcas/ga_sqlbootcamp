--EXTRA SQL PRACTICE

-- What is the average price of a track
SELECT AVG(UnitPrice) from TRACK
--Answer: $10.5

-- What's the name of the oldest employee
SELECT FirstName, LastName, BirthDate FROM Employee
ORDER BY BirthDate ASC
LIMIT 10
---Answer: Margaret Park

-- How many hours of content are in the iTunes library?
SELECT SUM(Milliseconds)/1000/60/60
FROM Track;
--Answer: 382

-- How many customers use a yahoo email address
SELECT COUNT(*) 
FROM Customer
WHERE Email LIKE '%@yahoo.com';
--Answer: 18

-- How many different countries have been invoiced?
SELECT COUNT(DISTINCT BillingCountry) 
FROM Invoice;
--Answer: 24

-- How many customers don't have a State in their customer profiles?
SELECT COUNT(*) 
FROM Customer
WHERE State IS NULL;
--Answer: 29

-- Which Genre name has the fewest tracks?
SELECT Genre.Name, COUNT (DISTINCT TrackID)
FROM Track
JOIN Genre
ON Track.GenreID = Genre.GenreID
GROUP BY Genre.Name;
--Answer: Opera (1)

-- What is the most number of tracks on an album? 

SELECT Album.Title, COUNT (TrackID) AS Tracks
FROM Track
JOIN Album
ON Track.AlbumID = Album.AlbumID
GROUP BY Album.Title
ORDER BY Tracks DESC;
--Answer: 57

-- What is the name of the longest R&B/Soul track?
SELECT Track.Name, Track.Milliseconds
FROM Track
JOIN Genre
ON Track.GenreID = Genre.GenreId
WHERE Genre.Name = 'R&B/Soul'
GROUP BY Track.Name
ORDER BY Track.Milliseconds DESC;
--Rehab (Hot Chip Remix)

-- How many tracks are video?  (e.g., movies, tv shows and music videos)  
-- Hint: Check playlists
SELECT MediaType.Name, COUNT(*)
FROM Track
JOIN MediaType
ON Track.MediaTypeID = MediaType.MediaTypeId
GROUP BY MediaType.Name;
--Answer: 214 (but that's not quite right)

SELECT COUNT(*)
FROM Playlist
JOIN PlaylistTrack
ON Playlist.PlaylistID = PlaylistTrack.PlaylistID 
JOIN Track
ON PlaylistTrack.TrackID = Track.TrackID
WHERE Playlist.Name IN ('Movies','TV Shows','Music Videos');
--Answer: 427 (this one is right)
