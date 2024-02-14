// sélectionner modal-btn, modal-overlay, close-btn
// Ecouter les évènements 'click' sur modal-btn et close-btn
// quand un utilisateur 'click' sur modal-btn ajouter .open-modal à modal-overlay
// quand un utilisateur 'click' sur close-btn supprimer .open-modal de modal-overlay

let button1= document.querySelector(".modal-btn");
let button2= document.querySelector(".close-btn");
let overlay= document.querySelector(".modal-overlay");

button1.addEventListener('click',function(){
    overlay.classList.add('open-modal');
})
button2.addEventListener('click', function () {
    overlay.classList.remove('open-modal');
})