#Detailles

Prenez note de tout que vous observé et de tout qu'est demandé pour l'exercise.

Commentaire: le character "$" est utilisé pour representer la ligne de commande. Normalement, le character ne fait pas partie du commande. 

Demarrez le TurtleSim avec le button d'experiment.
Une fois la tortue commence a faire son desin, addressez vous sur une terminale de commande.



(A)====================================================================
Executez la suivante commande:
```
$ rostopic type /turtle1/cmd_vel
```
1- Qu'est'ce que ce le type de ce topic? 



(B)====================================================================
Executez la suivante commande:
```
$ rostopic echo --help
```
1- Selon la lecture du help explique la commande su exercise C 



(C)====================================================================
Lire la consigne d'avant executer la commande:
```
$ rostopic echo /turtle1/pose
```
Apres quelque secondes, presser "Control-C"

1- Qu'est-ce que ca vous dit la sortie? 
2- Que type de systeme de coordonnées est transmit par ce topic?

(D)====================================================================
Lire la consigne d'avant executer la commande:
```
$ rostopic hz /turtle1/pose
```
Apres quelque secondes, presser "Control-C"

1- Combien des messages x seconde on passent par le topic /turtle1/pose? 



(E)====================================================================
Lire la consigne d'avant executer la commande:
```
$ rostopic echo /turtle1/pose
```
Depuis une deuxieme terminal, mais sans perdre de vu la premiere terminal,  executez
```
$ rostopic pub /turtle1/cmd_vel geometry_msgs/Twist "linear:
  x: 5.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 5.0" 
``` 

1- Qu'est-ce qu'a changé dans la sortie du commande echo?
2- Qui est-ce que vous pensez que transmettre l'information de localization? 
3- Ouvrez rqt_graph en mode node+topic. Qu'est-ce que vous trouvez.  


Presser "Control-C" pour finir avec les terminals. 




(F)====================================================================
Lire la consigne d'avant executer la commande:
```
$ rostopic echo /turtle1/cmd_vel
```

1- Qu'est-ce que vous notez de different entre ce Topic et /turtle1/pose? (Hors du type).


Depuis une deuxieme terminal, mais sans perdre de vu la premiere terminal,  executez
```
$ rostopic pub /turtle1/cmd_vel geometry_msgs/Twist "linear:
  x: 5.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 5.0" 
``` 

1- Qu'est-ce qu'a changé dans la sortie du commande echo?
2- Qui est-ce que vous pensez que transmettre l'information de localization? 
3- Ouvrez rqt_graph en mode node+topic. Qu'est-ce que vous trouvez.  


Presser "Control-C" pour finir avec les terminals. 





