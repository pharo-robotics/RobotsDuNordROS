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
		addUnit: self whatIsBash;
		addUnit: self bashHistory;
		addUnit: self bashQuiz;
		addUnit: self bashTutorial;
		addUnit: self bashExercises;
		addUnit: self summary;
		yourself
]
