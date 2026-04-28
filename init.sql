CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

CREATE TABLE IF NOT EXISTS Profile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    role VARCHAR(255) NOT NULL,
    bio TEXT,
    avatar_url VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS Contacts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Clear old generic data if you reran the script
TRUNCATE TABLE Profile;

INSERT INTO Profile (name, role, bio, avatar_url)
VALUES (
    'Diya Patel', 
    'Android Developer',
    'I am Diya Patel, currently pursuing a Bachelor of Technology in Information Technology at Silver Oak University. As an enthusiastic Android Developer, I am passionate about building user-centric and functional mobile applications.',
    'assets/images/Diya.png'
);