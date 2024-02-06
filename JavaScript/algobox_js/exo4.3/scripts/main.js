let hour=parseInt(prompt("entrez heure"));
let minutes=parseInt(prompt("entrez minutes"));
let secondes=parseInt(prompt("entrez secondes"));
secondes++;

if(secondes==60){
    secondes="00";
    minutes++;
    if(minutes==60){
        minutes="00";
        hour++;
        if(hour==24){
            hour=0;
        }
    }
}
alert("dans une seconde il sera "+hour+"h"+minutes+"m"+secondes+"s");