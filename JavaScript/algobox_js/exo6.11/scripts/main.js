let tableau1=[4, 8, 7, 12];
let tableau2=[3, 6];
sum=0;

// boucle qui parcourt le tableau1 et qui commencera les calculs par celui-ci
for(i=0; i < tableau1.length; i++){
    // dans la même boucle je crée une deuxième boucle pour le tableau2
    for(j=0; j < tableau2.length; j++){
        // je fais la multiplication de chaque celulle de chaque tableau
        alert(tableau1[i]*tableau2[j]);
        // j'additionne ensuite chaque multiplication
        sum+=tableau1[i]*tableau2[j];
    }
}
// j'affiche le resultat du schtroumph
    alert(sum);