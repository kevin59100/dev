<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;nombre negatif : &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" epaisseurLigne="2" maxBoucle="500000" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tableau EST_DU_TYPE LISTE" code="1#LISTE#tableau"/>
        <item algoitem="nbre EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre"/>
        <item algoitem="indice EST_DU_TYPE NOMBRE" code="1#NOMBRE#indice"/>
        <item algoitem="positif EST_DU_TYPE NOMBRE" code="1#NOMBRE#positif"/>
        <item algoitem="negatif EST_DU_TYPE NOMBRE" code="1#NOMBRE#negatif"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez le nombre de valeur a saisir&quot;" code="4#entrez le nombre de valeur a saisir#0"/>
        <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
        <item algoitem="POUR indice ALLANT_DE 1 A nbre" code="12#indice#1#nbre">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE tableau[nbre]" code="2#tableau#nbre"/>
            <item algoitem="SI (tableau[nbre] > 0) ALORS" code="6#tableau[nbre] > 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="positif PREND_LA_VALEUR positif +1" code="5#positif#positif +1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="SI (tableau[nbre] &lt; 0) ALORS" code="6#tableau[nbre] &lt; 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="negatif PREND_LA_VALEUR negatif + 1" code="5#negatif#negatif + 1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;nombre positif : &quot;" code="4#nombre positif : #0"/>
        <item algoitem="AFFICHER positif" code="3#positif#1#pasliste"/>
        <item algoitem="AFFICHER &quot;nombre negatif : &quot;" code="4#nombre negatif : #0"/>
        <item algoitem="AFFICHER negatif" code="3#negatif#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
