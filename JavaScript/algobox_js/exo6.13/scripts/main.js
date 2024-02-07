let tableau = new Array();
let nbre = parseInt(prompt("combien de valeurs voulez-vous rentrez?"));
let nb_plus_gd=0;
let position;
for(i=0; i < nbre; i++){
    tableau[i]=parseInt(prompt("saisir vos valeurs"));
}
alert(tableau);

for(i=0; i < nbre; i++){
    if(tableau[i]>nb_plus_gd){
        nb_plus_gd=tableau[i];
        position=i;
    }
}
alert("la plus grande valeur est "+nb_plus_gd+"");
alert("la valeur se situe en position "+position+"");
