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

