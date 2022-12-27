Class {
	#name : #RNROSTurtlebot3,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #accessing }
RNROSTurtlebot3 >> filesystem [

	^ super filesystem / #ROSTurtlebot3
]

{ #category : #accessing }
RNROSTurtlebot3 >> lesson [

	^ SaLesson new
		  title: 'Turtlebot 3';
		  addUnit: self objectives;
			addUnit: self whatIsTbt3;
		  addUnit: self tbt3Schematics;
		  addUnit: self tbt3SchematicsQuiz;
		  addUnit: self tbt3Installation;
		  addUnit: self tbt3InstallationQuiz;
		  addUnit: self networkTbt3Usage;
		  addUnit: self networkTbt3UsageQuiz;
		  addUnit: self tbt3Bringup;
		  addUnit: self tbt3BringupQuiz;
		  addUnit: self tbt3CommandVelocity;
		  addUnit: self quiz;
		  addUnit: self summary;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> networkTbt3Usage [
	^ self
		  markdown: 'network.md'
		  title: 'Reseaux'
		  id: #TBT3Network
]

{ #category : #accessing }
RNROSTurtlebot3 >> networkTbt3UsageQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TBTNetQuizQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #TBTNetQuiz)
		  title: 'Quiz #1: Reseaux ';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> quiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TBTQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #TBTQuiz)
		  title: 'Quiz #1: Turtlebot 3 ';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3Bringup [

	^ self markdown: 'bringup.md' title: 'Bring-up' id: #TBT3BringUp
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3BringupQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TBTBupQuizQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #TBTBupQuiz)
		  title: 'Quiz #1: Bring-up ';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3CommandVelocity [

	^ self
		  markdown: 'command-velocity.md'
		  title: 'Command Velocity'
		  id: #TBT3CmdVel
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3Installation [

	^ self
		  markdown: 'installation.md'
		  title: 'Installation'
		  id: #TBT3Instalation
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3InstallationQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TBTInstallQuizQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #TBTInstallQuiz)
		  title: 'Quiz #1: Turtlebot 3 ';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3Schematics [

	^ self
		  markdown: 'turtlebot3.md'
		  title: 'Turtlebot 3'
		  id: #TBT3Schematics
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3SchematicsQuiz [

	| questions |
	self flag: #todo.
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TBTSchemQuizQ1)
			 beMultiple;
			 question:
				 'Combien des processus sont visibles pendant le processus de SLAM';
			 choices: { '2'. '5'. '>5' };
			 yourself).

	^ (SaQuestionaire id: #TBTSchemQuiz)
		  title: 'Quiz #1: Turtlebot 3 ';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> whatIsTbt3 [
	^ (SaMultipleChoiceQuestion id: #WhatIsTurtlebot)
		title: 'Quiz #1: Turtlebot 3 burger';
		question: 'Qu''est-ce que ce un turtlebot 3 burger?';
		beMultiple;
		choices:
			{'Un menu macdo' . 'Un robot à entraînement différentiel' . 'Robot omnidirectionnel' . 'Robot biped'};
		yourself
]
