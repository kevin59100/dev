let nbre=parseInt(prompt("entrez un nombre"));
let resultat;
let msg="";
let i;

for(i=1; i <= 10; i++){
    resultat=nbre*i;
    // pour afficher la table complète, on stocke tout dans une variable avec \n pour aller à la ligne
    msg+=""+nbre+"x"+i+"="+resultat+"\n";
}
// on affiche le resultat en dehors de la boucle
alert(msg);


