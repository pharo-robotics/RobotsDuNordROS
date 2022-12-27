Class {
	#name : #RNROSDay6,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day6'
}

{ #category : #'as yet unclassified' }
RNROSDay6 >> course [

	^ SaCourse new
		  title: 'ROS: Exploration TP';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self explorationTpLesson id: #ExplorationTP;
		  yourself
]
