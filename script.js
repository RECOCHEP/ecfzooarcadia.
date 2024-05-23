document.getElementById('avisForm').addEventListener('submit', function(event) {
    event.preventDefault();
    
    // Récupérer les valeurs du formulaire
    var pseudo = document.getElementById('pseudo').value;
    var avis = document.getElementById('avis').value;
    
    // Envoyer les données au serveur (à implémenter)
    console.log('Pseudo: ' + pseudo + ', Avis: ' + avis);
    
    // Effacer les champs du formulaire
    document.getElementById('pseudo').value = '';
    document.getElementById('avis').value = '';
    
    // Afficher un message de confirmation
    alert('Merci pour votre avis !');
});

function afficherDetail(habitat) {
    // Rediriger vers la page détaillée de l'habitat (à implémenter)
    console.log('Afficher les détails de ' + habitat);
}