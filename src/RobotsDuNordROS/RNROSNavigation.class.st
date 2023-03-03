Class {
	#name : #RNROSNavigation,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day4'
}

{ #category : #'as yet unclassified' }
RNROSNavigation >> filesystem [
	^ super filesystem / #ROSNavigation
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> lesson [

	^ SaLesson new
		  title: 'Navigation';
		  addUnit: self objectives;
		  addUnit: self whatIsNavigation;
		  addUnit: self navigation;
		  addUnit: self whatIsNavigationTruly;
		  addUnit: self planning;
		  addUnit: self planningQuiz;
		  addUnit: self navigationExperiment;
		  addUnit: self navigationExperimentQuiz;
		  addUnit: self summary;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> navigation [

	^ self
		  markdown: 'navigation.md'
		  title: 'Navigation'
		  id: #Navigation
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> navigationExperiment [

	^ self
		  markdown: 'navigation.experiment.md'
		  title: 'Navigation Experiment'
		  id: #NavigationExperiment
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> navigationExperimentQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaOpenQuestion id: #NavExperimentQ1)
			 question:
				 'Compare brefment la difference entre la reaction entre la visualisation du local et global planning.';
			 yourself).
	questions add: ((SaOpenQuestion id: #NavExperimentQ45)
			 question:
				 'Analisez brefment la relation entre le pathplanning, le costmap et le robot.';
			 yourself).

	^ (SaQuestionaire id: #NavExperimentQuiz2523)
		  title: 'Quiz #3: Navigation Experiments';
		  questions: questions shuffle;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> navigationProgramExperiment [

	^ self
		  markdown: 'navigation.program.md'
		  title: 'Navigation Programming Experiment'
		  id: #NavigationProgram
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> planning [

	^ self
		  markdown: 'planning.md'
		  title: 'Path Planning'
		  id: #PathPlanning
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> planningQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaOpenQuestion id: #NavPlanningQ1)
			 question: 'Qu''est-ce que ce le path planning?';
			 yourself).
			
	questions add: ((SaOpenQuestion id: #NavPlanningQ2)
			 question: 'Pour quoi on divise le problemme en local et global planning?';
			 yourself).

	^ (SaQuestionaire id: #NavGlobalPlanningQuiz)
		  title: 'Quiz #1: Services';
		  questions: questions shuffle;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> whatIsNavigation [
^ (SaMultipleChoiceQuestion id: #whatIsNavigation)
		  title: 'Quiz #1: ROS Navigation';
		  question: 'Qu''est-ce que ce la navigation en ROS?';
		  beMultiple;
		  choices:
			  { 'La capacite d''un agent robotique de se deplacer dans l''espace'.
			  'Se déplacer sur l''eau'. 'Action de passer d''une information à une autre dans un document hypertexte ou hypermédia'};
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> whatIsNavigationTruly [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #NavComposants)
			 beMultiple;
			 question:
				 'De quoi avons-nous besoin pour implémenter la navigation dans les robots depend de:';
			 choices:
				 { 'Algorithm'. 'Capteurs disponibles'. 'Le type de mouvement du robot'.
				 'Du qualite du reseaux disponible' };
			 yourself).

	questions add: ((SaMultipleChoiceQuestion id: #NavComposantsQuel)
			 beMultiple;
			 question:
				 'De quoi avons-nous besoin pour implémenter la navigation dans les robots pluspars du temps?';
			 choices:
				 { 'Carte'. 'Pose du Robot'. 'Lidar'. 'Detection'. 'Calcul du chemins et conduite'.
				 'Sonar' };
			 yourself).

	questions add: ((SaOpenQuestion id: #NavComposantsPose)
			 question:
				 'Pour quoi ce''est necessaire avoir une bonne pose en temps reel? ';
			 yourself).


	questions add: ((SaMultipleChoiceQuestion id: #NavComposantsSlam)
			 beMultiple;
			 question:
				 'La carte peut etre construit exclusivement pour un algorithm SLAM.';
			 choices: { 'Vrai'. 'Faux' };
			 yourself).

	questions add: ((SaOpenQuestion id: #NavComposantsDetect)
			 question: 'Pour quoi on doit avoir des cartes mis a jour? ';
			 yourself).

	^ (SaQuestionaire id: #NavigationQuestionaire)
		  title: 'Quiz #2: Navigation';
		  questions: questions shuffle;
		  yourself
]
