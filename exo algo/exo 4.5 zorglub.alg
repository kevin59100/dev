<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="SI (age > 20 ET sexe ==&quot;h&quot;) ALORS" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurLigne="2" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="age EST_DU_TYPE NOMBRE" code="1#NOMBRE#age"/>
        <item algoitem="sexe EST_DU_TYPE CHAINE" code="1#CHAINE#sexe"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;quel est votre sexe ?&quot;" code="4#quel est votre sexe ?#0"/>
        <item algoitem="LIRE sexe" code="2#sexe#pasliste"/>
        <item algoitem="AFFICHER &quot;quel est votre age ?&quot;" code="4#quel est votre age ?#0"/>
        <item algoitem="LIRE age" code="2#age#pasliste"/>
        <item algoitem="TANT_QUE (sexe != &quot;h&quot; ET sexe!= &quot;f&quot;) FAIRE" code="15#sexe != &quot;h&quot; ET sexe!= &quot;f&quot;">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="AFFICHER &quot;merci de saisir h ou f&quot;" code="4#merci de saisir h ou f#0"/>
            <item algoitem="LIRE sexe" code="2#sexe#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (age > 20 ET sexe ==&quot;h&quot;) ALORS" code="6#age > 20 ET sexe ==&quot;h&quot;">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;tu es imposable ! &quot;" code="4#tu es imposable ! #0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (age > 18 ET sexe == &quot;f&quot; ET age &lt;=35) ALORS" code="6#age > 18 ET sexe == &quot;f&quot; ET age &lt;=35">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;tu es imposable !&quot;" code="4#tu es imposable !#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="AFFICHER &quot;non imposable&quot;" code="4#non imposable#0"/>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
