let tableau = new Array();
let nbre = parseInt(prompt("combien de valeurs voulez-vous entrer?"));
nb_neg = 0;
nb_pos = 0;

for (let i = 0; i < nbre; i++) {
    tableau[i] = parseInt(prompt("saisissez vos valeurs"));
    if (i < 0) {
        nb_neg++;
    else (i > 0){
        nb_pos++;
        }
    }
}
alert("il y a " + nb + " nombres négatif\n il y a " + nb_pos + "");


