"
Ce test est un test 'État de lieu'. 
Ne commence pas cet test sans avoir lu tout ce texte. C'est tres important pour vous sauver du temps.
Il faut sûr tout pas se stresser. Le bout de cet examen est tout simplement comprendre le niveau de base avec le quelle on vas travailler.
Ce test en les parties suivantes:
- Information demographique (relation des experiences prescedentes) 
- Concepts genereaux du development logiciel
- Concepts genereaux des systemes d'exploitation
- Concepts genereaux des langages de development. 
- Concepts genereaux des Version control system. 
- Concepts genereaux des Reseaux. 
- Concepts genereaux des Mathematique de base.
Une fois que vous avez finis l'examen il vas vous apparaitre un bouton """"Export Content!"""". Ce button va faire l'export des votres reponses.
Il faudrait apres les envoyer par courriel a votre professeur. 
Ne ferme pas la fenetre du capsule d'avant vous assurer de avoir bien envoyé le fichier. 
Vous risquez de perdre vos reponses.

"
Class {
	#name : #RNROSEntryTest,
	#superclass : #Object,
	#category : #'RobotsDuNordROS-Day1'
}

{ #category : #tests }
RNROSEntryTest >> concepts [
	^ SaOpenQuestionList new
		beOptional;
		title: 'Concepts';
		questions:
			{(#CQ1 -> 'Qu''est-ce que ce un program?').
			(#CQ2
				-> 'Quels paradigme développement logiciel est-ce que vous connaissez?').
			(#CQ3 -> 'Quels paradigme vous avez utilisé? ').
			(#CQ4 -> 'Qu''est-ce que vous comprenez par polymorphisme?').
			(#CQ5 -> 'Qu''est-ce que vous comprenez par héritage?').
			(#CQ6 -> 'Qu''est-ce que vous comprenez par déclarativité?').
			(#CQ7
				-> 'Qu''est-ce que vous comprenez par Test Driven Development (TDD)?')};
		yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> demographicQuestions [

	^ SaSatisfactionQuestionTable new
		  beOptional;
		  title: 'Questions generaux';
		  possibleResponses:
			  #( 'Quoi?' 'Non' '1 Mois' ' 1 An' ' Plus d''un an' );
		  questions:
			  { 'avez vous utilisé ROS?'. 'avez vous utilisé Linux?'.
			  'avez vous utilisé Ubuntu?'. 'avez vous utilisé Bash?'.
			  'avez vous utilisé C?'. 'avez vous utilisé C++?'.
			  'avez vous utilisé Python?'. 'avez vous utilisé Makefile/CMake?'.
			  'avez vous utilisé Git?'. 'avez vous utilisé ROS?'.
			  'avez vous experience en travaille en equipe? ' };
		  yourself
]

{ #category : #tests }
RNROSEntryTest >> explanation [
	^ (SaMarkdownContent id: #EtatDeLieu)
		title: 'État de lieux';
		content: self testExplanation;
		yourself
]

{ #category : #tests }
RNROSEntryTest >> math [
	^ SaOpenQuestionList new
		beOptional;
		title: 'Math';
		questions:
			{(#MQ1 -> 'Que sont les quaternions?').
			(#MQ2
				-> 'Quelle est la notation de la représentation angulaire d''Euler?').
			(#MQ3
				-> 'Comparez rapidement les coordonnées cartésiennes et polaires').
			(#MQ4
				->
					'Expliquez rapidement l''idée de la transformation des coordonnées (ou de la transformation du système).').
			(#MQ5
				->
					'Quelles sont les opérations matricielles et vectorielles que vous connaissez?')};
		yourself
]

{ #category : #tests }
RNROSEntryTest >> network [
	^ SaOpenQuestionList new
		beOptional;
		title: 'Réseaux.';
		questions:
			{(#RQ1 -> 'Comparez rapidement TCP / IP et UDP / IP').
			(#RQ2 -> 'Définissez rapidement le socket').
			(#RQ3
				-> 'Comparez rapidement les descripteurs de socket et de fichier').
			(#RQ4 -> 'Définissez rapidement ce qu''est un flux').
			(#RQ5
				->
					'Définissez rapidement ce que le marshalling / unmarshalling des données')};
		yourself
]

{ #category : #tests }
RNROSEntryTest >> operativeSystems [
	^ SaOpenQuestionList new
		beOptional;
		title: 'Systeme d''Explotation';
		questions:
			{(#SOQ1 -> 'Qu''est-ce qu''un processus?').
			(#SOQ2 -> 'Qu''est-ce qu''un fil?').
			(#SOQ3 -> 'Qu''est-ce que la planification des processus?').
			(#SOQ4
				->
					'Pouvez-vous nommer différentes stratégies de planification des processus?')};
		yourself
]

{ #category : #tests }
RNROSEntryTest >> programmingLanguages [
	^ SaOpenQuestionList new
		beOptional;
		title: 'Langage de programamtion ';
		questions:
			{(#PQ1 -> 'Qu''entendez-vous par programmation en direct').
			(#PQ2 -> 'Comparez rapidement le typage statique et dynamique').
			(#PQ3 -> 'Définissez rapidement ce qu''est un modèle en C ++').
			(#PQ4 -> 'Définissez rapidement ce qu''est un pointeur').
			(#PQ5
				-> 'Quelles opérations pouvons-nous faire avec des pointeurs?').
			(#PQ6
				->
					'Répertoriez rapidement les fonctionnalités de «programmation fonctionnelle» de Python.').
			(#PQ7
				->
					'Répertoriez rapidement les fonctionnalités de programmation orientée objet de Python.').
			(#PQ8 -> 'Quel genre de langage est bash? À quoi sert-il?.')};
		yourself
]

{ #category : #tests }
RNROSEntryTest >> sourceVersionControl [
	^ SaOpenQuestionList new
		beOptional;
		title: 'Systeme de control des versions';
		questions:
			{(#GQ1 -> 'Que comprenez-vous par versioning?').
			(#GQ2 -> 'Expliquez rapidement le fonctionnement de GIT').
			(#GQ3
				-> 'Expliquez rapidement comment GIT permet le travail en équipe').
			(#GQ4 -> 'Expliquez rapidement comment fonctionne SVN').
			(#GQ5
				-> 'Expliquez rapidement comment SVN permet le travail en équipe').
			(#GQ6
				-> 'Listez des autres systemes avec ceux que vous avez experience')};
		yourself
]

{ #category : #tests }
RNROSEntryTest >> test [
	^ SaLesson new
		title: 'Intro Test';
		addUnit: self explanation id: #Explanation;
		addUnit: self demographicQuestions id: #Demographic;
		addUnit: self concepts id: #Concepts;
		addUnit: self operativeSystems id: #OperativeSystems;
		addUnit: self programmingLanguages id: #ProgrammingLanguages;
		addUnit: self sourceVersionControl id: #SourceVErsionControl;
		addUnit: self network id: #Network;
		addUnit: self math id: #Math;
		yourself
]

{ #category : #tests }
RNROSEntryTest >> testExplanation [
	^ self class comment
]
