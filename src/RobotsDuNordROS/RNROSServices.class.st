Class {
	#name : #RNROSServices,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #accessing }
RNROSServices >> filesystem [
	^ super filesystem / #ROSServices
]

{ #category : #accessing }
RNROSServices >> lesson [

	^ SaLesson new
		  title: 'Services';
		  addUnit: self objectives;
		  addUnit: self whatIsAService;
		  addUnit: self servicesInRos;
		  addUnit: self serviceQuiz;
		  addUnit: self turtleSimServiceExperiment;
		  addUnit: self turtleSimServiceExperimentQuiz;
		  addUnit: self turtleSimServiceClient;
		  addUnit: self turtleSimServiceServer;
		  addUnit: self turtleSimServiceExecution;
		  addUnit: self quiz;
		  addUnit: self summary;
		  yourself
]

{ #category : #accessing }
RNROSServices >> quiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaOpenQuestion id: #ServicesCodeQ1)
			 question:
				 'Comparez brefment la difference entre synchrone et asynchrone depuis le point de vu du code';
			 yourself).
	questions add: ((SaOpenQuestion id: #ServicesCodeQ2)
			 question:
				 'Comparez la difference d''execution entre le publisher et le subscriber de nos exemple precedentes et ce la du services ';
			 yourself).

	questions add: ((SaOpenQuestion id: #ServicesCodeQ3)
			 question:
				 'Qu''est-ce que ce la ligne du code serveur que garde l''information a retourner au client?';
			 yourself).



	^ (SaQuestionaire id: #ServiceCodingQuiz)
		  title: 'Quiz #4: Services et Python';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSServices >> serviceQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #ServicesQ1)
			 beMultiple;
			 question: 'Un service est un moyen de communication';
			 choices: { 'unidirectionel'. 'bidirectionel'. 'omnidirectionel'.
				 'n''est pas un moyen de communication' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #ServicesQ2)
			 beSingle;
			 question: 'Un service est un moyen de communication';
			 choices: { 'synchrone'. 'asynchrone' };
			 yourself).
	questions add: ((SaOpenQuestion id: #ServicesQ3)
			 question:
				 'Comparez brefment la difference entre synchrone et asynchrone';
			 yourself).

	^ (SaQuestionaire id: #ServiceQuiz)
		  title: 'Quiz #2: Services';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSServices >> servicesInRos [

	^ self markdown: 'services.md' title: 'Services' id: #ServicesROS
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceClient [

	^ self markdown: 'service.client.md' title: 'Python Service Client' id: #ServicePSCROS
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceExecution [

	^ self markdown: 'service.exe.md' title: 'Python Service Execution' id: #ServicePSEROS
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceExperiment [

	^ (SaROSLaunchExperiment id: #TurtleSimServiceExperiment)
		  description:
			  (self filesystem / 'service.experiment.md') readStream upToEnd;
		  title: 'TurtleSim Services';
		  command: (' roslaunch {1} ' format:
					   { (self filesystem / 'turtlesim.launch') fullName });
		  yourself
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceExperimentQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #ServicesExperimentQ1)
			 beMultiple;
			 question: 'rosservice type';
			 choices: { 'retour le nom de type utilise par le service'.
				 'retour la definition du type utilise par le service'.
				 'retour le type du node qui fournis le service' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #ServicesExperimentQ2)
			 beMultiple;
			 question: 'rosservice call /spawn ...';
			 choices: { 'Ajoute une nouvelle tortue dans le simulateur'.
				 'Ajoute N nouvelle tortues dans le simulateur'.
				 'Demarre un deuxieme simulateur qui partage l''ecran avec ce la deja ouvert' };
			 yourself).

	questions add: ((SaMultipleChoiceQuestion id: #ServicesExperimentQ2)
			 beMultiple;
			 question: 'rosservice call /clear';
			 choices: { 'Enleve toutes les tortues du simulateur'.
				 'Nettoye tout les lignes dessinées prescedement'.
				 'Redemarre le simulateur' };
			 yourself).


	^ (SaQuestionaire id: #ServicesExperimentQuiz)
		  title: 'Quiz #3: Service Experiment';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceServer [

	^ self markdown: 'service.server.md' title: 'Python Service Server' id: #ServicePSSROS
]

{ #category : #accessing }
RNROSServices >> whatIsAService [

	^ (SaMultipleChoiceQuestion id: #WhatIsService)
		  title: 'Quiz #1: ROS Service';
		  question: 'Qu''est-ce que ce un service?';
		  beMultiple;
		  choices:
			  { 'Une activité d''intérêt robotique, assurée par un node'.
			  'Canal de communication'. 'Un sujet de conversation'.
			  'Un requete d''action immediate' };
		  yourself
]
