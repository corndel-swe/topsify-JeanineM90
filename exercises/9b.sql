-- We'll also be making a junction table called "track_genres"

-- It will need two columns:
  -- track_id (this is a string)
  -- genre_id (this is an integer)

-- Of course, these need to be foreign keys to the relevant tables

-- Could you write the SQL to set up this junction table?

CREATE table track_genres (
track_id TEXT NOT NULL --PRIMARY KEY,
genre_id INTEGER NOT NULL --PRIMARY KEY,
FOREIGN KEY (track_id) REFERENCES track(id) ON DELETE CASCADE,
FOREIGN KEY (genre_id) REFERENCES genre(id) ON DELETE CASCADE
)