<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="SI (candidat_1 &lt; 12.25 OU candidat_2> 50 OU candidat_3>50 OU candidat_4 >50) ALORS"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" maxBoucle="500000" epaisseurLigne="2" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="candidat_1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_1"/>
        <item algoitem="candidat_2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_2"/>
        <item algoitem="candidat_3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_3"/>
        <item algoitem="candidat_4 EST_DU_TYPE NOMBRE" code="1#NOMBRE#candidat_4"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;reusltat 1&quot;" code="4#reusltat 1#0"/>
        <item algoitem="LIRE candidat_1" code="2#candidat_1#pasliste"/>
        <item algoitem="AFFICHER &quot;resultat 2&quot;" code="4#resultat 2#0"/>
        <item algoitem="LIRE candidat_2" code="2#candidat_2#pasliste"/>
        <item algoitem="AFFICHER &quot;resultat 3&quot;" code="4#resultat 3#0"/>
        <item algoitem="LIRE candidat_3" code="2#candidat_3#pasliste"/>
        <item algoitem="AFFICHER &quot;resultat 4&quot;" code="4#resultat 4#0"/>
        <item algoitem="LIRE candidat_4" code="2#candidat_4#pasliste"/>
        <item algoitem="SI (candidat_1 > 50) ALORS" code="6#candidat_1 > 50">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;vous etes elu&quot;" code="4#vous etes elu#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (candidat_1 &lt; 12.25 OU candidat_2> 50 OU candidat_3>50 OU candidat_4 >50) ALORS" code="6#candidat_1 &lt; 12.25 OU candidat_2> 50 OU candidat_3>50 OU candidat_4 >50">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;vous etes eliminé!&quot;" code="4#vous etes eliminé!#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="SI (candidat_1> 12.5 ET candidat_1 &lt; 50 ET (candidat_1>candidat_2 ET candidat_1>candidat_3 ET candidat_1>candidat_4)) ALORS" code="6#candidat_1> 12.5 ET candidat_1 &lt; 50 ET (candidat_1>candidat_2 ET candidat_1>candidat_3 ET candidat_1>candidat_4)">
                    <item algoitem="DEBUT_SI" code="7#debutsi"/>
                    <item algoitem="AFFICHER &quot;vous ete en ballottage favorable!&quot;" code="4#vous ete en ballottage favorable!#0"/>
                    <item algoitem="FIN_SI" code="8#finsi"/>
                    <item algoitem="SINON" code="9#sinon">
                        <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                        <item algoitem="SI (candidat_1>=12.5 ET candidat_1 &lt;50 ET (candidat_1&lt;candidat_2 OU candidat_1&lt;candidat_3 OU candidat_1&lt;candidat_4)) ALORS" code="6#candidat_1>=12.5 ET candidat_1 &lt;50 ET (candidat_1&lt;candidat_2 OU candidat_1&lt;candidat_3 OU candidat_1&lt;candidat_4)">
                            <item algoitem="DEBUT_SI" code="7#debutsi"/>
                            <item algoitem="AFFICHER &quot;vous etes en ballottage defavorable!&quot;" code="4#vous etes en ballottage defavorable!#0"/>
                            <item algoitem="FIN_SI" code="8#finsi"/>
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
