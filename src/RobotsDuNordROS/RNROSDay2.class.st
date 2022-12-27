Class {
	#name : #RNROSDay2,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSDay2 >> course [

	^ SaCourse new
		title: 'ROS: Slam & Navigation';
		courseFolder: #RosElementalConcepts;
		addLesson: self turtlebot id: #'Turtlebot 3';
		addLesson: self slam id: #'SLAM Algorithms';
		yourself
]

{ #category : #'as yet unclassified' }
RNROSDay2 >> slam [
	^ RNROSSlam new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay2 >> turtlebot [

	^ RNROSTurtlebot3 new lesson
]
