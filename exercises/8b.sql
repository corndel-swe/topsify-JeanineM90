-- Yeah we didn't set up cascading deletes :'(
-- Could you delete Dua Lipa's albums, too?
-- Don't worry about the tracks, I'll get someone else to do that. kthx!

/*
DELETE FROM albums
JOIN artists ON artists.name = albums.artist_id
WHERE artists.name = 'Dua Lipa'
*/

-- use artist id fro artists.json:

delete 
from albums
where artist.id = '6M2wZ9GZgrQXHCFfjv46we'

