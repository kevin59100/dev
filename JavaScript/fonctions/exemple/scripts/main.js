// exo pour factoriser l'acquisition d'un entier

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

let a = saisirNombre();
let b = saisirNombre();

alert("a: " + a);
alert("b: " + b);