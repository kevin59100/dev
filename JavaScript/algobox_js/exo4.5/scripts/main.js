let year=parseInt(prompt("entrez votre âge"));
let genre=confirm("êtes-vous un homme?");

if(genre==true && year > 20){
    alert("tu paieras des impôts!!");
}
else if(genre==false && year >= 18 && year <=35){
    alert("tu es une femme mais tu paieras quand même!")
}
else{
    alert("tu as du bol!!")
}