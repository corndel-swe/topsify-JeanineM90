-- List the names of the 10 newest albums in the database

/*
select top 10 names * 
from albums
order by release_date desc
*/

select names  
from albums
order by release_date desc
limit 10;