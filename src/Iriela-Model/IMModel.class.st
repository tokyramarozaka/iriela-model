Class {
	#name : 'IMModel',
	#superclass : 'CMAbstractModel',
	#instVars : [
		'cells',
		'agents'
	],
	#classInstVars : [
		'numberOfRows',
		'numberOfColumns',
		'numberOfAgents',
		'numberOfWoods',
		'numberOfFishes'
	],
	#category : 'Iriela-Model',
	#package : 'Iriela-Model'
}

{ #category : 'as yet unclassified' }
IMModel class >> aboutThisModel [

	^ ''
]

{ #category : 'initialization' }
IMModel class >> initializeParameters [ 
	super initializeParameters . 
	numberOfRows := 10.
	numberOfColumns := 10.
	numberOfAgents := 5.
	numberOfWoods := 10.
	numberOfFishes := 10.
]

{ #category : 'accessing' }
IMModel class >> numberOfAgents [

	^ numberOfAgents
]

{ #category : 'accessing' }
IMModel class >> numberOfColumns [

	^ numberOfColumns
]

{ #category : 'accessing' }
IMModel class >> numberOfFishes [

	^ numberOfFishes
]

{ #category : 'accessing' }
IMModel class >> numberOfRows [

	^ numberOfRows
]

{ #category : 'accessing' }
IMModel class >> numberOfWoods [

	^ numberOfWoods
]

{ #category : 'as yet unclassified' }
IMModel class >> prefix [

	^ 'IM'
]

{ #category : 'accessing' }
IMModel >> agents [
	<getterFor: #IMAgent >
	^ agents
]

{ #category : 'accessing' }
IMModel >> cells [
	<getterFor: #IMCell>
	^ cells
]

{ #category : 'initialization' }
IMModel >> init [ 
	<init> 
	self 
		createGridNumberOfRows: self class numberOfRows
		numberOfColumns:  self class numberOfColumns
		neighbourhood: 4 
		closed: true.
		
	self createN: self class numberOfAgents randomlyLocatedAloneEntities: IMAgent.
	self createN: self class numberOfWoods randomlyLocatedAloneEntities: IMWood .
	self createN: self class numberOfFishes randomlyLocatedAloneEntities: IMFish .	
]

{ #category : 'initialization' }
IMModel >> initialize [ 
	super initialize. 
	agents := OrderedCollection new.
	cells := OrderedCollection new.
]

{ #category : 'initialization' }
IMModel >> step [ 
	<control> 
	agents do: [ :each | each step ]
]
