"
I put together the lesson creators creating a course
"
Class {
	#name : #RNROSCourse,
	#superclass : #Object,
	#category : #'RobotsDuNordROS-Courses'
}

{ #category : #'as yet unclassified' }
RNROSCourse class >> courseDay1 [

	^ RNROSDay1 new course.
]

{ #category : #'as yet unclassified' }
RNROSCourse class >> courseDay2 [

	^ RNROSDay2 new course
]

{ #category : #'as yet unclassified' }
RNROSCourse class >> courseDay3 [

	^ RNROSDay3 new course
]

{ #category : #'as yet unclassified' }
RNROSCourse class >> courses [
	^ {(#'Jour 1' -> [ self courseDay1 ]).
	(#'Jour 2' -> [ self courseDay2 ]).
	(#'Jour 3' -> [ self courseDay3 ])} asDictionary
]
