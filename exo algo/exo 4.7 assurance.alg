<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="LIRE accident"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#anciennete" algoitem="anciennete EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#age" algoitem="age EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#permis" algoitem="permis EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#accident" algoitem="accident EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez anciennete#0" algoitem="AFFICHER &quot;entrez anciennete&quot;"/>
        <item code="2#anciennete#pasliste" algoitem="LIRE anciennete"/>
        <item code="4#entrez age#0" algoitem="AFFICHER &quot;entrez age&quot;"/>
        <item code="2#age#pasliste" algoitem="LIRE age"/>
        <item code="4#entrez permis#0" algoitem="AFFICHER &quot;entrez permis&quot;"/>
        <item code="2#permis#pasliste" algoitem="LIRE permis"/>
        <item code="4#entrez accident#0" algoitem="AFFICHER &quot;entrez accident&quot;"/>
        <item code="2#accident#pasliste" algoitem="LIRE accident"/>
        <item code="6#anciennete > 1 ET accident == 0" algoitem="SI (anciennete > 1 ET accident == 0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#tarif bleu#0" algoitem="AFFICHER &quot;tarif bleu&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#(age >= 25 ET permis &lt; 2) OU (age &lt; 25 ET permis > 2)" algoitem="SI ((age >= 25 ET permis &lt; 2) OU (age &lt; 25 ET permis > 2)) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="6#accident == 0" algoitem="SI (accident == 0) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#tarif orange#0" algoitem="AFFICHER &quot;tarif orange&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="6#accident == 1" algoitem="SI (accident == 1) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#tarif rouge#0" algoitem="AFFICHER &quot;tarif rouge&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="6#accident > 1" algoitem="SI (accident > 1) ALORS">
                        <item code="7#debutsi" algoitem="DEBUT_SI"/>
                        <item code="4#refusé#0" algoitem="AFFICHER &quot;refusé&quot;"/>
                        <item code="8#finsi" algoitem="FIN_SI"/>
                    </item>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#(age >= 25 ET permis > 2 ET accident > 2) OU (age &lt; 25 ET permis &lt; 2 ET accident == 0)" algoitem="SI ((age >= 25 ET permis > 2 ET accident > 2) OU (age &lt; 25 ET permis &lt; 2 ET accident == 0)) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#tarif rouge#0" algoitem="AFFICHER &quot;tarif rouge&quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                            <item code="9#sinon" algoitem="SINON">
                                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                <item code="6#age >= 25 ET accident == 0" algoitem="SI (age >= 25 ET accident == 0) ALORS">
                                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                                    <item code="4#tarif vert#0" algoitem="AFFICHER &quot;tarif vert&quot;"/>
                                    <item code="8#finsi" algoitem="FIN_SI"/>
                                    <item code="9#sinon" algoitem="SINON">
                                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                                        <item code="4#tarif orange#0" algoitem="AFFICHER &quot;tarif orange&quot;"/>
                                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                                    </item>
                                </item>
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
