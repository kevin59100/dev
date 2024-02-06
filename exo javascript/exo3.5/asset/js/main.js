const nombre1 = document.getElementById('nombres1');
const nombre2 = document.getElementById('nombres2');
const bouton = document.getElementById('bouton');
const resultat = document.getElementById('resultat');

function positifNegatifOuNul() {
    if(nombre1.value < 0 & nombre2.value < 0){
        resultat.innerHTML = "le nombre est positif"
    }
    else if(nombre1.value < 0 | nombre2.value < 0){
        resultat.innerHTML = "le nombre est negatif"
    }
    else if(nombre1.value == 0 | nombre2.value == 0){
        resultat.innerHTML = "le nombre est nul"
    }
}

bouton.addEventListener('click', positifNegatifOuNul )