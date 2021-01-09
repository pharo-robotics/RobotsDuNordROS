Class {
	#name : #RNROSIntroduction,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #accessing }
RNROSIntroduction >> filesystem [

	^ super filesystem / #ROSIntroduction
]

{ #category : #accessing }
RNROSIntroduction >> lesson [
	^ SaLesson new
		title: 'Introduction';
		addUnit: self objectives;
		addUnit: self whatIsROS;
		addUnit: self rosIntroduction;
		addUnit: self rosQuiz;
		addUnit: self rosCommunaute;
		addUnit: self turtleSim;
		addUnit: self turtleSimQuiz;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSIntroduction >> rosCommunaute [
	^ SaLocalMediaContent new
		title: 'Communaute ROS';
		file: self filesystem / 'ros-community.mp4';
		url: 'http://rmod-files.lille.inria.fr/Teach/rosintroduction/community.mp4';
		overview: self filesystem / 'ros-community.md';
		yourself
]

{ #category : #accessing }
RNROSIntroduction >> rosIntroduction [
	^ self markdown: 'ros-introduction.md' title: 'ROS'. 
]

{ #category : #accessing }
RNROSIntroduction >> rosQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: (SaMultipleChoiceQuestion new
			 question: 'Qu''est-ce que ca veut dire ROS';
			 choices: { 'Robot Operative System'. 'Robot Operative Software'.
				 'Robotic Operative System' };
			 yourself).
	questions add: (SaMultipleChoiceQuestion new
			 question: 'On a dit qu''une definition plus correct pour ROS est';
			 choices:
				 { 'Un middleware pour la robotique'.
				 'Un systeme d''exploitation modifié'.
				 'Un systeme d''explotation spécialisé' };
			 yourself).
	questions add: (SaMultipleChoiceQuestion new
			 question: 'ROS a été conçu pour encourager';
			 choices:
				 { 'Le développement de logiciels de robotique en collaboration'.
				 'La reutilisation de code'. 'Le deployment distribue des processus robotiques' };
			 yourself).
	questions add: (SaMultipleChoiceQuestion new
			 question: 'Les aspects principaux sont';
			 beMultiple;
			 choices:
				 { 'Processus distribué'. 'Gestion des paquets'.
				 'API'. 'Prise en charge des Langages de programmation'.
				 'La compilation multiplatforme'. 'La performance des protocoles de transference'.
				 'L''utilization de GPU' };
			 yourself).
	^ SaQuestionaire new
		  title: 'Quiz #2: ROS';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSIntroduction >> turtleSim [ 

	^ self rosQuiz.
]

{ #category : #accessing }
RNROSIntroduction >> turtleSimQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: (SaMultipleChoiceQuestion new
			 question: 'Qu''est-ce que ce Turtlesim';
			 choices: { 'Un simulateur simple du Robot tortue'.
				 'Un model de robot Turtlebot'. 'Un module de debug ROS' };
			 yourself).
	questions add: (SaMultipleChoiceQuestion new
			 question: 'Q''est-ce qu''il est capable de faire turtlesim';
			 beMultiple;
			 choices: { 'Transformer commands de vitesse en actions'.
				 'Desiner des tortues'. 'De deplacer des tortues automatiquement' };
			 yourself).

	questions add: (SaMultipleChoiceQuestion new
			 question:
				 'Lors du deroulement des experiments, combien des programmes vous avez perçu?';
			 choices: { '1'. '2'. '3'. '>3' };
			 yourself).
	questions add: (SaOpenQuestion new
			 question:
				 'Q''est-ce que vous pensez qu''est la relation entre l''ecran joystick et l''effet sur turtlesim?';
			 yourself).

	^ SaQuestionaire new
		  title: 'Quiz #2: TurtleSim';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSIntroduction >> whatIsROS [
		^ SaMultipleChoiceQuestion new
		title: 'Quiz #1: ROS';
		question: 'Qu''est-ce que ce ROS?';
		beMultiple;
		choices:
			{'Un type de robot' .
			'Une communaute Open Source' .
			'Un framework pour developer des application robotiques' . 
			'Un systeme d''exploitation'  .
			'Une interface graphique pour interagir avec'.
			'Un language scripting'};
		yourself
]