// Les fonctions
let nb1 = parseInt(prompt("Saisissez un premier nombre)"));
let nb2 = parseInt(prompt("Saisissez un deuxième nombre"));
let operateur = prompt("Saisissez un opérateur");

switch (operateur) {
    case "+":
        // alert(nb1 + nb2);
        somme(nb1, nb2);
        break;

    case "*":
        //alert(nb1 * nb2);
        let resultat = multiplication(nb1, nb2);
        alert(resultat);
        break;

    case "/":
        if (nb2 == 0) {
            alert("impossible de diviser par zéro");
        } else {
            alert(nb1 / nb2);
        }
        break;

    case "-":
        alert(nb1 - nb2);
        break;

    default:
        break;
}

function somme(a, b) {
    alert(a + b);
}

function multiplication(a, b) {
    return nb1 * nb2;
}