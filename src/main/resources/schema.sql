CREATE TABLE IF NOT EXISTS user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(15),
    address VARCHAR(255),
    pin_code VARCHAR(10),
    city VARCHAR(255),
    country VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS incident (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    incident_id VARCHAR(20) UNIQUE,
    type VARCHAR(255),
    details TEXT,
    reported_date TIMESTAMP,
    priority VARCHAR(10),
    status VARCHAR(20),
    reporter_id BIGINT,
    FOREIGN KEY (reporter_id) REFERENCES user(id)
);