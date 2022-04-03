CREATE DATABASE  IF NOT EXISTS beauty_salon 
    CHARACTER SET utf8 
    COLLATE utf8_unicode_ci
;

USE beauty_salon
;

CREATE TABLE IF NOT EXISTS barbershop (
    id_barbershop INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(255) NOT NULL,
    phone_number INT NULL,
    address VARCHAR(255) NOT NULL,
    turnover BIGINT NULL
);

CREATE TABLE IF NOT EXISTS client (
    id_client INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age TINYINT NOT NULL,
    post VARCHAR(255) NULL,
    cash INT NULL,
    id_barbershop INT NOT NULL,
    FOREIGN KEY (id_barbershop) REFERENCES barbershop (id_barbershop)
);

CREATE TABLE IF NOT EXISTS barber (
    id_barber INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age TINYINT  NOT NULL,
    experience INT NULL,
    wages INT NULL,
    id_barbershop INT NOT NULL,
    FOREIGN KEY (id_barbershop) REFERENCES barbershop (id_barbershop)
);

CREATE TABLE IF NOT EXISTS service (
    id_service INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    time int NOT NULL,
    description VARCHAR(255) NULL,
    price INT NOT NULL
);

CREATE TABLE IF NOT EXISTS completed_work (
    id_completed_work INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    number INT NOT NULL,
    date DATE NOT NULL,
    id_barber INT NOT NULL,
    FOREIGN KEY (id_barber) REFERENCES barber (id_barber)
);

CREATE TABLE IF NOT EXISTS barber_provides_service (
    id_barber INT NOT NULL,
    id_service INT NOT NULL,
    FOREIGN KEY (id_barber) REFERENCES barber (id_barber),
    FOREIGN KEY (id_service) REFERENCES service (id_service)
);

CREATE TABLE IF NOT EXISTS job_contains_service (
    id_completed_work INT NOT NULL,
    id_service INT NOT NULL,
    FOREIGN KEY (id_completed_work) REFERENCES completed_work (id_completed_work),
    FOREIGN KEY (id_service) REFERENCES service (id_service)
);