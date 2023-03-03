D'avant commencer avec cet experiment il faut absolumnent avoir fait: 

1- L'experiment SLAM
2- Sauvegarder la carte produit par SLAM


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

Note svp que il y a un parametre dans la prochain ligne que doit etre fournis par VOUS.

```
$ roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=CHEMIN/AU/CARTE/map.yaml
``` 


================================================================================

Dans RVIZ ajoute des visualisations pour: Global path, Local path. 


================================================================================

Avec le bouton "destination", demandez au robot de se balader.


1- Qu'est-ce qu'il fait? 
2- Analysez RVIZ. Qu'est-ce que vous trouvez en rapport au global et local planning? 
3- Qu'est-ce que ce passe avec la trajectoire? 


================================================================================


Avec le bouton "destination", demandez au robot de se balader une deuxieme fois. Cet fois-ci une personne du group doit se balader pour empecher le robot de traverser.


1- Qu'est-ce qu'il fait? 
2- Analysez RVIZ. Qu'est-ce que vous trouvez en rapport au global et local planning? 
3- Qu'est-ce que ce passe avec la trajectoire? 







