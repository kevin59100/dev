<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;nombre de piece de 1 € : &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2lignes="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prix EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix"/>
        <item algoitem="prix_total EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_total"/>
        <item algoitem="billet_10 EST_DU_TYPE NOMBRE" code="1#NOMBRE#billet_10"/>
        <item algoitem="billet_5 EST_DU_TYPE NOMBRE" code="1#NOMBRE#billet_5"/>
        <item algoitem="somme_payée EST_DU_TYPE NOMBRE" code="1#NOMBRE#somme_payée"/>
        <item algoitem="reste EST_DU_TYPE NOMBRE" code="1#NOMBRE#reste"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="prix PREND_LA_VALEUR 1" code="5#prix#1#pasliste"/>
        <item algoitem="TANT_QUE (prix != 0) FAIRE" code="15#prix != 0">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="LIRE prix" code="2#prix#pasliste"/>
            <item algoitem="prix_total PREND_LA_VALEUR prix + prix_total" code="5#prix_total#prix + prix_total#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;total : &quot;" code="4#total : #0"/>
        <item algoitem="AFFICHER prix_total" code="3#prix_total#0#pasliste"/>
        <item algoitem="AFFICHER &quot;€&quot;" code="4#€#0"/>
        <item algoitem="LIRE somme_payée" code="2#somme_payée#pasliste"/>
        <item algoitem="reste PREND_LA_VALEUR somme_payée - prix_total" code="5#reste#somme_payée - prix_total#pasliste"/>
        <item algoitem="AFFICHER &quot;somme a rendre :&quot;" code="4#somme a rendre :#0"/>
        <item algoitem="AFFICHER reste" code="3#reste#1#pasliste"/>
        <item algoitem="TANT_QUE (reste >= 10) FAIRE" code="15#reste >= 10">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="billet_10 PREND_LA_VALEUR billet_10 + 1" code="5#billet_10#billet_10 + 1#pasliste"/>
            <item algoitem="reste PREND_LA_VALEUR reste - 10" code="5#reste#reste - 10#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;nombre de billet de 10 € : &quot;" code="4#nombre de billet de 10 € : #0"/>
        <item algoitem="AFFICHER billet_10" code="3#billet_10#1#pasliste"/>
        <item algoitem="TANT_QUE (reste >= 5) FAIRE" code="15#reste >= 5">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="billet_5 PREND_LA_VALEUR billet_5 + 1" code="5#billet_5#billet_5 + 1#pasliste"/>
            <item algoitem="reste PREND_LA_VALEUR reste - 5" code="5#reste#reste - 5#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="AFFICHER &quot;nombre de billet de 5€ : &quot;" code="4#nombre de billet de 5€ : #0"/>
        <item algoitem="AFFICHER billet_5" code="3#billet_5#1#pasliste"/>
        <item algoitem="AFFICHER &quot;nombre de piece de 1 € : &quot;" code="4#nombre de piece de 1 € : #0"/>
        <item algoitem="AFFICHER reste" code="3#reste#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
