#!/bin/bash

sqlite3 db/db.sqlite "DROP TABLE IF EXISTS genres;"
sqlite3 db/db.sqlite "DROP TABLE IF EXISTS track_genres;"

sqlite3 db/db.sqlite < exercises/9a.sql
sqlite3 db/db.sqlite < exercises/9b.sql

sqlite3 db/db.sqlite "INSERT INTO genres (name) VALUES ('Pop'), ('Rock'), ('Classical'), ('Hip Hop');"
sqlite3 db/db.sqlite "INSERT INTO track_genres (track_id, genre_id) VALUES ('1MpCaOeUWhox2Fgigbe1cL', 1), ('1MpCaOeUWhox2Fgigbe1cL', 2), ('0mKGwFMHzTprtS2vpR3b6s', 1), ('0mKGwFMHzTprtS2vpR3b6s', 2);"

sqlite3 db/db.sqlite "SELECT * FROM track_genres;" | diff - "$(dirname "$0")/9b.txt";