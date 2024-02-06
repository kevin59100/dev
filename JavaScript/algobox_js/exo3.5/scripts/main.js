let nbre1=prompt("entrez un 1er nombre");
let nbre2=prompt("entrez un 2eme nombre");

if((nbre1 < 0 && nbre2 < 0) || (nbre1 > 0 && nbre2 > 0)){
    alert("le nombre est positif");
}
else if((nbre1 < 0 && nbre2 > 0) || (nbre1 > 0 && nbre2 < 0)){
    alert(" le nombre est négatif");
}
else if(nbre1==0 || nbre2==0){
    alert("le nombre est nul");
}