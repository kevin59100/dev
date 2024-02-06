const heure = document.getElementById('heure');
const minute = document.getElementById('minute');
const bouton = document.getElementById('bouton');
const resultat = document.getElementById('resultat');

function afficherHeurePlusUneMinute(){
    let min = 1 + parseInt(minute.value);
    let hour = parseInt(heure.value);

    if(min == 60){
        min = "00";
        hour = 1 + hour;
    }
    if(hour == 24){
        hour = "00";
    }
    resultat.innerHTML = "dans une minute il sera : " + hour + "h" + min
}

bouton.addEventListener("click", afficherHeurePlusUneMinute);

