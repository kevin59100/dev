let nbre=parseInt(prompt("entrez un nombre compris entre 1 et 3"));

while(nbre < 1 || nbre > 3){
    alert("veuillez recommencer");
    nbre=parseInt(prompt("entrez un nombre compris entre 1 et 3"));
}