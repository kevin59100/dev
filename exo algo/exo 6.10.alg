<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; = &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" totalBoucles="5000000" nbDecimales="8" totalAffichages="1000" epaisseurLigne="2" maxBoucle="500000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="tab_1 EST_DU_TYPE LISTE" code="1#LISTE#tab_1"/>
        <item algoitem="tab_2 EST_DU_TYPE LISTE" code="1#LISTE#tab_2"/>
        <item algoitem="somme EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme"/>
        <item algoitem="indice EST_DU_TYPE NOMBRE" code="1#NOMBRE#indice"/>
        <item algoitem="tab_final EST_DU_TYPE LISTE" code="1#LISTE#tab_final"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="somme PREND_LA_VALEUR 0" code="5#somme#0#pasliste"/>
        <item algoitem="AFFICHER &quot;saisir les valeurs du tab 1 : &quot;" code="4#saisir les valeurs du tab 1 : #0"/>
        <item algoitem="POUR indice ALLANT_DE 1 A 8" code="12#indice#1#8">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE tab_1[indice]" code="2#tab_1#indice"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;saisir les valeurs du tab 2 : &quot;" code="4#saisir les valeurs du tab 2 : #0"/>
        <item algoitem="POUR indice ALLANT_DE 1 A 8" code="12#indice#1#8">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE tab_2[indice]" code="2#tab_2#indice"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR indice ALLANT_DE 1 A 8" code="12#indice#1#8">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="somme PREND_LA_VALEUR tab_1[indice] + tab_2[indice]" code="5#somme#tab_1[indice] + tab_2[indice]#pasliste"/>
            <item algoitem="tab_final[indice] PREND_LA_VALEUR somme" code="5#tab_final#somme#indice"/>
            <item algoitem="AFFICHER &quot; = &quot;" code="4# = #0"/>
            <item algoitem="AFFICHER tab_final[indice]" code="3#tab_final#1#indice"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
