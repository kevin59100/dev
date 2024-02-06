// let myVar = 123;
// maFonction();

// function maFonction() {
//     console.log("myVar fonction:" + myVar)
// }

// if (myVar > 1) {
//     console.log("myVar condition:" + myVar)
// }

// console.log("myVar fin:" + myVar)

let compteur = 2;
function maFonction() {
    let myVar = 456;
    console.log("myVar : " + myVar);
}
if (compteur > 1) {
    let myVar2 = "Wazaa !";
    console.log("myVar2 : " + myVar2);
}
// ci dessus la variable à une portée locale car elle est déclarer à l'intérieur de la fonction
console.log("myVar : "+myVar);
console.log("myVar2 : "+myVar2);