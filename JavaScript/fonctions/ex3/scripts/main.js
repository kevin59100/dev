let annee_naissance = saisirNombre();

alert("vous avez " + calculerAge(annee_naissance));
function saisirNombre(){
    // je déclare ma variable entier sans l'instancier (donc elle va être null)
    let entier;

    // tant que entier n'est pas un nombre (donc isNan renverra true)
    while (isNaN(entier)){
        // on saisit
        entier = prompt("saisir un nombre");
        // je verifie si ma saisie est un nombre
        if(isNaN(entier)){
            alert("ce n'est pas un nombre");
        }
    }

    // je suis sorti de ma boucle: je renvoie entier
    return parseInt(entier);
}
function calculerAge(a) {
    // variable que l'on instancie en date
    let d = new Date();
    // année de la date du jour - année de naissance
    return d.getFullYear() - a
    
}