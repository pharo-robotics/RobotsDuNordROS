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
RNROSNavigation >> globalPathPlanning [

	^ self
		  markdown: 'global.planning.md'
		  title: 'Global Planning'
		  id: #GlobalPlanning
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> globalPathPlanningQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #NavGlobalPlanningQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #NavGlobalPlanningQuiz)
		  title: 'Quiz #1: Services';
		  questions: questions shuffle;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> lesson [

	^ SaLesson new
		  title: 'Navigation';
		  addUnit: self objectives;
		  addUnit: self whatIsNavigation;
		  addUnit: self localPathPlanning;
		  addUnit: self localPathPlanningQuiz;
		  addUnit: self globalPathPlanning;
		  addUnit: self globalPathPlanningQuiz;
		  addUnit: self navigationExperiment;
		  addUnit: self navigationExperimentQuiz;
			addUnit: self navigationProgramExperiment;
		  addUnit: self quiz;
		  addUnit: self summary;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> localPathPlanning [

	^ self
		  markdown: 'local.planning.md'
		  title: 'Local Planning'
		  id: #LocalPlanning
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> localPathPlanningQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #NavLocalPlanningQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #NavLocalPlanningQuiz)
		  title: 'Quiz #1: Services';
		  questions: questions shuffle;
		  yourself
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
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #NavExperimentQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #NavExperimentQuiz)
		  title: 'Quiz #1: Services';
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
RNROSNavigation >> quiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #NavQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #NavQuiz)
		  title: 'Quiz #1: Services';
		  questions: questions shuffle;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigation >> serviceQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #ServicesQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #ServiceQuiz)
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
