#Installation d'environnement de travail

Dans ce Video on vas trouver un tutorial de comment installer ROS dans notre systeme virtualizé Ubuntu. 

Dans notre cours on vas travailler beaucoup avec la terminal bash. 
On a une unité specifique pour travailler sur ce sujet. 
Dans ce tutorial on vous prie de croyer dans les pas proposé. 


```language=bash
	sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```

```language=bash
	sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
```

```language=bash
	sudo apt update
```

```language=bash
	sudo apt install ros-noetic-desktop-full
```

```language=bash
	echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
```

```language=bash
	echo "export ROS_MASTER_URI=http://127.0.0.1:11311/" >> ~/.bashrc
```

```language=bash
	echo "export ROS_HOSTNAME=127.0.0.1" >> ~/.bashrc
```

```language=bash
	source ~/.bashrc
```