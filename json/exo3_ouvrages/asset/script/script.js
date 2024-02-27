// on déclare nos variables correspondant a ce que l'exercice demande :
// liste de livre, d'auteurs et de catégories
let booksList = new Array();
let authorsList = new Array();
let categoriesList = new Array();

// on crée une variable option pour afficher les dates comme demandé dans l'énoncé
let options = {
    // le long permet de mettre en châine de caractère
    weekday: "long",
    year: "numeric",
    month: "long",
    day: "numeric",
}

var myVar;

function myFunction() { 
    console.log(myVar);
    myVar = setTimeout(showPage, 6000);
    jSonOnLoad()
    myVar = setTimeout(showPage, 0);
}

function showPage() {
    document.getElementById("loader").style.display = "none";
    document.getElementById("myDiv").style.display = "block";
}

// comme le json est conséquent on utilisera le dom content loaded pour charger
// le json apres avoir chargé le html et css
document.addEventListener("DOMContentLoaded", myFunction);

// on récupère la balise select dans le html et on lui rajoute un écouteur d'évènement avec le change
let selectAuthors = document.getElementById("listAuthors");
selectAuthors.addEventListener("change", chargeByAuthor);


let selectCategories = document.getElementById("listCategories");
selectCategories.addEventListener("change", ChargeByCategory);

let button = document.getElementById("submit");
button.addEventListener("click", changeBySearch);

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
    bookListElement.innerHTML = "";

    // Je veux créer des cards pour chaque livre
    for (let index = 0; index < _data.length; index++) {
        let book = _data[index];

        let bookElement = document.createElement("div");
        // SETATTRIBUTE => ajouter une classe card 
        // mb ==> margin bottom
        // col ==> de base c'est réparti sur 12 col, en mettant 2 on divise 12/2=6
        // il affichera donc 6 images par lignes
        bookElement.setAttribute("class", "card mb-4 col-2");

        // Afficher le titre du livre
        let titre = "";
        if (book.title.length > 20) {
            // SUBSTRING => permet ici de dire que si le titre dépasse 20 caractère, on ajoute ...
            titre = book.title.substring(0, 20) + "(...)";
        }
        else {
            titre = book.title;
        }


        let description;
        let descriptionShort;
        let descriptionLong;

        if (book.shortDescription == null || book.shortDescription == undefined) {
            description = "";
            descriptionShort = "";
            descriptionLong = "";

        } else {
            if (book.shortDescription.length > 20) {
                descriptionShort = book.shortDescription.substring(0, 20) + "(...)";
                if (book.longDescription == null || book.longDescription == undefined) {
                    description = book.shortDescription;
                }
                else {
                    description = book.longDescription;
                }
            } else {
                descriptionShort = book.shortDescription;
                if (book.longDescription == null || book.longDescription == undefined) {
                    description = book.shortDescription;
                }
                else {
                    description = book.longDescription;
                }
            }


        }

        // on s'occupe maintenant des images
        let image;
        if (book.thumbnailUrl == null || book.thumbnailUrl == undefined) {
            image = "https://p1.storage.canalblog.com/14/48/1145642/91330992_o.png"
        } else {
            image = book.thumbnailUrl;
        }


        bookElement.innerHTML =
            "<img class = 'img-fluid' src ='" + image + "'/>" + "<h1>" + "<strong>" + titre + "</strong>" + "</h1>";

        if (description != "") {
            bookElement.innerHTML +=
                "<h4> <span class='infobulle' title='" +
                description +
                "'>" +
                descriptionShort +
                "</span> </h4>";
        }

        // on créer la variable pour ajouter le nombre de page
        let pageNumber = book.pageCount;

        // on créer la variable pour ajouter l'ISBN
        let isbn = book.isbn

        // on créer la variable pour ajouter la date de publication
        let datePubli;
        // TRY ==> instruction que l'on souhaite exécuter, "essayer" et s'il y a une erreur tu l'attrapes
        // .toLocaleDateString est une fonction qui permet d'afficher la date au format 
        // date locale ici "fr-FR"
        try {
            datePubli = new Date(book.publishedDate.dt_txt).toLocaleDateString("fr-FR", options);
            // CATCH ==> instruction à exécuter si une exception est levée dans le bloc "try"
        } catch (error) {
            datePubli = "pas de date de publication";
        }

        // INNERHTML affiche toutes les informations 
        bookElement.innerHTML += "<h4 >" + "<strong>Date de publication :</strong> "
            + datePubli + "</h4>" + "<h2>"
            + "<strong>ISBN</strong>  : " + isbn +
            "<h2>" + "<strong>Nombre de pages</strong> : " + pageNumber + "</h2>";




        // APPENDCHILD permet d'ajouter un élément dans une div
        // ici la variable bookListElement a été associée à "booklist" du html qui est une div
        bookListElement.appendChild(bookElement);
    }

}


// cette fonction va rafraichir la page dès que l'on aura sélèctionné un auteur dans la liste déroulante
// en cliquant sur un nom on veut recupérer ce nom et afficher les oeuvres associées
function chargeByAuthor() {
    // dans le select je vais regarder dans mon tableau des options, et je vais regarder à
    // l'index sélèctionné (selectedIndex) et je récupère le texte
    let strAuthor = selectAuthors.options[selectAuthors.selectedIndex].text;

    // je vais créer une nouvelle liste
    let booksbyAuthor = new Array();
    // je vais vérifier si strAuthor est vide
    if (strAuthor == "") {
        // si on a pas sélèctionner d'auteur => on affiche tout
        showBooks(booksList);
    } else {
        for (index = 0; index < booksList.length; index++) {
            const element = booksList[index];

            // je veux vérifier dans mon tableau booksbyAuthor si j'ai deja le livre
            if (element.authors.indexOf(strAuthor) != -1) {
                booksbyAuthor.push(element);
            }
        }
        // Si un auteur est choisi alors le choix de la catégorie devient vide et inversement.
        selectCategories.selectedIndex = 0;
        showBooks(booksbyAuthor);

    }

}

// cette fonction va rafraichir la page dès que l'on aura sélèctionné une catégorie dans la liste déroulante
// en cliquant sur un nom on veut recupérer ce nom et afficher les oeuvres associées a cette
// catégorie
function ChargeByCategory() {
    let strCategory = selectCategories.options[selectCategories.selectedIndex].text;
    let booksByCategory = new Array();

    if (strCategory == "") {
        showBooks(booksList);
    } else {
        for (index = 0; index < booksList.length; index++) {
            const element = booksList[index];

            if (element.categories.indexOf(strCategory) != -1) {
                booksByCategory.push(element);

            }
        }
        // Si une catégorie est choisi alors le choix de la liste d'auteur devient vide et inversement. 
        selectAuthors.selectedIndex = 0;
        showBooks(booksByCategory);

    }
}

function changeBySearch(event){
    event.preventDefault();

    let saisie = document.getElementById("saisie");
    let booksBySearch = new Array();
    console.log(saisie.value);
    if (saisie.value == "") {
        showBooks(booksList);
    }else{
        for(i = 0; i < booksList.length; i++){
            const element = booksList[i];
            if(element.title.includes(saisie.value)){
                booksBySearch.push(element);
            }
        }
        showBooks(booksBySearch);
    }
}


