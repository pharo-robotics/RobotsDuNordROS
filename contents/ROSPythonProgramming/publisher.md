Écrire le node publisher en python

Addresez vous au dossier catkin_ws/src, ajoute le dossier "scripts", et addresez vous la. 
```
$ cd ~/catkin_ws/src
$ mkdir scripts
$ cd scripts
```

Ajouter une fichier appellé publisher.py
Dans ce fichier, coller le contenu suivant

```
#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

```

Addresez vous sur le dossier catkin_ws

```
$ cd ~/catkin_ws
```


Ouvrez le fichier CMakeLists.txt

```
catkin_install_python(PROGRAMS scripts/publisher.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
```

Lissez le code python, discouté avec vos collegues d'equipe sur chaque ligne. 






