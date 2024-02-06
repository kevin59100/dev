<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="nbre PREND_LA_VALEUR 1" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbre" algoitem="nbre EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbre_max" algoitem="nbre_max EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#position" algoitem="position EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbre#1#pasliste" algoitem="nbre PREND_LA_VALEUR 1"/>
        <item code="15#nbre != 0" algoitem="TANT_QUE (nbre != 0) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#compteur#compteur + 1#pasliste" algoitem="compteur PREND_LA_VALEUR compteur + 1"/>
            <item code="4#entrez nombre#0" algoitem="AFFICHER &quot;entrez nombre&quot;"/>
            <item code="2#nbre#pasliste" algoitem="LIRE nbre"/>
            <item code="6#nbre > nbre_max" algoitem="SI (nbre > nbre_max) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#position#compteur#pasliste" algoitem="position PREND_LA_VALEUR compteur"/>
                <item code="5#nbre_max#nbre#pasliste" algoitem="nbre_max PREND_LA_VALEUR nbre"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#le plus grand etait : #0" algoitem="AFFICHER &quot;le plus grand etait : &quot;"/>
        <item code="3#nbre_max#1#pasliste" algoitem="AFFICHER nbre_max"/>
        <item code="4#en position : #0" algoitem="AFFICHER &quot;en position : &quot;"/>
        <item code="3#position#0#pasliste" algoitem="AFFICHER position"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
