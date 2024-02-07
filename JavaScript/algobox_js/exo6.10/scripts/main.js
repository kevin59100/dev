let tableau1=[4, 8, 7 ,9, 1, 5, 4, 6];
let tableau2=[7, 6, 5, 2, 1, 3, 7, 4];
let tableau3=new Array(8);
sum=0;

for(i=0; i < tableau1.length; i++){
    tableau3[i]= parseInt(tableau1[i])+parseInt(tableau2[i]);
}
alert("aficher "+ tableau3);
