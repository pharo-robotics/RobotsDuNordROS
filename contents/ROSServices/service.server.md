# Serveur du service
Écrire le node publisher en python

Addresez vous au dossier catkin_ws/src, ajoute le dossier "scripts", et addresez vous la. 
```
$ cd ~/catkin_ws/src
$ mkdir scripts
$ cd scripts
```

Ajouter une fichier appellé serveur.py
Dans ce fichier, coller le contenu suivant

```
 #!/usr/bin/env python

from __future__ import print_function

from beginner_tutorials.srv import AddTwoInts,AddTwoIntsResponse
import rospy

def handle_add_two_ints(req):
    print("Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))
    return AddTwoIntsResponse(req.a + req.b)

def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', AddTwoInts, handle_add_two_ints)
    print("Ready to add two ints.")
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()
```


Addresez vous sur le dossier catkin_ws

```
$ cd ~/catkin_ws
```


Ouvrez le fichier CMakeLists.txt

```
catkin_install_python(PROGRAMS scripts/client.py scripts/serveur.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```

Lissez le code python, discouté avec vos collegues d'equipe sur chaque ligne. 






