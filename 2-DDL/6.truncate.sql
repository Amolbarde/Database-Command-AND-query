-- *Removes all rows from a table (structure stays).

TRUNCATE TABLE users;

-- Faster than DELETE, cannot be rolled back in many DBs.
