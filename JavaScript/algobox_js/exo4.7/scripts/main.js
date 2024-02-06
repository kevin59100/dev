let year = parseInt(prompt("entrez votre âge"));
let license = parseInt(prompt(" nombre d'année de permis"));
let nbre_accident = parseInt(prompt("entrez nombre d'accident"));
let fidelity = parseInt(prompt("depuis combien de temps êtes vous assuré?"));

if (nbre_accident > 2) {
    alert("vous êtes refusé");
}
else if (fidelity > 1) {
    alert("tarif bleu");
}
else if (year >= 25 && license >= 2) {

    if (nbre_accident == 0) {
        alert("tarif vert");
    }
    if (nbre_accident == 1) {
        alert("tarif orange");
    }
    if (nbre_accident == 2) {
        alert("tarif rouge");
    }
}
else if (year < 25 && license < 2) {
    if (nbre_accident == 0) {
        alert("tarif rouge");
    }
    else {
        alert("refusé");
    }
}
else if ((year < 25 && license >= 2) || (year >= 25 && license < 2)) {
    if (nbre_accident == 0) {
        alert("tarif orange");
    }
    if (nbre_accident == 1) {
        alert("tarif rouge");
    }
    else {
        alert("refusé");
    }
}

// let colors = ["refusé", "tarif rouge", "tarif orange", "tarif vert", "tarif bleu"];
// let color = 0;

// if (nbre_accident > 2) {
//     alert(colors[0]);
// }
// else if(fidelity >= license){
//     alert("arnaqueur!");
// }
// else {
//     if (fidelity > 1) {
//         color++;
//     }
//     if (year >= 25) {
//         color++;
//     }
//     if (license >= 2) {
//         color++;
//     }
//     if (nbre_accident == 0) {
//         color++;
//     }

//     alert(colors[color]);
// }
