// Récupérer le sélecteur .nav-toggle ainsi que .links 

// Ecouter l'évènement 'click' sur .nav-toogle

  // si .links a pour class .show-links
    // la supprimer
  // sinon
    // l'ajouter

  // Vous pouvez arriver au même résultat avec classList.toggle

  let nav=document.querySelector('.nav-toggle');
  let links=document.querySelector('.links');

  nav.addEventListener('click', function () {
    if(links.classList.contains('show-links')){
      links.classList.remove('show-links');
    }
    else{
      links.classList.add('show-links');
    }
    
  })

      // alternative avec la classList.toggle
  //   links.classList.toggle('show-links');
    
  // })