Class {
	#name : #RNROSDay5,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day5'
}

{ #category : #'as yet unclassified' }
RNROSDay5 >> course [

	^ SaCourse new
		  title: 'ROS: Navigation TP';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self navigationTpLesson id: #NavigationTP;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSDay5 >> navigationTpLesson [

	^ RNROSNavigationTP new lesson
]
