const personnages = [
    { nom: "Luke Skywalker", espece: "Humain", affiliation: "Jedi" },
    { nom: "Darth Vader", espece: "Humain", affiliation: "Sith" },
    { nom: "Yoda", espece: "Yoda's species", affiliation: "Jedi" },
    { nom: "Obi-Wan Kenobi", espece: "Humain", affiliation: "Jedi" }
    ];
    

function estPersoPresent(tableau, nom){
    for(i=0; i < tableau.length; i++){
    if (tableau[i].nom === nom) { 
        return true; 
        } 
    }
    return false;
}

console.log(estPersoPresent(personnages, "Yoda"));
console.log(estPersoPresent(personnages, "toto"));
