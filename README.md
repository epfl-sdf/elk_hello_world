# elk_hello_world
<section>
	<h1>
		Presentation
	</h1>
	<p align="justify">
		L'ensemble des programmes est base sur l'utilisation des 3 logiciels ELK (elasticsearch logstash et Kibana).
		<br>
		Ces trois logiciels travaillent ensemble pour le traitement de logs.
		<br>
		Elastisearch est un logiciel d'indexation pour optimiser les recherches.
		<br>
		Logstash sert a analyser et formater les log via differents plugins.
		<br>
		Enfin Kibana est un logiciel d'affichage qui permet de visualiser les champs obtenus grace a differents types de graphes.
		<br>
		En input on a des logs qui sont traites par Logstash, une fois filtres ils sont envoyes vers Elasticsearch qui les indexe. Kibana sert ensuite d'interface graphique pour visualiser les resultats obtenus par Elasticsearch.
	</p>
</section>
<section>
	<h1>
		Installation
	</h1>
	<p align="justify">
		L'installation des trois logiciels se fait simultanement en runnant simplement ./install.sh
	</p>
</section>
<section>
	<h1>
		Utilisation
	</h1>
	<p align="justify">
		les fichiers *.conf contiennent logstash le code de traitement des logs	
		<br>
		les fichiers *_grok* utilisent le filtre grok dans logstash
		<br>
		les fichiers *_csv* utilisent le filtre csv dans logstash
		<br>
		les fichiers *_100* ou *_1000* sont des fichiers test sur des jeux de 100 ou 1000 logs seulement
		<br>
		les fichiers *_all* sont des fichiers tournant avec un jeu complet de log situe dans un dossier plus haut
		<br>
		les fichiers *.sh servent a lancer les jeux de test
		<br>
		les deux programmes de lancement wwp_all_csv_final.sh et wwp_all_grok_final.save20170817.sh necessitent d'entrer l'adresse de l'hote et l'index.
		<br>
		un reset du template est possible en tapant reset.
		<br>
		-help en cas de besoin.
	</p>
</section>
<section>
	<h1>
		References
	</h1>
	<p align="justify">
		<a href="https://blog.netapsys.fr/vos-logs-passent-la-seconde-avec-elk-elasticsearch-logstash-kibana/">
			Presentation ELK
		</a>
		<br>
		<a href="https://www.elastic.co/guide/en/kibana/5.5/index.html">
			Guide Kibana 5.5
		</a>
		<br>
		<a href="https://www.elastic.co/guide/en/logstash/current/plugins-filters-grok.html">
			Filtre grok de Logstash
		</a>
		<br>
		<a href="https://www.elastic.co/guide/en/logstash/current/plugins-filters-csv.html">
			Filtre csv de Logstash
		</a>
		<br>
		<a href="https://www.elastic.co/guide/en/logstash/current/plugins-filters-mutate.html">
			Filtre mutate de Logstash
		</a>
	</p>
</section>
