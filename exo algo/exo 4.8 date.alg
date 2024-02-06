<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;la date n'est pas valide&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2defaut="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="jours EST_DU_TYPE NOMBRE" code="1#NOMBRE#jours"/>
        <item algoitem="mois EST_DU_TYPE NOMBRE" code="1#NOMBRE#mois"/>
        <item algoitem="annee EST_DU_TYPE NOMBRE" code="1#NOMBRE#annee"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;entrez jours&quot;" code="4#entrez jours#0"/>
        <item algoitem="LIRE jours" code="2#jours#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez mois&quot;" code="4#entrez mois#0"/>
        <item algoitem="LIRE mois" code="2#mois#pasliste"/>
        <item algoitem="AFFICHER &quot;entrez annee&quot;" code="4#entrez annee#0"/>
        <item algoitem="LIRE annee" code="2#annee#pasliste"/>
        <item algoitem="SI (jours &lt;= &quot;31&quot; ET (mois == &quot;1&quot; OU mois == &quot;3&quot; OU mois == &quot;5&quot; OU mois == &quot;7&quot; OU mois == &quot;8&quot; OU mois == &quot;10&quot; OU mois == &quot;12&quot;)) ALORS" code="6#jours &lt;= &quot;31&quot; ET (mois == &quot;1&quot; OU mois == &quot;3&quot; OU mois == &quot;5&quot; OU mois == &quot;7&quot; OU mois == &quot;8&quot; OU mois == &quot;10&quot; OU mois == &quot;12&quot;)">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;la date est valide&quot;" code="4#la date est valide#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (jours &lt;= &quot;30&quot; ET (mois == &quot;4&quot; OU mois == &quot;6&quot; OU mois == &quot;9&quot; OU mois == &quot;11&quot;)) ALORS" code="6#jours &lt;= &quot;30&quot; ET (mois == &quot;4&quot; OU mois == &quot;6&quot; OU mois == &quot;9&quot; OU mois == &quot;11&quot;)">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;la date est valide&quot;" code="4#la date est valide#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (jours &lt;= 28 ET mois == 2) ALORS" code="6#jours &lt;= 28 ET mois == 2">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHER &quot;la date est valide&quot;" code="4#la date est valide#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
                            <item algoitem="SINON" code="9#sinon">
                                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                <item algoitem="SI (mois == 2 ET jours &lt;= 29 ET (annee%400 == 0 ET annee%100!= 0 OU annee%4== 0)) ALORS" code="6#mois == 2 ET jours &lt;= 29 ET (annee%400 == 0 ET annee%100!= 0 OU annee%4== 0)">
                                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                                    <item algoitem="AFFICHER &quot;l'annee est bissextile&quot;" code="4#l'annee est bissextile#0"/>
                                    <item algoitem="FIN_SI" code="8#finsi"/>
                                    <item algoitem="SINON" code="9#sinon">
                                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                                        <item algoitem="AFFICHER &quot;la date n'est pas valide&quot;" code="4#la date n'est pas valide#0"/>
                                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                                    </item>
                                </item>
                                <item algoitem="FIN_SINON" code="11#finsinon"/>
                            </item>
                        </item>
                        <item algoitem="FIN_SINON" code="11#finsinon"/>
                    </item>
                </item>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
