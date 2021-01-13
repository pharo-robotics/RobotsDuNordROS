Class {
	#name : #RNROSTopics,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSTopics >> filesystem [

	^ super filesystem / #ROSTopics
]

{ #category : #accessing }
RNROSTopics >> lesson [
	^ SaLesson new
		title: 'Topics';
		addUnit: self objectives;
		addUnit: self whatIsATopic;
		addUnit: self topicsInRos;
		addUnit: self topicQuiz;
		addUnit: self turtleSimTopicExperiment;
		addUnit: self turtleSimTopicExperimentQuiz;
		addUnit: self turtleSimManualPublishToTopicExperiment;
		addUnit: self turtleSimManualPublishToTopicExperimentQuiz;
		addUnit: self turtleSimManualSubscribeToTopicExperiment;
		addUnit: self turtleSimManualSubscribeToTopicExperimentQuiz;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSTopics >> topicQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsQuizQ1)
				question:
					'Dans le contexte de l''analogie avec reseau/graph, les topics sont lie avec';
				choices:
					{'Les arcs' . 'Les sommets' . 'Aucun, les topic sont une qualité des arcs'}
						yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsQuizQ2)
				question: 'Combien des types sont possible a partager a travers un topic?';
				beMultiple;
				choices: {'1' . '0' . '2' . '>3'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsQuizQ3)
				question:
					'A quelle entitée ROS applique la qualité de "Publisher" et "Subcriber" ';
				beMultiple;
				choices: {'Topic' . 'Node' . 'Autre'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsQuizQ4)
				question: 'Un topic implique des communications';
				beMultiple;
				choices: {'Unidirectionel' . 'Bidirectionel ' . 'Configurable'};
				yourself).
	^ (SaQuestionaire id: #TopicsQuiz)
		title: 'Quiz #1: Le Topic ROS ';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSTopics >> topicsInRos [
	^ self markdown: 'topicsInRos.md' title:'ROS Topics'  id: #RosTopics
]

{ #category : #accessing }
RNROSTopics >> turtleSimManualPublishToTopicExperiment [
	^ (SaROSLaunchExperiment id: #TurtleSimPubExperiment)
		description:
			(self filesystem / 'turtleSimManualPublishToTopicExperiment.md')
				readStream upToEnd;
		title: 'TurtleSim Draw';
		command:
			(' roslaunch {1} '
				format: {(self filesystem / 'turtlesim.launch') fullName});
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimManualPublishToTopicExperimentQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpPubQuizQ1)
				question:
					'"rostopic type /turtle1/cmd_vel" montre';
				choices:
					{'Le nom de type'.
					'La definition du type'.
					'Les dependences du type'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpPubQuizQ2)
				question: 'rostopic pub /turtle1/cmd_vel geometry_msgs/Twist "linear:
  x: 0.0
  y: 0.0
  z: 0.0
angular:
  x: 0.0
  y: 0.0
  z: 0.0" -1';
				beMultiple;
				choices:
					{'systeme a multiple processus' . 'systeme a multiples ordinateurs'.
					'de processus interconnecté'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpPubQuizQ3)
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
			((SaMultipleChoiceQuestion id: #TopicsExpPubQuizQ4)
				question: 'Un node se communique avec des autres nodes avec les protocols';
				beMultiple;
				choices: {'XMLRPC' . 'TCPROS5' . 'UDP/IP' . 'RTP'};
				yourself).
	^ (SaQuestionaire id: #TopicsExpPubQuiz)
		title: 'Quiz #1: Le Node ROS ';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimManualSubscribeToTopicExperiment [
	^ (SaROSLaunchExperiment id: #TurtleSimSubExperiment)
		description:
			(self filesystem / 'turtleSimManualSubscribeToTopicExperiment.md')
				readStream upToEnd;
		title: 'TurtleSim Draw';
		command:
			(' roslaunch {1} '
				format: {(self filesystem / 'turtlesim.launch') fullName});
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimManualSubscribeToTopicExperimentQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ1)
				question:
					'Pour quoi vous pensez qu''on fait une analogie avec les graph/reseaux?';
				choices:
					{'Les nodes sont les sommet du graph, leur communication les arcs'.
					'Les arcs sont des nodes, les sommets sont des machines'.
					'les nodes sont les les sommets, les arcs sont les relations de dependece'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ2)
				question: 'Un systeme distribue est un ';
				beMultiple;
				choices:
					{'systeme a multiple processus' . 'systeme a multiples ordinateurs'.
					'de processus interconnecté'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ3)
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
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ4)
				question: 'Un node se communique avec des autres nodes avec les protocols';
				beMultiple;
				choices: {'XMLRPC' . 'TCPROS5' . 'UDP/IP' . 'RTP'};
				yourself).
	^ (SaQuestionaire id: #TopicsExpSubQuiz)
		title: 'Quiz #1: Le Node ROS ';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimTopicExperiment [
	^ (SaROSLaunchExperiment id: #TurtleSimExperiment)
		description: (self filesystem / 'turtleSimTopicExperiment.md') readStream upToEnd;
		title: 'TurtleSim Draw';
		command:
			(' roslaunch {1} '
				format: {(self filesystem / 'turtlesim.draw.launch') fullName});
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimTopicExperimentQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpQuizQ1)
				question: '"rostopic list montre"';
				choices:
					{'Tout les topics' . 'Tout les nodes' . 'Tout les process ROS'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpQuizQ2)
				question: '"rostopic info /turtle1/cmd_vel" montre';
				beMultiple;
				choices:
					{'Le type' . 'Le nom de topic' . 'Les publishers' . 'Les subscribers'};
				yourself).
	^ (SaQuestionaire id: #TopicsExpQuiz)
		title: 'Quiz #1: Le Node ROS ';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSTopics >> whatIsATopic [
	^ (SaMultipleChoiceQuestion id: #WhatIsATopic)
		title: 'Quiz #1: Topics';
		question: 'Qu''est-ce que ce un Topic (sujet)?';
		beMultiple;
		choices:
			{'Arc' . 'Canal de communication' . 'Un sujet de conversation'.
			'Quelque chose d''usage topique'};
		yourself
]
