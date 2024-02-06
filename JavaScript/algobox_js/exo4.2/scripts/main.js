let hour=parseInt(prompt("entrez heure"));
let minutes=parseInt(prompt("entrez minutes"));
minutes++;
if(minutes==60){
    minutes="00";
    hour++;
    if(hour==24){
        hour=0;
    }    
}
alert("dans une minute il sera "+hour+"h"+minutes+"");
