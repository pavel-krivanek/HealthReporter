testing
testOn

	| environment reporter |
	
	environment := self defaultEnvironment.
	
	reporter := HealthReporter on: environment.
	
	self assert: reporter environment equals: environment.