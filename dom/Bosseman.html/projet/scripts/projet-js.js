// projet JS 2020 - codez 
// Permet de récupérer l'entier en tête de la chaîne de caractère passée en paramètre
function getNumber(chaine) {
    let str = new String(chaine);
    let index = str.indexOf("-");
    let nbre = str.substring(0, index);
    return nbre;
}

// Fonction pour surligner en jaune le texte du commentaire survolé
function surligne(event) {
    const numeroCommentaire = getNumber(event.target.id);
    const annoteID = numeroCommentaire + "-annote";
    const annoteElement = document.getElementById(annoteID);
    if (annoteElement) {
        annoteElement.style.backgroundColor = "yellow";
    }
}

// Fonction pour rétablir la couleur d'arrière-plan initiale du texte annoté
function annulerSurlignage(event) {
    const numeroCommentaire = getNumber(event.target.id);
    const annoteID = numeroCommentaire + "-annote";
    const annoteElement = document.getElementById(annoteID);
    if (annoteElement) {
        annoteElement.style.backgroundColor = ""; // Rétablir la couleur d'arrière-plan par défaut
    }
}

// fonction pour augmenter la marge interne de tous les éléments p.
function aerer() {
    const elementsP = document.querySelectorAll('p');
    elementsP.forEach(function (element) {
        element.style.padding = parseInt(element.style.padding || 0) + 5 + 'px';
    });
}

// fonction pour augmenter la marge externe de tous les éléments p.
function espacer() {
    const elementsP = document.querySelectorAll('p');
    elementsP.forEach(function (element) {
        element.style.margin = parseInt(element.style.margin || 0) + 5 + 'px';
    });
}

document.addEventListener('DOMContentLoaded', function () {
    // Sélectionner tous les éléments ayant la classe "comment"
    const commentaires = document.querySelectorAll('.comment');
    // Ajouter un écouteur d'évènement pour le survol de chaque commentaire
    commentaires.forEach(commentaire => {
        commentaire.addEventListener("mouseover", surligne);
        commentaire.addEventListener("mouseout", annulerSurlignage);
    });

    // Sélectionner le bouton "Aerer" par son ID
    let boutonAerer = document.querySelector('#addinnerspace');
    // Ajouter un écouteur d'événements pour le clic sur le bouton "Aérer"
    boutonAerer.addEventListener('click', aerer);

    // Sélectionner le bouton "Espacer" par son ID
    let boutonEspacer = document.querySelector('#addouterspace');
    // Ajouter un écouteur d'événements pour le clic sur le bouton "Espacer"
    boutonEspacer.addEventListener('click', espacer);

    // Sélectionner le bouton "Masquer" par son ID
    let boutonMasquer = document.querySelector("#toggle");
    let comments = document.querySelectorAll('.comment');

    // Ajouter un écouteur d'événements pour le clic sur le bouton "Masquer"
    boutonMasquer.addEventListener('click', function () {
        comments.forEach(function (comment) {
            if (comment.style.display == "none") {
                comment.style.display = "block";
                boutonMasquer.textContent = 'Masquer';
            } else {
                comment.style.display = "none";
                boutonMasquer.textContent = 'Afficher';
            }
        });
    });
});