let nbre=prompt("saisir un nombre");
let somme=0;

// VERSION AVEC UN FOR:
// on va faire une boucle
// l'index i va être initialiser avec nbre

// for(let i = parseInt (nbre-1); i>=0; i--){
//     somme=somme+i;
// }


// VERSION AVEC UN WHILE:
// i est initialisé avec la saisie -1
let i = parseInt(nbre-1);
// tant que i est >= 0
while(i>=0){
    // on rajoute i à la variable somme
    somme=somme+i;
    // on décrémente i de 1
    i--;
}

alert("la somme de tous les entiers inférieur à "+ nbre + " est égale à "+parseInt(somme));