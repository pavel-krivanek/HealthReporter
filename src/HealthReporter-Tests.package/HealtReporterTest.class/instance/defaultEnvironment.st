utility
defaultEnvironment

	"creates a default clen environment with basic classes"

	| environment protoObject object class classDescription behavior metaclass package | 
	
	environment := RG2Environment new.
	
	protoObject := environment ensureClassNamed: 'ProtoObject'.
	object := environment ensureClassNamed: 'Object'.
	class := environment ensureClassNamed: 'Class'.
	classDescription := environment ensureClassNamed: 'ClassDescription'.
	behavior := environment ensureClassNamed: 'Behavior'.
	metaclass := environment ensureClassNamed: 'Metaclass'.
	
	package := environment ensurePackageNamed: 'Kernel'.
	
	{ protoObject. object. class. classDescription. behavior. metaclass } do: [ :aClass |
		aClass package: package.
		environment ensureClassNamed: (aClass name, ' class') ].
	object superclass: protoObject.
	protoObject superclass: nil.
	protoObject metaclass superclass: class.
	class superclass: classDescription.
	classDescription superclass: behavior.
	behavior superclass: object.
	metaclass superclass: classDescription.
	
	environment clean.
	environment behaviorsDo: [ :beh | beh makeResolved. ].
	environment packagesDo: [ :beh | beh makeResolved. ].
	
	environment.