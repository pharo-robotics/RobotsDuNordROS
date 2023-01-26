Class {
	#name : #RNROSLocalizationTP,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day4'
}

{ #category : #accessing }
RNROSLocalizationTP >> filesystem [
	^ super filesystem / #ROSLocalizationTP
]

{ #category : #accessing }
RNROSLocalizationTP >> lesson [
	^ SaLesson new
		title: 'Localization TP';
		addUnit: self objectives;
		addUnit: self writeInitialPosePublisher;
		addUnit: self writeAmclPoseSubscriber;
		addUnit: self writeServiceCallInPython;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSLocalizationTP >> writeAmclPoseSubscriber [

	^ self markdown: 'amcl.pose.md' title: 'AMCL pose' id: #ROSNavigationServicePosePublish
]

{ #category : #accessing }
RNROSLocalizationTP >> writeInitialPosePublisher [

	^ self markdown: 'initial.pose.md' title: 'Calling Services: initial pose command' id: #ROSNavigationServiceCall
]

{ #category : #accessing }
RNROSLocalizationTP >> writeServiceCallInPython [

	^ self markdown: 'service.call.md' title: 'Reset localization by service calling' id: #ROSNavigationServiceCall
]
