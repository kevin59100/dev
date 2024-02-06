
// methode "prompt"
let nom = prompt("entrez votre nom");
let prenom = prompt("entrez votre prenom");

console.log(nom + " " + prenom);

// methode confirm
let bhomme = confirm("êtes vous un homme?");


// methode alerte
if (bhomme == true) {
    alert("Bonjour monsieur " + nom + " " + prenom + "\nBienvenue sur notre site web !");
}
else {
    alert("Bonjour  madame " + nom + " " + prenom);
}
