# Slam: TP
## Resources
Site web GMappings: [https://wiki.ros.org/gmapping](https://wiki.ros.org/gmapping).
Site web Robotis (Turltebot 3) [https://emanual.robotis.com/docs/en/platform/turtlebot3/slam/](https://emanual.robotis.com/docs/en/platform/turtlebot3/slam/)
Material jour 2 dans l'application Sagan.
  
## Mis en place 
Pour ce TP on a besoin d'une instance GMappings en cours d'execution. 
Vous pourriez soit repeter la partie du demarrage du experiment SLAM du jour 2, ou suivre les tutorials dans les resources.

## Map Metadata
Le nœde GMappings publie le topic map_metadata. 
Ce topic est transmit avec le type nav_msgs/MapMetaData.
L'information partagé dans ce topic est la description de la carte pendant le process de mapping. 

On remarque de ce type les suivantes attributes: 
* float32 resolution
* uint32 width
* uint32 height
* geometry_msgs/Pose origin

Une carte GMappings est un espace cartesienne a deux dimensions a taille finite. 

Cet information est savegarde dans un tableur a une dimension.
Les attribues de map_metadata sont la pour donner information sufficiant pour faire un projection 
d'une espace d'une dimension Naturel (Des valeurs entiers positifs et 0), 
a un espace cartesien a deux dimensions avec des valeurs reel positifs et negatifs. 

L'attribue width indique la largeur absolute de la carte (l'amplitude de la variable X).
L'attribue height indique la hauteur absolute de la carte (l'amplitude de la variable Y).
L'attribute origin indique ou est-ce que ce le (0,0). 
Si les valeurs de width et height est 21, et le 0 est en (10,10), 
on aurais 10 unites positifs et 10 unites negatifs en chaque variable. 

finalement l'attribue resolution indique la valeur en centemitres de chaque pixel.
S'on considere une valeur de resolution de 0,5cm et une carte ou width et height est 21
alors, l'area physique representé par la carte est de 21x21x0,5 = 220,1cm. 


Alors notre tableur avec tout les données est d'une dimension, et de taille width X height.

S'on veut passer d'une representation unidimensionel a une representation a deux dimensions: 
lentrée I dans le tableur, corresponde a une entrée (i,j) => (i,j) = (I / width, I mod width). 

Finalement pour etablir une relation entre un tableur a deux dimensions et un space cartesien reel a deux dimensions 
Un point physique (x,y) = ((i,j)+origin) * resolution.


### Excercise 1
Ecrire un nœde python qui subscribe au topic map_metadata.
A chaque fois que ce nœde recoive un nouvelle information, il doit imprimer en ecran:
* La valeur (i,j) pour les points physiques:
{(1,0);(0,1);(-1,0);(0,-1)}, 
{(10,0);(0,10);(-10,0);(0,-10)}, 
{(100,0);(0,100);(-100,0);(0,-100)}
Noté que les points sont en mettres, et il faut calculer leur (i,j).

* La valeur I de chaque point.



## Map
GMappings publie aussi le topic map. 
Ce topic partage la carte decouverte jusqu'au moment.
Ce topic est transmit avec le type nav_msgs/OccupancyGrid.

On remarque de ce type les suivantes attributes: 

* MapMetaData info
* int8[] data

Info contiens la meme information partagé dans le topic map_metadata. Alors on peut utiliser cette information pour acceder aux informations dans le deuxieme attribute. 
Data est un tableur d'une dimension.
Ce tableur contiens 3 possible valeurs: Occupé, Libre, Unconnu. 


### Excercise 2
Ecrire un *nouveau* nœde python qui subscribe au topic map.
A chaque fois que ce nœde recoive un nouvelle information, il doit compter combien des Occupé, Libre et Unconnu on trouve dans le carré disposse par les points physiques:
{(10,0);(0,10);(-10,0);(0,-10)}. 

Une fois calculé, l'imprimer en ecran. 
On attende voir quelquechose comme ça:

=======
Occupe: xx
Libre:  yy
Unconnu: zz
=======










