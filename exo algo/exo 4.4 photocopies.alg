<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="prix_total PREND_LA_VALEUR nbre_photocopie* 0.1"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2defaut="" F2lignes="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" totalAffichages="1000" epaisseurPoint="2" arrondiAuto="vrai" nbDecimales="8" epaisseurLigne="2" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="nbre_photocopie EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbre_photocopie"/>
        <item algoitem="prix_total EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_total"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;quel est le nombre de photocopies?&quot;" code="4#quel est le nombre de photocopies?#0"/>
        <item algoitem="LIRE nbre_photocopie" code="2#nbre_photocopie#pasliste"/>
        <item algoitem="SI (nbre_photocopie &lt;= 10) ALORS" code="6#nbre_photocopie &lt;= 10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="prix_total PREND_LA_VALEUR nbre_photocopie* 0.1" code="5#prix_total#nbre_photocopie* 0.1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (nbre_photocopie > 10  ET nbre_photocopie &lt;= 30) ALORS" code="6#nbre_photocopie > 10  ET nbre_photocopie &lt;= 30">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="prix_total PREND_LA_VALEUR (nbre_photocopie - 10) * 0.09 + 1" code="5#prix_total#(nbre_photocopie - 10) * 0.09 + 1#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (nbre_photocopie > 30) ALORS" code="6#nbre_photocopie > 30">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="prix_total PREND_LA_VALEUR (nbre_photocopie - 30) * 0.08 + 2.80" code="5#prix_total#(nbre_photocopie - 30) * 0.08 + 2.80#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="AFFICHER &quot;le prix total est de : &quot;" code="4#le prix total est de : #0"/>
        <item algoitem="AFFICHER prix_total" code="3#prix_total#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
