let tableau = new Array();
let nbre = parseInt(prompt("combien de valeurs voulez-vous entrer?"));
nb_neg = 0;
nb_pos = 0;

for (let i = 0; i < nbre; i++) {
    // je demande à l'utilisateur de rentrer ses valeurs dans ma boucle
    tableau[i] = parseInt(prompt("saisissez vos valeurs"));
    // 
    if (tableau[i] < 0) {
        nb_neg+=1;
    }
    else {
        nb_pos+=1;
        }
    }
alert("il y a " + nb_neg + " nombres négatif\n il y a " + nb_pos + "nombres positifs");

