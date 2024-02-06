<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000" nbDecimales="8" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tableau EST_DU_TYPE LISTE" code="1#LISTE#tableau"/>
        <item algoitem="limite EST_DU_TYPE NOMBRE" code="1#NOMBRE#limite"/>
        <item algoitem="indice EST_DU_TYPE NOMBRE" code="1#NOMBRE#indice"/>
        <item algoitem="est_consecutif EST_DU_TYPE CHAINE" code="1#CHAINE#est_consecutif"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;saisissez le nombre de valeurs&quot;" code="4#saisissez le nombre de valeurs#0"/>
        <item algoitem="LIRE limite" code="2#limite#pasliste"/>
        <item algoitem="POUR indice ALLANT_DE 1 A limite" code="12#indice#1#limite">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE tableau[indice]" code="2#tableau#indice"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR indice ALLANT_DE 2 A limite" code="12#indice#2#limite">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="SI (tableau[indice] != tableau[indice-1] +1) ALORS" code="6#tableau[indice] != tableau[indice-1] +1">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="est_consecutif PREND_LA_VALEUR &quot;non&quot;" code="5#est_consecutif#&quot;non&quot;#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="SI (est_consecutif == &quot;non&quot;) ALORS" code="6#est_consecutif == &quot;non&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;le tableau n'est pas consecutif&quot;" code="4#le tableau n'est pas consecutif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;le tableau est consecutif&quot;" code="4#le tableau est consecutif#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
