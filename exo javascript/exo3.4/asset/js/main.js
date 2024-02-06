const elementNombre = document.getElementById('nombre');
const elementBouton = document.getElementById('bouton');
const elementResultat = document.getElementById('resultat');

function afficherPositifOuNegatif(){
    if(elementNombre.value>0){
        elementResultat.innerHTML = "le nombre est positif"
    }
    else if(elementNombre.value<0){
        elementResultat.innerHTML = "le nombre est negatif"
    }
    else{
        elementResultat.innerHTML = "le nombre est nul"
    }
}

elementBouton.addEventListener('click',afficherPositifOuNegatif)