-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.
-- sqlite3 db/pokemon.db < schema_migration.sql
CREATE TABLE IF NOT EXISTS pokemon(id INTEGER PRIMARY KEY, name TEXT, type TEXT);
