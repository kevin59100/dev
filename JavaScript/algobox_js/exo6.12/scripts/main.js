let tableau=new Array()
let nbre= parseInt(prompt("combien de valeurs voulez-vous rentrez?"));

for(i=0; i< nbre; i++){
    tableau[i]= parseInt(prompt("entrez vos valeurs"));
    tableau[i]+= +1;
}
alert(tableau);
