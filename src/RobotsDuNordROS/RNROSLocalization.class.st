Class {
	#name : #RNROSLocalization,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #'as yet unclassified' }
RNROSLocalization >> amclExperiment [
	^ self
		markdown: 'amcl.md'
		title: 'AMCL: Alternative Montecarlo Location'
		id: #AMCL
]

{ #category : #'as yet unclassified' }
RNROSLocalization >> filesystem [
	^ super filesystem / #ROSLocalization
]

{ #category : #'as yet unclassified' }
RNROSLocalization >> lesson [
	^ SaLesson new
		title: 'Localization';
		addUnit: self objectives;
		addUnit: self whatIsLocalization;
		addUnit: self localizationAlgorithms;
		addUnit: self localizationQuiz;
		addUnit: self amclExperiment;
		addUnit: self quiz;
		addUnit: self summary;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSLocalization >> localizationAlgorithms [
	^ self markdown: 'localization-algos.md' title: 'Localization' id: #LocalIntro 

]

{ #category : #'as yet unclassified' }
RNROSLocalization >> localizationQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaOpenQuestion id: #LocalizationQuizQ1)
				question:
					'Pour quoi on dit que la localisation s''agit de position et orientation?';
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #LocalizationQuizQ2)
				question: 'AMCL est un algorithme que';
				beMultiple;
				choices:
					{'Fait la fusion des données ' . 'Estime la position et orientation'.
					'Base sur le meme algorithme a particles du SLAM'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #LocalizationQuizQ3)
				question: 'Il a plusieurs genres des methodes de localisation';
				choices: {'1' . '2' . '3' . '>3'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #LocalizationQuizQ4)
				question: 'Les methods globales';
				beMultiple;
				choices:
					{'WiFi' . 'Etherenet' . 'TokenRing' . 'Localisation en rapport au monde'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #LocalizationQuizQ5)
				question: 'Les methods locales';
				beMultiple;
				choices:
					{'Lidar' . 'Camera' . 'Odometrie' . 'Localisation en rapport aux measures'};
				yourself).
	^ (SaQuestionaire id: #LocalizationQuiz)
		title: 'Quiz #2: Localization ';
		questions: questions shuffle;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSLocalization >> quiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #AMCLQuizQ1)
				beMultiple;
				question: 'Combien des processus sont visibles pendant le processus de AMCL';
				choices: {'2' . '5' . '>5'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #AMCLQuizQ2)
				question: 'Quel processus sont executée dans le turtlebot?';
				yourself).
	questions
		add:
			((SaOpenQuestion id: #AMCLQuizQ3)
				question: 'Quel processus sont executée dans le NUC?';
				yourself).
	
	^ (SaQuestionaire id: #AMCLQuiz)
		title: 'Quiz #3: AMCL ';
		questions: questions shuffle;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSLocalization >> whatIsLocalization [
	^ (SaMultipleChoiceQuestion id: #WhatIsLocalization)
		title: 'Quiz #1: Localisation';
		question: 'Qu''est-ce que ca veut dire Localisation?';
		choices:
			{'établir sa propre position et orientation'.
			'établir sa propre position' . 'Planification de la trajectoire'};
		yourself
]
