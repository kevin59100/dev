// let nb = prompt("saissez un chiffre");


// // on déclare une fonction avec "function" suivi du nom de la fonction avec un paramètre entre ()
// function tableMultiplication(n) {
//   for (i = 1; i <= 10; i++) {
//     console.log(n * i);
//   }
// }
// // on appelle la fonction que l'on a créée avec ma signature (nb)
// tableMultiplication(nb);
// // je choisi de lui dire de faire la table de 5
// tableMultiplication(5);

// OU

function tablemulti(x) {
  for (i = 1; i <= 10; i++) {
    document.write(i + " multiplié par " + x + " sera égal à" + i * x);
    document.write("<br>");
  }
}

let nb = prompt("saisir un nombre");
tablemulti(nb);

