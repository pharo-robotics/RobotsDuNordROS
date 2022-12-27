"
I explain linux
"
Class {
	#name : #RNROSLinux,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day0'
}

{ #category : #accessing }
RNROSLinux >> filesystem [ 
	^ super filesystem / #linux 
]

{ #category : #accessing }
RNROSLinux >> gettingOurEnvironmentRunning [
	^ (SaLocalMediaContent id: #InstallingRos)
		title: 'Setting the environment: Installing ROS';
		file: self filesystem / 'installingRos.mp4';
		url: 'http://rmod-files.lille.inria.fr/Teach/environment/installingRos.mp4';
		overview: self filesystem / 'gettingTheEnvironmentRunning.md';
		yourself
]

{ #category : #accessing }
RNROSLinux >> installUbuntu [
	^ (SaLocalMediaContent id: #InstallUbuntu)
		title: 'Installer Ubuntu';
		file: self filesystem / 'installingUbuntu.mp4';
		url: 'http://rmod-files.lille.inria.fr/Teach/environment/installingUbuntu.mp4';
		overview: self filesystem / 'installingUbuntu.md';
		yourself
]

{ #category : #accessing }
RNROSLinux >> lesson [
	^ SaLesson new
		title: 'Linux';
		addUnit: self objectives;
		addUnit: self whatIsLinuxMC;
		addUnit: self someHistory;
		addUnit: self linuxQuiz;
		addUnit: self ubuntu;
		addUnit: self ubuntuQuiz;
		addUnit: self virtualBox;
		addUnit: self vboxQuiz;
		addUnit: self installUbuntu;
		addUnit: self quizUbuntuInstallation;
		addUnit: self gettingOurEnvironmentRunning;
		addUnit: self quizGettingOurEnvironmentRunning;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSLinux >> linuxQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #LinuxQuizQ1)
				question:
					'Qu''est-ce que ce la difference entre GNU/Linux et Windows, MacOS, etc? ';
				choices:
					{'Système d''exploitation libre' . 'La couleur' . 'L''architecture du kernel'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #LinuxQuizQ2)
				beMultiple;
				question: 'Qu''est-ca veut dire "GPL"';
				choices:
					{'Licence publique générale' . 'GNU Not Unix' . 'License gratuite'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #LinuxQuizQ3) 
				question: 'Expliquez COPY-LEFT avec vos mots ';
				yourself).
	^ (SaQuestionaire id: #LinuxQuiz) 
		title: 'Quiz #2: GNU/Linux';
		questions: questions;
		yourself
]

{ #category : #accessing }
RNROSLinux >> quizGettingOurEnvironmentRunning [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #IRQuizQ1)
				question: 'Quelle version de ROS on a installé?';
				beMultiple;
				choices: {'Groovy' . 'Noetic' . 'Fuerte' . 'Hydro'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #IRQuizQ2)
				question: 'Comment s''appelle le fichier qu''on a modifié manualement?';
				choices: {'profile' . '.batch' . '.bashrc'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #IRQuizQ3)
				question: 'Comment s''appelle la commande utilisée pour installer ROS?';
				choices: {'apt-get' . 'sudo' . 'install'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #IRQuizQ4)
				question:
					'Expliquez avec vos mot a quoi serve les premiere deux pas de la installation';
				yourself).
	questions
		add:
			((SaOpenQuestion id: #IRQuizQ5)
				question:
					'Est-ce que vous avez des remarques a faire sur le video? (retour pour le professeur)';
				yourself).
	^ (SaQuestionaire id: #IRQuiz)
		title: 'Quiz #6: Installation Environnement';
		questions: questions;
		yourself
]

{ #category : #accessing }
RNROSLinux >> quizUbuntuInstallation [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #QIUbuntuQ1)
				question: 'Que type de disque dure on a choisi? ';
				beMultiple;
				choices:
					{'Dynamiquement alloué' . 'Statiquement alloué' . 'Allocation hybride'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #QIUbuntuQ2)
				question: 'Combien de memoire on a donné a la machine virtuelle?';
				choices:
					{'Un tout petit peu, sufficement pour demarrer'.
					'Jusqu''a la limite de partie verte de la ligne'.
					'La totalite de la memoire'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #QIUbuntuQ3)
				question:
					'Pour quoi on a pas donné plus ou moins de memoire a la machine virtuelle? ';
				yourself).
	questions
		add:
			((SaOpenQuestion id: #QIUbuntuQ4)
				question:
					'Pour quoi on a decidé de ne pas mettre a jour le systeme pendant l''instalation d''ubuntu?';
				yourself).
	questions
		add:
			((SaOpenQuestion id: #QIUbuntuQ5)
				question:
					'Est-ce que vous avez des remarques a faire sur le video? (retour pour le professeur)';
				yourself).
	^ (SaQuestionaire id: #QIUbuntu)
		title: 'Quiz #5: Installation ubuntu';
		questions: questions shuffle;
		yourself
]

{ #category : #accessing }
RNROSLinux >> someHistory [
	^ self markdown: 'history.md' title: 'History' id: #LinuxHistory
]

{ #category : #accessing }
RNROSLinux >> ubuntu [

	^ self markdown: 'ubuntu.md' title: 'Ubuntu' id: #UbuntuHistory.

]

{ #category : #accessing }
RNROSLinux >> ubuntuQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #UbuntuQuizQ1)
			 question:
				 'Pour quoi est-ce qu''on a decide utiliser Ubuntu?  ';
			 choices: { 'ROS est largement testé en Ubuntu '.
				 'On aime bien l''orange'.  'Ubuntu le meilleure linux'. };
			 yourself).
	questions add: ((SaOpenQuestion id: #UbuntuQuizQ2)
			 question: 'Argumenter la reponse de la question prescedent ';
			 yourself).
	^ (SaQuestionaire id: #UbuntuQuiz)
		  title: 'Quiz #3: Ubuntu';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSLinux >> vboxQuiz [
	| questions |
	questions := OrderedCollection new.
	questions
		add:
			((SaMultipleChoiceQuestion id: #VBoxQuizQ1)
				question: 'A quoi ça serve la virtualization?';
				beMultiple;
				choices:
					{'Maximizer l''utilization des resources computationelles'.
					'Minimizer le gaspillage d''electricité'.
					'Faciliter la modularization des systemes'};
				yourself).
	questions
		add:
			((SaMultipleChoiceQuestion id: #VBoxQuizQ2)
				question: 'Qu''est-ce qu''on trouve en common entre Linux et Virtualbox?';
				choices:
					{'Ils sont partie de la famille GNU' . 'Ils sont developpe que pour travailler avec les architectures  x86 et AMD64/Intel64'.
					'Apartiens a Oracle'};
				yourself).
	questions
		add:
			((SaOpenQuestion id: #VBoxQuizQ3)
				question:
					'Expliquez avec vos mot pour quoi est-ce que vous pensez que c''est important l''utilization de virtual box dans notre cours';
				yourself).
	^ (SaQuestionaire id: #VBoxQuiz)
		title: 'Quiz #4: Virtualization';
		questions: questions reverse;
		yourself
]

{ #category : #accessing }
RNROSLinux >> virtualBox [
	^ self
		markdown: 'virtualbox.md'
		title: 'Virtualization'
		id: #Virtualization
]

{ #category : #accessing }
RNROSLinux >> whatIsLinuxMC [

	^ (SaMultipleChoiceQuestion id: #WhatIsLinux)
	     title: 'Quiz #1: Linux';
		  question: 'Qu''est-ce que ce Linux? ';
		  choices:
			  { 'Système d''exploitation'. 'Le codename d''un projet DARPA'.
			  'Système de reseaux'. 'Système robotique' };
		  yourself
]
