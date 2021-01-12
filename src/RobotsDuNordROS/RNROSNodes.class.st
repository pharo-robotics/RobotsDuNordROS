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
					'"ps -fea | grep ros" montre tout les processus que';
				choices: {'appartien a ROS' . 'contien le mot "ros"' . 'que sont demarre par l''utilisateur ros'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesCommandsQ2)
				question:
					'La commande rosnode list, en relation a "ps -fea | grep ros": il montre ';
				beMultiple;
				choices: {'moins des processus' . 'plus de processus' . 'la meme quantité'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesCommandsQ3)
				question:
					'La commande rosnode info <nom-node> montre';
				beMultiple;
				choices:
					{'Les connections du node' . 'le PID du node'.
					'L''addresse HTTP pour s''y connecter avec' . 'Le nom du developeur'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #NodesCommandsQ4)
				question: 'Donnez vous une definition de Node avec vos mot, en pas plus de 3 lignes';
				yourself).
	^ (SaQuestionaire id: #NodesCommands)
		title: 'Quiz #2: En étudions les nodes ';
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
					'Pour quoi vous pensez qu''on fait une analogie avec les graph/reseaux?';
				choices:
					{'Les nodes sont les sommet du graph, leur communication les arcs'.
					'Les arcs sont des nodes, les sommets sont des machines'.
					'les nodes sont les les sommets, les arcs sont les relations de dependece'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesQuizQ2)
				question: 'Un systeme distribue est un ';
				beMultiple;
				choices:
					{'systeme a multiple processus' . 'systeme a multiples ordinateurs'.
					'de processus interconnecté'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesQuizQ3)
				question:
					'On reconnait plusieur characteristiques de ROS tant systeme distribue';
				beMultiple;
				choices:
					{'Interface unifié de communication' . 'Une architecture hardware unifiée '.
					'Flexibilité pour trouver des resources'.
					'Flexibilité pour ajotuer et enlever des fonctionalités'.
					'Un seule langage de development'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #NodesQuizQ4)
				question: 'Un node se communique avec des autres nodes avec les protocols';
				beMultiple;
				choices: {'XMLRPC' . 'TCPROS5' . 'UDP/IP' . 'RTP'};
				yourself).
	^ (SaQuestionaire id: #NodesQuiz)
		title: 'Quiz #1: Le Node ROS ';
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
