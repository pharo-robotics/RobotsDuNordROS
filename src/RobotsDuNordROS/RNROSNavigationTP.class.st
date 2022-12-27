Class {
	#name : #RNROSNavigationTP,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day5'
}

{ #category : #'as yet unclassified' }
RNROSNavigationTP >> filesystem [
	^ super filesystem / #ROSNavigationTP
]

{ #category : #'as yet unclassified' }
RNROSNavigationTP >> lesson [

	^ SaLesson new
		  title: 'Navigation TP';
		  addUnit: self objectives;
		  addUnit: self navigateToSpecificPoint;
		  addUnit: self patrolArea;
		  addUnit: self summary;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSNavigationTP >> navigateToSpecificPoint [
	^ self markdown: 'navigate.point.md' title: 'Navigate to specific point' id: #ROSNavigationPoint
]

{ #category : #'as yet unclassified' }
RNROSNavigationTP >> patrolArea [

	^ self
		  markdown: 'patrol.md'
		  title: 'Patrol area'
		  id: #ROSNavigationPatrol
]
