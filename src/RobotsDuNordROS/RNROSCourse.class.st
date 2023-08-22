"
I put together the lesson creators creating a course
"
Class {
	#name : #RNROSCourse,
	#superclass : #Object,
	#category : #'RobotsDuNordROS-Courses'
}

{ #category : #'as yet unclassified' }
RNROSCourse class >> courseDay0 [

	^ RNROSDay0 new course.
]

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
RNROSCourse class >> courseDay4 [

	^ RNROSDay4 new course
]

{ #category : #'as yet unclassified' }
RNROSCourse class >> courses [

	^ { 
		  (#'Pre-requis' -> [ self courseDay0 ]).
		  (#'Jour 1: Architecture ROS' -> [ self courseDay1 ]).
		  (#'Jour 2: Intro Turtlebot 3 & Slam' -> [ self courseDay2 ]).
		  (#'Jour 3: TP Slam, Services & Localisation'
		   -> [ self courseDay3 ]).
		  (#'Jour 4: TP Localisation, Actions & Navigation'
		   -> [ self courseDay4 ]) }
		  asOrderedDictionary
]
