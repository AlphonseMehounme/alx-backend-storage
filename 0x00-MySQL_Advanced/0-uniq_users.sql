-- Creates table users if not exists
-- with attributes
CREATE TABLE IF NOT EXISTS users (id INTEGER AUTO_INCREMENT NOT NULL, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255), PRIMARY KEY (id));
