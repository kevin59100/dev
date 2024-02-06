<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;entrez le nombre&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalAffichages="1000" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8" epaisseurPoint="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="indice EST_DU_TYPE NOMBRE" code="1#NOMBRE#indice"/>
        <item algoitem="nbre EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre"/>
        <item algoitem="nbre_max EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre_max"/>
        <item algoitem="position EST_DU_TYPE NOMBRE" code="1#NOMBRE#position"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez le nombre&quot;" code="4#entrez le nombre#0"/>
        <item algoitem="POUR indice ALLANT_DE 1 A 10" code="12#indice#1#10">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
            <item algoitem="SI (nbre >nbre_max) ALORS" code="6#nbre >nbre_max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="position PREND_LA_VALEUR indice" code="5#position#indice#pasliste"/>
                <item algoitem="nbre_max PREND_LA_VALEUR nbre" code="5#nbre_max#nbre#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;le plus grand etait : &quot;" code="4#le plus grand etait : #0"/>
        <item algoitem="AFFICHER nbre_max" code="3#nbre_max#1#pasliste"/>
        <item algoitem="AFFICHER &quot;en position : &quot;" code="4#en position : #0"/>
        <item algoitem="AFFICHER position" code="3#position#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
