let nb;
let nombrePlusGrand = 0;

for(i=0; i<5; i++){
    nb = parseInt(prompt("Saisir cinq nombres consécutifs :"));
    if(nb>nombrePlusGrand){
        nombrePlusGrand=nb;
    }
}
alert("Les plus grand est "+nombrePlusGrand+"");
