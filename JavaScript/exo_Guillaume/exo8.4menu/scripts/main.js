let choice = prompt("faites un choix: \n " +
"1 - Multiples \n " +
"2 - Somme et moyenne \n " +
"3 - Recherche du Nombre de voyelle \n " +
"4 - Recherche du nombre de caractere donné dans une phrase");

// je crée un switch pour permettre de faire les choix.
// plus pratique que de faire des "if" et des "else"
switch (choice) {
    // le choix 1 appelle la fonction "multiples" créées sous le switch
    // ainsi de suite pour les 3 cas suivant
    case "1":
        multiples()
        break;
    case "2":
        sommeEtMoyenne()
        break;
    case "3":
        nombreDeVoyelle()
        break;
    case "4":
        nombreDeCaractere()
        break
    default:
        alert("votre choix n'est pas valide");
}

// ci-dessous, les fonctions appelées dans le switch (sans paramètre car pas obligatoire)
function multiples(){
    function tablemulti(x) {
        for (i = 1; i <= 10; i++) {
            document.write(i + " multiplié par " + x + " sera égal à" + i * x);
            document.write("<br>");
        }
    }
    
    let nb = prompt("saisir un nombre");
    tablemulti(nb);
}

function sommeEtMoyenne(){
    let nb=parseInt(prompt("saisissez un nombre entier (premier tour)"));
let somme=0;
let compteurNbSaisis = 0;

// on va faire une boucle

while (nb != 0){
    compteurNbSaisis++;
    somme = somme + nb;
    nb = parseInt(prompt("saisissez un nombre"));
}

alert("la somme est égale à " + parseInt(somme));
alert("la moyenne est égale à" + parseFloat(somme / compteurNbSaisis));


}

function nombreDeVoyelle(){
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
alert("Le mot '" + mot + "' contient " + nombreVoyelles + " voyelle(s).");
}

function nombreDeCaractere(){
    let lign=prompt("saisissez une phrase");
let lett=prompt("saisissez une lettre");
function test(phrase,lettre){
  // nb correspond aux nbres d'occurence de la lettre dans la phrase
    let nb=0;
    // avec la boucle on va parcourir chaque carctere qu'il y a dans la phrase
    for (var i = 0; i < phrase.length; i++) {
      // Extraire le caractère courant
      var caractereCourant = phrase[i];
  // on compare le caractère courant avec la lettre à rechercher
      if(lettre==caractereCourant){
        // si c'est le cas on incrémente nb de 1
        nb++;
      }
  }
  return nb;
}
let resulat=test(lign,lett);
alert(resulat);
}
