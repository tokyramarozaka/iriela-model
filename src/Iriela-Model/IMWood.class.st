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
		color: CMColor green 
		shape: #diamond 
		size: 0.5
]

{ #category : 'control' }
IMWood >> step [
]
