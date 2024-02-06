const clavier = document.getElementById('clavier');
const bouton = document.getElementById('bouton');
constresultat = document.getElementById('resultat');

bouton.addEventListener('click', verifierNbrePositif);


function verifierNbrePositif(){

    if(clavier.value > 0){
        resultat.inner = '<div class="alert alert-success" role="alert">Le nombre est positif</div'
        clavier.value= "";
    }else{
        resultat.inner = '<div class="alert alert-danger" role="alert">Le nombre est negatif</div'
        clavier.value= "";
    }
}