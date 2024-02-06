<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER moyenne"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" epaisseurPoint="2" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#limite" algoitem="limite EST_DU_TYPE NOMBRE"/>
        <item code="1#LISTE#tableau" algoitem="tableau EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#indice" algoitem="indice EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#moyenne" algoitem="moyenne EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#note_superieure" algoitem="note_superieure EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#saisissez le nombre de note : #0" algoitem="AFFICHER &quot;saisissez le nombre de note : &quot;"/>
        <item code="2#limite#pasliste" algoitem="LIRE limite"/>
        <item code="12#indice#1#limite" algoitem="POUR indice ALLANT_DE 1 A limite">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#saisissez une note : #0" algoitem="AFFICHER &quot;saisissez une note : &quot;"/>
            <item code="2#tableau#indice" algoitem="LIRE tableau[indice]"/>
            <item code="5#somme#tableau[indice] + somme#pasliste" algoitem="somme PREND_LA_VALEUR tableau[indice] + somme"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="5#moyenne#somme / limite#pasliste" algoitem="moyenne PREND_LA_VALEUR somme / limite"/>
        <item code="4#la moyenne est de : #0" algoitem="AFFICHER &quot;la moyenne est de : &quot;"/>
        <item code="3#moyenne#1#pasliste" algoitem="AFFICHER moyenne"/>
        <item code="12#indice#1#limite" algoitem="POUR indice ALLANT_DE 1 A limite">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="6#tableau[indice] > moyenne" algoitem="SI (tableau[indice] > moyenne) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#note_superieure#note_superieure + 1#pasliste" algoitem="note_superieure PREND_LA_VALEUR note_superieure + 1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#le nombre de note superieure est : #0" algoitem="AFFICHER &quot;le nombre de note superieure est : &quot;"/>
        <item code="3#note_superieure#0#pasliste" algoitem="AFFICHER note_superieure"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
