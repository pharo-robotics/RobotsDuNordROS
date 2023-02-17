# Client du service
Écrire le node publisher en python

Addresez vous au dossier catkin_ws/src, ajoute le dossier "scripts", et addresez vous la. 
```
$ cd ~/catkin_ws/src
$ mkdir scripts
$ cd scripts
```

Ajouter une fichier appellé client.py
Dans ce fichier, coller le contenu suivant

```
 #!/usr/bin/env python

from __future__ import print_function

import sys
import rospy
from rospy_tutorials.srv import *

def add_two_ints_client(x, y):
    rospy.wait_for_service('add_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 3:
        x = int(sys.argv[1])
        y = int(sys.argv[2])
    else:
        print(usage())
        sys.exit(1)
    print("Requesting %s+%s"%(x, y))
    print("%s + %s = %s"%(x, y, add_two_ints_client(x, y)))

```

Addresez vous sur le dossier catkin_ws

```
$ cd ~/catkin_ws/src
```


Ouvrez le fichier CMakeLists.txt dans votre package

```
catkin_install_python(PROGRAMS scripts/client.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```

Lissez le code python, discouté avec vos collegues d'equipe sur chaque ligne. 






