Class {
	#name : #RNROSServices,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #accessing }
RNROSServices >> lesson [
	^ SaLesson new
		title: 'Topics';
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
