# SQL Movie Database Management System

## About Project
This project is developed using Oracle SQL to manage movie-related information. It stores and manages details about movies, actors, directors, and genres using relational database concepts.

## ER Diagram

```mermaid
erDiagram
    ACTOR {
        int actor_id PK
        string name
        string gender
        date date_of_birth
    }

    MOVIE {
        int movie_id PK
        string title
        int release_year
        int duration
    }

    DIRECTOR {
        int director_id PK
        string name
        date date_of_birth
    }

    GENRE {
        int genre_id PK
        string genre_name
    }

    ACT_IN {
        int actor_id FK
        int movie_id FK
    }

    BELONGS_TO {
        int movie_id FK
        int genre_id FK
    }

    ACTOR ||--o{ ACT_IN : "acts in"
    MOVIE ||--o{ ACT_IN : "features"

    DIRECTOR ||--o{ MOVIE : "directs"

    GENRE ||--o{ BELONGS_TO : "contains"
    MOVIE ||--o{ BELONGS_TO : "belongs to"
```

## Technologies Used
- Oracle SQL
- Oracle Live SQL
- DBMS

## Database Tables
1. ACTOR
2. DIRECTOR
3. GENRE
4. MOVIE
5. ACT_IN
6. BELONGS_TO

## Concepts Used
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- CHECK Constraints
- INSERT Queries
- SELECT Queries
- JOIN Operations

## Project Files
- `movie_database.sql` - creates the tables, inserts sample data, and defines the movie database schema
- `movie_queries.sql` - contains sample SELECT queries for analysis and retrieval

## How to Run
1. Open Oracle SQL Developer or Oracle Live SQL.
2. Run the script in `movie_database.sql` to create the database schema and populate sample records.
3. Run the queries in `movie_queries.sql` to test joins, filtering, and grouped reports.

## Author
- peeyush kumar 
