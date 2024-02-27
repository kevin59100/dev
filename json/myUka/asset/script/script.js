const button = document.getElementById("bouton");
const champ = document.getElementById("champ");
const photo =document.getElementById("photo");
const ingredient = document.getElementById("ingrédient");
const allergene = document.getElementById("allergene");
const nova = document.getElementById("nova");
const nutriscore = document.getElementById("nutriscore");
const oil=document.getElementById("huile-de-palme");
const nomProduit=document.getElementById("nameProduct");
const codeBarre=document.getElementById("code");
const info=document.getElementById("information");


button.addEventListener("click", afficherMessage);

function afficherMessage(event) {
    event.preventDefault();

let picture;
let ingred;
let allergen;
let nov;
let score;
let oilPalm;
let name;
let code;


    axios.get('https://world.openfoodfacts.org/api/v2/product/' + champ.value)
.then(function (response) {
    
        picture=response.data.product.image_front_thumb_url;
        ingred=response.data.product.ingredients_text;
        allergen=response.data.product.allergens;
        nov=response.data.product.nova_groups;
        score=response.data.product.nutriscore_grade;
        oilPalm= response.data.product.ingredients.find(element => element.id === 'en:palm-oil');
        name=response.data.product.product_name;
        code=response.data.product._id


        photo.innerHTML = "<img src="+ picture + ">";
        ingredient.innerHTML= ingred;
        allergene.innerHTML= allergen;
        nova.innerHTML=nov;
        nutriscore.innerHTML=score;
        oil.innerHTML = "<strong>HUILE DE PALME</strong>" + "<br>" + (oilPalm ? "Présente" : "Non présente");    
        nomProduit.innerHTML = "<p>Nom du produit : "+ name+"</p>" ;
        codeBarre.innerHTML="<p>Code barre du produit : "+code+"</p>";
    
    })

    .catch(function (error) {
        // en cas d’échec de la requête
        console.log(error);
    })
    .finally(function () {
        // dans tous les cas
    });
    
}