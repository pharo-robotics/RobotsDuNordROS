Class {
	#name : #RNROSExplorationTP,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day6'
}

{ #category : #'as yet unclassified' }
RNROSExplorationTP >> exploration [

	^ self
		  markdown: 'exploration.md'
		  title: 'Explore area'
		  id: #ROSExplorationTPExplore
]

{ #category : #'as yet unclassified' }
RNROSExplorationTP >> filesystem [
	^ super filesystem / #ROSExplorationTP
]

{ #category : #'as yet unclassified' }
RNROSExplorationTP >> lesson [

	^ SaLesson new
		  title: 'Navigation TP';
		  addUnit: self objectives;
		  addUnit: self exploration;
		  addUnit: self summary;
		  yourself
]
