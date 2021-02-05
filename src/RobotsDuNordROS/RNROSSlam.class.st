Class {
	#name : #RNROSSlam,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #'as yet unclassified' }
RNROSSlam >> filesystem [

	^ super filesystem / #ROSSlam
]

{ #category : #'as yet unclassified' }
RNROSSlam >> gmappingsExperiment [
	^ self
		markdown: 'gmappings.md'
		title: 'GMappings:  Simultaneous localization and mapping with turtlebot'
		id: #GMappings
]

{ #category : #'as yet unclassified' }
RNROSSlam >> lesson [
	^ SaLesson new
		title: 'SLAM';
		addUnit: self objectives;
		addUnit: self whatIsSlam;
		addUnit: self slamAlgorithms;
		addUnit: self slamQuiz;
		addUnit: self gmappingsExperiment;
		addUnit: self quiz;
		addUnit: self summary;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSSlam >> quiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #GMQuizQ1) beMultiple ;
				question:
					'Combien des processus sont visibles pendant le processus de SLAM';
				choices:
					{'2'.
					'5'.
					'>5'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #GMQuizQ2)
				question: 'Quel processus sont executée dans le turtlebot?';
				yourself).
		questions
		add:
			((SaOpenQuestion id: #GMQuizQ3)
				question: 'Quel processus sont executée dans le NUC?';
				yourself).
			questions
		add:
			((SaOpenQuestion id: #GMQuizQ4)
				question: 'Addressez vous a une terminale. execute la commande roscd turtlebot3_slam. 
				Cherche le fichier turtlebot3_slam.launch. 
				Ecrivez une description du fichier. Assurez vous de suivre tout fichier ".launch" utilisé par turtlebot3_slam.launch. 		
				';
				yourself).

	^ (SaQuestionaire id: #GMQuiz)
		title: 'Quiz #3: Gmappings ';
		questions: questions shuffle;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSSlam >> slamAlgorithms [
	^ self markdown: 'slam-algos.md' title: 'SLAM: Simultaneous localization and mapping' id: #SlamIntro 

]

{ #category : #'as yet unclassified' }
RNROSSlam >> slamQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #SlamQuizQ1) beMultiple ;
				question:
					'Pour quoi on dit que SLAM s''agit un problème de poule et d''œuf?';
				choices:
					{'Il faut connaitre l''emplacement'.
					'Il faut connaitre la distribution spatial'.
					'Il faut être capable de se deplacer sans connaitre l''endroit'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #SlamQuizQ2)
				question: 'Kalman est un algorithme que';
				beMultiple;
				choices:
					{'Fait des lectures en relation au temps' . 'A besoin de connaitre a la covariance'.
					'Que fait la fusion des capteurs'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #SlamQuizQ3)
				question:
					'Les filtres a particules et du kalman s''utilise a cause de';
				beMultiple;
				choices:
					{'Mapping de 2D a 3D' . 'Mapping de 1D a 3D'.
					'Bruit dans les lectures'.
					'Besoin de fiabilite'.
					'Un seule langage de development'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #SlamQuizQ4)
				question: 'Le filtre a Particles est un algorithm que ';
				beMultiple;
				choices: {'s''appelle aussi la method monte carlo' . 'travaille avec des observations bruyants et/ou partielles' . 'prendre en compte des valeurs dans des ranges potentialement infinites' . 'que base les valeurs des lectures sur des statistiques et des valeurs random pour ameliorer la fiabilite'};
				yourself).
	^ (SaQuestionaire id: #SlamQuiz)
		title: 'Quiz #2: SLAM ';
		questions: questions shuffle;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSSlam >> whatIsSlam [
	^ (SaMultipleChoiceQuestion id: #WhatIsSlam)
		title: 'Quiz #1: SLAM';
		question: 'Qu''est-ce que ca veut dire SLAM?';
		beMultiple;
		choices:
			{'Simultaneous Location And Mapping' . 'Simultaneous Localization And Mapping' . 'Simultaneous Location And Measuring' . 'Simultaneous Localization And Measuring'};
		yourself
]
