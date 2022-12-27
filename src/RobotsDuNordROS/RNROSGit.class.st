"
I explain git
"
Class {
	#name : #RNROSGit,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day0'
}

{ #category : #'as yet unclassified' }
RNROSGit >> filesystem [ 
	^ super filesystem / #git 
]

{ #category : #'as yet unclassified' }
RNROSGit >> gitExercises [
	^ (SaMarkdownContent id: #GitExercises)
		  title: 'Exercises';
		  content: (self filesystem / 'exercises.md') readStream upToEnd;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSGit >> gitHistory [
	^ (SaMarkdownContent id: #GitHistory)
		  title: 'Git';
		  content: (self filesystem / 'git.md') readStream upToEnd;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSGit >> gitQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQGitQ1)
				question: 'Quelle est la license de Git';
				choices: {'GPLv1' . 'GPLv2' . 'GPLv3' . 'MIT'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQGitQ2)
				question: 'Le createur de Git est aussi le createur de ';
				choices: {'Linux kernel' . 'Ubuntu' . 'Windows' . 'GNU/Linux'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #QuizQQGitQ3)
				question: 'Qu''est-ce que ce un Logiciel de gestion de versions?';
				choices:
					{'Un logiciel qui permet de stocker un ensemble de fichiers en conservant la chronologie de toutes les modifications qui ont été effectuées dessus'.
					'Unl ogiciel que permet d''utiliser un ordinateur pour rédiger, corriger et imprimer des documents'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #QuizQQGitQ4)
				question: 'Expliquez avec vous mot qu''est-ce que vous attendez de Git';
				yourself).
	^ (SaQuestionaire id: #QuizQQGit)
		title: 'Quiz #2: Git';
		questions: questions reverse;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSGit >> gitTutorial [
	^ (SaLocalMediaContent id: #GitTutorial)
		title: 'Git Tutorial';
		file: self filesystem / 'git-tutorial.mp4';
		overview: self filesystem / 'git-tutorial.md';
		url: 'http://rmod-files.lille.inria.fr/Teach/environment/git.mp4';
		yourself
]

{ #category : #'as yet unclassified' }
RNROSGit >> lesson [
	^ SaLesson new
		title: 'Git';
		addUnit: self objectives;
		addUnit: self whatIsGit;
		addUnit: self gitHistory;
		addUnit: self gitQuiz;
		addUnit: self gitTutorial;
		addUnit: self gitExercises;
		addUnit: self summary;
		yourself
]

{ #category : #'as yet unclassified' }
RNROSGit >> whatIsGit [
	^ (SaMultipleChoiceQuestion id: #WhatIsGit)
		title: 'Quiz #1: Git';
		question: 'Qu''est-ce que ce Git? ';
		beMultiple;
		choices:
			{'Un systeme de control des versions de code source'.
			'Un systeme de fichier' . 'Un module de developement robotique'.
			'Un language de programmation'};
		yourself
]
