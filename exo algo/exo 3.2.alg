<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbre_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre_1"/>
        <item algoitem="nbre_2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre_2"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;donner nombre 1&quot;" code="4#donner nombre 1#0"/>
        <item algoitem="LIRE nbre_1" code="2#nbre_1#pasliste"/>
        <item algoitem="AFFICHER &quot;donner nbre 2&quot;" code="4#donner nbre 2#0"/>
        <item algoitem="LIRE nbre_2" code="2#nbre_2#pasliste"/>
        <item algoitem="SI (nbre_1 >= 0 ET nbre_2 >= 0) ALORS" code="6#nbre_1 >= 0 ET nbre_2 >= 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;le nombre est positif&quot;" code="4#le nombre est positif#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (nbre_1 &lt;= -1 ET nbre_2 &lt;= -1) ALORS" code="6#nbre_1 &lt;= -1 ET nbre_2 &lt;= -1">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;le nombre est positif&quot;" code="4#le nombre est positif#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;le nombre est negatif&quot;" code="4#le nombre est negatif#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
