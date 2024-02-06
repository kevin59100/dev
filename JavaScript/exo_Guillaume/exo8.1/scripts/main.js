let nb = parseInt(prompt("Saisissez un premier nombre)"));
let nb2 = parseInt(prompt("Saisissez un second nombre)"));

function cube(nb) {
    let resultat = Math.pow(nb, 3);
    return resultat;

}
function multiplication(a, b) {
    return a * b;
}


function afficheImg(url) {
    // Créer un nouvel objet Image
    var imgElement = new Image();

    // Définir l'attribut src avec l'URL passée en paramètre
    imgElement.src = url;

    // Ajouter l'élément img à la page (par exemple, au corps du document)
    document.body.appendChild(imgElement);
}
document.write("Le cube de " + nb + " est " + cube(nb));
document.write("<br>");
document.write("Le produit de " + nb + "x " + nb2 + " est " + multiplication(nb, nb2));
document.write("<br>");

afficheImg("papillon.jpg");

