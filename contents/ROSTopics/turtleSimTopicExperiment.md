#Detailles

Prenez note de tout que vous observé et de tout qu'est demandé pour l'exercise.

Commentaire: le character "$" est utilisé pour representer la ligne de commande. Normalement, le character ne fait pas partie du commande. 

Demarrez le TurtleSim avec le button d'experiment.
Une fois la tortue commence a faire son desin, addressez vous sur une terminale de commande.



(A)====================================================================
Executez la suivante commande:
```
$ rostopic list
```
1- Est-ce que vous pouvez trouver les topics dans la liste entre l'information trouvé prescedement par rosnode info draw? 



(B)====================================================================
Executez la suivante commande:
```
$ rostopic info /turtle1/cmd_vel
```
1- Dans la sortie du commande, on trouve quels nodes? 
2- S'on execute rosnode info avec chaqu'un des ces nodes, on retrouve le topic /turtle1/cmd_vel?
3- Qu'est-ce que ce le type du topic /turtle1/cmd_vel?



(C)====================================================================
Executez la commande

```
$ rqt_graph
```
Changez le mode de "Nodes Only" a "Nodes/Topics(Active)".

1- Quelle est la difference entre la relation  ("/turtle1/cmd_vel" turtlesim) et la relation ("/turtle1/cmd_vel" draw)? 
2- Quelle est la difference entre la relation  ("/turtle1/pose" turtlesim) et la relation ("/turtle1/pose" draw)? 
3- Quelle information extra est-ce que vous trouvez dans ce represnetation graphique? 

(E)====================================================================
Finalement, dans une deuxieme terminal, executez la commande: 
```
$ rosnode kill draw
```

Eteindre rqt_graph, redemarre-le, Changez le mode de "Nodes Only" a "Nodes/Topics(Active)".

1- Est-ce que le graphique de rqt_graph a changé? 





