let prix_ht=parseInt(prompt("saisi prix"));
let nbre_article=parseInt(prompt("saisir nbre article"));
let tva=0.2;
let prix_ttc;

prix_ttc=(prix_ht+(prix_ht*tva))*nbre_article;
alert("le prix ttc est de "+prix_ttc+"");