const personnages = [
    { nom: "Luke Skywalker", espece: "Humain", affiliation: "Jedi" },
    { nom: "Darth Vader", espece: "Humain", affiliation: "Sith" },
    { nom: "Yoda", espece: "Yoda's species", affiliation: "Jedi" },
    { nom: "Obi-Wan Kenobi", espece: "Humain", affiliation: "Jedi" }
    ];
    

    function searchByName(nom, tableau){
        let resultat=[];
        for(i=0; i < tableau.length; i++){
            if(tableau[i].nom== nom){
                resultat.push(tableau[i]);
            }
        }
        return resultat;
    }

    console.log(searchByName("Yoda",personnages));
    console.log(searchByName("toto",personnages));
