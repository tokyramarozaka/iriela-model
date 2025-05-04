Class {
	#name : 'IMCell',
	#superclass : 'CMSpatialEntityElement',
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
