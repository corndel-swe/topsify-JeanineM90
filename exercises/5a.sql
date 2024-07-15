-- How many tracks are longer than 5 minutes?

-- tracks table, duration_ms 

/*
select *
from tracks
where duration_ms > 5 minutes -- should be numeric
*/

/*
COUNT(): Counts the number of rows in a dataset.
AVG(): Calculates the average value of a numeric column.
SUM(): Adds up the total of a numeric column.
*/

-- 

select COUNT(id)
from tracks 
where duration_ms > 300000