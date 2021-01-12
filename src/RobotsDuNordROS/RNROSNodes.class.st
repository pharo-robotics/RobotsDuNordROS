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
RNROSNodes >> nodesCommandsQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesCommandsQ1)
				question:
					'De q''on veut faire une question sur la configuration d''un artefact ROS on doit faire des questions en';
				choices: {'answers.ros.org' . 'stackoverflow.com' . 'facebook'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesCommandsQ2)
				question:
					'De q''on a des questions sur des projets et conferences on fait les questions ou?';
				beMultiple;
				choices: {'answers.ros.org' . 'discourse.ros.org' . 'wiki.ros.org'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesCommandsQ3)
				question:
					'De qu''on trouve des problemes sur quelque morceau logiciel partie de ROS. On s''addresse ou? ';
				beMultiple;
				choices:
					{'wiki.ros.org/Wiki' . 'depot git du projet en question'.
					'discourse.ros.org' . 'wiki.ros.org'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #NodesCommandsQ4)
				question: 'Q''est-ce que vous trouvez dans wiki.ros.org?';
				yourself).
	^ (SaQuestionaire id: #NodesCommands)
		title: 'Quiz #2: La communaute ROS';
		questions: questions reverse;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSNodes >> nodesInRos [
	^ self markdown: 'nodesInRos.md' title: 'Nodes' id:#NodesInRos
]

{ #category : #'as yet unclassified' }
RNROSNodes >> nodesQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesQuizQ1)
				question:
					'De q''on veut faire une question sur la configuration d''un artefact ROS on doit faire des questions en';
				choices: {'answers.ros.org' . 'stackoverflow.com' . 'facebook'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesQuizQ2)
				question:
					'De q''on a des questions sur des projets et conferences on fait les questions ou?';
				beMultiple;
				choices: {'answers.ros.org' . 'discourse.ros.org' . 'wiki.ros.org'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesQuizQ3)
				question:
					'De qu''on trouve des problemes sur quelque morceau logiciel partie de ROS. On s''addresse ou? ';
				beMultiple;
				choices:
					{'wiki.ros.org/Wiki' . 'depot git du projet en question'.
					'discourse.ros.org' . 'wiki.ros.org'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #NodesQuizQ4)
				question: 'Q''est-ce que vous trouvez dans wiki.ros.org?';
				yourself).
	^ (SaQuestionaire id: #NodesQuiz)
		title: 'Quiz #2: La communaute ROS';
		questions: questions reverse;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSNodes >> turtleSimNodesExperiment [
	^ (SaROSLaunchExperiment id: #TurtleSimExperiment)
		description: (self filesystem / 'turtleSimNodesExperiment.md') readStream upToEnd;
		title: 'TurtleSim Draw';
		command:
			(' roslaunch {1} '
				format: {(self filesystem / 'turtlesim.draw.launch') fullName});
		yourself
]

{ #category : #'as yet unclassified' }
RNROSNodes >> whatIsANode [
	^ (SaMultipleChoiceQuestion id: #WhatIsANode)
		title: 'Quiz #1: Nodes';
		question: 'Qu''est-ce que ce un Node (Nœud)?';
		beMultiple;
		choices:
			{'Vertice' . 'Sommet' . 'Reseaux' . 'Graph' . 'Arc' . 'Un package ROS'};
		yourself
]
