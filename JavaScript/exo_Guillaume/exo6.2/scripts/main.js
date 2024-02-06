let userYear= prompt("entrez votre année de naissance");
let d = new Date();

// new date est un objet natif et le d.getfullYear permet de récupérer l'année actuelle

let age=parseInt(d.getFullYear()-userYear);
if(age >=18 ){
    alert("vous avez "+ parseInt(d.getFullYear()-userYear) + " ans: vous etes donc majeur");
}
else{
    alert("vous avez "+ parseInt(d.getFullYear()-userYear) + " ans: vous etes donc mineur");
}

