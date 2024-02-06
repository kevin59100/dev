// les tableaux
let passengers = ["toto", "tata", "titi", "tutu"];
console.log(passengers[0]); //on affiche le premier
console.log(passengers.length); //on aura 4
console.log(passengers.indexOf("titi")); //renvoie 2
console.log(passengers.indexOf("tete")); //renvoie -1

//parcourir le tableauavec la boucle while
let i = 0;
while (i < passengers.length) {
  console.log(passengers[i]);
  i++;
}

//parcourir le tableau avec la boucle for "classique"
for (let j = 0; j < passengers.length; j++) {
  console.log(passengers[j]);
}

//parcourir le tableau avec la boucle for avec "in"
for (k in passengers) {
  console.log(passengers[k]);
}

//parcourir le tableau avec la boucle for avec "of"
for (passenger of passengers) {
  console.log(passenger);
}