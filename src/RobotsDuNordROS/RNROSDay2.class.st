Class {
	#name : #RNROSDay2,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSDay2 >> course [

	^ SaCourse new
		  title: 'ROS: Elemental Concepts';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self introduction;
		  addLesson: self nodes;
		  addLesson: self topics;
		  yourself
]

{ #category : #'as yet unclassified' }
RNROSDay2 >> introduction [

	^ RNROSIntroduction new lesson
]

{ #category : #accessing }
RNROSDay2 >> nodes [

	^ RNROSNodes new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay2 >> topics [
	^ RNROSTopics new lesson
]
