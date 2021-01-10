#Nodes 

Meme s'en français on trouve un mot equivalent a Node (nœud), etant un nom cles des concepts de ROS, on vas rester sur son nom anglais, pour aider a la communication avec des autres utilisateurs.


## Reseau
	
Un node est aussi une façon d'appeler un sommet d'un graph/reseau. 
Dans ce genre de reseau, chaque node represent une fonctionalité, et chaque arc une lien de transference d'information: une connection.
![Graph](https://python-graph-gallery.com/wp-content/uploads/320_Network_start_simple.png)


## Un reseau de processement distribué

ROS est a la base un systeme distribué de processement. 
Cette genre d'architecture offre la flexibilité et performance necessaire pour un systeme robotique. 
ROS etant un middleware et systeme robotique, a une vision "meta" descriptive de tout l'etat du systeme. 
L'apellation par excellence des sommets de graphs en anglais est Node. 

Un systeme distribué a besoin de quelques characteristiques en commun
- Interface unifié de communication
- Flexibilité pour trouver des resources
- Flexibilité pour ajotuer et enlever des fonctionalités.

Pour mantenir cette vision globale,  et pouvoir acomplir les connections entre different programmes que sont agnostiques de leur existance, ROS offre un node speciale et unique dans une instalation ROS: Le master. 

Le node master va fonctioner comme un courtier, il prendre en charge la mis en communication entre les differents nodes. On pourrait dire que le master est en charge de "desiner" les arcs entre les nodes.


## Technique 

Dans le contexte plus material un Node désigne la plus petite unité de processeur fonctionnant en ROS. Il s'agit d'un programme exécutable. ROS recommande de créer un seul Node pour chaque objectif, et il est recommandé de développer pour une réutilisation facile. Par exemple, dans le cas des robots mobiles, le programme permettant de faire fonctionner le robot est décomposé en fonctions spécialisées. Un node spécialisé est utilisé pour chaque fonction, telle que l'entraînement des capteurs, la conversion des données des capteurs, la reconnaissance des obstacles, l'entraînement des moteurs, l'entrée des encodeurs et la navigation.
Au démarrage, un node enregistre des informations telles que le nom, le type de message, l'adresse URI et le numéro de port du node. Le node enregistré peut agir en tant qu'éditeur, abonné, serveur de service ou client de service sur la base des informations enregistrées, et les nodes peuvent échanger des messages en utilisant des sujets et des services.
Le Node utilise XMLRPC pour communiquer avec le master et utilise XMLRPC ou TCPROS5 des protocoles TCP/IP pour communiquer entre les nodes. La demande de connexion et la réponse entre les nodes utilisent XMLRPC, et la communication des messages utilise TCPROS car il s'agit d'une communication directe entre les nodes, indépendante du maître. En ce qui concerne l'adresse URI et le numéro de port, une variable appelée ROS_HOSTNAME, qui est stockée sur l'ordinateur où le node fonctionne, est utilisée comme adresse URI, et le port est fixé à une valeur unique arbitraire.

