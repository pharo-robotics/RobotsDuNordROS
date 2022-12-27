Class {
	#name : #RNROSLocalizationTP,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day4'
}

{ #category : #accessing }
RNROSLocalizationTP >> lesson [
	^ SaLesson new
		title: 'Localization TP';
		addUnit: self objectives;
		addUnit: self writeServiceCallInPython;
		addUnit: self writeInitialPosePublisher;
		addUnit: self writeAmclPoseSubscriber;
		addUnit: self summary;
		yourself
]
