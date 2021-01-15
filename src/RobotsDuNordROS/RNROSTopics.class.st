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
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsQuizQ5)
				question: 'Combien publishers peu avoir un topic?';
				beMultiple;
				choices: {'Que 1' . '0 ' . 'Plusieurs'};
				yourself).
				
		questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsQuizQ6)
				question: 'Combien subscriptors peu avoir un topic?';
				beMultiple;
				choices: {'Que 1' . '0 ' . 'Plusieurs'};
				yourself).
	^ (SaQuestionaire id: #TopicsQuiz)
		title: 'Quiz #2: Le Topic ROS ';
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
		title: 'TurtleSim Publish';
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
  x: 1.0
  y: 2.0
  z: 3.0
angular:
  x: 3.0
  y: 2.0
  z: 1.0" -1';
				beMultiple;
				choices:
					{'Transmet comme message un tuple des vecteurs de vitesse ((1,2,3), (3,2,1)) ' .
					 'Transmet le message a travers le topic /turtle1/cmd_vel'.
					 'Le seul possible recepteur du message est TurtleSim'};
				yourself).
	
	^ (SaQuestionaire id: #TopicsExpPubQuiz)
		title: 'Quiz #4: Le Topic Publisher ';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimManualSubscribeToTopicExperiment [
	^ (SaROSLaunchExperiment id: #TurtleSimSubExperiment)
		description:
			(self filesystem / 'turtleSimManualSubscribeToTopicExperiment.md')
				readStream upToEnd;
		title: 'TurtleSim Subscribe';
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
				question: 'Le type exposeé par rostopic type /turtle1/pose represent';
				choices:
					{'Des coordonnees 3D, avec rotation' . 'Des coordonnees 2D avec rotation'.
					'Des coordonnees 3D, avec rotation. Vitesse lineer et angulaire d''une dimension'.
					'Des coordonnees 2D, avec rotation. Vitesse lineer et angulaire d''une dimension'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ2)
				question:
					'Lors de l''experiment (E), on a vu comment la pose du tortue change en rapport a la publication sur le topic cmd_vel. ';
				choices:
					{'La tortue se deplace et informe sa localization au meme temps.'.
					'Le topic pose est generé a partir d''un calcul simple et direct de la commande pose'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ3)
				question:
					'Lors du mouvement et communication de la tortue. Le calcule du comportement de la tortue se passe ou? ';
				choices:
					{'Dans le node' . 'Dans le topic' . 'Dans le message transmet travers le topic'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #TopicsExpSubQuizQ4)
				question:
					'Lors du mouvement et communication de la tortue. Le comportement de la tortue est ';
				choices:
					{'Une reaction au message transmet travers le topic'.
					'Le node est developpé pour se deplacer sans besoin de interaction'.
					'Autre'};
				yourself).
	^ (SaQuestionaire id: #TopicsExpSubQuiz)
		title: 'Quiz #5: Le Topic Subscriber';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSTopics >> turtleSimTopicExperiment [
	^ (SaROSLaunchExperiment id: #TurtleSimExperiment)
		description: (self filesystem / 'turtleSimTopicExperiment.md') readStream upToEnd;
		title: 'TurtleSim Topic Experiment';
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
		title: 'Quiz #3: Topic analysis ';
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
