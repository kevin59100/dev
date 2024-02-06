let nbre=0

while(nbre < 10 || nbre > 20){
    nbre=parseInt(prompt("saisissez un nombre entre 10 et 20"));
    if(nbre < 10){
        alert("plus grand!");
    }
    else if(nbre > 20){
        alert("plus petit!");
    }
}
if(nbre >=10 && nbre <=20){
    alert("bravo tu es un génie!!");
}