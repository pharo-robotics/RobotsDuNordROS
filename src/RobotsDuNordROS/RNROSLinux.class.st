"
I explain linux
"
Class {
	#name : #RNROSLinux,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day1'
}

{ #category : #accessing }
RNROSLinux >> filesystem [ 
	^ super filesystem / #linux 
]

{ #category : #accessing }
RNROSLinux >> gettingOurEnvironmentRunning [
	^ SaLocalMediaContent new
		title: 'Setting the environment: Installing ROS';
		file: self filesystem / 'installingRos.mp4';
		url: 'http://rmod-files.lille.inria.fr/Teach/environment/installingRos.mp4';
		overview: self filesystem / 'gettingTheEnvironmentRunning.md';
		yourself
]

{ #category : #accessing }
RNROSLinux >> installUbuntu [
	^ SaLocalMediaContent new
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
			(SaMultipleChoiceQuestion new
				question:
					'Qu''est-ce que ce la difference entre GNU/Linux et Windows, MacOS, etc? ';
				choices:
					{'Système d''exploitation libre' . 'La couleur' . 'L''architecture du kernel'};
				yourself).
	questions
		add:
			(SaMultipleChoiceQuestion new
				beMultiple;
				question: 'Qu''est-ca veut dire "GPL"';
				choices:
					{'Licence publique générale' . 'GNU Not Unix' . 'License gratuite'};
				yourself).
	questions
		add:
			(SaOpenQuestion new
				question: 'Expliquez COPY-LEFT avec vos mots ';
				yourself).
	^ SaQuestionaire new
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
			(SaMultipleChoiceQuestion new
				question: 'Quelle version de ROS on a installé?';
				beMultiple;
				choices: {'Groovy' . 'Noetic' . 'Fuerte' . 'Hydro'};
				yourself).
	questions
		add:
			(SaMultipleChoiceQuestion new
				question: 'Comment s''appelle le fichier qu''on a modifié manualement?';
				choices: {'profile' . '.batch' . '.bashrc'};
				yourself).
	questions
		add:
			(SaMultipleChoiceQuestion new
				question: 'Comment s''appelle la commande utilisée pour installer ROS?';
				choices: {'apt-get' . 'sudo' . 'install'};
				yourself).
	questions
		add:
			(SaOpenQuestion new
				question:
					'Expliquez avec vos mot a quoi serve les premiere deux pas de la installation';
				yourself).
	questions
		add:
			(SaOpenQuestion new
				question:
					'Est-ce que vous avez des remarques a faire sur le video? (retour pour le professeur)';
				yourself).
	^ SaQuestionaire new
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
			(SaMultipleChoiceQuestion new
				question: 'Que type de disque dure on a choisi? ';
				beMultiple;
				choices:
					{'Dynamiquement alloué' . 'Statiquement alloué' . 'Allocation hybride'};
				yourself).
	questions
		add:
			(SaMultipleChoiceQuestion new
				question: 'Combien de memoire on a donné a la machine virtuelle?';
				choices:
					{'Un tout petit peu, sufficement pour demarrer'.
					'Jusqu''a la limite de partie verte de la ligne'.
					'La totalite de la memoire'};
				yourself).
	questions
		add:
			(SaOpenQuestion new
				question:
					'Pour quoi on a pas donné plus ou moins de memoire a la machine virtuelle? ';
				yourself).
	questions
		add:
			(SaOpenQuestion new
				question:
					'Pour quoi on a decidé de ne pas mettre a jour le systeme pendant l''instalation d''ubuntu?';
				yourself).
	questions
		add:
			(SaOpenQuestion new
				question:
					'Est-ce que vous avez des remarques a faire sur le video? (retour pour le professeur)';
				yourself).
	^ SaQuestionaire new
		title: 'Quiz #5: Installation ubuntu';
		questions: questions shuffle;
		yourself
]

{ #category : #accessing }
RNROSLinux >> someHistory [

	^ SaMarkdownContent new
		  title: 'History';
		  content: (self filesystem / 'history.md') readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLinux >> ubuntu [

	^ SaMarkdownContent new
		  title: 'Ubuntu';
		  content: (self filesystem / 'ubuntu.md') readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLinux >> ubuntuQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: (SaMultipleChoiceQuestion new
			 question:
				 'Pour quoi est-ce qu''on a decide utiliser Ubuntu?  ';
			 choices: { 'ROS est largement testé en Ubuntu '.
				 'On aime bien l''orange'.  'Ubuntu le meilleure linux'. };
			 yourself).
	questions add: (SaOpenQuestion new
			 question: 'Argumenter la reponse de la question prescedent ';
			 yourself).
	^ SaQuestionaire new
		  title: 'Quiz #3: Ubuntu';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSLinux >> vboxQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: (SaMultipleChoiceQuestion new
			 question: 'A quoi ça serve la virtualization?';
			 beMultiple;
			 choices:
				 { 'Maximizer l''utilization des resources computationelles'.
				 'Minimizer le gaspillage d''electricité'.
				 'Faciliter la modularization des systemes' };
			 yourself).
				questions add: (SaMultipleChoiceQuestion new
			 question: 'Qu''est-ce qu''on trouve en common entre Linux et Virtualbox?';
			 choices:
				 { 'Ils sont partie de la famille GNU'.
				 'Ils sont developpe que pour travailler avec les architectures  x86 et AMD64/Intel64'.
				 'Apartiens a Oracle' };
			 yourself).
	questions add: (SaOpenQuestion new
			 question: 'Expliquez avec vos mot pour quoi est-ce que vous pensez que c''est important l''utilization de virtual box dans notre cours';
			 yourself).
	^ SaQuestionaire new
		  title: 'Quiz #4: Virtualization';
		  questions: questions reverse;
		  yourself
]

{ #category : #accessing }
RNROSLinux >> virtualBox [

	^ SaMarkdownContent new
		  title: 'Virtualization';
		  content: (self filesystem / 'virtualbox.md') readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLinux >> whatIsLinuxMC [

	^ SaMultipleChoiceQuestion new
	     title: 'Quiz #1: Linux';
		  question: 'Qu''est-ce que ce Linux? ';
		  choices:
			  { 'Système d''exploitation'. 'Le codename d''un projet DARPA'.
			  'Système de reseaux'. 'Système robotique' };
		  yourself
]
