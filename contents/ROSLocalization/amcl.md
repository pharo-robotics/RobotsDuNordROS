D'avant commencer avec cet experiment il faut absolumnent avoir fait: 

1- L'experiment SLAM
2- Sauvegarder la carte produit par SLAM



==============================================================================

Dans le NUC ouvrir une terminal 

ROS offre une commande "roscd". Cette commande s'agis d'une version modifie du commande cd. 
roscd vas nous laisser arriver au dossier d'un package du ros. 

Execute la commande

```
$ roscd turtlebot3_navigation
````

Ou est-ce que vous etes positioné maintenant? (tip: commande pwd)

le dossier contiens plusieurs sousdossier. Exemple: map et launch. 


```
$ cd launch
````

On va s'intereser au fichier "turtlebot3_navigation.launch". 

Il faut donc l'ouvrir et l'analyser. 

1- trouve la ligne que configure la carte.
2- modifie le pour utiliser la carte que vous avez generé avec l'experiment SLAM. 



================================================================================

Dans le NUC Ouvrir une terminal et demarrer le node MASTER de ROS avec la commande 

```
$ roscore
````

================================================================================

Ouvrir une deuxieme terminal. Connecter au robot: 
```
ssh ubuntu@{IP_VOS_ROBOT}
```
Une fois connecté, demarré les services de base du turtlebot
``` 
roslaunch turtlebot3_bringup turtlebot3_robot.launch
``` 

================================================================================
Dans une troisieme terminal. 
Configurer vos model de robot. (Vous pouvez aussi ajouter ce ligne a la fin de votre .bashrc du NUC)

```
$ export TURTLEBOT3_MODEL=burger
``` 


```
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch
``` 


================================================================================

La commande precedent a eu a ouvrir RVIZ (interface graphique)

L'interface RVIZ est vraiment riche. 

Passe de temps a regarder tout les informations pertinents.

===============================================================================

Notre installation robotique n'a pas une bonne vitesse access au données. 


Ouvrez deux autres nouvelles terminales. 

Une sur le robot

```
ssh ubuntu@{IP_VOS_ROBOT}
```

Et l'autre sur le NUC


Dans chaque une de ces terminales execute le suivant commande: 


```
date
```

Qu'est-ce que vous trouvez ?

Comment est-ce que vous pensez que cet information est lie au log d'erreurs de la commande turtlebot3_navigation.launch?


Manuallement, en utilisent la commmande "date" (vous pouvez utiliser man date pour apprendre les detailles d'utilisation), assurez vous que le robot et le NUC sont synchronizé au segonde. 


===============================================================================

Addresse vous au package turtlebot3_navigation/params

et trouve le fichier qu'a le mot "tolerance". (tip: rapellez vous du commande grep du premiere jour, sinon man grep).

modifiez tous les fichiers que disent 

transform_tolerance : 0.5 

a

transform_tolerance : 20.5 



================================================================================
1 - Une fois fait, redemarrez la commande " turtlebot3_navigation.launch"


2- Qu'est-ce que vous trouvez que a changé dans l'interface RVIZ? 

3- Metez le robot dans la place ou vous avez fait la carte

4- En utilisent le button RVIZ "estimate pose", aide au robot a se retrouver. 

5- Qu'est-ce que vous trouvez que se passe dans l'interface RVIZ? 


================================================================================

Avec le bouton "destination", demandez au robot de se balader.


1- Qu'est-ce que ce la relation entre la carte et le mouvement du robot? 

2- Qu'est-ce que ce la costmap? 

3- Qu'est-ce que ce le TF? 


Avec le bouton "destination", demandez au robot de se balader une deuxieme fois. Cet fois-ci une personne du group doit se balader pour empecher le robot de traverser.


1- Qu'est-ce qu'il fait? 
2- Analysez la costmap. Qu'est-ce que vous trouvez? 
3- Qu'est-ce que ce passe avec la trajectoire? 
























