Class {
	#name : #RNROSDay2,
	#superclass : #RNROSCourse,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #'as yet unclassified' }
RNROSDay2 >> actionsLesson [
	^ RNROSActions new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay2 >> course [

	^ SaCourse new
		  title: 'ROS: Elemental Concepts';
		  courseFolder: #RosElementalConcepts;
		  addLesson: self objectives;
		  addLesson: self introduction;
		  addLesson: self nodes;
		  addLesson: self topics;
		  addLesson: self summary;
		  yourself
]

{ #category : #accessing }
RNROSDay2 >> nodes [

	^ RNROSNodes new lesson
]

{ #category : #'as yet unclassified' }
RNROSDay2 >> topics [
	^ RNROSTopics new lesson
]
