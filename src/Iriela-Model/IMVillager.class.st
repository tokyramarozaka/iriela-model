Class {
	#name : 'IMVillager',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'control' }
IMVillager >> move [ 
	<action> 
	self patch neighbourhood 
		detect: [ :cell | cell hasResource ]
		ifFound: [ :cell | self moveTo: cell ]
		ifNone: [ self moveRandomly ]
]

{ #category : 'as yet unclassified' }
IMVillager >> moveRandomly [ 
	self randomWalk 
]

{ #category : 'accessing' }
IMVillager >> pov [ 
	<pov> 
	^ CMPointOfView 
		image: IMImages agent
		size: 0.8
]

{ #category : 'control' }
IMVillager >> step [ 
	self move. 
]
