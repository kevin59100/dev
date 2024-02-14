// afficher le texte de la balise ayant l'id 'titre2'
let title2= document.getElementById("titre2");
let dom=document.getElementById("dom");
// afficher le nombre de balises ayant la classe 'titre'
// le querySelectorAll fera appel à un tableau 
let nbreBalise=document.querySelectorAll('.titre').length;
// afficher le texte de toutes les balises ayant la classe 'titre'
// getElementsByClassName fait appel à une classe et renvoie un tableau
let totTitle = document.getElementsByClassName('titre')
// afficher le texte de toutes les balises 'li'
let listText = document.querySelectorAll('.liste > li');

// lire le bouton dom
dom.addEventListener('click', function(){
    // afficher le texte de la balise ayant l'id 'titre2'
    alert(title2.innerText);
    // afficher le nombre de balises ayant la classe 'titre'
    alert(nbreBalise);
    // afficher le texte de toutes les balises ayant la classe 'titre'
  for(i=0; i < totTitle.length; i++){
    alert(totTitle[i].innerText);
  }
  // afficher le texte de toutes les balises 'li'
  for(i=0; i < listText.length; i++){
    alert(listText[i].innerText);
  }
})

// =============================================

let modifDom = document.getElementById("dom_modif");
let title1 = document.getElementById('titre1');
let para = document.getElementById('paragraphe1')

modifDom.addEventListener('click', function () {
    // manipulation des contenus
    // Si contenu HTML est attribué à innerHTML, le contenu HTML existant est remplacé par le nouveau.
    // changer le contenu du h1 en 'Bienvenue'
    title1.innerHTML = "<h1>bienvenue</h1>";
    // changer le contenu du h2 en 'Exo JS'
    title2.innerHTML = "<h2>Exo JS</h2>";
    // changer le contenu paragraphe en 'Voici quelques fonctions exécutées en javascript.'
    para.innerHTML = "<p>'Voici quelques fonctions exécutées en javascript.'</p>";
    
   
})


