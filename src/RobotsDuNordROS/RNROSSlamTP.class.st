Class {
	#name : #RNROSSlamTP,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day3'
}

{ #category : #accessing }
RNROSSlamTP >> filesystem [
	^ super filesystem / #ROSSlamTP
]

{ #category : #accessing }
RNROSSlamTP >> lesson [

	^ SaLesson new
		  title: 'SLAM TP';
		  addUnit: self objectives;
		  addUnit: self slamTp;
		  addUnit: self summary;
		  yourself
]

{ #category : #accessing }
RNROSSlamTP >> slamTp [
	
	^ self markdown: 'slam.tp.md' title: 'Slam TP' id: #SlamTP 

]
