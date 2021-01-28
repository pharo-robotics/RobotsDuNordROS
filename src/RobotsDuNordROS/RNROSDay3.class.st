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
		yourself
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> python [
	
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> slam [
	^ RNROSSlam new lesson
]
