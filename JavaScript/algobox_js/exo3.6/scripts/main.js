// let year=prompt("entrez l'âge de votre enfant");

// if(year >=6 && year <=7){
//     alert("poussin");
// }
// else if(year >= 8 && year <=9){
//     alert("pupille");
// }
// else if(year >=10 && year <=11){
//     alert("minime");
// }
// else if(year >=12){
//     alert("cadet");
// }

// version avec un switch

let year=parseInt(prompt("entrez l'âge de votre enfant"));

switch (true) {
    case year>=6 && year<=7:
        alert("poussin");
        break;
    case year>=8 && year<=9:
        alert("pupille");
        break;
    case year>=10 && year<=11:
        alert("minime");
        break;
    case year >= 12:
        alert("cadet");
        break;
    default:
        alert("trop jeune pour jouer");
        break;
}