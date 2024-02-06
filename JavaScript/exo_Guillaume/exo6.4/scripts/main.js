let pu = prompt("saisir le prix");
let quantite = prompt("saisir la quantité");
let pap;
let port;
let rem;
let tot = pu * quantite;

// on calcul d'abord la remise qu'on instancie à 0
rem = 0;
// si le total est compris entre 100 et 200€ on applique une remise de 5%
if (tot >= 100 && tot <= 200) {
    rem = tot * 0.05;
}
// sinon si le total est sup a 200€
else if (tot > 200) {
    // la remise sera de 10%
    rem = tot * 0.10;
}
// on déclare une variable "totremise" pour calculer le prix avec la remise
let totRemise = tot - rem;

// ici on calcul les frais de port avec le totremisé
if (totRemise > 500) {
    alert("les frais de port sont gratuit");
    port = 0;
}
// sinon les frais de port sont de 2% et si frais de port < a 6 les frais seront de 6€
else {
    port = (totRemise * 0.02);
    if (port < 6) {
        port = 6;
    }
}
pap= totRemise + port;

alert("le total non remisé est de: " + tot);
alert("la remise est de: " + rem);


alert("le total remisé est de: " + totRemise);

alert("les frais de port sont de: " + port);

alert("le total à payer est de: " + pap);