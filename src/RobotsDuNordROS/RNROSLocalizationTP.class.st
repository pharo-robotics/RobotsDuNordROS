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
		addUnit: self writeServiceCallInPython;
		addUnit: self writeInitialPosePublisher;
		addUnit: self writeAmclPoseSubscriber;
		addUnit: self summary;
		yourself
]

{ #category : #accessing }
RNROSLocalizationTP >> writeAmclPoseSubscriber [

	^ self markdown: 'service.call.md' title: 'Calling Services' id: #ROSNavigationServicePosePublish
]

{ #category : #accessing }
RNROSLocalizationTP >> writeInitialPosePublisher [

	^ self markdown: 'service.call.md' title: 'Calling Services' id: #ROSNavigationServiceCall
]

{ #category : #accessing }
RNROSLocalizationTP >> writeServiceCallInPython [

	^ self markdown: 'service.call.md' title: 'Calling Services' id: #ROSNavigationService
]
