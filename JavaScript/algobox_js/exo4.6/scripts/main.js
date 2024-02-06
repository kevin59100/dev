let c1=prompt("saisir score");
let c2=prompt("saisir score");
let c3=prompt("saisir score");
let c4=prompt("saisir score");

if(c1 > 50 ){
    alert("vous êtes élu");
}
else if(c1 > c2 && c1 > c3 && c1 > c4){
    alert("vous êtes en ballottage favorable");
}
else if(c1 > 12.5 && c1 > c2 || c1 > c3 || c1 > c4){
    alert("vous êtes en ballottage défavorable");
}
else if(c1 < 12.5){
    alert("vous êtes battu");
}