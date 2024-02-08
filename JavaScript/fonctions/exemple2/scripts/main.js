// faire une fonction qui donne le nom le prénom et l'age

let name2= prompt("saisir un prénom");
let surname= prompt("saisir un nom");
let age= prompt("saisir un age");

function afficherVosIdentifiants(n, s, a){
        alert("je m'appelle "+n+" "+s+" et j'ai "+a+"ans");
}
afficherVosIdentifiants(name2, surname, age);

// faire une autre fonction qui prend en parametre,l'age et un entier
// et qui calcule le nouvel age (faire un return)

function calculAge(a,n){
        return parseInt(a)+parseInt(n);

}
age=calculAge(age, 2);
alert("nouvel age: " + age);