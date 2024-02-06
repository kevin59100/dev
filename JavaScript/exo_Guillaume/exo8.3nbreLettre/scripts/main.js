let lign=prompt("saisissez une phrase");
let lett=prompt("saisissez une lettre");
function test(phrase,lettre){
  // nb correspond aux nbres d'occurence de la lettre dans la phrase
    let nb=0;
    // avec la boucle on va parcourir chaque carctere qu'il y a dans la phrase
    for (var i = 0; i < phrase.length; i++) {
      // Extraire le caractère courant
      var caractereCourant = phrase[i];
  // on compare le caractère courant avec la lettre à rechercher
      if(lettre==caractereCourant){
        // si c'est le cas on incrémente nb de 1
        nb++;
      }
  }
  return nb;
}
let resulat=test(lign,lett);
alert(resulat);