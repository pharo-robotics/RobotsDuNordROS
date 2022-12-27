"
Intro on basic concepts 
"
Class {
	#name : #RNROSDay1,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day1'
}

{ #category : #'as yet unclassified' }
RNROSDay1 >> course [

	"OSPlatform current isUnix
		ifFalse: [ ^ self
				error:
					'The lesson of ROS: Elemental Concepts requires to be done in linux! Pleasem load Sagan in your Ubuntu/ROS installation, and catch from there' ]."

	^ SaCourse new
		  title: 'ROS: Elemental Concepts';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self introduction id: #Introduction;
		  addLesson: self nodes id: #Nodes;
		  addLesson: self topics id: #Topics;
		  addLesson: self python id: #PythonProgramming;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSDay1 >> introduction [

	^ RNROSIntroduction new lesson
]

{ #category : #accessing }
RNROSDay1 >> nodes [

	^ RNROSNodes new lesson
]

{ #category : #accessing }
RNROSDay1 >> python [
	^ RNROSPyhonProgramming new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay1 >> topics [
	^ RNROSTopics new lesson
]
