CREATE DATABASE packetwatch;

USE packetwatch;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE packets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    source_ip VARCHAR(50) NOT NULL,
    destination_ip VARCHAR(50) NOT NULL,
    protocol VARCHAR(20) NOT NULL,
    packet_size INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users(username, password)
VALUES ('admin', 'admin123');
