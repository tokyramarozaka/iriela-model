Class {
	#name : 'IMCell',
	#superclass : 'CMSpatialEntityElement',
	#instVars : [
		'isProtected'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'testing' }
IMCell >> getResource [ 
	self hasResource ifFalse: [ self error: 'This cell has no resources' ].
	^ (self occupantsOfClass: IMResource ) first.
]

{ #category : 'testing' }
IMCell >> hasResource [ 
	^ (self hasOccupantsOfClass: IMWood) or: [self hasOccupantsOfClass: IMFish] 
]

{ #category : 'initialization' }
IMCell >> initialize [

	super initialize.
	isProtected := false
]

{ #category : 'accessing' }
IMCell >> isProtected [

	^ isProtected
]

{ #category : 'accessing' }
IMCell >> makeProtected [
	isProtected := true.
]

{ #category : 'accessing' }
IMCell >> pov [

	<pov>
	^ CMPointOfView color: (isProtected ifTrue: CMColor brown ifFalse: CMColor olympic )
]
