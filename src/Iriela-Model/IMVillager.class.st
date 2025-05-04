Class {
	#name : 'IMVillager',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#instVars : [
		'collectedResources'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'as yet unclassified' }
IMVillager >> collectResource [ 
	<action>
	| resource | 
	self patch hasResource ifFalse: [ ^ self ].
	resource := self patch getResource. 
	collectedResources add: resource. 
	resource leave.
]

{ #category : 'accessing' }
IMVillager >> collectedResources [

	^ collectedResources
]

{ #category : 'initialization' }
IMVillager >> initialize [ 
	super initialize . 
	collectedResources := OrderedCollection new.
]

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
	self collectResource .
]
