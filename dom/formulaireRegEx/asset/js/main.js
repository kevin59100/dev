let society = document.getElementById('pseudo');
let contact = document.getElementById('contact');
let post = document.getElementById('post');
let town = document.getElementById('town');
let mail = document.getElementById('mail');
let button = document.getElementById('send');
let title = document.getElementById('title');

title.style.color='red';


button.addEventListener('click', function(){
    
    if(society.value < 1){
        alert('saisir au moins 1 caractère');
    }
    if(contact.value < 1){
        alert('saisir au moins 1 caractère');
    }
    if(post.value.length != 5){
        alert('saisir 5 caratères numériques');
    }
    if(town.value < 1){
        alert('saisir au moins 1 caractère');
    }
    // if(mail.value.includes('@')==false){
        if(!mail.value.includes('@')){
        alert('saisir au moins @');
    }
    // j'appelle ma fonction contenant ma regex
    // si l'adresse est différente de mail.value alors incorrecte
    if(!estAdresseMail(mail.value)){
        alert('Votre adresse mail est incorrecte !');
    }
    
})

// EXPRESSION REGULIERE ====> REGEX
function estAdresseMail(chaine){
    const expression=new RegExp( 
    "[a-z0-9!#$%&'+/=?^_`{|}~-]+(?:.[a-z0-9!#$%&'+/=?^_`{|}~-]+)@(?:[a-z0-9](?:[a-z0-9-][a-z0-9])?.)+[a-z0-9](?:[a-z0-9-]*[az0-9])?"
    );
    return expression.test(chaine);
}





