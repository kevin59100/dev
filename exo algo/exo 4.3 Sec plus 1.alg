<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="heues PREND_LA_VALEUR 0" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2etat="inactif" F2lignes="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" epaisseurPoint="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#heues" algoitem="heues EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#minutes" algoitem="minutes EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#secondes" algoitem="secondes EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#entrez heures#0" algoitem="AFFICHER &quot;entrez heures&quot;"/>
        <item code="2#heues#pasliste" algoitem="LIRE heues"/>
        <item code="4#entrez minutes#0" algoitem="AFFICHER &quot;entrez minutes&quot;"/>
        <item code="2#minutes#pasliste" algoitem="LIRE minutes"/>
        <item code="4#entrez secondes#0" algoitem="AFFICHER &quot;entrez secondes&quot;"/>
        <item code="2#secondes#pasliste" algoitem="LIRE secondes"/>
        <item code="5#secondes#secondes + 1#pasliste" algoitem="secondes PREND_LA_VALEUR secondes + 1"/>
        <item code="6#secondes == 60" algoitem="SI (secondes == 60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#secondes#0#pasliste" algoitem="secondes PREND_LA_VALEUR 0"/>
            <item code="5#minutes#minutes + 1#pasliste" algoitem="minutes PREND_LA_VALEUR minutes + 1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#minutes == 60" algoitem="SI (minutes == 60) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#minutes#0#pasliste" algoitem="minutes PREND_LA_VALEUR 0"/>
            <item code="5#heues#heues + 1#pasliste" algoitem="heues PREND_LA_VALEUR heues + 1"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#heues == 24" algoitem="SI (heues == 24) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="5#heues#0#pasliste" algoitem="heues PREND_LA_VALEUR 0"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="4#dans une seconde il sera #0" algoitem="AFFICHER &quot;dans une seconde il sera &quot;"/>
        <item code="3#heues#0#pasliste" algoitem="AFFICHER heues"/>
        <item code="4# h #0" algoitem="AFFICHER &quot; h &quot;"/>
        <item code="3#minutes#0#pasliste" algoitem="AFFICHER minutes"/>
        <item code="4# m #0" algoitem="AFFICHER &quot; m &quot;"/>
        <item code="3#secondes#0#pasliste" algoitem="AFFICHER secondes"/>
        <item code="4# s #0" algoitem="AFFICHER &quot; s &quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
