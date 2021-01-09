#Bash 

![Bash](https://tiswww.case.edu/php/chet/img/bash-logo-web.png|size=200&caption=Bash)	


Bash (acronyme de Bourne-Again shell) est un interpréteur en ligne de commande de type script. C'est le shell Unix du projet GNU.

Fondé sur le Bourne shell, Bash lui apporte de nombreuses améliorations, provenant notamment du Korn shell et du C shell. Bash est un logiciel libre publié sous licence publique générale GNU. Il est l'interprète par défaut sur de nombreux Unix libres, notamment sur les systèmes GNU/Linux. C'était aussi le shell par défaut de Mac OS X, remplacé avec macOS Catalina (10.15) par zsh. Il a été d'abord porté sous Microsoft Windows par le projet Cygwin, et depuis Windows 10 constitue une option à part entière, nommée Windows Subsystem for Linux du système d'exploitation. 



##Fonctionnement
Bash est un shell qui peut être utilisé soit en mode interactif, soit en mode batch :

mode interactif : Bash attend les commandes saisies par un utilisateur puis renvoie le résultat de ces commandes et se place à nouveau en situation d'attente.
mode batch : Bash interprète un fichier texte contenant les commandes à exécuter.



##Scripts exécutés lors du lancement de bash

- Scripts exécutés quand bash est utilisé pour une ouverture de session :
  1.communs à tous les utilisateurs :
    - /etc/profile
  2.spécifiques à chaque utilisateur
    - .bash_profile
    - .bash_login
    - .profile
    - .bash_logout : Script exécuté lors de la déconnexion
  3.Scripts exécutés quand bash n'est pas utilisé pour une ouverture de session :
    - .bashrc (specifique a chaque utilisateur)



[https://fr.wikipedia.org/wiki/Bourne-Again_shell](https://fr.wikipedia.org/wiki/Bourne-Again_shell)


