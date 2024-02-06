let nb1= parseInt(prompt("saisir un nombre 1"));
let nb2= parseInt(prompt("saisissez un nombre2"));
let somme = 0;

// on va faire une boucle
// l'index i va ^tre initialisé avec nb1 + 1 (ex si j'ai mis 7 il va commencer a 8)

for(let i= parseInt(nb1 + 1); i < parseInt(nb2); i++){
    somme = somme + i;
}
alert("la somme de tous les entiers entre " + nb1 + " et " + nb2 + "est égal à " + parseInt(somme));
