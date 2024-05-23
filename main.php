<?php
// Paramètres de connexion à la base de données
$host = 'localhost';
$dbname = 'zoo_db';
$username = 'zoodbadmin';
$password = 'password';

try {
    // Création de la connexion PDO
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    
    // Configuration des options de PDO
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    
    // Affichage d'un message en cas de succès
    echo "Connexion à la base de données réussie";
} catch (PDOException $e) {
    // En cas d'échec, affichage d'une erreur
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
}
$conn = null;
?>