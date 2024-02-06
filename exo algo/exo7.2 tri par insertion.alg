<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="tableau EST_DU_TYPE LISTE"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" epaisseurLigne="2" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#LISTE#tableau" algoitem="tableau EST_DU_TYPE LISTE"/>
        <item code="1#NOMBRE#indice" algoitem="indice EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#temp" algoitem="temp EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#indice_temporaire" algoitem="indice_temporaire EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#saisir 7 nombres#0" algoitem="AFFICHER &quot;saisir 7 nombres&quot;"/>
        <item code="12#indice#1#7" algoitem="POUR indice ALLANT_DE 1 A 7">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="19#pour entrer les nombre dans le tableau" algoitem="//pour entrer les nombre dans le tableau"/>
            <item code="2#tableau#indice" algoitem="LIRE tableau[indice]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="19#pour parcourir les nombres du tableau en commençant par 2 puisque l'on compare avec le nombre précédent" algoitem="//pour parcourir les nombres du tableau en commençant par 2 puisque l'on compare avec le nombre précédent"/>
        <item code="12#indice#2#7" algoitem="POUR indice ALLANT_DE 2 A 7">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="19#permet de savoir à quelle position je veux aller dans le tableau" algoitem="//permet de savoir à quelle position je veux aller dans le tableau"/>
            <item code="5#indice_temporaire#indice-1#pasliste" algoitem="indice_temporaire PREND_LA_VALEUR indice-1"/>
            <item code="19#on stock la valeur dans une variable temporaire = &quot;temp&quot;" algoitem="//on stock la valeur dans une variable temporaire = &quot;temp&quot;"/>
            <item code="5#temp#tableau[indice]#pasliste" algoitem="temp PREND_LA_VALEUR tableau[indice]"/>
            <item code="15#indice_temporaire != 0" algoitem="TANT_QUE (indice_temporaire != 0) FAIRE">
                <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
                <item code="6#temp > tableau[indice_temporaire]" algoitem="SI (temp > tableau[indice_temporaire]) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="5#tableau#tableau[indice_temporaire]#indice_temporaire+1" algoitem="tableau[indice_temporaire+1] PREND_LA_VALEUR tableau[indice_temporaire]"/>
                    <item code="5#tableau#temp#indice_temporaire" algoitem="tableau[indice_temporaire] PREND_LA_VALEUR temp"/>
                    <item code="5#indice_temporaire#indice_temporaire - 1#pasliste" algoitem="indice_temporaire PREND_LA_VALEUR indice_temporaire - 1"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="19#on met l'indice temporaire a 0 pour sortir du &quot;tant que&quot;" algoitem="//on met l'indice temporaire a 0 pour sortir du &quot;tant que&quot;"/>
                        <item code="5#indice_temporaire#0#pasliste" algoitem="indice_temporaire PREND_LA_VALEUR 0"/>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="12#indice#1#7" algoitem="POUR indice ALLANT_DE 1 A 7">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="3#tableau#1#indice" algoitem="AFFICHER tableau[indice]"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
