<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="limite PREND_LA_VALEUR 9"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2defaut="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalAffichages="1000" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="indice EST_DU_TYPE NOMBRE" code="1#NOMBRE#indice"/>
        <item algoitem="limite EST_DU_TYPE NOMBRE" code="1#NOMBRE#limite"/>
        <item algoitem="nbre EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE nbre" code="2#nbre#pasliste"/>
        <item algoitem="limite PREND_LA_VALEUR 9" code="5#limite#9#pasliste"/>
        <item algoitem="POUR indice ALLANT_DE 0 A limite" code="12#indice#0#limite">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="nbre PREND_LA_VALEUR nbre + 1" code="5#nbre#nbre + 1#pasliste"/>
            <item algoitem="AFFICHER &quot;-&quot;" code="4#-#0"/>
            <item algoitem="AFFICHER nbre" code="3#nbre#0#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
