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
		  addUnit: self networkTbt3Usage;
		  addUnit: self tbt3Bringup;
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
RNROSTurtlebot3 >> quiz [

	| questions |
	questions := OrderedCollection new.


	questions add: ((SaMultipleChoiceQuestion id: #TBTQ1)
			 beMultiple;
			 question:
				 'Le turtlebot et le nuc de mon equipe doive etre connecte a';
			 choices:
				 { 'un portable de mon equipe'. 'reseaux ISEN'. 'router amene par le prof' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #TBTQ2)
			 beMultiple;
			 question:
				 'On va commencer un experiment. On veut etre sur qu''on aurais pas des problemes:';
			 choices:
				 { 'On publie un valeur de test dans le topic command velocity'.
				 'On publie un valeur de test dans le topic test'.
				 'on execute ping depuis le nuc ver le turtlebot'.
				 'on assure que le nuc et le turtlebot sont conntecte dans le meme reseaux'.
				 'nous nous confions à dieu' };
			 yourself).

	questions add: ((SaMultipleChoiceQuestion id: #TBTQ3)
			 beMultiple;
			 question: 'On n''a pas fait la routine de bring-up';
			 choices:
				 { 'On peu ouvrir Rviz'. 'On peut lister des topics disponibles'.
				 'On peu commander au robot de se deplacer'.
				 'On peu mesurer la distance du robot aux obstacles'.
				 'On peu se connecter aux turtlebot' };
			 yourself).
	^ (SaQuestionaire id: #TBTQuiz)
		  title: 'Quiz #2: Unite ';
		  questions: questions shuffle;
		  yourself
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3Bringup [

	^ self markdown: 'bringup.md' title: 'Bring-up' id: #TBT3BringUp
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
RNROSTurtlebot3 >> tbt3Schematics [

	^ self
		  markdown: 'turtlebot3.md'
		  title: 'Turtlebot 3'
		  id: #TBT3Schematics
]

{ #category : #accessing }
RNROSTurtlebot3 >> tbt3SchematicsQuiz [

	| questions |
	questions := OrderedCollection new.
	questions add: ((SaMultipleChoiceQuestion id: #TBTSchemQuizQ1)
			 beMultiple;
			 question:
				 'Combien des cartes sont present dans la un turtlebot burger?';
			 choices: { '2'. '3'. '4'. '>4' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #TBTSchemQuizQ2)
			 beMultiple;
			 question: 'Combien des degrees sont capte pour le Lidar?';
			 choices: { '90'. '180'. '360'. '575' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #TBTSchemQuizQ3)
			 beMultiple;
			 question: 'Les composantes de base sont';
			 choices: { 'Raspberry Pi 3 Model B+'. 'Raspberry Pi 4 Model C--'.
				 'Châssis'. 'Moteurs'. 'Roues'. 'OpenCR'. 'SBC'. 'PC' };
			 yourself).
	questions add: ((SaMultipleChoiceQuestion id: #TBTSchemQuizQ4)
			 beMultiple;
			 question: 'Turtlebot3 burger est une plateforme à deux roues à';
			 choices:
				 { 'Entraînement différentiel'. 'Segway'. 'Tank'. 'Trailer'.
				 'Bike'. 'Omnidirectionnel' };
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
