<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="nbre_max EST_DU_TYPE NOMBRE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" totalAffichages="1000" epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tableau" algoitem="tableau EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#indice" algoitem="indice EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbre_max" algoitem="nbre_max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#limite" algoitem="limite EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#position" algoitem="position EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#saisissez nombre de valeur : #0" algoitem="AFFICHER &quot;saisissez nombre de valeur : &quot;"/>
        <item code="2#limite#pasliste" algoitem="LIRE limite"/>
        <item code="12#indice#1#limite" algoitem="POUR indice ALLANT_DE 1 A limite">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#tableau#indice" algoitem="LIRE tableau[indice]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#indice#1#limite" algoitem="POUR indice ALLANT_DE 1 A limite">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#tableau[indice] > nbre_max" algoitem="SI (tableau[indice] > nbre_max) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#nbre_max#tableau[indice]#pasliste" algoitem="nbre_max PREND_LA_VALEUR tableau[indice]"/>
                <item code="5#position#indice#pasliste" algoitem="position PREND_LA_VALEUR indice"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#le plus grand nombre est : #0" algoitem="AFFICHER &quot;le plus grand nombre est : &quot;"/>
        <item code="3#nbre_max#1#pasliste" algoitem="AFFICHER nbre_max"/>
        <item code="4#il est en position : #0" algoitem="AFFICHER &quot;il est en position : &quot;"/>
        <item code="3#position#0#pasliste" algoitem="AFFICHER position"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
