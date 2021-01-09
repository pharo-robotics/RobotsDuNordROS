Class {
	#name : #RNROSNodes,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSNodes >> filesystem [

	^ super filesystem / #ROSNodes
]
