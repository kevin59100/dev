const personnages = [
    { nom: "Luke Skywalker", espece: "Humain", affiliation: "Jedi" },
    { nom: "Darth Vader", espece: "Humain", affiliation: "Sith" },
    { nom: "Yoda", espece: "Yoda's species", affiliation: "Jedi" },
    { nom: "Obi-Wan Kenobi", espece: "Humain", affiliation: "Jedi" }
    ];
    

    function filtrerParAffiliation(affiliation,tableau){
        let resultat=[];
        for(i=0; i < tableau.length; i++){
            if(tableau[i].affiliation==affiliation){
                resultat.push(tableau[i]);
                
            }
        }
        return resultat;
    }

 
    console.log(filtrerParAffiliation("Sith",personnages));
    console.log(filtrerParAffiliation("Jedi",personnages));

