const nbre1 = document.getElementById('nombre1');
const nbre2 =document.getElementById('nombre2');
const bouton = document.getElementById('bouton');
const message = document.getElementById('resultat');

bouton.addEventListener("click", afficherPositifOuNegatif);

function afficherPositifOuNegatif()
{
    if(nbre1.value & nbre2.value<0){
        message.innerHTML = '<div class="alert alert-success mt-5" role="alert">le nombre est negatif</div>'
    }
    else if(nbre1.value<0 & nbre2.value>0 | nbre1.value>0 & nbre2.value<0){
        message.innerHTML = '<div class="alert alert-success mt-5" role="alert">le nombre est negatif</div>'
    }
    else{
        message.innerHTML = '<div class="alert alert-danger mt-5" role="alert">le nombre est positif</div>'
    }
}

nbre1.addEventListener("keypress",(event)=>{
    if(event.code === "Enter" || event.code === "NumpadEnter") {
        afficherPositifOuNegatif();
    }
});

nbre2.addEventListener("keypress",(event)=>{
    if(event.code === "Enter" || event.code === "NumpadEnter") {
        afficherPositifOuNegatif();
    }
});