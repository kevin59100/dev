<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="indice EST_DU_TYPE NOMBRE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2etat="inactif" F2lignes="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="temp EST_DU_TYPE NOMBRE" code="1#NOMBRE#temp"/>
        <item algoitem="tableau EST_DU_TYPE LISTE" code="1#LISTE#tableau"/>
        <item algoitem="indice EST_DU_TYPE NOMBRE" code="1#NOMBRE#indice"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;saisir 7 nombres&quot;" code="4#saisir 7 nombres#0"/>
        <item algoitem="POUR indice ALLANT_DE 1 A 7" code="12#indice#1#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE tableau[indice]" code="2#tableau#indice"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="indice PREND_LA_VALEUR 1" code="5#indice#1#pasliste"/>
        <item algoitem="TANT_QUE (indice&lt;7) FAIRE" code="15#indice&lt;7">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (tableau[indice] &lt; tableau[indice+1]) ALORS" code="6#tableau[indice] &lt; tableau[indice+1]">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="temp PREND_LA_VALEUR tableau[indice]" code="5#temp#tableau[indice]#pasliste"/>
                <item algoitem="tableau[indice] PREND_LA_VALEUR tableau[indice+1]" code="5#tableau#tableau[indice+1]#indice"/>
                <item algoitem="tableau[indice+1] PREND_LA_VALEUR temp" code="5#tableau#temp#indice+1"/>
                <item algoitem="indice PREND_LA_VALEUR 0" code="5#indice#0#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="indice PREND_LA_VALEUR indice+1" code="5#indice#indice+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="POUR indice ALLANT_DE 1 A 7" code="12#indice#1#7">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER tableau[indice]" code="3#tableau#1#indice"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
