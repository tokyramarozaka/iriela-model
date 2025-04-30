Class {
	#name : 'IMFish',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'initialization' }
IMFish >> initialize [ 
	super initialize .
]

{ #category : 'accessing' }
IMFish >> pov [ 
	<pov> 
	^ CMPointOfView 
		color: CMColor gold
		shape: #diamond
		size: 0.5
]

{ #category : 'control' }
IMFish >> step [
	
]
