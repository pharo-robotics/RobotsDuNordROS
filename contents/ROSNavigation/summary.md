#Summaire  
## Navigation
La navigation consiste à déplacer le robot d'un endroit à une destination spécifiée dans un environnement donné. Pour ce faire, une carte contenant les informations géométriques des meubles, des objets et des murs de l'environnement est nécessaire. Comme décrit dans la section SLAM précédente, la carte a été créée avec les informations de distance obtenues par le capteur et les informations de pose du robot lui-même.
La navigation permet au robot de se déplacer de la position actuelle à la position cible désignée sur la carte en utilisant la carte, l'encodeur du robot, le capteur inertiel et le capteur de distance. La procédure d'exécution de cette tâche est la suivante.

###Détection du site
Sur la carte, le robot met à jour ses informations d'odométrie avec l'encodeur et le capteur inertiel (capteur IMU), et mesure la distance entre la pose du capteur et l'obstacle (mur, objet, meuble, etc.).

###Localisation / Estimation de la pose
Sur la base de la quantité de rotation de la roue provenant de l'encodeur, de l'information sur l'inertie provenant du capteur IMU et de l'information sur la distance entre le capteur et l'obstacle, la localisation/l'estimation de la pose du robot actuel est effectuée sur la carte précédemment créée. Il existe de nombreuses méthodes d'estimation de la pose, mais dans cette section, nous utiliserons la méthode de localisation par filtre particulaire et la localisation adaptative Monte Carlo (AMCL), qui est une variante de la localisation Monte Carlo (MCL).

###Planification du mouvement
La planification du mouvement, également appelée planification de la trajectoire, crée une trajectoire entre la pose actuelle et la pose cible spécifiée sur la carte. Le plan de trajectoire créé comprend la planification de la trajectoire globale dans toute la carte et la planification de la trajectoire locale pour les zones plus petites autour du robot. Nous prévoyons d'utiliser les paquets de planification d'itinéraire 'move_base' et 'nav_core' dans ROS basés sur l'approche de fenêtre dynamique (DWA), qui est un algorithme d'évitement d'obstacles.

###Déplacement / Évitement d'obstacles
Si une commande est donnée au robot sur la base de la trajectoire de mouvement créée par la planification du mouvement, le robot se déplace vers la destination en fonction de la trajectoire planifiée. Étant donné que la détection, l'estimation de la pose et la planification du mouvement sont toujours exécutées pendant le déplacement, les obstacles ou les objets mobiles qui apparaissent soudainement seront évités à l'aide de l'algorithme Dynamic Window Approach (DWA).