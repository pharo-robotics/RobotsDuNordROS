#Detailles

Prenez note de tout que vous observé et de tout qu'est demandé pour l'exercise.

Commentaire: le character "$" est utilisé pour representer la ligne de commande. Normalement, le character ne fait pas partie du commande. 

Demarrez le TurtleSim avec le button d'experiment.
Une fois la tortue commence a faire son desin, addressez vous sur une terminale de commande.



(A)====================================================================
Executez les suivantes commandes:
```
$ rosnode list
$ ps -fea | grep ros
```
1- Est-ce que vous pouvez trouver les nodes dans la liste entre les programmes en execution qu'appartenent a ROS? 
Ou est-ce que se trouve le fichier de la commande "draw_square"? 


(B)====================================================================
Executez la suivante commande:
```
$ rosnode info draw
$ ps -fea | grep ros
```
1- En linux PID veut dire "Process ID". Maintenant s'on compare le PID obtenu avec rosnode info, est-ce qu'on retrouve le meme PID dans la deuxieme colonne du commande ps -fea? 
2- On trouve que notre node tiens plusieurs connections. Est-ce que vous pouvez diviner avec quels autres nodes?



(C)====================================================================
Executez la suivante commande:
```
$ rosnode ping draw
```
La commande ping nous laisse confirmer la connectivité qu'on avec le node draw. 
1- Qu'est-ce que ce le protocole de communication avec le quel on contacte le node draw?
2- Qu'est-ce que ce le "time" qu'on regarde a cote de chauque entrée?
3- Est-ce que vous reconnait l'url utilisé par la commande? 


(D)====================================================================
Executez la commande

```
$ rqt_graph
```

1- Quelle information vous retrouvez dans le graphique que vous avez deja vu dans rosnode info? 



(E)====================================================================
Finalement, dans une deuxieme terminal, executez la commande: 
```
$ rosnode kill draw
```

1- Est-ce que le graphique de rqt_graph a changé? 
2- S'on utilise ps -fea | grep ros on retrouve le process lie au draw?
3- S'on re-execute la commande rosnode list, on trouve l'entrée pour draw?






