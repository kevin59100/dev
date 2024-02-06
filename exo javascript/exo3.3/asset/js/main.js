const nom1 = document.getElementById('nom1');
const nom2 = document.getElementById('nom2');
const nom3 = document.getElementById('nom3');
const bouton = document.getElementById('bouton');
const message = document.getElementById('resultat'); 


bouton.addEventListener('click', afficherLesNoms)

function afficherLesNoms(){
if(nom1.value<nom2.value & nom2.value<nom3.value){
    message.innerHTML = '<div class="alert alert-success mt-5" role="alert">les noms sont dans l/ordre alphabetique</div>'
}
else{
    message.innerHTML = 'les noms ne sont pas dans l/ordre'
}
}


