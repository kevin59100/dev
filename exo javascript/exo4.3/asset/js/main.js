const heure = document.getElementById('heure');
const minute = document.getElementById('minute');
const seconde =document.getElementById('seconde');
const bouton = document.getElementById('bouton');
const resultat = document.getElementById('resultat');

function afficherHeurePlusUneSeconde(){
    let sec = 1 + parseInt(seconde.value);
    let min = parseInt(minute.value);
    let hour = parseInt(heure.value);

    if(sec == 60){
        sec = "00";
        min = min + 1;
    }

    if(min == 60){
        min = "00";
        hour = hour + 1;
    }

    if(hour == 24){
        hour = "00";
    }

    resultat.innerHTML = "Dans une seconde il sera : " + hour + "h" + min + "m" + sec + "s";
}

bouton.addEventListener("click", afficherHeurePlusUneSeconde);