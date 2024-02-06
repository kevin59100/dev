let age = 0;
let young = 0;
let medium = 0;
let old = 0;

while (age < 100) {
    age = parseInt(prompt("entrez votre âge"));
    if (age < 20) {
        young++;
    }
    else if (age > 40) {
        old++;
    }
    else {
        medium++;
    }
}

// quand on veut mettre une variable dans un texte on l'entoure de "" et de +
alert("il y a " + young + " personnes de moins de 20ans, " + medium + " personnes entre 20 et 40ans et " + old + " personnes de plus de 40ans");