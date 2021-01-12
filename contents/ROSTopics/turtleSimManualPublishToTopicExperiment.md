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
$ rostopic pub --help
```
1- Selon la lecture du help explique la commande su exercise C 



(C)====================================================================
Lire la consigne d'avant executer la commande:
```
$ rostopic pub /turtle1/cmd_vel geometry_msgs/Twist "linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0" -1
```
Cette commande comme ca va transmetre un mouvent nul
On peut trouver que ce type a des valeurs qui representent un vecteur de vitesse lineer et autre angulaire. 

1- Quel valeur faut passer pour faire que la tortue marche devant en ligne droit?
2- Quel valeur faut passer pour faire que la tortue marche derriere en ligne droit?
3- Quel valeur faut passer pour faire que la tortue tour sur soit meme a gauche? 
4- Quel valeur faut passer pour faire que la tortue tour sur soit meme a droit?
5- Quel est la relation de proportion entre la viesse lineer, angulaire et la taille de circle desiné par la tortue?


