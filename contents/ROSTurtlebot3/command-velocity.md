# Command-Velocity
Comme on a vu dans les example avec turtle-sim, command-velocity fait deplacer le robot. 

Dans notre case ce la meme question. 

Un test rapide a faire pour se assurer que le systeme est fonctionel est de publier une valeur dans le topic command velocity expose par le turtlebot. 

Une valeur de test raissonable est un vitesse que demmande au robot a tourner sur soi meme. 

Immediatement apres cet valeur est publie, il faudrait publier une vitesse de cancelation: tout les valeurs en zero (Sauf la valeur w du quaternion que doit etre en 1).

N'hesitez pas a utiliser cet astuse pour vous assurer que tout marche bien avant lancer aucun experience. 