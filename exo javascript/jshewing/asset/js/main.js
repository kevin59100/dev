// associer le champ de formulaire à la variable formulaire
const champ = document.getElementById('champ-formulaire')
const bouton = document.getElementById('bouton')
// declaration d'une fonction
function afficherValeur()
{
    let carre = champ.value*champ.value
    console.log(carre);
}
// ajouter un ecouteur d'evenement au click qui va appeler la fonction afficher
bouton.addEventListener('click', afficherValeur)
