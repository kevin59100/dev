let nb=parseInt(prompt("saisissez vos valeurs"));
let nb_plus_grand=0;

while(nb!=0){
    nb=parseInt(prompt("saisissez vos valeurs"));
    if(nb > nb_plus_grand){
        nb_plus_grand=nb;
    }
}
alert("le plus grand est "+nb_plus_grand);