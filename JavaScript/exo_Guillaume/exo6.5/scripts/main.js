
let participation=0;
let celib=confirm("êtes vous célibataire?");
let salaire=prompt("quel est votre salaire?");
let nbreEnfant=prompt("avez vous des enfants?");

if(celib){
    // participation = participation + 0.20
    participation +=0.2;
}
else{
    participation += 0.25;
}
// participation = participation + nbreEnfant*0.1
participation+=nbreEnfant * 0.1;
if(salaire < 1200){
    participation+=0.1;
}
if(participation >= 0.5){
    participation = 0.5;
}

// le parseFloat est utilisé pour les décimales afin de les convertir
alert("le taux de participation est de" + parseFloat(participation*100)+"%")
