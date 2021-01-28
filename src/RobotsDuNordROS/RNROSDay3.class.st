Class {
	#name : #RNROSDay3,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #'as yet unclassified' }
RNROSDay3 >> course [
	"OSPlatform current isUnix
		ifFalse: [ ^ self
				error:
					'The lesson of ROS: Elemental Concepts requires to be done in linux! Pleasem load Sagan in your Ubuntu/ROS installation, and catch from there' ]."

	^ SaCourse new
		title: 'ROS: Slam & Navigation';
		courseFolder: #RosElementalConcepts;
		addLesson: self slam id: #'SLAM Algorithms';
		addLesson: self navigation id: #'The Navigation Stack';
		yourself
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> navigation [
]

{ #category : #'as yet unclassified' }
RNROSDay3 >> slam [
	^ RNROSSlam new lesson
]
