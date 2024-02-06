// Demander à l'utilisateur de saisir un mot
var mot = prompt("Veuillez saisir un mot :");

// Initialiser le compteur de voyelles à 0
var nombreVoyelles = 0;

// Parcourir chaque caractère du mot
for (var i = 0; i < mot.length; i++) {
    // Extraire le caractère courant
    var caractereCourant = mot.substr(i, 1);

    // Vérifier si le caractère est une voyelle (en minuscule)
    if ("aeiou".indexOf(caractereCourant.toLowerCase()) !== -1) {
        // Incrémenter le compteur de voyelles
        nombreVoyelles++;
    }
}

// Afficher le nombre de voyelles dans le mot
console.log("Le mot '" + mot + "' contient " + nombreVoyelles + " voyelle(s).");