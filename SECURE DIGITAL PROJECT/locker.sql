CREATE DATABASE locker_db;
USE locker_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password_hash VARCHAR(256)
);

CREATE TABLE documents (
    doc_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    doc_name VARCHAR(100),
    encrypted_content TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE access_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    doc_name VARCHAR(100),
    access_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
