let button=document.getElementById('button1');
let nbToFind = nombreAleatoireEntier();
let tb=document.getElementById('textBox1');

button.addEventListener('click',function () {
    if(tb.value > nbToFind){
        alert('trop grand!');
    }
    else if (tb.value < nbToFind) {
        alert('trop petit!');
    }
    else{
        alert('félicitation');
    }
    
})

    console.log(nbToFind);

    function nombreAleatoireEntier() {
        return Math.floor(Math.random() * 101); // Math.random() génère un nombre décimal entre 0 et 1, Math.floor() arrondit ce nombre à l'entier inférieur
      }
