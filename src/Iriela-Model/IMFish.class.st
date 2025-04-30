Class {
	#name : 'IMFish',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'accessing' }
IMFish >> pov [ 
	<pov> 
	^ CMPointOfView 
		color: CMColor azure
		shape: #circle 
		size: 0.6
]
