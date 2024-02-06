let tableau=new Array(9);
let sum=0;
let moyenne=0;
alert("vous allez saisir 9 notes")

for(i=0; i < tableau.length; i++){
    tableau[i]=prompt("saisissez la note " + parseInt(i+1));
    sum=parseInt(sum)+parseInt(tableau[i]);
}
alert(tableau);
alert("la somme des notes est de : "+sum+"");

moyenne=parseInt(sum)/tableau.length;
alert("la moyenne est de : "+moyenne+"");

