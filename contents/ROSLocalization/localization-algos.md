![Localisation](https://dlsdc.com/images/general/localization.jpg|size=400&caption="Slam")



La localisation du robot indique la capacité du robot à établir sa propre position et orientation dans le cadre de référence. La planification de trajectoire est en fait un prolongement de la localisation, en ce sens qu'elle nécessite la détermination de la position actuelle du robot et d'une position de but, toutes deux dans le même cadre de référence ou les mêmes coordonnées. La construction de la carte peut prendre la forme d'une carte métrique ou de toute notation décrivant des emplacements dans le cadre de référence du robot.

Pour tout appareil mobile, la capacité à naviguer dans son environnement est importante. Éviter les situations dangereuses telles que les collisions et les conditions dangereuses (température, rayonnement, exposition aux intempéries, etc.) vient en premier lieu, mais si le robot a un objectif qui concerne des endroits spécifiques de son environnement, il doit trouver ces endroits. Cet article présente une vue d'ensemble de la compétence de navigation et tente d'identifier les blocs de base d'un système de navigation robotisé, les types de systèmes de navigation, et d'examiner de plus près les éléments de construction qui y sont liés.

La navigation d'un robot signifie la capacité du robot à déterminer sa propre position dans son cadre de référence et à planifier un chemin vers un endroit donné. Afin de naviguer dans son environnement, le robot ou tout autre dispositif de mobilité nécessite une représentation, c'est-à-dire une carte de l'environnement et la capacité d'interpréter cette représentation.

La navigation peut être définie comme la combinaison des trois compétences fondamentales :

- Auto-localisation
- Planification de la trajectoire
- Elaboration et interprétation des cartes

Certains systèmes de navigation robotique utilisent la localisation et la cartographie simultanées pour générer des reconstructions en 3D de leur environnement.



## Genres de localisation 


Les méthodes de localisation sont regroupées en deux catégories : Globale et Locale.

Globale :

- Donner une localisation par rapport au monde
- Souvent inexactes par rapport aux méthodes locales
- Par exemple : GPS ou points d'accès Wi-Fi

Local :

- Donner un emplacement par rapport au retour d'information du capteur local
- Peut être très précis par rapport aux méthodes globales
- Par exemple un scanner laser et des caméras embarquées




## AMCL 
 
 
La localisation Monte Carlo (MCL), également connue sous le nom de localisation par filtre à particules, est un algorithme de localisation par filtre à particules pour les robots. À partir d'une carte de l'environnement, l'algorithme estime la position et l'orientation d'un robot lorsqu'il se déplace et détecte l'environnement. L'algorithme utilise un filtre à particules pour représenter la distribution des états probables, chaque particule représentant un état possible, c'est-à-dire une hypothèse de l'endroit où se trouve le robot. L'algorithme commence généralement par une distribution aléatoire uniforme des particules dans l'espace de configuration, ce qui signifie que le robot n'a aucune information sur l'endroit où il se trouve et suppose qu'il a la même probabilité de se trouver à n'importe quel point de l'espace. Chaque fois que le robot se déplace, il déplace les particules pour prédire son nouvel état après le mouvement. Chaque fois que le robot détecte quelque chose, les particules sont rééchantillonnées sur la base d'une estimation bayésienne récursive, c'est-à-dire de la corrélation entre les données réelles détectées et l'état prédit. En fin de compte, les particules devraient converger vers la position réelle du robot.

Imaginez un robot avec une carte interne de son environnement. Lorsque le robot se déplace, il a besoin de savoir où il se trouve sur cette carte. Déterminer sa position et sa rotation (plus généralement, la pose) en utilisant les observations de ses capteurs est connu sous le nom de localisation du robot.

Comme le robot ne se comporte pas toujours de manière parfaitement prévisible, il génère de nombreuses suppositions aléatoires sur sa prochaine position. Ces suppositions sont connues sous le nom de particules. Chaque particule contient une description complète d'un état futur possible. Lorsque le robot observe l'environnement, il rejette les particules qui ne correspondent pas à cette observation, et génère d'autres particules proches de celles qui semblent cohérentes. Au final, on peut espérer que la plupart des particules convergent vers l'endroit où se trouve réellement le robot.

![Algo](http://rmod-files.lille.inria.fr/Teach/algo-amcl.png|size=400&caption="Localisation")





