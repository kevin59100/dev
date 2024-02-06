// ici la portée de la variable est globale
const nbrArticle = document.getElementById('nbr-article');
const prixHT = document.getElementById('prix-HT');
const tva = document.getElementById('TVA')
const bouton = document.getElementById('bouton')
const message = document.getElementById('resultat')


bouton.addEventListener("click", calculerPrixTTC)

function calculerPrixTTC(){
    // ici la portée de la variable est locale
    let sommeHT = prixHT.value * nbrArticle.value;
    let tauxTVA = 1 + (tva.value / 100);
    let prixTTC = sommeHT * tauxTVA;
    message.innerHTML = prixTTC
}