Class {
	#name : #RNROSDay3,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #'as yet unclassified' }
RNROSDay3 >> course [

	^ SaCourse new
		  title: 'ROS: Localization & Services';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self slamTpLesson id: #SlamTP;
		  addLesson: self servicesLesson id: #Services;
		  addLesson: self localizationLesson id: #Localization;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> localizationLesson [

	^ RNROSLocalization new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> servicesLesson [

	^ RNROSServices new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> slamTpLesson [

	^ RNROSSlamTP new lesson
]
