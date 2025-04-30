Class {
	#name : 'IMWood',
	#superclass : 'CMAgent',
	#traits : 'TCMLocated',
	#classTraits : 'TCMLocated classTrait',
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'accessing' }
IMWood >> pov [ 
	<pov> 
	^ CMPointOfView 
		color: CMColor green 
		shape: #arrow 
		size: 0.6
]
