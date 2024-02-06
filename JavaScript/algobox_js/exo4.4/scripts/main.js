let nbre_photocopies=parseInt(prompt("combien avez vous de photocopies?"));
let total=0;

if(nbre_photocopies <= 10){
    total=nbre_photocopies*0.10;
}
else if(nbre_photocopies > 10 && nbre_photocopies <=30){
    total=1+(nbre_photocopies-10)*0.09;
}
else if(nbre_photocopies > 30){
    total= 2.80+ (nbre_photocopies-30)*0.08;
}
alert("le total est de :"+total+"€")