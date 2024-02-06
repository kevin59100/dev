<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER tab_1[i]"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" arrondiAuto="vrai" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tab_2" algoitem="tab_2 EST_DU_TYPE LISTE"/>
        <item code="1#LISTE#tab_1" algoitem="tab_1 EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#somme" algoitem="somme EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#j" algoitem="j EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#somme#0#pasliste" algoitem="somme PREND_LA_VALEUR 0"/>
        <item code="4#saisir les valeurs du tab 2#0" algoitem="AFFICHER &quot;saisir les valeurs du tab 2&quot;"/>
        <item code="12#j#1#2" algoitem="POUR j ALLANT_DE 1 A 2">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#tab_2#j" algoitem="LIRE tab_2[j]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#sasir les valeurs du tab 1#0" algoitem="AFFICHER &quot;sasir les valeurs du tab 1&quot;"/>
        <item code="12#i#1#4" algoitem="POUR i ALLANT_DE 1 A 4">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#tab_1#i" algoitem="LIRE tab_1[i]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#j#1#2" algoitem="POUR j ALLANT_DE 1 A 2">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="12#i#1#4" algoitem="POUR i ALLANT_DE 1 A 4">
                <item code="13#debutpour" algoitem="DEBUT_POUR"/>
                <item code="5#somme#somme + tab_2[j] * tab_1[i]#pasliste" algoitem="somme PREND_LA_VALEUR somme + tab_2[j] * tab_1[i]"/>
                <item code="3#tab_2#0#j" algoitem="AFFICHER tab_2[j]"/>
                <item code="4# x #0" algoitem="AFFICHER &quot; x &quot;"/>
                <item code="3#tab_1#0#i" algoitem="AFFICHER tab_1[i]"/>
                <item code="4# + #0" algoitem="AFFICHER &quot; + &quot;"/>
                <item code="14#finpour" algoitem="FIN_POUR"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4# = #0" algoitem="AFFICHER &quot; = &quot;"/>
        <item code="3#somme#0#pasliste" algoitem="AFFICHER somme"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
