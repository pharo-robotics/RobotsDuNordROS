Class {
	#name : #RNROSTopics,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSTopics >> filesystem [

	^ super filesystem / #ROSTopics
]

{ #category : #accessing }
RNROSTopics >> lesson [
	^ SaLesson new
		title: 'Nodes';
		addUnit: self objectives;
		addUnit: self whatIsATopic;
		addUnit: self topicsInRos;
		addUnit: self topicQuiz;
		addUnit: self turtleSimTopicExperiment;
		addUnit: self turtleSimTopicExperimentQuiz;
		addUnit: self turtleSimManualTopicExperiment;
		addUnit: self nodesCommandsQuiz;
		addUnit: self summary;
		yourself
]
