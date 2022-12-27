"
I explain bash 
"
Class {
	#name : #RNROSBash,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day0'
}

{ #category : #'as yet unclassified' }
RNROSBash >> bashExercises [
	^ (SaMarkdownContent id: #BashExercises)
		  title: 'Exercises';
		  content: (self filesystem / 'exercises.md') readStream upToEnd;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSBash >> bashHistory [
	^ (SaMarkdownContent new id: #BashHistory)
		title: 'Bash';
		content: (self filesystem / 'bash.md') readStream upToEnd;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSBash >> bashQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQSBashQ1)
				question: 'Qu''est-ce que ca veut dire Bash';
				choices:
					{'Bourne-Again shell' . 'Larry J. Bash' . 'Jeu vidéo de type party game développé par Eurocom '};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQSBashQ2)
				question:
					'Quelle est le fichier que s''execute lors du lancement de bash, pour tou.te.s les utilisateurs lors d''une ouverture de session? ';
				choices: {'/etc/profile' . '.bash_profile' . '.bash_login' . '.bashrc'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQSBashQ3)
				question:
					'Quelle est le fichier que s''execute lors du lancement de bash, de ce lancement n''est pas lie a une ouverture de session? ';
				choices: {'/etc/profile' . '.bash_profile' . '.bash_login' . '.bashrc'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQSBashQ4)
				question: 'Le fichier .bashrc est';
				choices:
					{'Specifique a chaque utilisateur' . 'Commun a tou.te.s les utilisateurs'};
				yourself).
	^ (SaQuestionaire id: #QuizQQSBash)
		title: 'Quiz #2: Bash';
		questions: questions reverse;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSBash >> bashTutorial [
	^ (SaLocalMediaContent id: #BashTutorial)
		title: 'Bash Tutorial';
		file: self filesystem / 'bash-tutorial.mp4';
		url: 'http://rmod-files.lille.inria.fr/Teach/environment/bash.mp4';
		overview: self filesystem / 'bash-tutorial.md';
		yourself
]

{ #category : #'as yet unclassified' }
RNROSBash >> filesystem [ 
	^ super filesystem / #bash 
]

{ #category : #'as yet unclassified' }
RNROSBash >> lesson [
	^ SaLesson new
		title: 'Bash';
		addUnit: self objectives;
		addUnit: self whatIsBash;
		addUnit: self bashHistory;
		addUnit: self bashQuiz;
		addUnit: self bashTutorial;
		addUnit: self bashExercises;
		addUnit: self summary;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSBash >> whatIsBash [
	^ (SaMultipleChoiceQuestion id: #WhatIsBash)
		title: 'Quiz #1: Bash';
		question: 'Qu''est-ce que ce Bash? ';
		beMultiple;
		choices:
			{'Une interface textuel pour interagir avec le systeme d''explotation'.
			'Une boule de cristal' . 'Une interface graphique pour interagir avec le systeme d''explotation'.
			'Un language scripting '};
		yourself
]
