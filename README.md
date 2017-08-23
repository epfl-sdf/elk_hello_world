# elk_hello_world
<section>
	<h1>
		Presentation
	</h1>
	<p>
		L'ensemble des programmes est base sur l'utilisation des 3 logiciels ELK (elasticsearch logstash et Kibana)
		<br>
		Ces trois logiciels travaillent ensemble pour le traitements de logs
		<br>
		Elastisearch est un logiciel d'indexation pour optimiser les recherches
		<br>
		Logstash sert a analyser et formater les log via differents plugins
		<br>
		Enfin Kibana est un logiciel d'affichage qui permet de visualiser les champs obtenus grace a differents types de graphes
	</p>
</section>
<section>
	<h1>
		Installation
	<h1>
	<p>
		L'installation des trois logiciels se fait simultanement en runnant simplement ./install.sh
	</p>
</section>


#<section>
#	<p>	
#		Petit Hello World pour commencer a faire joujou avec ELK
#		<br>
#		zf170809.1458,zf170809.1516
#		<br>
#		<br>
#			<b>
#			ATTENTION !
#			</b>
#		<br>
#		Il faut modifier le nom du serveur Eleasticsearch de sortie dans *.conf et mettre VOTRE machine a  la place !
#		<br>
#		<br>
#		Les fichiers *_100* sont pour un jeu de 100 lignes seulement de logs pour faire des tests de fonctionnement du stack ELK
#�		<br>
#		Les fichiers *_all* sont pour un jeu complet de lignes de logs qui se trouvent un dossier plus haut
#		<br>
#		Les fichier *csv* sont utilisés avec Logstash et le filtre csv
#		<br>
#		Les fichiers *grok* sont utilisés avec Logstash et le filtre GROK
#		<br>
#		Les fichier *.sh sont pour lancer les jeux de tests
#		<br>
#	</p>
#</section>
