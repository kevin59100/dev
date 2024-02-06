<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHERCALCUL prix_TTC*nombre_darticles"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2defaut="" F2para="" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" nbDecimales="8" totalBoucles="5000000" arrondiAuto="vrai" epaisseurLigne="2" totalAffichages="1000" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="prix_HT EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_HT"/>
        <item algoitem="nombre_darticles EST_DU_TYPE NOMBRE" code="1#NOMBRE#nombre_darticles"/>
        <item algoitem="taux_TVA EST_DU_TYPE NOMBRE" code="1#NOMBRE#taux_TVA"/>
        <item algoitem="prix_TTC EST_DU_TYPE NOMBRE" code="1#NOMBRE#prix_TTC"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;donner prix HT&quot;" code="4#donner prix HT#0"/>
        <item algoitem="LIRE prix_HT" code="2#prix_HT#pasliste"/>
        <item algoitem="AFFICHER &quot;donner le nombre d'article&quot;" code="4#donner le nombre d'article#0"/>
        <item algoitem="LIRE nombre_darticles" code="2#nombre_darticles#pasliste"/>
        <item algoitem="AFFICHER &quot;montant de la TVA&quot;" code="4#montant de la TVA#0"/>
        <item algoitem="LIRE taux_TVA" code="2#taux_TVA#pasliste"/>
        <item algoitem="prix_TTC PREND_LA_VALEUR prix_HT + prix_HT*taux_TVA/100" code="5#prix_TTC#prix_HT + prix_HT*taux_TVA/100#pasliste"/>
        <item algoitem="AFFICHERCALCUL prix_TTC*nombre_darticles" code="20#prix_TTC*nombre_darticles#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
