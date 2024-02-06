let nbre1=prompt("saisir un 1er nombre");
let nbre2=prompt("saisir un 2ème nombre");

if((nbre1 > 0 && nbre2 > 0) || (nbre1<0 && nbre2 < 0)){
    alert("le produit est positif");
}
else{
    alert("le produit est négatif");
}