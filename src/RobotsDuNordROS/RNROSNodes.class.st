Class {
	#name : #RNROSNodes,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSNodes >> filesystem [

	^ super filesystem / #ROSNodes
]

{ #category : #'as yet unclassified' }
RNROSNodes >> lesson [
	^ SaLesson new
		title: 'Nodes';
		addUnit: self objectives;
		addUnit: self whatIsANode;
		addUnit: self nodesInRos;
		addUnit: self nodesQuiz;
		addUnit: self turtleSimNodesExperiment;
		addUnit: self nodesCommandsQuiz;
		addUnit: self summary;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSNodes >> nodesInRos [
		^ self markdown: 'nodesInRos.md' title: 'Nodes'. 
]
