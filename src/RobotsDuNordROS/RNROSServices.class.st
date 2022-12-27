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
		addUnit: self turtleSimServiceClear;
		addUnit: self turtleSimServiceSetPen;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSServices >> serviceQuiz [

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

{ #category : #accessing }
RNROSServices >> servicesInRos [

	^ self markdown: 'services.md' title: 'Services' id: #ServicesROS
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceClear [

	^ self markdown: 'service.clear.md' title: 'Clear' id: #ServiceClearROS
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceExperiment [

	^ self markdown: 'service.experiment.md' title: 'Experiment' id: #ServicesExpROS
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceExperimentQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #ServicesExpQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #ServiceExpQuiz)
		  title: 'Quiz #1: Service Experiment';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSServices >> turtleSimServiceSetPen [

	^ self markdown: 'service.setpen.md' title: 'Clear' id: #ServiceSetpenROS
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
