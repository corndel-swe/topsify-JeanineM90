<p align="center">
  <img width="200px" src="logo.png" alt="Topsify logo"/>
</p>

# Topsify

Welcome to Topsify! We're a huge music streaming service with a global user base
and eye-watering amounts of data.

We're so glad you're here - corporate have been asking for reports, stats and
data, but the team is stretched thin at the moment trying to get the UI right.
Let's get working on the database straight away.

## Getting started

1. First up: fork and clone this repo.

1. Open a terminal in the root of the project, and run the following command to
   set up the database:

   ```bash
   sqlite3 db/topsify.db < db/reset.sql
   ```

1. Have a look at `queries/example.sql` to see how to query the database. Try
   running the example query shown in this file and see the results.

## Database

Here's a glance at how the database is set up.

```mermaid
erDiagram
    users {
        INTEGER id PK "Primary Key"
        TEXT username "Unique"
        TEXT firstName
        TEXT lastName
        TEXT email "Unique"
        TEXT avatar
        TEXT password "Hashed"
    }

    artists {
        TEXT id PK "Primary Key"
        TEXT name
        TEXT url
    }

    albums {
        TEXT id PK "Primary Key"
        TEXT name
        TEXT artist_id FK "Foreign Key to artists"
        TEXT release_date
        TEXT image_url
    }

    tracks {
        TEXT id PK "Primary Key"
        TEXT album_id FK "Foreign Key to albums"
        TEXT name
        BOOLEAN explicit
        TEXT preview_url
        INTEGER disc_number
        INTEGER track_number
        REAL duration_ms
    }

    features {
        TEXT track_id PK "Primary Key, FK to tracks"
        REAL danceability
        REAL energy
        INTEGER key
        REAL loudness
        INTEGER mode
        REAL speechiness
        REAL acousticness
        REAL instrumentalness
        REAL liveness
        REAL valence
        REAL tempo
        INTEGER time_signature
    }

    artists ||--o{ albums : "has"
    albums ||--o{ tracks : "contains"
    tracks ||--|| features : "described by"
```

## Running tests

To check if your deep dive tests pass, you can run:

```bash
./test.sh
```

> [!WARNING]
>
> Make sure you include the `./`, and that you run this from the proejct root
> directory.

> [!TIP]
>
> You can also specify the tests to run like so:
>
> ```bash
> ./test.sh 1a 1b 2a 2b 3a
> ```

> [!NOTE]
> 
> If you can't run `./test.sh`, you might need to make it executable first.
>
> To do this, run
>
> ```bash
> chmod +x ./test.sh
> ```
>
> and try running
>
> ```bash
> ./test.sh
> ```
>
> again.

## Day 1

### Deep dive

| Reading                                                                                                                                                                   | Exercises             |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------- |
| [Select queries](https://tech-docs.corndel.com/sql/select-queries.html) and [Selecting with conditions](https://tech-docs.corndel.com/sql/selecting-with-conditions.html) | `1a.sql` and `1b.sql` |
| [Ordering results](https://tech-docs.corndel.com/sql/ordering-results.html)                                                                                               | `2a.sql` and `2b.sql` |
| [Paginating results](https://tech-docs.corndel.com/sql/limit-offset.html)                                                                                                 | `3a.sql` and `3b.sql` |

### Workshop

With that done, head to CONTRIBUTING.md to see how you can help generating some
reports.

## Day 2

### Deep dive

| Reading                                                                         | Exercises             |
| ------------------------------------------------------------------------------- | --------------------- |
| [Inner joins](https://tech-docs.corndel.com/sql/inner-joins.html)               | `4a.sql` and `4b.sql` |
| [Aggregate queries](https://tech-docs.corndel.com/sql/aggregate-queries.html)   | `5a.sql` and `5b.sql` |
| [Grouped aggregates](https://tech-docs.corndel.com/sql/grouped-aggregates.html) | `6a.sql` and `6b.sql` |

Also, take a look at
[Many to many relationships](https://tech-docs.corndel.com/sql/many-to-many.html) -
this will help you with the workshop.

### Workshop

Now you know about join, we can take our reports to the next level. Head to
CONTRIBUTING.md to help!

## Day 3

### Deep dive

| Reading                                                                   | Exercises             |
| ------------------------------------------------------------------------- | --------------------- |
| [Writing data](https://tech-docs.corndel.com/sql/writing-data.html)       | `7a.sql` and `7b.sql` |
| [Writing data](https://tech-docs.corndel.com/sql/writing-data.html)       | `8a.sql` and `8b.sql` |
| [Creating tables](https://tech-docs.corndel.com/sql/creating-tables.html) | `9a.sql` and `9b.sql` |

### Workshop

We really need the playlists feature out as soon as possible. Take a look at
CONTRIBUTING.md to find out how you can help!
