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
		image: IMImages fish
		size: 0.8
]

{ #category : 'control' }
IMFish >> step [
	
]
