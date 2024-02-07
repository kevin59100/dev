let tableau = new Array(6);
let sum = 0;
let moyenne = 0;

for (i = 0; i < tableau.length; i++) {
    tableau[i] = parseInt(prompt("saissez les notes"));
    sum = sum + tableau[i];
    moyenne = sum / tableau.length;
}
alert(tableau);
alert(sum);
alert(moyenne);

for (i = 0; i < tableau.length; i++) {
    if (tableau[i] > moyenne) {
        alert("les notes au dessus de la moyenne sont " + tableau[i]);
    }
}
