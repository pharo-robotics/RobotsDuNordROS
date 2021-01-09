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

{ #category : #'as yet unclassified' }
RNROSEntryTest >> concepts [

	^ SaOpenQuestionList new
		  beOptional;
		  title: 'Concepts';
		  questions:
			  { 'Qu''est-ce que ce un program?'. 'Quels paradigme développement logiciel est-ce que vous connaissez?'.
			  'Quels paradigme vous avez utilisé? '.
			  'Qu''est-ce que vous comprenez par polymorphisme?'.
			  'Qu''est-ce que vous comprenez par héritage?'.
			  'Qu''est-ce que vous comprenez par déclarativité?'.
			  'Qu''est-ce que vous comprenez par Test Driven Development (TDD)?' };
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

{ #category : #'as yet unclassified' }
RNROSEntryTest >> explanation [

	^ SaMarkdownContent new
		  title: 'État de lieux';
		  content: self testExplanation;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> math [

	^ SaOpenQuestionList new
		  beOptional;
		  title: 'Math';
		  questions:
			  { 'Que sont les quaternions?'. 'Quelle est la notation de la représentation angulaire d''Euler?'.
			  'Comparez rapidement les coordonnées cartésiennes et polaires'.
			  'Expliquez rapidement l''idée de la transformation des coordonnées (ou de la transformation du système).'.
			  'Quelles sont les opérations matricielles et vectorielles que vous connaissez?' };
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> network [

	^ SaOpenQuestionList new
		  beOptional;
		  title: 'Réseaux.';
		  questions: { 'Comparez rapidement TCP / IP et UDP / IP'.
			  'Définissez rapidement le socket'.
			  'Comparez rapidement les descripteurs de socket et de fichier'.
			  'Définissez rapidement ce qu''est un flux'.
			  'Définissez rapidement ce que le marshalling / unmarshalling des données' };
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> operativeSystems [

	^ SaOpenQuestionList new
		  beOptional;
		  title: 'Systeme d''Explotation';
		  questions:
			  { 'Qu''est-ce qu''un processus?'. 'Qu''est-ce qu''un fil?'.
			  'Qu''est-ce que la planification des processus?'.
			  'Pouvez-vous nommer différentes stratégies de planification des processus?' };
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> programmingLanguages [

	^ SaOpenQuestionList new
		  beOptional;
		  title: 'Langage de programamtion ';
		  questions: { 'Qu''entendez-vous par programmation en direct'.
			  'Comparez rapidement le typage statique et dynamique'.
			  'Définissez rapidement ce qu''est un modèle en C ++'.
			  'Définissez rapidement ce qu''est un pointeur'.
			  'Quelles opérations pouvons-nous faire avec des pointeurs?'.
			  'Répertoriez rapidement les fonctionnalités de «programmation fonctionnelle» de Python.'.
			  'Répertoriez rapidement les fonctionnalités de programmation orientée objet de Python.'.
			  'Quel genre de langage est bash? À quoi sert-il?.' };
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> sourceVersionControl [

	^ SaOpenQuestionList new
		  beOptional;
		  title: 'Systeme de control des versions';
		  questions: { 'Que comprenez-vous par versioning?'.
			  'Expliquez rapidement le fonctionnement de GIT'.
			  'Expliquez rapidement comment GIT permet le travail en équipe'.
			  'Expliquez rapidement comment fonctionne SVN'.
			  'Expliquez rapidement comment SVN permet le travail en équipe'.
			  'Listez des autres systemes avec ceux que vous avez experience' };
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSEntryTest >> test [

	^ SaLesson new
		  title: 'Intro Test';
		  addUnit: self explanation;
		  addUnit: self demographicQuestions;
		  addUnit: self concepts;
		  addUnit: self operativeSystems;
		  addUnit: self programmingLanguages;
		  addUnit: self sourceVersionControl;
		  addUnit: self network;
		  addUnit: self math;
		  yourself
]

{ #category : #tests }
RNROSEntryTest >> testExplanation [
	^ self class comment
]
