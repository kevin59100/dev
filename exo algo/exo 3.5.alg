<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;le produit est nul&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" arrondiAuto="vrai" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#nbre_1" algoitem="nbre_1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbre_2" algoitem="nbre_2 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez nbre 1#0" algoitem="AFFICHER &quot;entrez nbre 1&quot;"/>
        <item code="2#nbre_1#pasliste" algoitem="LIRE nbre_1"/>
        <item code="4#entrez nbre 2#0" algoitem="AFFICHER &quot;entrez nbre 2&quot;"/>
        <item code="2#nbre_2#pasliste" algoitem="LIRE nbre_2"/>
        <item code="6#nbre_1 == 0 OU nbre_2 == 0" algoitem="SI (nbre_1 == 0 OU nbre_2 == 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#le produit est nul#0" algoitem="AFFICHER &quot;le produit est nul&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#nbre_1 &lt; 0 ET nbre_2 &lt; 0" algoitem="SI (nbre_1 &lt; 0 ET nbre_2 &lt; 0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#le produit est positif#0" algoitem="AFFICHER &quot;le produit est positif&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#nbre_1 &lt; 0 OU nbre_2 &lt; 0" algoitem="SI (nbre_1 &lt; 0 OU nbre_2 &lt; 0) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#le produit est negatif#0" algoitem="AFFICHER &quot;le produit est negatif&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="4#le produit est positif#0" algoitem="AFFICHER &quot;le produit est positif&quot;"/>
                                <item code="11#finsinon" algoitem="FIN_SINON"/>
                            </item>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
