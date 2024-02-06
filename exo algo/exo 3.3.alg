<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;les noms sont dans le desordre&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2" nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" totalAffichages="1000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prenom_1 EST_DU_TYPE CHAINE" code="1#CHAINE#prenom_1"/>
        <item algoitem="prenom_2 EST_DU_TYPE CHAINE" code="1#CHAINE#prenom_2"/>
        <item algoitem="prenom_3 EST_DU_TYPE CHAINE" code="1#CHAINE#prenom_3"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez prenom 1&quot;" code="4#entrez prenom 1#0"/>
        <item algoitem="LIRE prenom_1" code="2#prenom_1#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez prenom 2&quot;" code="4#entrez prenom 2#0"/>
        <item algoitem="LIRE prenom_2" code="2#prenom_2#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez prenom 3&quot;" code="4#entrez prenom 3#0"/>
        <item algoitem="LIRE prenom_3" code="2#prenom_3#pasliste"/>
        <item algoitem="SI (prenom_1 &lt; prenom_2 ET prenom_2 &lt; prenom_3) ALORS" code="6#prenom_1 &lt; prenom_2 ET prenom_2 &lt; prenom_3">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;les noms sont dans l'ordre alphabetique&quot;" code="4#les noms sont dans l'ordre alphabetique#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;les noms sont dans le desordre&quot;" code="4#les noms sont dans le desordre#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
