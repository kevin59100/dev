let nbre = parseInt(prompt("entrez un nombre"));
let i;
// resultat est defini mais comme vide car sinon le resultat aurait été "undefined"
let resultat = ""

for (i = 1; i <= 10; i++) {
    nbre += 1;
    if (i == 10) {
        resultat += "" + nbre + "";
    }
    else {
        resultat += "" + nbre + ",";
    }
}
alert("" + resultat + "");10
