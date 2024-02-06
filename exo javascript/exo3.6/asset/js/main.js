const nombre = document.getElementById('nombre');
const bouton = document.getElementById('bouton');
const resultat = document.getElementById('resultat');


function afficherPoussinPupilleMinimeOuCadet(){

    if (nombre.value == 6 | nombre.value == 7){
        resultat.innerHTML = "catégorie poussin"
    }
    else if (nombre.value == 8 | nombre.value == 9){
        resultat.innerHTML = "catégorie pupille"
    }
    else if (nombre.value == 10 | nombre.value == 11){
        resultat.innerHTML = "catégorie minime"
    }
    else {
        resultat.innerHTML = "catégorie cadet"
    }
}

bouton.addEventListener('click', afficherPoussinPupilleMinimeOuCadet)