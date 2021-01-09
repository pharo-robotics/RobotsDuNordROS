Class {
	#name : #RNROSIntroduction,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #accessing }
RNROSIntroduction >> filesystem [

	^ super filesystem / #ROSIntroduction
]

{ #category : #accessing }
RNROSIntroduction >> lesson [
	^ SaLesson new
		title: 'Introduction';
		addUnit: self objectives;
		addUnit: self whatIsROS;
		addUnit: self rosHistory;
		addUnit: self rosQuiz;
		addUnit: self turtleSim;
		addUnit: self turtleSimQuiz;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSIntroduction >> rosHistory [
	^ self markdown: 'ros-introduction.md' title: 'ROS'. 
]

{ #category : #accessing }
RNROSIntroduction >> rosQuiz [
]

{ #category : #accessing }
RNROSIntroduction >> whatIsROS [
		^ SaMultipleChoiceQuestion new
		title: 'Quiz #1: ROS';
		question: 'Qu''est-ce que ce ROS?';
		beMultiple;
		choices:
			{
		
			'Un type de robot' .
			'Une communaute Open Source' .
			'Un framework pour developer des application robotiques' . 
			'Un systeme d''exploitation'  .
			'Une interface graphique pour interagir avec'.
			'Un language scripting'};
		yourself
]
