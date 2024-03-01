-- prepares a MySQL server for the project

CREATE DATABASE IF NOT EXISTS FluentFlow_db;
USE FluentFlow_db;
CREATE TABLE translations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    source_language VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    source_text VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    target_language VARCHAR(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    translated_text VARCHAR(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    timestamp TIMESTAMP
);
CREATE USER IF NOT EXISTS 'flow'@'localhost' IDENTIFIED BY 'fluent_flow_pwd';
GRANT ALL PRIVILEGES ON `FluentFlow_db`.* TO 'flow'@'localhost';
GRANT SELECT ON `performance_schema`.* TO 'flow'@'localhost';
FLUSH PRIVILEGES;
