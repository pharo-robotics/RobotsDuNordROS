"
I create a lesson. All lesson has objectives and summary.
"
Class {
	#name : #RNROSLesson,
	#superclass : #Object,
	#category : #'RobotsDuNordROS-Courses'
}

{ #category : #'as yet unclassified' }
RNROSLesson >> filesystem [

	^ 'pharo-local/iceberg/sbragagnolo/sagan/contents' asFileReference
]

{ #category : #accessing }
RNROSLesson >> lesson [ 
	self subclassResponsibility 
]

{ #category : #accessing }
RNROSLesson >> objectives [

	^ SaMarkdownContent new
		  title: 'Objectives';
		  content: (self filesystem / 'objectives.md') readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLesson >> summary [
	^ SaLessonSummary new
		title: 'Summary';
		content: (self filesystem / 'summary.md') readStream upToEnd;
		yourself
]