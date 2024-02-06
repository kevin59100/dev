let nbre1 = prompt("saisir un nombre entier");
let operateur = prompt("saisissez un operateur (+ ou - ou / ou *)");
let nbre2 = prompt("saisir un deuxième nombre entier");


switch (operateur) {
    case "+":
        alert (parseInt(nbre1)+ parseInt (nbre2));
        // le break sert a sortir du switch
        break;
    case "-":
        alert(nbre1 - nbre2);
        break;
    case "*":
        alert(nbre1 * nbre2);
        break;
    case "/":
        if (nbre2 == 0) {
            alert("impossible de diviser par 0");
        }
        else {
            alert(nbre1 / nbre2)
        }
        break;
    default:
        console.log("" + operateur + ": operateur invalide");
}