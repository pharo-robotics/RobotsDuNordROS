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

	^ SystemResolver defaultLocalDirectoryName asFileReference / #iceberg
	  / #'pharo-robotics' / #RobotsDuNordROS / #contents
]

{ #category : #accessing }
RNROSLesson >> lesson [ 
	self subclassResponsibility 
]

{ #category : #accessing }
RNROSLesson >> markdown: aFileName title: aTitle [

	^ SaMarkdownContent new
		  title: aTitle;
		  content: (self filesystem / aFileName) readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLesson >> markdown: aFileName title: aTitle id: anId [ 

	^ (SaMarkdownContent id: anId)
		  title: aTitle;
		  content: (self filesystem / aFileName) readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLesson >> objectives [

	^ (SaMarkdownContent id:#___Objectives)
		  title: 'Objectives';
		  content: (self filesystem / 'objectives.md') readStream upToEnd;
		  yourself
]

{ #category : #accessing }
RNROSLesson >> summary [
	^ (SaLessonSummary id: #__Summary)
		title: 'Summary';
		content: (self filesystem / 'summary.md') readStream upToEnd;
		yourself
]
