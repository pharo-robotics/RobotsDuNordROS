Class {
	#name : #RNROSDay4,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day4'
}

{ #category : #'as yet unclassified' }
RNROSDay4 >> actionsLesson [
	^ RNROSActions new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay4 >> course [

	^ SaCourse new
		  title: 'ROS: Navigation & Actions';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self localizationTpLesson id: #LocalizationTP;
		  addLesson: self actionsLesson id: #Actions;
		  addLesson: self navigationLesson id: #Navigation;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSDay4 >> localizationTpLesson [

	^ RNROSLocalizationTP new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay4 >> navigationLesson [

	^ RNROSNavigation new lesson
]
