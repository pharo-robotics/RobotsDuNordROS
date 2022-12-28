# Robot Operative System (ROS)
![ROS](https://www.ros.org/wp-content/uploads/2013/10/rosorg-logo1.png width=200 caption=ROS)


## Un peu contexte

Le système d'exploitation du robot (ROS) est un cadre flexible pour l'écriture de logiciels de robot. Il s'agit d'un ensemble d'outils, de bibliothèques et de conventions qui visent à simplifier la tâche de création de comportements complexes et robustes pour les robots sur une grande variété de plates-formes robotiques.

Pourquoi ? Parce qu'il est difficile de créer des logiciels de robot vraiment robustes et polyvalents. Du point de vue du robot, les problèmes qui semblent insignifiants pour l'homme varient souvent énormément d'une tâche à l'autre et d'un environnement à l'autre. Il est si difficile de faire face à ces variations qu'aucun individu, laboratoire ou institution ne peut espérer y parvenir seul.

C'est pourquoi le ROS a été conçu à partir de zéro pour encourager le développement de logiciels de robotique en collaboration. Par exemple, un laboratoire peut disposer d'experts en cartographie des environnements intérieurs, et pourrait contribuer à un système de classe mondiale pour la production de cartes. Un autre groupe pourrait avoir des experts dans l'utilisation de cartes pour la navigation, et un autre encore pourrait avoir découvert une approche de vision par ordinateur qui fonctionne bien pour la reconnaissance de petits objets en désordre. Le ROS a été conçu spécifiquement pour que des groupes comme celui-ci puissent collaborer et s'appuyer sur le travail des autres, comme il est décrit tout au long de ce site. 


## Un middleware pour la robotique

ROS est l'abréviation de Robot Operating System (système d'exploitation de robot), on peut donc dire qu'il s'agit d'un système d'exploitation. En particulier, ceux qui sont novices en matière de ROS pourraient penser qu'il s'agit d'un système d'exploitation similaire aux systèmes d'exploitation susmentionnés. Lorsque j'ai rencontré ROS pour la première fois, j'ai également pensé qu'il s'agissait d'un nouveau système d'exploitation pour robots.
Cependant, une description plus précise serait que ROS est un middleware pour la robotique

ROS fournit les fonctions essentielles requises pour les programmes d'application des robots comme les bibliothèques telles que la transmission/réception de données entre matériels hétérogènes, l'ordonnancement et le traitement des erreurs.

![ROS](https://www.ros.org/wp-content/uploads/2013/12/ros_equation.png caption=ROS)


## Les aspects principaux

Sachant que le but principal de ROS est l'unification de development logiciel lie a la robotique, avec le but du développement de logiciels de robotique en collaboration, les aspectes principaux de ROS sont:

- Processus distribué : Il est programmé sous la forme d'unités minimales de processus exécutables et chaque processus fonctionne indépendamment et échange systématiquement des données a travers des connections de divers genre, notement orientée au streaming.
- Gestion des paquets : Plusieurs processus ayant le même objectif sont gérés comme un paquet, de sorte qu'il est facile à utiliser et à développer, ainsi qu'à partager, modifier et redistribuer.
- API : Lors du développement d'un programme qui utilise des ROS, ces derniers sont conçus pour appeler simplement une API et l'insérer facilement dans le code utilisé. Dans le code source présenté dans chaque chapitre, vous verrez que la programmation ROS n'est pas très différente de C++ et de Python.
- Prise en charge des Langages de programmation : Le programme ROS fournit une bibliothèque client pour prendre en charge divers langages de programmation. La bibliothèque peut être importée dans des langages de programmation populaires dans le domaine de la robotique tels que Python, C++ et Lisp ainsi que dans des langages tels que JAVA, C#, Lua, Pharo et Ruby. En d'autres termes, vous pouvez développer un programme ROS en utilisant un langage de programmation préféré.

 

## Resources

[ros.org](https://www.ros.org/about-ros/)
[Robot Programming](https://emanual.robotis.com/docs/en/platform/turtlebot3/learn/#books)



