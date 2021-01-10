"
Day 1 : 
 Entry Test. 
 Linux
 Bash
 GIT. 
"
Class {
	#name : #RNROSDay1,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day1'
}

{ #category : #combining }
RNROSDay1 >> bash [
	^ RNROSBash new lesson.
]

{ #category : #'as yet unclassified' }
RNROSDay1 >> course [

	^ SaCourse new
		  courseFolder: #Environment;
		  title: 'Environment';
		  addLesson: self test;
		  addLesson: self linux;
		  addLesson: self bash;
		  addLesson: self git
]

{ #category : #'command line' }
RNROSDay1 >> git [

	^ RNROSGit new lesson
]

{ #category : #combining }
RNROSDay1 >> linux [
	^ RNROSLinux new lesson.
]

{ #category : #'as yet unclassified' }
RNROSDay1 >> test [

	^ RNROSEntryTest new test
]
