// afficher le texte de la balise ayant l'id 'titre2'
let title2 = document.getElementById("titre2");
let dom = document.getElementById("dom");
// afficher le nombre de balises ayant la classe 'titre'
// le querySelectorAll fera appel à un tableau 
let nbreBalise = document.querySelectorAll('.titre').length;
// afficher le texte de toutes les balises ayant la classe 'titre'
// getElementsByClassName fait appel à une classe et renvoie un tableau
let totTitle = document.getElementsByClassName('titre')
// afficher le texte de toutes les balises 'li'
let listText = document.querySelectorAll('.liste > li');

// LIRE LE DOM

dom.addEventListener('click', function () {
  // afficher le texte de la balise ayant l'id 'titre2'
  alert(title2.innerText);
  // afficher le nombre de balises ayant la classe 'titre'
  alert(nbreBalise);
  // afficher le texte de toutes les balises ayant la classe 'titre'
  for (i = 0; i < totTitle.length; i++) {
    alert(totTitle[i].innerText);
  }
  // afficher le texte de toutes les balises 'li'
  for (i = 0; i < listText.length; i++) {
    alert(listText[i].innerText);
  }
})

// =============================================

// MODIFIER LE DOM EN JS

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
  // changer le contenu de chaque point (li) de la liste en "Liste 1", "Liste 2", etc...
  for (i = 0; i < listText.length; i++) {
    // Similaire à innerText, la fonction innerHTML permet de récupérer ou de définir le contenu HTML
    // d'un élément.
    listText[i].innerHTML = "<li>liste " + listText[i].innerHTML + "</li>";
  }
})

// =============================================

// MODIFIER LE STYLE EN JS

let style = document.getElementById("style");
let list = document.getElementById("liste")

style.addEventListener('click', function () {
  // aligner le titre 1 au centre de la page
  title1.style.textAlign = 'center';
  // mettre en rouge tous les éléments ayant la classe 'titre'
  for (let i = 0; i < totTitle.length; i++) {
    totTitle[i].style.color = 'red';
    // mettre une bordure 'solid'
    para.style.borderStyle = 'solid';
    // mettre une bordure 'solid 1px'
    para.style.borderWidth = '1px';
    // mettre un padding '10px' au paragraphe
    para.style.padding = '10px';
    // faire disparaître la liste
    list.remove("liste");
  }
})


