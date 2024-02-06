<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER tableau[indice]"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tableau" algoitem="tableau EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#indice" algoitem="indice EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#saisir un nombre de valeur : #0" algoitem="AFFICHER &quot;saisir un nombre de valeur : &quot;"/>
        <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
        <item code="12#indice#1 #nbre" algoitem="POUR indice ALLANT_DE 1  A nbre">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#tableau#indice" algoitem="LIRE tableau[indice]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#indice#1#nbre" algoitem="POUR indice ALLANT_DE 1 A nbre">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#tableau#tableau[indice] + 1#indice" algoitem="tableau[indice] PREND_LA_VALEUR tableau[indice] + 1"/>
            <item code="3#tableau#1#indice" algoitem="AFFICHER tableau[indice]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
