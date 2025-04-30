Class {
	#name : 'IMAgent',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'control' }
IMAgent >> move [ 
	<action> 
	self patch neighbourhood 
		detect: [ :cell | cell hasResource ]
		ifFound: [ :cell | self moveTo: cell ]
		ifNone: [ self moveRandomly ]
]

{ #category : 'accessing' }
IMAgent >> pov [ 
	<pov> 
	^ CMPointOfView 
		color: CMColor blue
		shape: #star
		size: 0.8
]

{ #category : 'control' }
IMAgent >> step [ 
	self move. 
]
