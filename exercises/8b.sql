-- Yeah we didn't set up cascading deletes :'(
-- Could you delete Dua Lipa's albums, too?
-- Don't worry about the tracks, I'll get someone else to do that. kthx!

DELETE FROM albums
WHERE artist_id = ''
-- join to artists table for artist id 