Class {
	#name : #RNROSActions,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day4'
}

{ #category : #accessing }
RNROSActions >> actionsInRos [

	^ self markdown: 'actions.md' title: 'Actions' id: #ActionsROS
]

{ #category : #accessing }
RNROSActions >> actionsQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #ActionsQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #ActionsQuiz)
		  title: 'Quiz #1: Services';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSActions >> actionsTutorial [

	^ self markdown: 'tutorial.md' title: 'Tutorial' id: #TutorialActionsROS
]

{ #category : #accessing }
RNROSActions >> filesystem [
	^ super filesystem / #ROSActions
]

{ #category : #accessing }
RNROSActions >> lesson [
	^ SaLesson new
		title: 'Actions';
		addUnit: self objectives;
		addUnit: self whatIsAnAction;
		addUnit: self actionsInRos;
		addUnit: self actionsQuiz;
		addUnit: self actionsTutorial;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSActions >> whatIsAnAction [
^ (SaMultipleChoiceQuestion id: #whatIsAnAction)
		  title: 'Quiz #1: ROS Actions';
		  question: 'Qu''est-ce que ce une action en ROS?';
		  beMultiple;
		  choices:
			  { 'Une commande pour l''execution d''une routine robotique?'.
			  'Une form d''investissement'. 'Un requete de resolution immediate'};
		  yourself
]
