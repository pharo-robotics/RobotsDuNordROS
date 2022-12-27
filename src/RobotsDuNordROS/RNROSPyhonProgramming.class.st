Class {
	#name : #RNROSPyhonProgramming,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day1'
}

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> executeAll [
	^ self markdown: 'makefile-exe.md' title: 'Execute' id: #ExePython
]

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> filesystem [

	^ super filesystem / #ROSPythonProgramming
]

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> lesson [
	^ SaLesson new
		title: 'Programming Nodes';
		addUnit: self objectives;
		addUnit: self whatIsANode;
		addUnit: self publisher;
		addUnit: self subscriber;
		addUnit: self executeAll;
		addUnit: self publishCommandVelocity;
		addUnit: self summary;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> publishCommandVelocity [
	^ self markdown: 'turtlebot-pub.md' title: 'Publishing Exercise' id: #PubExePython
]

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> publisher [
	^ self markdown: 'publisher.md' title: 'Publisher' id: #PubPython
]

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> subscriber [
	^ self markdown: 'subscriber.md' title: 'Subscriber' id: #SubPython
]

{ #category : #'as yet unclassified' }
RNROSPyhonProgramming >> whatIsANode [
	^ (SaMultipleChoiceQuestion id: #WhatIsANode)
		title: 'Quiz #1: Nodes';
		question: 'Qu''est-ce que ce un Node (Nœud)?';
		beMultiple;
		choices:
			{'Un program' . 'Un entite capable de emiteur des messages'.
			'Une entite capable de recevoir des message'.
			'Une entite capable de reagir aux stimulations'};
		yourself
]
