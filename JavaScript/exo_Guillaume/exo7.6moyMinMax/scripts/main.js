let nb = parseInt(prompt("saisissez un nombre entier (premier tour)"));
let somme = 0;
let compteurNbSaisis = 0;
let mini = nb;
let maxi = nb;
// on va faire une boucle

while (nb != 0) {
    // on va vérifier si le nombre saisi est inférieur à celui défini précédemment dans mini
    if (nb < mini) {
        // dans ce cas on remplace mini par le nombre précédemment saisi
        mini = nb;
    }
    // on va vérifier si le nombre saisi est supérieur à celui défini précédemment dans maxi
    if (nb > maxi) {
        // dans ce cas on remplace le mini par le nombre précédemment saisi
        maxi = nb;
    }
    compteurNbSaisis++;
    somme = somme + nb;
    nb = parseInt(prompt("saisissez une note"));

}


alert("la note mini est " + mini);
alert("la note maxi est " + maxi);



