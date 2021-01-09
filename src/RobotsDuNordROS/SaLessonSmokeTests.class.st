Class {
	#name : #SaLessonSmokeTests,
	#superclass : #TestCase,
	#instVars : [
		'course'
	],
	#category : #RobotsDuNordROS
}

{ #category : #running }
SaLessonSmokeTests >> setUp [

	super setUp.

	course := RNROSCourse courses values collect: #value
]

{ #category : #running }
SaLessonSmokeTests >> testRNFactories [
	
	self assert:course lessons isNotEmpty.
	self assert:( course lessons allSatisfy: [ : l | l isKindOf: SaLesson ])
]
