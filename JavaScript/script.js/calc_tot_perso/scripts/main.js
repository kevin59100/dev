const personnages = [
    { nom: "Luke Skywalker", espece: "Humain", affiliation: "Jedi" },
    { nom: "Darth Vader", espece: "Humain", affiliation: "Sith" },
    { nom: "Yoda", espece: "Yoda's species", affiliation: "Jedi" },
    { nom: "Obi-Wan Kenobi", espece: "Humain", affiliation: "Jedi" }
    ];
    

 function calculerNbrePerso(tableau){
    return tableau.length;
 }
console.log(calculerNbrePerso(personnages));