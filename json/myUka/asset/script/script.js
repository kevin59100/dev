const button = document.getElementById("bouton");
const champ = document.getElementById("champ");
const photo =document.getElementById("photo");
const ingredient = document.getElementById("ingrédients");
const allergeneElement = document.getElementById("allergene");
const nova = document.getElementById("nova");
const nutriscore = document.getElementById("nutriscore");
const oil=document.getElementById("huile-de-palme");
const nomProduit=document.getElementById("nameProduct");
const codeBarre=document.getElementById("code");
const info=document.getElementById("info");
const package=document.getElementById("information");


button.addEventListener("click",afficherInformationProduit);

function afficherInformationProduit(event) {
    event.preventDefault();

let picture;
let ingred;
let allergen;
let nov;
let score;
let oilPalm;
let name;
let code;
let information;
let valNut;
let packaging;

    //   
    axios.get('https://world.openfoodfacts.org/api/v2/product/' + champ.value)
    // .then est une fonction native
.then(function (response) {
    
        picture=response.data.product.image_front_url;
        ingred=response.data.product.ingredients_text_with_allergens;
        allergen=response.data.product.allergens;
        nov=response.data.product.nova_groups;
        score=response.data.product.nutriscore_grade;
        valNut=response.data.product.selected_images.nutrition.display.en;
        oilPalm= response.data.product.ingredients.find(element => element.id === 'en:palm-oil');
        name=response.data.product.product_name;
        code=response.data.product._id;
        information=response.data.product.brands;
        packaging=response.data.product.packaging;
        
        

        photo.innerHTML = "<img src="+ picture + ">";
        ingredient.innerHTML = "<p><strong>INGREDIENTS</strong> : </p>"+ "<br>"+ingred;
        allergeneElement.innerHTML="<strong>ALLERGENES</strong> : "+ "<br>"+ allergen;
        nova.innerHTML=afficherNova(nov);
        // traitement complexe donc je créé une fonction pour ne pas rajouter trop de lignes dans
        nutriscore.innerHTML= afficherNutriScore(score)+ "<img src="+valNut+">";
        oil.innerHTML = afficherPalmOil(oilPalm);    
        nomProduit.innerHTML = "<strong><p>NOM DU PRODUIT</strong> : "+ name+"</p>" ;
        codeBarre.innerHTML="<p><strong>CODE BARRE DU PRODUIT</strong> : "+code+"</p>";
        info.innerHTML="<p><strong>IFORMATION SUR LA MARQUE</strong> : "+information+"</p>";
        package.innerHTML="<p><strong>LISTE DES EMBALLAGES</strong> : "+packaging+"</p>";
        

    })

    .catch(function (error) {
        // en cas d’échec de la requête
        console.log(error);
    })
    .finally(function () {
        // dans tous les cas
    });
    
}

function afficherNutriScore(score){
    // on donne la valeur du paramètre de la fonction 
    switch (score) {
        case "a":
            // pas de break car on retourne une information
            return "<img src=asset/img/a.png>";
        case "b":
            return "<img src=asset/img/b.png>";
        case "c":
            return "<img src=asset/img/c.png>";
        case "d":
            return "<img src=asset/img/d.png>";
        case "e":
            return "<img src=asset/img/e.png>";
        default:
            return "";
    }
}

function afficherNova(nova){
    switch (nova) {
        case "1": 
            return "<img src=asset/img/nova1.png>";
        case "2": 
            return "<img src=asset/img/nova2.png>";
        case "3": 
            return "<img src=asset/img/nova3.png>";
        case "4": 
            return "<img src=asset/img/nova4.png>";
        default:
            return "";
    }
}


function afficherPalmOil(oil){
    if(oil!=null){
        return "<img src=asset/img/huile_de_palme.png><strong><p class=text-decoration-underline>contient de l'huile de palme</p></strong>";
    }
    else{
        return "<img src=asset/img/no_palm_oil.png><strong><p class=text-decoration-underline>ne contient pas d'huile de palme</p></strong>";
    }
}
