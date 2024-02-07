let nb;
let nombrePlusGrand = 0;
let position;

for (i = 0; i < 5; i++) {
    nb = parseInt(prompt("Saisir cinq nombres consécutifs :"));
    if (nb > nombrePlusGrand) {
        nombrePlusGrand = nb;

        position = i;

    }
}
alert("Les plus grand est " + nombrePlusGrand + "");
alert("il est en position numéro " + position + "");