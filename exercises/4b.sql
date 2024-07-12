-- List the 10 slowest tracks in the database
-- Order by tempo, with the slowest first
-- Include the track id, track title and track tempo

-- tempo is in features table 
-- join on track id 

/*
select tra.id, tra.name, feat.tempo
from tracks tra
inner join features feat on feat.track_id = tra.id
order by feat.tempo asc
limit 10
*/

select feat.track_id, tra.name, feat.tempo
from tracks tra
inner join features feat on feat.track_id = tra.id
order by feat.tempo asc
limit 10