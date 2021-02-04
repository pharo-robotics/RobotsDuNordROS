Class {
	#name : #RNROSDay3,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #'as yet unclassified' }
RNROSDay3 >> course [

	^ SaCourse new
		title: 'ROS: Slam & Navigation';
		courseFolder: #RosElementalConcepts;
		addLesson: self slam id: #'SLAM Algorithms';
		addLesson: self python id: #'The Navigation Stack';
		addLesson: self localization id: #'Localization';
		yourself
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> localization [ 
	^ RNROSLocalization new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> python [
	^ RNROSPyhonProgramming new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> slam [
	^ RNROSSlam new lesson
]
