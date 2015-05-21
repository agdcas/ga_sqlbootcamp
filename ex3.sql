--select name, milliseconds, composer from track
--order by milliseconds desc limit 10;

--select name from artist
--where name LIKE '%R.E.M.%';

--select count(name) from track
--where name like '%LOVE%' and name not like '%GLOVE%';

--OR

select count(name) from track
where name like ' LOVE%' OR name like 'LOVE%';