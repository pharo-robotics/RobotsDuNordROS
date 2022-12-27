"
Day 1 : 
 Entry Test. 
 Linux
 Bash
 GIT. 
"
Class {
	#name : #RNROSDay0,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day0'
}

{ #category : #combining }
RNROSDay0 >> bash [
	^ RNROSBash new lesson.
]

{ #category : #'as yet unclassified' }
RNROSDay0 >> course [
	^ SaCourse new
		id: #Environment;
		courseFolder: #Environment;
		title: 'Environment';
		addLesson: self test id: #EntryTest;
		addLesson: self linux id: #Linux;
		addLesson: self bash id: #Bash;
		addLesson: self git id: #Git
]

{ #category : #'command line' }
RNROSDay0 >> git [

	^ RNROSGit new lesson
]

{ #category : #combining }
RNROSDay0 >> linux [
	^ RNROSLinux new lesson.
]

{ #category : #'as yet unclassified' }
RNROSDay0 >> test [

	^ RNROSEntryTest new test
]
