Class {
	#name : #RNROSIntroduction,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #accessing }
RNROSIntroduction >> communityQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #ComQuizQ1)
			 question: 'De q''on veut faire une question sur la configuration d''un artefact ROS on doit faire des questions en';
			 choices: { 'answers.ros.org'.
				 'stackoverflow.com'. 'facebook' };
			 yourself).
			
			
			questions add: ((SaMultipleChoiceQuestion id: #ComQuizQ2)
			 question: 'De q''on a des questions sur des projets et conferences on fait les questions ou?';
			 beMultiple;
			 choices: { 'answers.ros.org'.
				 'discourse.ros.org'. 'wiki.ros.org' };
			 yourself).
			
	questions add: ((SaMultipleChoiceQuestion id: #ComQuizQ3)
			 question: 'De qu''on trouve des problemes sur quelque morceau logiciel partie de ROS. On s''addresse ou? ';
			 beMultiple;
			 choices: { 'wiki.ros.org/Wiki'. 'depot git du projet en question' .
				 'discourse.ros.org'. 'wiki.ros.org' };
			 yourself).

	
	questions add: ((SaOpenQuestion id: #ComQuizQ4)
			 question:
				 'Q''est-ce que vous trouvez dans wiki.ros.org?';
			 yourself).

	^ (SaQuestionaire id: #ComQuiz)
		  title: 'Quiz #2: La communaute ROS';
		  questions: questions reverse;
		  yourself
]

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
		addUnit: self communityQuiz;
		addUnit: self turtleSim;
		addUnit: self turtleSimQuiz;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSIntroduction >> rosCommunaute [
	^ (SaLocalMediaContent id: #ROSCommunity)
		title: 'Communaute ROS';
		file: self filesystem / 'ros-community.mp4';
		url: 'http://rmod-files.lille.inria.fr/Teach/rosintroduction/community.mp4';
		overview: self filesystem / 'ros-community.md';
		yourself
]

{ #category : #accessing }
RNROSIntroduction >> rosIntroduction [
	^ self markdown: 'ros-introduction.md' title: 'ROS' id: #IntroductionROS. 
]

{ #category : #accessing }
RNROSIntroduction >> rosQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #QuizROSQ1)
			 question: 'Qu''est-ce que ca veut dire ROS';
			 choices: { 'Robot Operative System'. 'Robot Operative Software'.
				 'Robotic Operative System' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #QuizROSQ2)
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
	questions add: ((SaMultipleChoiceQuestion id: #QuizROSQ3)
			 question: 'Les aspects principaux sont';
			 beMultiple;
			 choices:
				 { 'Processus distribué'. 'Gestion des paquets'.
				 'API'. 'Prise en charge des Langages de programmation'.
				 'La compilation multiplatforme'. 'La performance des protocoles de transference'.
				 'L''utilization de GPU' };
			 yourself).
	^ (SaQuestionaire id: #QuizROS)
		  title: 'Quiz #2: ROS';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSIntroduction >> turtleSim [

	^ (SaROSLaunchExperiment id: #TurtleSim)
		  description:
			  (self filesystem / 'turtlesim.draw.md') readStream upToEnd;
		  title: 'TurtleSim Draw';
		  command: (' roslaunch {1} ' format:
					   { (self filesystem / 'turtlesim.draw.launch') fullName });
		  yourself
]

{ #category : #accessing }
RNROSIntroduction >> turtleSimQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TSQuizQ1)
			 question: 'Qu''est-ce que ce Turtlesim';
			 choices: { 'Un simulateur simple du Robot tortue'.
				 'Un model de robot Turtlebot'. 'Un module de debug ROS' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #TSQuizQ2)
			 question: 'Q''est-ce qu''il est capable de faire turtlesim';
			 beMultiple;
			 choices: { 'Transformer commands de vitesse en actions'.
				 'Desiner des tortues'. 'De deplacer des tortues automatiquement' };
			 yourself).

	questions add: ((SaMultipleChoiceQuestion id: #TSQuizQ3)
			 question:
				 'Lors du deroulement des experiments, combien des programmes vous avez perçu?';
			 choices: { '1'. '2'. '3'. '>3' };
			 yourself).
	questions add: ((SaOpenQuestion id: #TSQuizQ4)
			 question:
				 'Q''est-ce que vous pensez qu''est la relation entre turtlesim, la tortue et le fait que la tortue se balade?';
			 yourself).

	^ (SaQuestionaire id: #TSQuiz)
		  title: 'Quiz #2: TurtleSim';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSIntroduction >> whatIsROS [
	^ (SaMultipleChoiceQuestion id: #WhatIsROS)
		title: 'Quiz #1: ROS';
		question: 'Qu''est-ce que ce ROS?';
		beMultiple;
		choices:
			{'Un type de robot' . 'Une communaute Open Source'.
			'Un framework pour developer des application robotiques'.
			'Un systeme d''exploitation' . 'Une interface graphique pour interagir avec'.
			'Un language scripting'};
		yourself
]
