Class {
	#name : #RNROSNavigationTP,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day5'
}

{ #category : #'as yet unclassified' }
RNROSNavigationTP >> filesystem [
	^ super filesystem / #ROSNavigation
]

{ #category : #'as yet unclassified' }
RNROSNavigationTP >> lesson [

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
