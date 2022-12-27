Class {
	#name : #RNROSTurtlebot3,
	#superclass : #RNROSLesson,
	#category : #'RobotsDuNordROS-Day2'
}

{ #category : #accessing }
RNROSTurtlebot3 >> filesystem [

	^ super filesystem / #ROSTurtlebot3
]

{ #category : #accessing }
RNROSTurtlebot3 >> lesson [

	^ SaLesson new
		  title: 'Turtlebot 3';
		  addUnit: self objectives;
		  addUnit: self tbt3Schematics;
		  addUnit: self tbt3SchematicsQuiz;
		  addUnit: self tbt3Installation;
		  addUnit: self tbt3InstallationQuiz;
		  addUnit: self networkTbt3Usage;
		  addUnit: self networkTbt3UsageQuiz;
		  addUnit: self tbt3Troubleshooting;
		  addUnit: self tbt3TroubleshootingQuiz;
		  addUnit: self tbt3Bringup;
		  addUnit: self tbt3BringupQuiz;
		  addUnit: self tbt3CommandVelocity;
		  addUnit: self quiz;
		  addUnit: self summary;
		  yourself
]
