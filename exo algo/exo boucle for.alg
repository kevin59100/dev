<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="limite PREND_LA_VALEUR 10"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" totalBoucles="5000000" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#indice" algoitem="indice EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#limite" algoitem="limite EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#limite#10#pasliste" algoitem="limite PREND_LA_VALEUR 10"/>
        <item code="12#indice#0#limite" algoitem="POUR indice ALLANT_DE 0 A limite">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#bonjour#1" algoitem="AFFICHER &quot;bonjour&quot;"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
