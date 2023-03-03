# Navigation et composants
Il est peut-être plus facile de comprendre la navigation comme la navigation GPS dans la vie quotidienne. 
Si vous définissez une destination sur l'appareil de navigation, la navigation vous permet de vérifier la distance et le temps de trajet entre votre emplacement actuel et la destination, et vous pouvez définir des préférences et des informations spécifiques telles que les endroits où vous devez vous arrêter et les routes préférées sur le chemin.
Le système de navigation a une histoire relativement courte. 
En 1981, le constructeur automobile japonais Honda a proposé pour la première fois un système analogique basé sur un gyroscope à trois axes et un film cartographique appelé "Electro Gryrocator1". Ensuite, Etak Navigator2, un système de navigation électronique fonctionnant avec une boussole électronique et des capteurs fixés aux roues, a été présenté par la société américaine de fournitures automobiles Etak. Cependant, le montage du capteur et de la boussole électronique sur la voiture représentait une lourde charge pour les prix de l'automobile et posait des problèmes de fiabilité du système de navigation. Depuis les années 1970, les États-Unis développent des systèmes de positionnement par satellite à des fins militaires, et dans les années 2000, 24 satellites GPS3 (Global Positioning System) sont devenus disponibles pour un usage général, et les systèmes de navigation basés sur la triangulation utilisant ces satellites ont commencé à se répandre.

## Navigation d'un robot mobile
Revenons maintenant aux robots. Le fondement et le point fort d'un robot mobile est sans aucun doute la navigation. La navigation en robotique est indissociable et essentielle. La navigation est le déplacement du robot vers une destination définie, ce qui n'est pas aussi facile qu'il n'y paraît. Mais il est important de savoir où se trouve le robot lui-même et d'avoir une carte de l'environnement donné. Il est également important de trouver l'itinéraire optimisé parmi les différentes options d'acheminement, et d'éviter les obstacles tels que les murs et les meubles. Il n'y a pas de mission facile.

De quoi avons-nous besoin pour implémenter la navigation dans les robots ? Cela peut varier en fonction de l'algorithme de navigation, et les éléments suivants peuvent être requis comme caractéristiques de base.
➊ Carte
➋ Pose du robot
➌ Détection
➍ Calcul du chemin et conduite


### Carte
La première caractéristique essentielle pour la navigation est la carte. Le système de navigation est équipé d'une carte très précise dès l'achat, et la carte modifiée peut être téléchargée périodiquement afin de pouvoir être guidé vers la destination en fonction de la carte. Mais disposera-t-on d'une carte de la pièce où sera placé le robot de service ? Comme un système de navigation, un robot a besoin d'une carte. Nous devons donc créer une carte et la donner au robot, ou bien le robot devrait être capable de créer une carte par lui-même.
SLAM (Simultaneous Localization And Mapping) est développé pour permettre au robot de créer une carte avec ou sans l'aide d'un être humain. Il s'agit d'une méthode permettant de créer une carte pendant que le robot explore l'espace inconnu, détecte son environnement et estime sa position actuelle tout en créant une carte.

### Pose du robot
Deuxièmement, le robot doit être capable de mesurer et d'estimer sa pose (position + orientation). Dans le cas d'une automobile, le GPS est utilisé pour estimer sa pose. Cependant, le GPS ne peut pas être utilisé en intérieur, et même s'il peut être utilisé, un GPS avec de grandes erreurs ne peut pas être utilisé pour les robots. De nos jours, un système de haute précision tel que le DGPS5 est utilisé, mais il est également inutile à l'intérieur et trop cher pour un usage général. Afin de surmonter ce problème, diverses méthodes telles que la reconnaissance de marque et l'estimation de la localisation à l'intérieur ont été introduites. Cependant, en termes de coût et de précision, elles restent insuffisantes pour une utilisation générale. Actuellement, la méthode d'estimation de la pose en intérieur la plus utilisée pour les robots de service est l'estimation à l'estime, qui est une estimation de la pose relative, mais elle est utilisée depuis longtemps et est composée de capteurs à faible coût et peut obtenir un certain niveau de résultats d'estimation de la pose précise. La quantité de mouvement du robot est mesurée par la rotation de la roue. Cependant, il existe une erreur entre la distance calculée avec la rotation de la roue et la distance de déplacement réelle. Par conséquent, l'information inertielle du capteur IMU peut être utilisé pour réduire l'erreur en compensant l'erreur de position et d'orientation entre la valeur calculée et la valeur réelle.


### Détecter
Troisièmement, la détermination de la présence d'obstacles tels que des murs et des objets nécessite des capteurs. Différents types de capteurs sont utilisés, comme les capteurs de distance et les capteurs de vision. Le capteur de distance utilise des capteurs de distance à laser (LDS, LRF, LiDAR), des capteurs à ultrasons et des capteurs de distance à infrarouge. Le capteur de vision comprend des caméras stéréo, des monocaméras, des caméras omnidirectionnelles, et récemment, RealSense, Kinect, Xtion, qui sont largement utilisés comme caméra de profondeur, sont utilisés pour identifier les obstacles.


### Calcul du chemin et conduite
La dernière fonction essentielle de la navigation consiste à calculer et à parcourir la route optimale vers la destination. C'est ce qu'on appelle la recherche et la planification de chemin, et il existe de nombreux algorithmes qui effectuent cette tâche, comme l'algorithme A*8, le champ potentiel, le filtre à particules et le RRT (Rapidly-exploring Random Tree).
Dans cette section, nous avons brièvement résumé le SLAM et les composants de la navigation, mais il est encore difficile et vaste à comprendre. La mesure et l'estimation de la pose du robot ont été expliquées dans la section précédente. La mesure des obstacles, tels que les murs et les objets, est décrite dans le chapitre 8 Robots, capteurs et moteurs. Maintenant, examinons le SLAM pour créer une carte, et la navigation avec la carte générée.





