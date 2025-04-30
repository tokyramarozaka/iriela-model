Class {
	#name : 'IMWood',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'initialization' }
IMWood >> initialize [ 
	super initialize .
]

{ #category : 'accessing' }
IMWood >> pov [ 
	<pov> 
	^ CMPointOfView 
		image: IMImages tree
		size: 0.8
]

{ #category : 'control' }
IMWood >> step [
]
