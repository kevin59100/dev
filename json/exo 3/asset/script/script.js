// on déclare nos variables correspondant a ce que l'exercice demande :
// liste de livre, d'auteurs et de catégories
let booksList = new Array();
let authorsList = new Array();
let categoriesList = new Array();

// comme le json est conséquent on utilisera le dom content loaded pour charger
// le json apres avoir chargé le html et css
document.addEventListener("DOMContentLoaded", jSonOnLoad);

// on récupère la balise select dans le html et on lui rajoute un écouteur d'évènement avec le change
let selectAuthors = document.getElementById("listAuthors");
selectAuthors.addEventListener("change", chargeByAuthor);

let selectCategories = document.getElementById("listCategories");
selectCategories.addEventListener("change", chargeByAuthor);

// fonction que l'on va appeler à l'ouverture de la page
function jSonOnLoad() {
    // on déclenche notre promesse
    fetch("asset/data/books.json")
        .then(response => {  /*une fois sque notre fichier est chargé*/
            return response.json() /* on converti en JSON*/
        })
        .then(booksdata => {
            console.log(booksdata);
            // j'appelle ma fonction créée ligne 31 dans ma promesse pour l'afficher 
            creatList(booksdata);
        })
}

// maintenant je veux remplir listAuthors de mon html,
// je crée donc une fonction qui va me construire toutes mes listes, qui va remplir mon select
function creatList(_data) {
    // je veux placer chaque livre dans ma variable de debut bookList
    for (i = 0; i < _data.length; i++) {
        let book = _data[i];
        // PUSH => pour ajouter un élément à un tableau
        booksList.push(book);

        // maintenant je veux faire un push d'un auteur dans authorsList
        for (j = 0; j < book.authors.length; j++) {
            const element = book.authors[j];

            // je veux faire un push mais seulement si un élément n'est pas déjà présent dans mon tableau
            // comme un auteur peux aparaître dans plusieurs livre je ne veux pas le pusher 2fois
            // je fais donc une condition avec indexOf qui va verifier si l'élément est dans le tableau
            // s'il n'est pas présent ça renverra l'index donc -1
            if (authorsList.indexOf(element) == -1) {
                // s'il n'est pas présent, à ce moment là je fais un push
                authorsList.push(element);
            }
        }

        // ON FAIT LA MEME CHOSE POUR LES CATEGORIES

        for (j = 0; j < book.categories.length; j++) {
            const element = book.categories[j];

            // je veux faire un push mais seulement si un élément n'est pas déjà présent dans mon tableau
            // comme une catégorie peut aparaître dans plusieurs livre je ne veux pas le pusher 2fois
            // je fais donc une condition avec indexOf qui va verifier si l'élément est dans le tableau
            // s'il n'est pas présent ça renverra l'index donc -1
            if (categoriesList.indexOf(element) == -1) {
                // s'il n'est pas présent, à ce moment là je fais un push
                categoriesList.push(element);
            }
        }


    }
    // SORT => pour trier par ordre alphabétique
    booksList.sort();
    authorsList.sort(); /*ici on créer une liste avec tous les auteurs */
    categoriesList.sort();
    console.log(authorsList);
    console.log(categoriesList);

    // Maintenant je veux faire apparaître mon authorsList dans ma listAuthors html
    for (let index = 0; index < authorsList.length; index++) {
        const element = authorsList[index];
        // je veux créer une option sur mon select
        let option = document.createElement("option");
        option.value = element;
        option.innerText = element;
        selectAuthors.appendChild(option);

    }

    // ON FAIT LA MEME CHOSE POUR LES CATEGORIES

    for (let index = 0; index < categoriesList.length; index++) {
        const element = categoriesList[index];
        // CREATEELEMENT créer une option sur mon select
        let option = document.createElement("option");
        option.value = element;
        option.innerText = element;
        selectCategories.appendChild(option);
    }


    // je vais appeler la methode showbooks qui va nous afficher tous les livres
    showBooks(booksList);

}

// je veux créer mes livres dans des cards
function showBooks(_data) {
    // je vais me positionner sur booklist de mon html
    let bookListElement = document.getElementById("booklist");
    // je met mon booklist.innerHTML vide pour être sûre que dès que je rentre là-dedans
    // toutes les balises qui sont à l'intérieur soient effacées
    bookListElement.innerHTML="";

    // Je veux créer des cards pour chaque livre
    for (let index = 0; index < _data.length; index++) {
        let book = _data[index];
        
        let bookElement = document.createElement("div");
        // SETATTRIBUTE => ajouter une classe card 
        bookElement.setAttribute("class", "card mb-4");

        // Afficher le titre du livre
        let titre ="";
        if (book.title.length > 20){
        // SUBSTRING => permet ici de dire que si le titre dépasse 20 caractère, on ajoute ...
        titre = book.title.substring(0,20) + "(...)";
        } 
        else {
            titre = book.title;
        }

        let description;
        let descriptionShort;


        bookElement.innerHTML = "<h1>" + titre + "</h1>";
        // APPENDCHILD permet d'ajouter un élément dans une div
        // ici la variable bookListElement a été associée à "booklist" du html qui est une div
        bookListElement.appendChild(bookElement);
    }

}


// cette fonction va rafraichir la page dès que l'on aura sélèctionné un auteur dans la liste déroulante
function chargeByAuthor() { }

