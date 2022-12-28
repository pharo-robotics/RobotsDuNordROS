Écrire le node publisher en python

Addresez vous au dossier catkin_ws/src, ajoute le dossier "scripts", et addresez vous la. 
```
$ cd ~/catkin_ws/src
$ mkdir scripts
$ cd scripts
```

Ajouter une fichier appellé subscriber.py
Dans ce fichier, coller le contenu suivant

```
#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    
def listener():
    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber("chatter", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()

```

Addresez vous sur le dossier catkin_ws

```
$ cd ~/catkin_ws
```


Ouvrez le fichier CMakeLists.txt

```
catkin_install_python(PROGRAMS scripts/publisher.py scripts/subscriber.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```

Lissez le code python, discouté avec vos collegues d'equipe sur chaque ligne. 






