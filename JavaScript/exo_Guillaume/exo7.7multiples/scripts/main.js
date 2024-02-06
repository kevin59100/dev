// nb signifie combien de calcul veut-on faire
let nb=prompt("saisir nb");
// quelle table de multiplication veut on effectuer
let x=prompt("saisir x");
let i;


// on initialise le i a 1 pour ne pas commencer à 0par ex table de 5 on commencera à 1*5;
// la condition est que mon i sera inférieur ou égal à mon nombre ex si i=7 je ferai 5*1 5*...5*7;
// j'actualise mon i en incrémentant de 1 à chaque tour pour permettre de passer de *1à*2 etc...
for(i=1; i<=nb; i++){
    // je fais le calcul 
    console.log(parseInt(i*x) );
}
