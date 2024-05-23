CREATE DATABASE IF NOT EXISTS zoo_db;
USE zoo_db;

-- Table des utilisateurs
CREATE TABLE IF NOT EXISTS utilisateurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    role ENUM('administrateur', 'veterinaire', 'employe') NOT NULL
);

-- Table des services
CREATE TABLE IF NOT EXISTS services (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    description TEXT
);

-- Table des habitats
CREATE TABLE IF NOT EXISTS habitats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    description TEXT
);

-- Table des animaux
CREATE TABLE IF NOT EXISTS animaux (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(255) NOT NULL,
    race VARCHAR(255) NOT NULL,
    image VARCHAR(255) NOT NULL,
    habitat_id INT,
    FOREIGN KEY (habitat_id) REFERENCES habitats(id)
);

-- Table des avis des visiteurs
CREATE TABLE IF NOT EXISTS avis_visiteurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pseudo VARCHAR(255) NOT NULL,
    avis TEXT NOT NULL,
    valide BOOLEAN DEFAULT FALSE
);

-- Table des comptes rendus des veterinaires
CREATE TABLE IF NOT EXISTS comptes_rendus_veterinaires (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT,
    etat_animal TEXT,
    nourriture_proposee TEXT,
    grammage_nourriture DECIMAL(10, 2),
    date_passage DATE,
    detail_etat_animal TEXT,
    FOREIGN KEY (animal_id) REFERENCES animaux(id)
);

-- Table de consultation des habitats
CREATE TABLE IF NOT EXISTS consultations_habitats (
    id INT AUTO_INCREMENT PRIMARY KEY,
    animal_id INT,
    consultation_count INT DEFAULT 0,
    FOREIGN KEY (animal_id) REFERENCES animaux(id)
);