-- Country Users
-- Create table users
CREATE TABLE IF NOT EXISTS users (id INTEGER AUTO_INCREMENT NOT NULL, email VARCHAR(255) NOT NULL UNIQUE, name VARCHAR(255), country ENUM('US', 'CO', 'TN') NOT NULL, PRIMARY KEY (id));
