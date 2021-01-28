
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

Demarrer le systeme SLAM GMappings avec la suivant commande. 


```
$ roslaunch turtlebot3_slam turtlebot3_slam.launch
``` 


================================================================================
Dans une quatrieme terminal
Configurer vos model de robot. (Vous pouvez aussi ajouter ce ligne a la fin de votre .bashrc du NUC)

```
$ export TURTLEBOT3_MODEL=burger
``` 
```
$ roslaunch turtlebot3_teleop turtlebot3_teleop_key.launch
```

Maintenant vous pouvez faire une carte sur du cours. 
Demander a votre prof que cartographier



================================================================================

Une fois vous avez tout cartographié, il faut sauvegarder la carte. 

Ouvrez une cinquieme terminal et executer

```
$ rosrun map_server map_saver -f ~/map
```

Addressé vous a vous dossier HOME. Qu'est-ce que vous trouvez? 











