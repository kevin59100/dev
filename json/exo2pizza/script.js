let button = document.querySelector("button");
button.addEventListener("click", ChargeInfosjson);
function ChargeInfosjson() {
    fetch("pizzas.json")
        .then((response) => {
            return response.json();
        })
        .then((cheval) => {
            console.log(cheval);
            createHTML(cheval);
        });
}

function createHTML(_data) {
    // je recupère ma balise avec la classe preview
    const preview = document.getElementsByClassName("preview")[0];
    //je reinitialise cette balise a vide sinon à chaque clic, on va recreer des elements à la suite
    preview.innerHTML = "";

    //je créé un element pizzeria name qui contiendra le nom de ma Pizzeria (contenu dans le JSON)
    const pizzeriaName = document.createElement("div");
    pizzeriaName.innerHTML = _data.Name;
    //Je lui rajoute une classe
    pizzeriaName.setAttribute("class", "NomPizzeria");

    //je créé un element pizzeria Slogan qui contiendra le slogan de ma Pizzeria (contenu dans le JSON)
    const pizzeriaSlogan = document.createElement("div");
    pizzeriaSlogan.innerHTML = _data.Slogan;
    pizzeriaSlogan.setAttribute("class", "SloganPizzeria");

    //Sur notre preview, j'"attache" les elements Nom et slogan précedemment créés au preview
    preview.appendChild(pizzeriaName);
    preview.appendChild(pizzeriaSlogan);

    //on s'attaque aux pizzas
    let listPizzas = _data.Pizzas;

    //je créé une div qui contiendra toutes mes pizzas
    const pizzeriaListPizzas = document.createElement("div");
    //on va rajouter une classe (presente dans notre css) à cette div
    pizzeriaListPizzas.setAttribute("class", "contenu");

    for (let index = 0; index < listPizzas.length; index++) {
        const element = listPizzas[index];
        const Ingredients = element.Ingredients;
        // je créé le HTML pour l'element de chaque pizza
        let pizzaElement = document.createElement("div");
        pizzaElement.innerHTML =
            "<h2>" +
            element.Nom +
            "</h2>" +
            "<h3>" +
            element.Prix +
            "</h3>" +
            "<img src=" +
            element.Image +
            ">";

        for (let y = 0; y < Ingredients.length; y++) {
            const ingredient = Ingredients[y];
            pizzaElement.innerHTML += "<li>" + ingredient + "</li>";
        }
        //on attache notre pizza à l'element de la liste des pizzas
        pizzeriaListPizzas.appendChild(pizzaElement);
    }
    //on attache la liste des pizzas à preview
    preview.appendChild(pizzeriaListPizzas);
}


