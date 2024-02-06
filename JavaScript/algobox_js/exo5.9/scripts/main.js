let price=parseInt(prompt("saisir prix des articles"));
let sum_paid=0;
let tot=0;
let ticket_10=0;
let ticket_5=0;

while(price!=0){
    tot=tot+price; 
    price=parseFloat(prompt("saisir prix des articles"));
}
alert(("vos devez "+tot+""));

sum_paid=parseFloat(prompt("la somme payée est de: "));

rest=sum_paid-tot;

while(rest >= 10){
    ticket_10= ticket_10+1;
    rest= rest-10;
}

while(rest >= 5){
    ticket_5=ticket_5+1;
    rest=rest-5;
}
alert("le rendu de monnaie est de:\n "+ticket_10+" billet de 10€ \n "+ticket_5+" billet de 5€ \n "+rest+" pièces de 1€ ");
