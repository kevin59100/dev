let tableau = new Array();
let nbre = parseInt(prompt("combien de valeurs voulez-vous entrer?"));
let is_consecutif=true

for (i = 0; i < nbre; i++) {
    tableau[i] = parseInt(prompt("entrez vos valeurs"));


    if (i > 0) {
        // TABLEAU[i]-1    EST DIFFERENT DE    TABLEAU[i-1]
        
        // tableau[i]-1= si 12, 13, 14, 15... on fera 13-1
        // tableau[i-1]= si 12, 13, 14, 15... on prendra 12
        if (tableau[i] - 1 != tableau[i - 1]) {
            is_consecutif=false;
        }
    }

}

alert(tableau);

if (is_consecutif){
    alert("Tous les nombres sont consécutifs");
}
else{
    alert("dommage!");
}


