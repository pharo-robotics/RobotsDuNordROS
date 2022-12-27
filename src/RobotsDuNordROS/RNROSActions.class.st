Class {
	#name : #RNROSActions,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day4'
}

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
