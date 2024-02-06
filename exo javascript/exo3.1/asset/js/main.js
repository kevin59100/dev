const clavier = document.getElementById('clavier');
const bouton = document.getElementById('bouton');
const message = document.getElementById('resultat');


bouton.addEventListener("click", afficherPositifOuNegatif); 

function afficherPositifOuNegatif()
{
    if(clavier.value<0){
        message.innerHTML = '<div class="alert alert-success mt-5" role="alert">le nombre est negatif</div>'
        clavier.value = ""
    }
    else{
        message.innerHTML = '<div class="alert alert-danger mt-5" role="alert">le nombre est positif</div>'
        clavier.value = ""
    }
}

clavier.addEventListener("keypress",(event)=>{
    if(event.code === "Enter" || event.code === "NumpadEnter") {
        afficherPositifOuNegatif();
    }
});

